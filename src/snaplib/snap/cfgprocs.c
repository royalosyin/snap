#include "snapconfig.h"
/*
   $Log: cfgprocs.c,v $
   Revision 1.2  2004/04/22 02:34:47  ccrook
   Setting up to support linux compilation (x86 architecture)

   Revision 1.1  1995/12/22 17:39:58  CHRIS
   Initial revision

*/

#include <stdio.h>
#include <string.h>
#include <ctype.h>

#include "snap/snapglob.h"
#include "util/readcfg.h"
#include "util/fileutil.h"
#include "util/errdef.h"
#include "snap/stnadj.h"
#include "snap/survfile.h"
#include "snap/cfgprocs.h"
#include "snapdata/obsmod.h"
#include "util/xprintf.h"
#include "util/dstring.h"

int stations_read = 0;

// #pragma warning (disable : 4100)

int load_coordinate_file( CFG_FILE *cfg, char *string, void *value, int len, int code )
{
    int sts;
    char *fname;
    char *typestr;
    char *csvdata;
    int format;

    sts = OK;
    format = STN_FORMAT_SNAP;
    csvdata = 0;

    fname = strtok( string, " ");
    typestr = strtok( NULL, " ");

    if( !fname )
    {
        send_config_error( cfg, MISSING_DATA,
                           "The name of the coordinate file is missing");
        sts = MISSING_DATA;
    }

    if( sts == OK && typestr )
    {
        if( _stricmp(typestr,"SNAP") == 0 )
        {
            format = STN_FORMAT_SNAP;
        }
        else if( _stricmp(typestr,"GB") == 0 )
        {
            format = STN_FORMAT_GB;
        }
        else if( _stricmp(typestr,"CSV") == 0 )
        {
            format = STN_FORMAT_CSV;
            csvdata = strtok( NULL, "" );
        }
        else
        {
            send_config_error( cfg, INVALID_DATA,
                               "The format specified for the coordinate file is invalid");
            sts = INVALID_DATA;
        }
    }

    if( sts == OK )
    {
        xprintf("\nReading coordinates from file %s\n",fname);
        sts = read_station_file( fname, get_config_directory(cfg), format, csvdata );
        if( sts == OK )
        {
            stations_read = 1;
            xprintf("    %d stations read\n",(int) number_of_stations(net));
        }
        else
        {
            send_config_error( cfg, INVALID_DATA,
                               "Errors encountered reading coordinate file");
        }
    }

    if( sts != OK ) abort_config_file( cfg );

    return sts == OK ? OK : NO_MORE_DATA;
}

int load_offset_file( CFG_FILE *cfg, char *string, void *value, int len, int code )
{
    const char *filename;
    const char *filespec;
    int sts;

    filename=strtok(string," ");
    if( ! filename )
    {
        send_config_error( cfg, INVALID_DATA, "station_offset_file command requires a filename");
        return OK;
    }

    filespec = find_relative_file( station_filespec, filename,DFLTSTOFFS_EXT);
    if(! filespec )  filespec=find_file( filename,DFLTSTOFFS_EXT,get_config_directory(cfg),FF_TRYALL,0);
    if(! filespec )
    {
        send_config_error( cfg, INVALID_DATA, "Cannot find station offset file");
        return OK;
    }
    sts=read_network_station_offsets( net, filespec );
    if( sts != OK )
    {
        send_config_error( cfg, INVALID_DATA, "Errors reading station offset file");
    }
    return OK;
}


int load_data_file( CFG_FILE *cfg, char *string, void *value, int len, int code )
{
    char *fname, *format, errmess[80];
    char *options = 0;
    char *recode = 0;
    char *specs;
    int ftype;
    int fileid;
    double factor;

    fname = strtok( string, " " );

    if( !fname )
    {
        send_config_error(cfg,MISSING_DATA,"Data file name missing");
        return OK;
    }

    ftype = SNAP_FORMAT;
    factor = 1.0;

    specs = strtok(NULL,"");
    while( specs && NULL != (format = strtok(specs," ")) )
    {
        int readoptions=0;
        specs = strtok(NULL,"");
        if( _stricmp(format,"SNAP") == 0 )
        {
            ftype = SNAP_FORMAT;
        }
        else if ( _stricmp(format,"GB") == 0 )
        {
            ftype = GB_FORMAT;
        }
        else if ( _stricmp(format,"RECODE") == 0 )
        {
            recode = strtok(specs," ");
            specs = strtok(NULL,"");
        }
        else if ( _stricmp(format,"ERROR_FACTOR") == 0 )
        {
            format = strtok(specs," ");
            specs = strtok(NULL,"");
            if( !format || sscanf(format,"%lf",&factor) != 1 )
            {
                send_config_error( cfg, INVALID_DATA, "Invalid error factor for data file");
                return OK;
            }
        }
        else if ( _stricmp(format,"CSV") == 0 )
        {
            ftype = CSV_FORMAT;
            readoptions=1;
        }
        else if ( _stricmp(format,"SINEX") == 0 )
        {
            ftype = SINEX_FORMAT;
            readoptions=1;
        }
        else
        {
            sprintf(errmess,"Invalid format %.20s specified for data file",format);
            send_config_error( cfg, INVALID_DATA,errmess);
            return OK;
        }

        if( readoptions && specs )
        {
            char *endopts;
            char *nextfield;
            int inopts;
            /* Options are following fields containing '=' */

            while( isspace(*specs) ) specs++;
            options=specs;

            inopts=0;
            nextfield=options;
            endopts=0;
            for( char *c=specs; *c; c++ )
            {
                if( ! isspace(*c))
                {
                    if( *c == '=' )
                    {
                        inopts=1;
                        nextfield=0;
                        endopts=0;
                    }
                    else if( ! inopts )
                    {
                        if(! nextfield ) nextfield=c;
                    }
                }
                else if( ! inopts )
                {
                    break;
                }
                else
                {
                    inopts=0;
                    if( ! endopts ) endopts=c;
                }
            }
            if( nextfield == options ) options=0;
            if( endopts ) *endopts=0;
            specs=nextfield;
        }
    }

    fileid=add_data_file( fname, ftype, options, recode, get_config_directory(cfg) );

    if( factor != 1.0 )
    {
        void *obs_modifications=snap_obs_modifications( true );
        add_obs_modifications_datafile_factor(cfg,obs_modifications,fileid,survey_data_file_name(fileid),factor);
    }

    return OK;
}


