comment {
 FRACTINT.DOC has instructions for adding new formulas to this file.
 There are several hard-coded restrictions in the formula interpreter:

 1) The fractal name through the open curly bracket must be on a single line.
 2) There is a hard-coded limit of 200 formulas per formula file, only
    because of restrictions in the prompting routines.
 3) Formulas can containt at most 250 operations (references to variables and
    arithmetic); this is bigger than it sounds, no formula in the default
    fractint.frm uses even 100
 3) Comment blocks can be set up using dummy formulas with no formula name
    or with the special name "comment".

 The formulas at the beginning of this file are from Mark Peterson, who
 built this fractal interpreter feature.  The rest are grouped by contributor.
 (Scott Taylor sent many but they are no longer here - they've been
 incorporated as hard-coded types.  Lee Skinner also sent many which have
 now been hard-coded.)

 Note that the builtin "cos" function had a bug which was corrected in
 version 16.  To recreate an image from a formula which used cos before
 v16, change "cos" in the formula to "cosxx" which is a new function
 provided for backward compatibility with that bug.
 }

Mandelbrot(XAXIS) {; Mark Peterson
  ; Classical fractal showing LastSqr speedup
  z = Pixel, z = Sqr(z):  ; Start with z**2 to initialize LastSqr
   z = z + Pixel
   z = Sqr(z)
    LastSqr <= 4	  ; Use LastSqr instead of recalculating
  }

Dragon (ORIGIN) {; Mark Peterson
  z = Pixel:
   z = sqr(z) + (-0.74543, 0.2),
    |z| <= 4
  }

Daisy (ORIGIN) {; Mark Peterson
  z = pixel:
   z = z*z + (0.11031, -0.67037),
    |z| <= 4
  }

InvMandel (XAXIS) {; Mark Peterson
  c = z = 1 / pixel:
   z = sqr(z) + c;
    |z| <= 4
  }

DeltaLog(XAXIS) {; Mark Peterson
  z = pixel, c = log(pixel):
   z = sqr(z) + c,
    |z| <= 4
  }

Newton4(XYAXIS) {; Mark Peterson
  z = pixel, Root = 1:
   z3 = z*z*z;
   z4 = z3 * z;
   z = (3 * z4 + Root) / (4 * z3);
    .004 <= |z4 - Root|
  }

comment {
   The following are from Chris Green:
   These fractals all use Newton's or Halley's formula for approximation
   of a function.  In all of these fractals, p1 is the "relaxation
   coefficient". A value of 1 gives the conventional newton or halley
   iteration. Values <1 will generally produce less chaos than values >1.
   1-1.5 is probably a good range to try.  P2 is the imaginary component
   of the relaxation coefficient, and should be zero but maybe a small
   non-zero value will produce something interesting. Who knows?
   For more information on Halley maps, see "Computers, Pattern, Chaos,
   and Beauty" by Pickover.
   }

Halley (XYAXIS) {; Chris Green. Halley's formula applied to x^7-x=0.
  ; P1 usually 1 to 1.5, P2 usually zero. Use floating point.
  ; Setting P1 to 1 creates the picture on page 277 of Pickover's book
  z=pixel:
   z5=z*z*z*z*z;
   z6=z*z5;
   z7=z*z6;
   z=z-p1*((z7-z)/ ((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2))),
    0.0001 <= |z7-z|
  }

CGhalley (XYAXIS) {; Chris Green -- Halley's formula
  ; P1 usually 1 to 1.5, P2 usually zero. Use floating point.
  z=(1,1):
   z5=z*z*z*z*z;
   z6=z*z5;
   z7=z*z6;
   z=z-p1*((z7-z-pixel)/ ((7.0*z6-1)-(42.0*z5)*(z7-z-pixel)/(14.0*z6-2))),
    0.0001 <= |z7-z-pixel|
  }

