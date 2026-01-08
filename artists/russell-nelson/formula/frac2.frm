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
	LastSqr <= 4      ; Use LastSqr instead of recalculating
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
  ; Note that floating-point is required to make this compute accurately
  z = pixel, Root = 1:
   z3 = z*z*z;
   z4 = z3 * z;
   z = (3 * z4 + Root) / (4 * z3);
	.004 <= |z4 - Root|
  }

comment {
   The following are from Chris Green:
   These fractals all use Newton's or Halley's formula for approximation
   of a function.  In all of these fractals, p1 real is the "relaxation
   coefficient". A value of 1 gives the conventional newton or halley
   iteration. Values <1 will generally produce less chaos than values >1.
   1-1.5 is probably a good range to try.  P1 imag is the imaginary component
   of the relaxation coefficient, and should be zero but maybe a small
   non-zero value will produce something interesting. Who knows?
   For more information on Halley maps, see "Computers, Pattern, Chaos,
   and Beauty" by Pickover.
   }

Halley (XYAXIS) {; Chris Green. Halley's formula applied to x^7-x=0.
  ; P1 real usually 1 to 1.5, P1 imag usually zero. Use floating point.
  ; Setting P1 to 1 creates the picture on page 277 of Pickover's book
  z=pixel:
   z5=z*z*z*z*z;
   z6=z*z5;
   z7=z*z6;
   z=z-p1*((z7-z)/ ((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2))),
	0.0001 <= |z7-z|
  }

CGhalley (XYAXIS) {; Chris Green -- Halley's formula
  ; P1 real usually 1 to 1.5, P1 imag usually zero. Use floating point.
  z=(1,1):
   z5=z*z*z*z*z;
   z6=z*z5;
   z7=z*z6;
   z=z-p1*((z7-z-pixel)/ ((7.0*z6-1)-(42.0*z5)*(z7-z-pixel)/(14.0*z6-2))),
	0.0001 <= |z7-z-pixel|
  }

halleySin (XYAXIS) {; Chris Green. Halley's formula applied to sin(x)=0.
  ; Use floating point.
  ; P1 real = 0.1 will create the picture from page 281 of Pickover's book.
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
	   gamma(z) = (z/e) * sqrt(2*pi*z) * R      }

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