int read_obs_modification_command( CFG_FILE *cfg, char *string, void *value, int len, int code )
{
    int sts=OK;
    double err_factor=1.0;
    void *obs_modifications;
    if( code == OBS_MOD_REWEIGHT )
    {
        char *field=next_field(&string);
        if( ! field || sscanf(field,"%lf", &err_factor) != 1 || err_factor <= 0 )
        {

            send_config_error(cfg, INVALID_DATA, "Invalid or missing data in classification command");
            return OK;
        }
    }
    obs_modifications=snap_obs_modifications( true );
    sts=add_obs_modifications( cfg, obs_modifications, string, code, err_factor );
    return OK;
}


int read_classification_command( CFG_FILE *cfg, char *string, void *value, int len, int code )
{
    double errfct;
    char *classification;
    char *classvalue;
    int isdatafile;
    int action;
    int missing_error;
    char *st;
    void *obs_modifications;

    missing_error=INVALID_DATA;
    st = strtok( string, " " );
    if( !st )
    {
        send_config_error( cfg, MISSING_DATA, "Name of the classification is missing");
        return OK;
    }

    classification=st;
    isdatafile=_stricmp(classification,"data_file")==0;

    errfct = -1.0;
    action=0;

    st = strtok( NULL, " " );
    if( st )
    {
        if( _stricmp( st, "reject" ) == 0 )
        {
            action |= OBS_MOD_REJECT;
        }
        else if( _stricmp( st, "ignore" ) == 0 )
        {
            action |= OBS_MOD_IGNORE;
        }
        if( action ) st = strtok( NULL, " " );
    }

    if( isdatafile && st && _stricmp(st,"ignore_missing") == 0 ) 
    {
        missing_error=OK;
        st = strtok( NULL, " " );
    }
    else if( isdatafile && st && _stricmp(st,"warn_missing") == 0 ) 
    {
        missing_error=INFO_ERROR;
        st = strtok( NULL, " " );
    }
    else if( isdatafile && st && _stricmp(st,"fail_missing") == 0 ) 
    {
        st = strtok( NULL, " " );
    }

    if( !st )
    {
        send_config_error( cfg, MISSING_DATA, "Value of classification is missing");
        return OK;
    }

    classvalue=st;

    st = strtok( NULL, " " );

    if( ! action )
    {
        if( !st )
        {
            send_config_error( cfg, MISSING_DATA,"Classification commands needs ignore, reject, or error_factor specified");
            return OK;
        }

        if( _stricmp( st, "reject" ) == 0 )
        {
            action |= OBS_MOD_REJECT;
        }
        else if( _stricmp( st, "ignore" ) == 0 )
        {
            action |= OBS_MOD_IGNORE;
        }
        if( action ) st = strtok( NULL, " " );
    }

    if( st )
    {
        if( _stricmp(st,"error_factor") != 0 || (st=strtok(NULL," ")) == NULL ||
                sscanf(st, "%lf", &errfct ) != 1 || errfct <= 0.0 ||
                strtok(NULL," ") != NULL )
        {

            send_config_error(cfg, INVALID_DATA, "Invalid or missing data in classification command");
            return OK;
        }
        if( errfct != 1.0 ) action |= OBS_MOD_REWEIGHT;
    }

    if( ! action ) return OK;

    obs_modifications=snap_obs_modifications( true );

    add_obs_modifications_classification(cfg,obs_modifications,classification,classvalue,
            action,errfct,missing_error);

    return OK;
}