comment { version 17.2:}
halleySin (XYAXIS) {; Chris Green. Halley's formula applied to sin(x)=0.
  ; Use floating point.
  ; P1 = 0.1 will create the picture from page 281 of Pickover's book.
  z=pixel:
   s=sin(z), c=cos(z)
   z=z-p1*(s/(c-(s*s)/(c+c))),
    0.0001 <= |s|
  }

NewtonSinExp (XAXIS) {; Chris Green
  ; Newton's formula applied to sin(x)+exp(x)-1=0.
  ; Use floating point.
  z=pixel:
   z1=exp(z)
   z2=sin(z)+z1-1
   z=z-p1*z2/(cos(z)+z1),
    .0001 < |z2|
  }

CGNewton3 {; Chris Green -- A variation on newton iteration.
  ; The initial guess is fixed at (1,1), but the equation solved
  ; is different at each pixel ( x^3-pixel=0 is solved).
  ; Use floating point.
  ; Try P1=1.8.
  z=(1,1):
   z2=z*z;
   z3=z*z2;
   z=z-p1*(z3-pixel)/(3.0*z2),
    0.0001 < |z3-pixel|
  }

HyperMandel {; Chris Green.
  ; A four dimensional version of the mandelbrot set.
  ; Use P1 to select which two-dimensional plane of the
  ; four dimensional set you wish to examine.
  ; Use floating point.
  a=(0,0),b=(0,0):
   z=z+1
   anew=sqr(a)-sqr(b)+pixel
   b=2.0*a*b+p1
   a=anew,
    |a|+|b| <= 4
  }


MTet (XAXIS) {; Mandelbrot form 1 of the Tetration formula --Lee Skinner
  z = pixel:
   z = (pixel ^ z) + pixel,
    |z| <= (P1 + 3)
  }

AltMTet(XAXIS) {; Mandelbrot form 2 of the Tetration formula --Lee Skinner
  z = 0:
   z = (pixel ^ z) + pixel,
    |z| <= (P1 + 3)
  }

JTet (XAXIS) {; Julia form 1 of the Tetration formula --Lee Skinner
  z = pixel:
   z = (pixel ^ z) + P1,
    |z| <= (P2 + 3)
  }

AltJTet (XAXIS) {; Julia form 2 of the Tetration formula --Lee Skinner
  z = P1:
   z = (pixel ^ z) + P1,
    |z| <= (P2 + 3)
  }

Cubic (XYAXIS) {; Lee Skinner
  p = pixel, test = p1 + 3,
  t3 = 3*p, t2 = p*p,
  a = (t2 + 1)/t3, b = 2*a*a*a + (t2 - 2)/t3,
  aa3 = a*a*3, z = 0 - a :
   z = z*z*z - aa3*z + b,
    |z| < test
 }

{ The following are from Lee Skinner, have been partially generalized. }

Fzppfnre  {; Lee Skinner
  z = pixel, f = 1./(pixel):
   z = fn1(z) + f,
    |z| <= 50
  }

Fzppfnpo  {; Lee Skinner
  z = pixel, f = (pixel)^(pixel):
   z = fn1(z) + f,
    |z| <= 50
  }

Fzppfnsr  {; Lee Skinner
  z = pixel, f = (pixel)^.5:
   z = fn1(z) + f,
    |z| <= 50
  }

Fzppfnta  {; Lee Skinner
  z = pixel, f = tan(pixel):
   z = fn1(z) + f,
    |z|<= 50
  }

Fzppfnct  {; Lee Skinner
  z = pixel, f = cos(pixel)/sin(pixel):
   z = fn1(z) + f,
    |z|<= 50
  }

Fzppfnse  {; Lee Skinner
  z = pixel, f = 1./sin(pixel):
   z = fn1(z) + f,
    |z| <= 50
  }

Fzppfncs  {; Lee Skinner
  z = pixel, f = 1./cos(pixel):
   z = fn1(z) + f,
    |z| <= 50
  }

Fzppfnth  {; Lee Skinner
  z = pixel, f = tanh(pixel):
   z = fn1(z)+f,
    |z|<= 50
  }