Gamma(XAXIS) { ; first order gamma function from Prof. Jm
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

MandelXAxis(XAXIS) {    ; for Transparent3D
  z = zt,       ; Define Julia axes as depth/time and the
  c = xy:       ;   Mandelbrot axes as width/height for each slice.
			;   This corresponds to Mandelbrot axes as
			;   height/depth and the Julia axes as width
			;   time for the 3D image.
   z = Sqr(z) + c
	LastSqr <= 4;
  }

OldJulibrot(ORIGIN) {           ; for Transparent3D
  z = real(zt) + flip(imag(xy)),    ; These settings coorespond to the
  c = imag(zt) + flip(real(xy)):    ;   Julia axes as height/width and
					;   the Mandelbrot axes as time/depth
					;   for the 3D image.
   z = Sqr(z) + c
	LastSqr <= 4;
  }
   IkenagaMap(XAXIS) {; based upon the Ikenaga function described
	  ; in Dewdneys's The Armchair Universe.
	  ; The initial starting point allows the function to provide a
	  ; "map" for the corresponding Julia function (Julike )
	  z = ((1-pixel)/3)^0.5:
	  z = z*z*z + (pixel-1)*z - pixel, |z| <= 4
   }

   Julike {; a Julia function based upon the Ikenaga function
	  z = Pixel:
	  z = z*z*z + (P1-1)*z - P1, |z| <= 4
   }

   Mask {; try fn1 = log, fn2 = sinh, fn3 = cosh
	  ;P1 = (0,1), P2 = (0,1)
	  ;Use floating point
	  z = fn1(pixel):
	  z = P1*fn2(z)^2 + P2*fn3(z)^2 + pixel, |z| <= 4
   }

   JMask {
	  z = fn1(pixel):
	  z = P1*fn2(z)^2 + P2, |z| <= 4
   }

   PseudoZeePi {
	  z = pixel:
	  x = 1-z^p1;
	  z = z*((1-x)/(1+x))^(1/p1) + p2, |z| <= 4
   }

   ZeePi {; This Julia function is based upon Ramanujan's iterative
	  ; function for calculating pi
	  z = pixel:
	  x = (1-z^p1)^(1/p1);
	  z = z*(1-x)/(1+x) + p2, |z| <= 4
   }

   IkeNewtMand {
   z = c = pixel:
   zf = z*z*z + (c-1)*z - c;
   zd = 3*z*z + c-1;
   z = z - p1*zf/zd, 0.001 <= |zf|
   }

   IkeNewtJul {
   z =  pixel:
   zf = z*z*z + (p2-1)*z - p2;
   zd = 3*z*z + p2-1;
   z = z - p1*zf/zd, 0.001 <= |zf|
   }

   RecipIke {
   z = pixel:
   z = 1/(z*z*z + (p1-1)*z - p1), |z| <= 4
   }

   Frame-RbtM(XAXIS) {; from Mazes for the Mind by Pickover
   z = c = pixel:
   z = z*z*z/5 + z*z + c, |z| <= 100
   }

   Frame-RbtJ {
   z = pixel:
   z = z*z*z/5 + z*z + p1, |z| <= 100
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

 comment { Moire Tetrated Log - Improper Bailout }

 TLog (XAXIS) {
		z = c = log(pixel):
				z = c ^ z,
					z <= (p1 + 3)
		}

 comment { Tetrated Hyperbolic Sine - Improper Bailout }

 TSinh (XAXIS) {
		z = c = sinh(pixel):
				z = c ^ z,
					z <= (p1 + 3)
		}

DrChaosbrot2 (xyaxis) {; more phi
  z = c = pixel:
  z = sqr(z) + (((sqrt(5)+ 1)/2)+c)
  |z| <= 4
  ;SOURCE: drcha.frm
}

phoenix_m { ; Mandelbrot stye map of the Phoenix curves
   z=x=y=nx=ny=x1=y1=x2=y2=0:
   x2 = sqr(x), y2 = sqr(y),
   x1 = x2 - y2 + real(pixel) + imag(pixel) * nx,
   y1 = 2 * x * y + imag(pixel) * ny,
   nx=x, ny=y, x=x1, y=y1, z=x + flip(y),
   |z| <= 4
   }

 ScottSIS(XYAXIS) { z = pixel, TEST = (p1+3): z = sqr(1/sin(z)), |z|<TEST }

M-SetInNewton(XAXIS) {; use float=yes
					  ; jon horner 100112,1700, 12 feb 93
  z = 0,  c = pixel,  cminusone = c-1:
  oldz = z,  nm = 3*c-2*z*cminusone, dn = 3*(3*z*z+cminusone),
  z = nm/dn+2*z/3,   |(z-oldz)|>=|0.01|
 }

;========================================================================
;Date:    Mon, 10 Feb 1992 13:10:12 EST
;From: "Bruno"
;Subject: MORE .par and .frm
;X-Topic: Entry #3185 of LISTS.FRAC-L
;To: "LISTS.FRAC-L.3185"
;
;Posted on 10 Feb 1992 at 12:24:22 by BrownVM Mailer (103837)
;
;MORE .par and .frm
;
;Date:         Mon, 10 Feb 1992 08:18:36 GMT
;Reply-To:     'FRACTAL' discussion list <FRAC-L@GITVM1.BITNET>
;From:         Rob den Braasem <rdb@KTIBV.UUCP>
;
;Here are a group of files with formulas derived from a book of Roger Stevens
;
;First the formmats file and then the par file.
;
;
;--------------------------------------------------------------------
;{
;  ADVANCE FRACTAL PROGRAMMING IN C
;  by Roger Stevens.
;
;  I changed them in a Julia and Mandelbrot type fractal generatoren.
;  The Graphical Gnome (rdb@ktibv)
;
;}
;
;{
;   JULIA TYPE FRACTALS
;}
;

J_TchebychevT2 {
   c = pixel, z = P1:
   z = c*(2*z*z-1),
   |z|<100
}

J_TchebychevT3 {   ;
   c = pixel, z = P1:
   z = c*z*(4*z*z-3),
   |z|<100
}

J_TchebychevT4 {
   c = pixel, z = P1:
   z = c*(z*z*(8*z*z+8)+1),
   |z|<100
}

J_TchebychevT5 {    ;
   c = pixel, z = P1:
   z = c*(z*(z*z*(16*z*z-20)+5)),
   |z|<100
}

J_TchebychevT6 {
   c = pixel, z = P1:
   z = c*(z*z*(z*z*(32*z*z-48)+18)-1),
   |z|<100
}

J_TchebychevT7 {     ;
   c = pixel, z = P1:
   z = c*z*(z*z*(z*z*(64*z*z-112)+56)-7),
   |z|<100
}

J_TchebychevC2 {
   c = pixel, z = P1:
   z = c*(z*z-2),
   |z|<100
}

J_TchebychevC3 {   ;
   c = pixel, z = P1:
   z = c*z*(z*z-3),
   |z|<100
}

J_TchebychevC4 {
   c = pixel, z = P1:
   z = c*(z*z*(z*z-4)+2),
   |z|<100
}

J_TchebychevC5 {    ;
   c = pixel, z = P1:
   z = c*z*(z*z*(z*z-5)+5),
   |z|<100
}

J_TchebychevC6 {
   c = pixel, z = P1:
   z = c*(z*z*(z*z*(z*z-6)+9)-2),
   |z|<100
}

J_TchebychevC7 {     ;
   c = pixel, z = P1:
   z = c*z*(z*z*(z*z*(z*z-7)+14)-7),
   |z|<100
}


J_TchebychevU2 {
   c = pixel, z = P1:
   z = c*(4*z*z-1),
   |z|<100
}

J_TchebychevU3 {   ;
   c = pixel, z = P1:
   z = c*z*(8*z*z-4),
   |z|<100
}

J_TchebychevU4 {
   c = pixel, z = P1:
   z = c*(z*z*(16*z*z-12)+1),
   |z|<100
}

J_TchebychevU5 {    ;
   c = pixel, z = P1:
   z = c*z*(z*z*(32*z*z-32)+6),
   |z|<100
}

J_TchebychevU6 {
   c = pixel, z = P1:
   z = c*(z*z*(z*z*(64*z*z-80)+24)-1),
   |z|<100
}

J_TchebychevU7 {     ;
   c = pixel, z = P1:
   z = c*z*(z*z*(z*z*(128*z*z-192)+80)-8),
   |z|<100
}

J_TchebychevS2 {
   c = pixel, z = P1:
   z = c*(z*z-1),
   |z|<100
}

J_TchebychevS3 {   ;
   c = pixel, z = P1:
   z = c*z*(z*z-2),
   |z|<100
}

J_TchebychevS4 {
   c = pixel, z = P1:
   z = c*(z*z*(z*z-3)+1),
   |z|<100
}

J_TchebychevS5 {    ;
   c = pixel, z = P1:
   z = c*z*(z*z*(z*z-4)+3),
   |z|<100
}

J_TchebychevS6 {
   c = pixel, z = P1:
   z = c*(z*z*(z*z*(z*z-5)+6)-1),
   |z|<100
}

J_TchebychevS7 {     ;
   c = pixel, z = P1:
   z = c*z*(z*z*(z*z*(z*z-6)+10)-4),
   |z|<100
}

J_Laguerre2 {
   c = pixel, z = P1:
   z = (z*(z - 4) +2 ) / 2 + c,
   |z| < 100

}

J_Laguerre3 {
   c = pixel, z = P1:
   z = (z*(z*(-z + 9) -18) + 6 ) / 6 + c,
   |z| < 100
}

J_Laguerre4 {
   c = pixel, z = P1:
   z = (z * ( z * ( z * ( z - 16)+ 72) - 96)+ 24 ) / 24 + c,
   |z| < 100
}

J_Laguerre5 {
   c = pixel, z = P1:
   z = (z * ( z * ( z * ( z * (-z +25) -200) +600) -600) + 120 ) / 120 + c,
   |z| < 100
}

J_Laguerre6 {
   c = pixel, z = P1:
   z = (z * ( z * ( z * ( z*(z*(z -36) +450) -2400) + 5400)-4320) + 720 ) / 720
+ c,
   |z| < 100
}

J_Lagandre2 {
   c = pixel, z = P1:
   z = (3 * z*z - 1) / 2 + c
   |z| < 100
}

J_Lagandre3 {
   c = pixel, z = P1:
   z = z * (5 * z*z - 3) / 2 + c
   |z| < 100
}

J_Lagandre4 {
   c = pixel, z = P1:
   z = (z*z*(35 * z*z - 30) + 3) / 8 + c
   |z| < 100
}

J_Lagandre5 {
   c = pixel, z = P1:
   z = z* (z*z*(63 * z*z - 70) + 15 ) / 8 + c
   |z| < 100
}

J_Lagandre6 {
   c = pixel, z = P1:
   z = (z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c
   |z| < 100
}

J_Lagandre7 {
   c = pixel, z = P1:
   z = z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / 16 + c
   |z| < 100
}

{
 MANDELBROT TYPE FRACTALS
}

M_TchebychevT2 {
   c = P1, z = Pixel:
   z = c*(2*z*z-1),
   |z|<100
}

M_TchebychevT3 {   ;
   c = P1, z = Pixel:
   z = c*z*(4*z*z-3),
   |z|<100
}

M_TchebychevT4 {
   c = P1, z = Pixel:
   z = c*(z*z*(8*z*z+8)+1),
   |z|<100
}

M_TchebychevT5 {    ;
   c = P1, z = Pixel:
   z = c*(z*(z*z*(16*z*z-20)+5)),
   |z|<100
}

M_TchebychevT6 {
   c = P1, z = Pixel:
   z = c*(z*z*(z*z*(32*z*z-48)+18)-1),
   |z|<100
}

M_TchebychevT7 {     ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(z*z*(64*z*z-112)+56)-7),
   |z|<100
}

M_TchebychevC2 {
   c = P1, z = Pixel:
   z = c*(z*z-2),
   |z|<100
}

M_TchebychevC3 {   ;
   c = P1, z = Pixel:
   z = c*z*(z*z-3),
   |z|<100
}

M_TchebychevC4 {
   c = P1, z = Pixel:
   z = c*(z*z*(z*z-4)+2),
   |z|<100
}

M_TchebychevC5 {    ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(z*z-5)+5),
   |z|<100
}

M_TchebychevC6 {
   c = P1, z = Pixel:
   z = c*(z*z*(z*z*(z*z-6)+9)-2),
   |z|<100
}

M_TchebychevC7 {     ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(z*z*(z*z-7)+14)-7),
   |z|<100
}


