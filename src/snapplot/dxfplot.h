#ifndef DXFPLOT_H
#define DXFPLOT_H

/*
   $Log: dxfplot.h,v $
   Revision 1.1  1996/01/03 22:16:09  CHRIS
   Initial revision

*/

#ifndef DXFPLOT_H_RCSID
#define DXFPLOT_H_RCSID "$Id: dxfplot.h,v 1.1 1996/01/03 22:16:09 CHRIS Exp $"
#endif

int open_dxf_file( const char *dxfname ) ;
int close_dxf_file( void ) ;
int plot_dxf( void );

#endif