Fzppfnht  {; Lee Skinner
  z = pixel, f = cosh(pixel)/sinh(pixel):
   z = fn1(z)+f,
    |z|<= 50
  }

Fzpfnseh  {; Lee Skinner
  z = pixel, f = 1./sinh(pixel):
   z = fn1(z) + f,
    |z| <= 50
  }

Fzpfncoh  {; Lee Skinner
  z = pixel, f = 1./cosh(pixel):
   z = fn1(z) + f,
    |z| <= 50
  }


{ The following resulted from a FRACTINT bug. Version 13 incorrectly
  calculated Spider (see above). We fixed the bug, and reverse-engineered
  what it was doing to Spider - so here is the old "spider" }

Wineglass(XAXIS) {; Pieter Branderhorst
  c = z = pixel:
   z = z * z + c
   c = (1+flip(imag(c))) * real(c) / 2 + z,
    |z| <= 4 }


{ The following is from Scott Taylor.
  Scott says they're "Dog" because the first one he looked at reminded him
  of a hot dog. This was originally several fractals, we have generalized it. }

FnDog(XYAXIS)  {; Scott Taylor
  z = Pixel, b = p1+2:
   z = fn1( z ) * pixel,
    |z| <= b
  }

Ent {; Scott Taylor
  ; Try params=.5/.75 and the first function as exp.
  ; Zoom in on the swirls around the middle.  There's a
  ; symmetrical area surrounded by an asymmetric area.
  z = Pixel, y = fn1(z), base = log(p1):
   z = y * log(z)/base,
    |z| <= 4
  }

Ent2 {; Scott Taylor
  ; try params=2/1, functions=cos/cosh, potential=255/355
  z = Pixel, y = fn1(z), base = log(p1):
   z = fn2( y * log(z) / base ),
    |z| <= 4
  }

{ From Kevin Lee: }

LeeMandel1(XYAXIS) {; Kevin Lee
  z=Pixel:
;; c=sqr(pixel)/z, c=z+c, z=sqr(z),  this line was an error in v16
   c=sqr(pixel)/z, c=z+c, z=sqr(c),
    |z|<4
  }

LeeMandel2(XYAXIS) {; Kevin Lee
  z=Pixel:
   c=sqr(pixel)/z, c=z+c, z=sqr(c*pixel),
    |z|<4
   }

LeeMandel3(XAXIS) {; Kevin Lee
  z=Pixel, c=Pixel-sqr(z):
   c=Pixel+c/z, z=c-z*pixel,
    |z|<4
  }

{ These are a few of the examples from the book,
  Fractal Creations, by Tim Wegner and Mark Peterson. }

MyFractal {; Fractal Creations example
  c = z = 1/pixel:
   z = sqr(z) + c;
    |z| <= 4
  }

Bogus1 {; Fractal Creations example
  z = 0; z = z + * 2,
   |z| <= 4 }

MandelTangent {; Fractal Creations example (revised for v.16)
  z = pixel:
   z = pixel * tan(z),
    |real(z)| < 32
  }

Mandel3 {; Fractal Creations example
  z = pixel, c = sin(z):
   z = (z*z) + c;
   z = z * 1/c;
    |z| <= 4;
   }

{ These are from: "AKA MrWizard W. LeRoy Davis;SM-ALC/HRUC"
		  davisl@sm-logdis1-aflc.af.mil
  The first 3 are variations of:
			   z
	   gamma(z) = (z/e) * sqrt(2*pi*z) * R	    }

Sterling(XAXIS) {; davisl
  z = Pixel:
   z = ((z/2.7182818)^z)/sqr(6.2831853*z),
    |z| <= 4
  }

Sterling2(XAXIS) {; davisl
  z = Pixel:
   z = ((z/2.7182818)^z)/sqr(6.2831853*z) + pixel,
    |z| <= 4
  }

Sterling3(XAXIS) {; davisl
  z = Pixel:
   z = ((z/2.7182818)^z)/sqr(6.2831853*z) - pixel,
    |z| <= 4
  }