M_TchebychevU2 {
   c = P1, z = Pixel:
   z = c*(4*z*z-1),
   |z|<100
}

M_TchebychevU3 {   ;
   c = P1, z = Pixel:
   z = c*z*(8*z*z-4),
   |z|<100
}

M_TchebychevU4 {
   c = P1, z = Pixel:
   z = c*(z*z*(16*z*z-12)+1),
   |z|<100
}

M_TchebychevU5 {    ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(32*z*z-32)+6),
   |z|<100
}

M_TchebychevU6 {
   c = P1, z = Pixel:
   z = c*(z*z*(z*z*(64*z*z-80)+24)-1),
   |z|<100
}

M_TchebychevU7 {     ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(z*z*(128*z*z-192)+80)-8),
   |z|<100
}

M_TchebychevS2 {
   c = P1, z = Pixel:
   z = c*(z*z-1),
   |z|<100
}

M_TchebychevS3 {   ;
   c = P1, z = Pixel:
   z = c*z*(z*z-2),
   |z|<100
}

M_TchebychevS4 {
   c = P1, z = Pixel:
   z = c*(z*z*(z*z-3)+1),
   |z|<100
}

M_TchebychevS5 {    ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(z*z-4)+3),
   |z|<100
}

M_TchebychevS6 {
   c = P1, z = Pixel:
   z = c*(z*z*(z*z*(z*z-5)+6)-1),
   |z|<100
}

