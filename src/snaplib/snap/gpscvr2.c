#include "snapconfig.h"
/* Module that links the gps covariance functions with the SNAP data.
   The GPS covariance function require a function to obtain a station
   vertical and a function to obtain the transformation parameters
   for a reference frame, given it's ID. */


/*
   $Log: gpscvr2.c,v $
   Revision 1.1  1995/12/22 17:44:59  CHRIS
   Initial revision

*/

#include <stdio.h>
#include "snap/gpscvr2.h"
#include "snapdata/survdata.h"
#include "snapdata/gpscvr.h"
#include "snap/stnadj.h"
#include "snap/rftrans.h"

static char rcsid[]="$Id: gpscvr2.c,v 1.1 1995/12/22 17:44:59 CHRIS Exp $";

static double dflttmat[] = { 1.0, 0.0, 0.0,
                             0.0, 1.0, 0.0,
                             0.0, 0.0, 1.0
                           };


static void station_vertical( int id, double vrt[3] )
{
    rot_vertical( & (stnptr(id)->rTopo), vrt );
}


static void topocentre_vertical( double vrt[3] )
{
    static char got_topocentre = 0;
    static double tlat, tlon;
    static rotmat toporot;
    double lt, ln;
    get_network_topocentre( net, &lt, &ln );
    if( !got_topocentre || lt != tlat || ln != tlon )
    {
        tlat = lt; tlon = ln;
        got_topocentre = 1;
        init_toprot( tlat, tlon, &toporot );
    }
    rot_vertical( &toporot, vrt );
}

static void get_vertical( int id, double vrt[3] )
{
    if( id > 0 )
    {
        station_vertical( id, vrt );
    }
    else
    {
        topocentre_vertical( vrt );
    }
}

static double *get_transformation( int reffrm, int inverse )
{
    if( reffrm <= 0 || reffrm > rftrans_count() )
    {
        return dflttmat;
    }
    if( inverse )
    {
        return rftrans_invtmat( reffrm );
    }
    else
    {
        return rftrans_tmat( reffrm );
    }
}


void init_snap_gps_covariance()
{
    init_gps_covariances( get_vertical, get_transformation );
}
