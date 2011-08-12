#ifndef _RFTRANS_H
#define _RFTRANS_H

/*
   $Log: rftrans.h,v $
   Revision 1.1  1995/12/22 17:47:10  CHRIS
   Initial revision

*/

#ifndef RFTRANS_H_RCSID
#define RFTRANS_H_RCSID "$Id: rftrans.h,v 1.1 1995/12/22 17:47:10 CHRIS Exp $"
#endif

typedef double tmatrix[3][3];   /* Vector transformation matrix */

/* Parameters of a reference frame transformation */

enum
{
    rfTx,
    rfTy,
    rfTz,
    rfRotx,
    rfRoty,
    rfRotz,
    rfScale,
};

typedef struct
{
    int id;               /* Id used to reference the frame */
    char *name;           /* The name of the reference frame     */
    double prm[7];        /* Parameters of the transformation */
    double prmCvr[28];
    char calcPrm[7];
    int prmId[7];       /* The adjustment parameter ids of the tranformation */
    unsigned  istopo:1; /* True if the reference frame is topocentric */
    unsigned  istrans:1; /* True if the translation component is used */
    unsigned  isorigin:1; /* True if the origin is offset */
    unsigned  calctrans:1; /* True if translation components are being calculated */
    unsigned  calcrot:1;   /* True if rotations components are being calculated */
    unsigned  calcscale:1; /* True if scale is being calculated */
    char  prmUsed[7];     /* True if the reference frame is used  in data sets */
    double origin[3];  /* The reference point for the rotation and scale */
    double trans[3];      /* Translation components as XYZ */
    tmatrix tmat;         /* The matrix (1+s).Rx.Ry.Rz           */
    tmatrix invtmat;      /* The inverse of tmat                */
    tmatrix dtmatdrot[3]; /* The differential of tmat wrt x rot. */
    tmatrix toporot;      /* Conversion to and from topocentric system */
    tmatrix invtoporot;
} rfTransformation;

#define REFFRAMELEN 20

#define FRF_VECDIFF  1
#define FRF_ABSOLUTE 2

int get_rftrans( const char *name ) ;
int get_topocentric_rftrans( const char *name );
int rftrans_topocentric( int rf );
int rftrans_count( void );
rfTransformation *rftrans_from_id( int id );
void clear_rftrans_list( void );
rfTransformation *new_rftrans( void );

void set_rftrans_scale( int rf, double scale, int adjust ) ;
void set_rftrans_rotation( int rf, double rot[3], int adjust[3] ) ;
void set_rftrans_translation( int rf, double tran[3], int adjust[3] ) ;
void set_rftrans_origin( rfTransformation *, double origin[3] );

void flag_rftrans_used( int rf, int usage_type );

/* Setup up reference frames, defining the topocentre */

void setup_rftrans( rfTransformation *rf );
void setup_rftrans_list( double lt, double ln ) ;

/* tmat converts a vector to the reference frame,
   invtmat converts a vector from the reference frame */

double * rftrans_tmat( int rf );
double * rftrans_invtmat( int rf );
const char *   rftrans_name( int rf );

/* Convert a vector to from the reference frame to the standard reference */

void rftrans_correct_vector( int nrf, double vd[3] );
void rftrans_correct_point( int nrf, double vd[3] );


#endif