PsudoMandel(XAXIS) {; davisl - try center=0,0/magnification=28
  z = Pixel:
   z = ((z/2.7182818)^z)*sqr(6.2831853*z) + pixel,
    |z| <= 4
  }

{ These are the original "Richard" types sent by Jm Richard-Collard. Their
  generalizations are tacked on to the end of the "Jm" list below, but
  we felt we should keep these around for historical reasons.}

Richard1 (XYAXIS) {; Jm Richard-Collard
  z = pixel:
   sq=z*z, z=(sq*sin(sq)+sq)+pixel,
    |z|<=50
  }

Richard2 (XYAXIS) {; Jm Richard-Collard
  z = pixel:
   z=1/(sin(z*z+pixel*pixel)),
    |z|<=50
  }

Richard3 (XAXIS) {; Jm Richard-Collard
  z = pixel:
   sh=sinh(z), z=(1/(sh*sh))+pixel,
    |z|<=50
  }

Richard4 (XAXIS) {; Jm Richard-Collard
  z = pixel:
   z2=z*z, z=(1/(z2*cos(z2)+z2))+pixel,
    |z|<=50
  }

Richard5 (XAXIS) {; Jm Richard-Collard
  z = pixel:
   z=sin(z*sinh(z))+pixel,
    |z|<=50
  }

Richard6 (XYAXIS) {; Jm Richard-Collard
  z = pixel:
   z=sin(sinh(z))+pixel,
    |z|<=50
  }

Richard7 (XAXIS) {; Jm Richard-Collard
  z=pixel:
   z=log(z)*pixel,
    |z|<=50
  }

Richard8 (XYAXIS) {; Jm Richard-Collard
  ; This was used for the "Fractal Creations" cover
  z=pixel,sinp = sin(pixel):
   z=sin(z)+sinp,
    |z|<=50
  }

Richard9 (XAXIS) {; Jm Richard-Collard
  z=pixel:
   sqrz=z*z, z=sqrz + 1/sqrz + pixel,
    |z|<=4
  }

Richard10(XYAXIS) {; Jm Richard-Collard
  z=pixel:
   z=1/sin(1/(z*z)),
    |z|<=50
  }

Richard11(XYAXIS) {; Jm Richard-Collard
  z=pixel:
   z=1/sinh(1/(z*z)),
    |z|<=50
  }

{ These types are generalizations of types sent to us by the French
  mathematician Jm Richard-Collard. If we hadn't generalized them
  there would be --ahhh-- quite a few. With 11 possible values for
  each fn variable,Jm_03, for example, has 14641 variations! }

Jm_01 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=(fn1(fn2(z^pixel)))*pixel,
    |z|<=t
  }

Jm_02 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=(z^pixel)*fn1(z^pixel),
    |z|<=t
  }

Jm_03 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))*pixel,
    |z|<=t
  }

Jm_03a {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))+pixel,
    |z|<=t
  }

Jm_04 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel)),
    |z|<=t
  }

Jm_05 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1(fn2((z^pixel))),
    |z|<=t
  }

Jm_06 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3((z^z)*pixel))),
    |z|<=t
  }

Jm_07 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3((z^z)*pixel)))*pixel,
    |z|<=t
  }

Jm_08 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3((z^z)*pixel)))+pixel,
    |z|<=t
  }

Jm_09 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(fn4(z))))+pixel,
    |z|<=t
  }

Jm_10 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(fn4(z)*pixel))),
    |z|<=t
  }

Jm_11 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(fn4(z)*pixel)))*pixel,
    |z|<=t
  }

Jm_11a {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(fn4(z)*pixel)))+pixel,
    |z|<=t
  }

Jm_12 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(z)*pixel)),
    |z|<=t
  }

Jm_13 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(z)*pixel))*pixel,
    |z|<=t
  }

Jm_14 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(z)*pixel))+pixel,
    |z|<=t
  }

Jm_15 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   f2=fn2(z),z=fn1(f2)*fn3(fn4(f2))*pixel,
    |z|<=t
  }