M_TchebychevS7 {     ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(z*z*(z*z-6)+10)-4),
   |z|<100
}

M_Laguerre2 {
   c = P1, z = Pixel:
   z = (z*(z - 4) +2 ) / 2 + c,
   |z| < 100

}

M_Laguerre3 {
   c = P1, z = Pixel:
   z = (z*(z*(-z + 9) -18) + 6 ) / 6 + c,
   |z| < 100
}

M_Laguerre4 {
   c = P1, z = Pixel:
   z = (z * ( z * ( z * ( z - 16)+ 72) - 96)+ 24 ) / 24 + c,
   |z| < 100
}

M_Laguerre5 {
   c = P1, z = Pixel:
   z = (z * ( z * ( z * ( z * (-z +25) -200) +600) -600) + 120 ) / 120 + c,
   |z| < 100
}

M_Laguerre6 {
   c = P1, z = Pixel:
   z = (z * ( z * ( z * ( z*(z*(z -36) +450) -2400) + 5400)-4320) + 720 ) / 720
+ c,
   |z| < 100
}

M_Lagandre2 {
   c = P1, z = Pixel:
   z = (3 * z*z - 1) / 2 + c
   |z| < 100
}

M_Lagandre3 {
   c = P1, z = Pixel:
   z = z * (5 * z*z - 3) / 2 + c
   |z| < 100
}

M_Lagandre4 {
   c = P1, z = Pixel:
   z = (z*z*(35 * z*z - 30) + 3) / 8 + c
   |z| < 100
}

M_Lagandre5 {
   c = P1, z = Pixel:
   z = z* (z*z*(63 * z*z - 70) + 15 ) / 8 + c
   |z| < 100
}

M_Lagandre6 {
   c = P1, z = Pixel:
   z = (z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c
   |z| < 100
}

M_Lagandre7 {
   c = P1, z = Pixel:
   z = z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / 16 + c
   |z| < 100
}

test {; Edited for Fractint v. 20 by George Martin, 10/98
      ; The error in the formula as originally written rendered
      ; it trivial. This is what the author intended.
  z=pixel, c=p1:
  z = z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / (16 * (z+c))
  |z| < 100
  ;SOURCE: tchebych.frm
}
