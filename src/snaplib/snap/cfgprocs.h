#ifndef _CFGPROCS_H
#define _CFGPROCS_H

/*
   $Log: cfgprocs.h,v $
   Revision 1.1  1995/12/22 17:40:25  CHRIS
   Initial revision

*/

#ifndef CFGPROCS_H_RCSID
#define CFGPROCS_H_RCSID "$Id: cfgprocs.h,v 1.1 1995/12/22 17:40:25 CHRIS Exp $"
#endif

int load_coordinate_file( CFG_FILE *cfg, char *string, void *value, int len, int code );
int load_data_file( CFG_FILE *cfg, char *string, void *value, int len, int code );


extern int stations_read;

#endif