Jm_16 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   f2=fn2(z),z=fn1(f2)*fn3(fn4(f2))+pixel,
    |z|<=t
  }

Jm_17 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1(z)*pixel*fn2(fn3(z)),
    |z|<=t
  }

Jm_18 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1(z)*pixel*fn2(fn3(z)*pixel),
    |z|<=t
  }

Jm_19 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1(z)*pixel*fn2(fn3(z)+pixel),
    |z|<=t
  }

Jm_20 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1(z^pixel),
    |z|<=t
  }

Jm_21 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1(z^pixel)*pixel,
    |z|<=t
  }

Jm_22 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   sq=fn1(z), z=(sq*fn2(sq)+sq)+pixel,
    |z|<=t
  }

Jm_23 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(z)+pixel*pixel)),
    |z|<=t
  }

Jm_24 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z2=fn1(z), z=(fn2(z2*fn3(z2)+z2))+pixel,
    |z|<=t
  }

Jm_25 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1(z*fn2(z)) + pixel,
    |z|<=t
  }

Jm_26 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1(fn2(z)) + pixel,
    |z|<=t
  }

Jm_27 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   sqrz=fn1(z), z=sqrz + 1/sqrz + pixel,
    |z|<=t
  }

Jm_ducks(XAXIS) {; Jm Richard-Collard
  ; Not so ugly at first glance and lot of corners to zoom in.
  ; try this: corners=-1.178372/-0.978384/-0.751678/-0.601683
  z=pixel,tst=p1+4,t=1+pixel:
   z=sqr(z)+t,
    |z|<=tst
  }

Gamma(XAXIS)={ ; first order gamma function from Prof. Jm
  ; "It's pretty long to generate even on a 486-33 comp but there's a lot
  ; of corners to zoom in and zoom and zoom...beautiful pictures :)"
  z=pixel,twopi=6.283185307179586,r=10:
   z=(twopi*z)^(0.5)*(z^z)*exp(-z)+pixel
    |z|<=r
  }

ZZ(XAXIS) { ; Prof Jm using Newton-Raphson method
  ; use floating point with this one
  z=pixel,solution=1:
   z1=z^z;
   z2=(log(z)+1)*z1;
   z=z-(z1-1)/z2 ,
    0.001 <= |solution-z1|
  }

ZZa(XAXIS) { ; Prof Jm using Newton-Raphson method
  ; use floating point with this one
  z=pixel,solution=1:
   z1=z^(z-1);
   z2=(((z-1)/z)+log(z))*z1;
   z=z-((z1-1)/z2) ,
    .001 <= |solution-z1|
  }


comment {
  You should note that for the Transparent 3D fractals the x, y, z, and t
  coordinates correspond to the 2D slices and not the final 3D True Color
  image.  To relate the 2D slices to the 3D image, swap the x- and z-axis,
  i.e. a 90 degree rotation about the y-axis.
			    -Mark Peterson 6-2-91
  }

MandelXAxis(XAXIS) {	; for Transparent3D
  z = zt,		; Define Julia axes as depth/time and the
  c = xy:		;   Mandelbrot axes as width/height for each slice.
			;   This corresponds to Mandelbrot axes as
			;   height/depth and the Julia axes as width
			;   time for the 3D image.
   z = Sqr(z) + c
    LastSqr <= 4;
  }

OldJulibrot(ORIGIN) {		    ; for Transparent3D
  z = real(zt) + flip(imag(xy)),    ; These settings coorespond to the
  c = imag(zt) + flip(real(xy)):    ;	Julia axes as height/width and
				    ;	the Mandelbrot axes as time/depth
				    ;	for the 3D image.
   z = Sqr(z) + c
    LastSqr <= 4;
  }

 comment { SKINNER.FRM }

 Zexpe (XAXIS) {
      s = exp(1.,0.), z = Pixel:
      z = z ^ s + pixel, |z| <= 100
   }

 Zexpe2 (XAXIS) {
      s = exp(1.,0.), z = Pixel:
      z = z ^ s + z ^ (s * pixel), |z| <= 100
   }

 Ze2 (XAXIS) {
      s1 = exp(1.,0.),
      s = s1 * s1,
      z = Pixel:
      z = z ^ s + pixel, |z| <= 100
   }

 comment {  s = log(-1.,0.) / (0.,1.)   is   (3.14159265358979, 0.0 }

 Exipi (XAXIS) {
      s = log(-1.,0.) / (0.,1.), z = Pixel:
      z = z ^ s + pixel, |z| <= 100
   }

 Fzpcopcs  {z = pixel, f = pixel ^ (1. / cosxx(pixel) ):
                        z = cosxx (z)  + f, |z| <= 50}

 Fzpcopct  {z = pixel, f = pixel ^ (cosxx(pixel) / sin(pixel) ):
                        z = cosxx (z)  + f, |z|<= 50}

 Fzpcophc  {z = pixel, f = pixel ^ (1. / cosh(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzpcopsh  {z = pixel, f = pixel ^ (sinh(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzpcopsq  {z = pixel, f = pixel ^ (sqr(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzpcopth  {z = pixel, f = pixel ^ (sinh(pixel) / cosh(pixel) ):
                        z = cosxx (z)+f,|z|<= 50}

 Fzppcos   {z = pixel, f = cosxx (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcoth  {z = pixel, f = sinh(pixel) / cosh(pixel):
                       z = cosxx (z)+f,|z|<= 50}

 Fzpcoseh  {z = pixel, f = 1. / sinh(pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppchco  {z = pixel, f = cosxx (pixel):
                       z = cosh (z) + f, |z| <= 50}

 Zppchco8  {z = pixel, f = cosxx (pixel):
                       z = cosh (z) + f, |z|<=8192}

 Fzppchex  {z = pixel, f = exp (pixel):
                       z = cosh (z) + f, |z| <= 50}

 Fzppchsi  {z = pixel, f = sin (pixel):
                       z = cosh (z) + f, |z| <= 50}

 Fzppchsq  {z = pixel, f = sqr (pixel):
                       z = cosh (z) + f, |z| <= 50}

 Fzppcoch  {z = pixel, f = cosh (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzpcocoh  {z = pixel, f = 1. / cosh(pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcoct  {z = pixel, f = cosxx(pixel) / sin(pixel):
                       z = cosxx (z)  + f, |z|<= 50}

 Fzppcohs  {z = pixel, f = sinh (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcolo  {z = pixel, f = log (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzpcopch  {z = pixel, f = pixel ^ (cosh(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcope  {z = pixel, f = pixel ^ (exp(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzpcophs  {z = pixel, f = pixel ^ (1. / sinh(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzpcopta  {z = pixel, f = pixel ^ (sin(pixel) / cosxx(pixel) ):
                        z = cosxx (z)  + f, |z|<= 50}

 Fzppcoht  {z = pixel, f = cosh(pixel) / sinh(pixel):
                       z = cosxx (z)+f,|z|<= 50}

 Fzppcops  {z = pixel, f = pixel ^ (sin(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzpcopht  {z = pixel, f = pixel ^ (cosh(pixel) / sinh(pixel) ):
                       z = cosxx (z)+f,|z|<= 50}

 Fzpcopse  {z = pixel, f = pixel ^ (1. / sin(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppchsh  {z = pixel, f = sinh (pixel):
                       z = cosh (z) + f, |z| <= 50}

 Fzppcocs  {z = pixel, f = 1. / cosxx(pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcoex  {z = pixel, f = exp (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcopl  {z = pixel, f = pixel ^ (log(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcopo  {z = pixel, f = (pixel) ^ (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcore  {z = pixel, f = 1. / (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcose  {z = pixel, f = 1. / sin(pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcosh  {z = pixel, f = cosh (pixel):
                       z = cosh (z) + f, |z| <= 50}

 Fzppcosi  {z = pixel, f = sin (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcosq  {z = pixel, f = sqr (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcosr  {z = pixel, f = (pixel) ^ 0.5:
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppexp   {z = pixel, f = exp (pixel):
                       z = exp (z)  + f, |z| <= 50}

 Fzppexsq  {z = pixel, f = sqr (pixel):
                       z = exp (z)  + f, |z| <= 50}

 Fzppshex  {z = pixel, f = exp (pixel):
                       z = sinh (z) + f, |z| <= 50}

 Fzppsico  {z = pixel, f = cosxx (pixel):
                       z = sin (z)  + f, |z| <= 50}

 Fzppsiex  {z = pixel, f = exp (pixel):
                       z = sin (z)  + f, |z| <= 50}

 Fzppsinh  {z = pixel, f = sinh (pixel):
                       z = sinh (z) + f, |z| <= 50}

 Fzppcopc  {z = pixel, f = pixel ^ (cosxx(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppchlo  {z = pixel, f = log (pixel):
                       z = cosh (z) + f, |z| <= 50}

 Fzppexco  {z = pixel, f = cosxx (pixel):
                       z = exp (z)  + f, |z| <= 50}

 Fzppexlo  {z = pixel, f = log (pixel):
                       z = exp (z)  + f, |z| <= 50}

 Fzppexsi  {z = pixel, f = sin (pixel):
                       z = exp (z)  + f, |z| <= 50}

 Fzppshch  {z = pixel, f = cosh (pixel):
                       z = sinh (z) + f, |z| <= 50}

 Fzppshco  {z = pixel, f = cosxx (pixel):
                       z = sinh (z) + f, |z| <= 50}

 Fzppshlo  {z = pixel, f = log (pixel):
                       z = sinh (z) + f, |z| <= 50}

 Fzppshsi  {z = pixel, f = sin (pixel):
                       z = sinh (z) + f, |z| <= 50}

 Fzppshsq  {z = pixel, f = sqr (pixel):
                       z = sinh (z) + f, |z| <= 50}

 Fzppsqlo  {z = pixel, f = log (pixel):
                       z = sqr (z)  + f, |z| <= 50}

 Fzppsqsh  {z = pixel, f = sinh (pixel):
                       z = sqr (z)  + f, |z| <= 50}

 Fzppsqsi  {z = pixel, f = sin (pixel):
                       z = sqr (z)  + f, |z| <= 50}

 Leeze (XAXIS) {     s = exp(1.,0.), z = Pixel, f = Pixel ^ s:
                       z = cosxx (z) + f, |z| <= 50 }

 comment { version 13.0:}
 LambdaLog(XAXIS) {
      z = pixel, c = log(pixel):  
         z = c * sqr(z) + pixel, 
      |z| <= 4 
   }

 comment { version 15.1:}
 CGNewtonSinExp (XAXIS) {
        z=pixel:
        z1=exp(z);
        z2=sin(z)+z1-z;
        z=z-p1*z2/(cos(z)+z1), .0001 < |z2|
   }

 OldManowar (XAXIS) {
           z0 = 0,
           z1 = 0,
         test = p1 + 3,
           c = pixel :
               z = z1*z1 + z0 + c;
               z0 = z1;
               z1 = z,  |z| < test }

 comment { version 15.1:}
 OldHalleySin (XYAXIS) {
        z=pixel:
        s=sin(z);
        c=cosxx(z);
        z=z-p1*(s/(c-(s*s)/(c+c))),
        0.0001 <= |s|
   }

 comment { version 15.1:}
 OldCGNewtonSinExp (XAXIS) {
        z=pixel:
        z1=exp(z);
        z2=sin(z)+z1-z;
        z=z-p1*z2/(cosxx(z)+z1), .0001 < |z2|
   }

 comment { version 15.1:}
 OldNewtonSinExp (XAXIS) {; Chris Green
  ; Newton's formula applied to sin(x)+exp(x)-1=0.
  ; Use floating point.
  z=pixel:
   z1=exp(z)
   z2=sin(z)+z1-1
   z=z-p1*z2/(cosxx(z)+z1),
    .0001 < |z2|
  }

 comment { some of the following are included here because
           BAILOUT=3 is still not supported}

 ScottLPC(XAXIS) { z = pixel, TEST = (p1+3): z = log(z)+cosxx(z), |z|<TEST }

 ScottLPS(XAXIS) { z = pixel, TEST = (p1+3): z = log(z)+sin(z), |z|<TEST }

 ScottLTC(XAXIS) { z = pixel, TEST = (p1+3): z = log(z)*cosxx(z), |z|<TEST }

 ScottLTS(XAXIS) { z = pixel, TEST = (p1+3): z = log(z)*sin(z), |z|<TEST }

 ScottSIC(XYAXIS) { z = pixel, TEST = (p1+3): z = sqr(1/cosxx(z)), |z|<TEST }

 ScSkCosH(XYAXIS) { z = pixel, TEST = (p1+3): z = cosh(z) - sqr(z), |z|<TEST }

 ScSkLMS(XAXIS) { z = pixel, TEST = (p1+3): z = log(z) - sin(z), |z|<TEST }

 ScSkZCZZ(XYAXIS) { z = pixel, TEST = (p1+3): z = (z*cosxx(z)) - z, |z|<TEST }

comment {
This file includes the formulas required to support the file
RCLPAR.PAR.

In addition, I have included a number of additional formulas 
for your enjoyment <G>.

Ron Lewen
CIS: 76376,2567 

  }

RCL_Cosh (XAXIS) { ; Ron Lewen, 76376,2567
  ; Try corners=2.008874/-3.811126/-3.980167/3.779833/
  ; -3.811126/3.779833 to see Figure 9.7 (P. 123) in 
  ; Pickover's Computers, Pattern, Chaos and Beauty.
  ; Figures 9.9 - 9.13 can be found by zooming.
  ; Use floating point
  ;
  z=0:
    z=cosh(z) + pixel,
      abs(z) < 40
  }

Mothra (XAXIS) { ; Ron Lewen, 76376,2567
  ; Remember Mothra, the giant Japanese-eating moth?
  ; Well... here he (she?) is as a fractal!
  ;
  z=pixel:
    z2=z*z
    z3=z2*z
    z4=z3*z
    a=z4*z + z3 + z + pixel
    b=z4 + z2 + pixel
    z=b*b/a,
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_11 { ; Ron Lewen, 76376,2567
  ; A variation on the formula used to generate
  ; Figure 9.18 (p. 134) from Pickover's book.
  ; P1 sets the initial value for z.
  ; Try p1=.75, or p1=2, or just experiment!
  ;
  z=real(p1):
    z=z*pixel-pixel/sqr(z)
    z=flip(z),
      abs(z) < 8
  }

RCL_10 { ; Ron Lewen, 76376,2567
  ;
  ;
  ;
  z=pixel:
    z=flip((z*z+pixel)/(pixel*pixel+z))
      |z| <= 4
  }

FractalFenderC (XAXIS_NOPARM) {; Spectacular!
    ; Modified for if..else logic 3/18/97 by Sylvie Gallet
   z = p1, x = |z| :
   IF (1 < x)
      z = cosh(z) + pixel
   ENDIF
   z = sqr(z) + pixel, x = |z|
   x <= 4
  ;SOURCE: fract196.frm
}

SpecC (XAXIS_NOPARM) {
     ; modified for if..else by George Martin 3/18/97
   z = p1
   x = |z| :
   IF (x>1)
      z = fn1(z)+pixel
   ENDIF
   z = fn2(z)+pixel
   x = |z|
   x <= 4
  ;SOURCE: skinner.frm
}

 Silverado(XAXIS) {; Rollo Silver
  ; Select p1 such that 0. <= p1 <= 1.
  z = Pixel, zz=z*z, zzz=zz*z, z = (1.-p1)*zz + (p1*zzz), test = (p2+4)*(p2+4): ;
   z = z + Pixel
   zsq = z*z
   zcu = zsq*z
   z = (1.-p1)*zsq + p1*zcu,
   |z| <= test
  }

