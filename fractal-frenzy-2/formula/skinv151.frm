 comment = {
 FRACTINT.DOC has instructions for adding new formulas to this file.
 Note that there are several hard-coded restrictions in the formula
 interpreter:

 1) The fractal name through the open curly bracket must be on a single line.
 2) There is a current hard-coded limit of 30 formulas per formula file, only
    because of restrictions in the prompting routines.
 3) Formulas must currently be less than 200 characters long.
 3) Comments, like this one, are set up using dummy formulas with no
    formula name or the special name "comment".  There can be as many
    of these "comment" fractals as desired, they can be interspersed with
    the real formulas, and they have no length restriction.

 The formulas in the beginning of this file are from Mark Peterson, who
 built this fractal interpreter feature.  The rest are grouped by contributor.
 (Scott Taylor sent many but they are no longer here - they've been
 incorporated as hard-coded types.  Lee Skinner also sent many which have
 now been hard-coded.)
 }

 comment = { The following are from Lee Skinner }

 comment = { Mandelbrot form 1 of the Tetration formula }

 MTet (XAXIS) {
   z = pixel:
       z = (pixel ^ z) + pixel,
	   |z| <= (P1 + 3)
 }

 comment = { Mandelbrot form 2 of the Tetration formula }

 AltMTet (XAXIS) {
   z = 0:
       z = (pixel ^ z) + pixel,
	   |z| <= (P1 + 3)
 }

 comment = { Julia form 1 of the Tetration formula }

 JTet (XAXIS) {
   z = pixel:
       z = (pixel ^ z) + P1,
	   |z| <= (P2 + 3)
 }

 comment = { Julia form 2 of the Tetration formula }

 AltJTet (XAXIS) {
   z = P1:
       z = (pixel ^ z) + P1,
	   |z| <= (P2 + 3)
 }

 Cubic (XYAXIS) {
	  p = pixel,
       test = p1 + 3,
	 t3 = 3*p,
	 t2 = p*p,
	  a = (t2 + 1)/t3,
	  b = 2*a*a*a + (t2 - 2)/t3,
	aa3 = a*a*3,
	  z = 0 - a :
	      z = z*z*z - aa3*z + b,  |z| < test }


 { The following resulted from a FRACTINT bug. Version 13 incorrectly
   calculated Spider (see above). We fixed the bug, and reverse-engineered
   what it was doing to Spider - so here is the old "spider" }

 Wineglass (XAXIS) {
    c = z = pixel:
    z = z * z + c, c = (1+imag(c)) * real(c) / 2 + z, |z| <= 4 }


  { The following were sent by JM Colard-Richard}

  Richard1 (XYAXIS) {z = pixel: z=(z*z*sin(z*z)+z*z)+pixel, |z|<=50}
  Richard2 (XYAXIS) {z = pixel: z=1/(sin(z*z+pixel*pixel)),|z|<=50}
  Richard3 (XAXIS) {z = pixel: sh=sinh(z);
                    z=(1/(sh*sh) ) + pixel,|z|<=50}
  Richard4 (XAXIS) {z = pixel: z=(1/(z*z*cos(z*z)+z*z))+pixel,|z|<=50}
  Richard5 (XAXIS) {z = pixel: z=sin(z*sinh(z))+pixel,|z|<=50}
  Richard6 (XYAXIS) {z = pixel: z=sin(sinh(z))+pixel,|z|<=50}
  Richard7 (XAXIS) {z = pixel: z=log(z)*pixel,|z|<=50}
  Richard8 (XYAXIS) {z = pixel, f = sin (pixel): z = sin (z) + f, |z| <= 50}

{ From Kevin Lee: }

  LeeMandel1(XYAXIS) = {
      z=Pixel: c=sqr(pixel)/z, c=z+c, z=sqr(z),  |z|<4 }

  LeeMandel2(XYAXIS) = {
      z=Pixel: c=sqr(pixel)/z, c=z+c, z=sqr(c*pixel),  |z|<4 }

  LeeMandel3(XAXIS) = {
      z=Pixel, c=Pixel-sqr(z): c=Pixel+c/z, z=c-z*pixel, |z|<4 }

 { LHS: }

 MandTang (XYAXIS) {
      z = Pixel:  z = sin(z) / cos(z) + Pixel, |z| <= 4 }

 Cos1z (XYAXIS) {
      z = Pixel:  z = cos(1/z), |z| <= 50 }
 comment = { ----------------- Skinner Exponentials ---------------- }

 Zexpe (XAXIS) = {
      s = exp(1.,0.), z = Pixel:
      z = z ^ s + pixel, |z| <= 100
   }

 ZexpeJulia (XAXIS) = {
      s = exp(1.,0.), z = Pixel:
      z = (z ^ s) + P1, |z| <= 100
   }

 comment = {  s = log(-1.,0.) / (0.,1.)   is   (3.14159265358979, 0.0 }

 Exipi (XAXIS) = {
      s = log(-1.,0.) / (0.,1.), z = Pixel:
      z = z ^ s + pixel, |z| <= 100
   }

 comment = { ----------------- similar to Richard8: ------------------------
             replace all cos with cosxx
 PART 1 - STANDARD FUNCTIONS }

  Fzppcos   {z = pixel, f = cosxx (pixel):  z = cosxx (z)  + f, |z| <= 50}
  Fzppsinh  {z = pixel, f = sinh (pixel): z = sinh (z) + f, |z| <= 50}
  Fzppcosh  {z = pixel, f = cosh (pixel): z = cosh (z) + f, |z| <= 50}
  Fzppexp   {z = pixel, f = exp (pixel):  z = exp (z)  + f, |z| <= 50}

  Fzppcosi  {z = pixel, f = sin (pixel):  z = cosxx (z)  + f, |z| <= 50}
  Fzppshsi  {z = pixel, f = sin (pixel):  z = sinh (z) + f, |z| <= 50}
  Fzppchsi  {z = pixel, f = sin (pixel):  z = cosh (z) + f, |z| <= 50}
  Fzppsqsi  {z = pixel, f = sin (pixel):  z = sqr (z)  + f, |z| <= 50}
  Fzppexsi  {z = pixel, f = sin (pixel):  z = exp (z)  + f, |z| <= 50}

  Fzppsico  {z = pixel, f = cosxx (pixel):  z = sin (z)  + f, |z| <= 50}
  Fzppshco  {z = pixel, f = cosxx (pixel):  z = sinh (z) + f, |z| <= 50}
  Fzppchco  {z = pixel, f = cosxx (pixel):  z = cosh (z) + f, |z| <= 50}
  Zppchco8  {z = pixel, f = cosxx (pixel):  z = cosh (z) + f, |z|<=8192}
  Fzppexco  {z = pixel, f = cosxx (pixel):  z = exp (z)  + f, |z| <= 50}

  Fzppsish  {z = pixel, f = sinh (pixel): z = sin (z)  + f, |z| <= 50}
  Fzppcohs  {z = pixel, f = sinh (pixel): z = cosxx (z)  + f, |z| <= 50}
  Fzppchsh  {z = pixel, f = sinh (pixel): z = cosh (z) + f, |z| <= 50}
  Fzppsqsh  {z = pixel, f = sinh (pixel): z = sqr (z)  + f, |z| <= 50}
  Fzppexsh  {z = pixel, f = sinh (pixel): z = exp (z)  + f, |z| <= 50}

  Fzppsich  {z = pixel, f = cosh (pixel): z = sin (z)  + f, |z| <= 50}
  Fzppcoch  {z = pixel, f = cosh (pixel): z = cosxx (z)  + f, |z| <= 50}
  Fzppshch  {z = pixel, f = cosh (pixel): z = sinh (z) + f, |z| <= 50}
  Fzppexch  {z = pixel, f = cosh (pixel): z = exp (z)  + f, |z| <= 50}

  Fzppsisq  {z = pixel, f = sqr (pixel):  z = sin (z)  + f, |z| <= 50}
  Fzppcosq  {z = pixel, f = sqr (pixel):  z = cosxx (z)  + f, |z| <= 50}
  Fzppshsq  {z = pixel, f = sqr (pixel):  z = sinh (z) + f, |z| <= 50}
  Fzppchsq  {z = pixel, f = sqr (pixel):  z = cosh (z) + f, |z| <= 50}
  Fzppexsq  {z = pixel, f = sqr (pixel):  z = exp (z)  + f, |z| <= 50}

  Fzppsiex  {z = pixel, f = exp (pixel):  z = sin (z)  + f, |z| <= 50}
  Fzppcoex  {z = pixel, f = exp (pixel):  z = cosxx (z)  + f, |z| <= 50}
  Fzppshex  {z = pixel, f = exp (pixel):  z = sinh (z) + f, |z| <= 50}
  Fzppchex  {z = pixel, f = exp (pixel):  z = cosh (z) + f, |z| <= 50}
  Fzppsqex  {z = pixel, f = exp (pixel):  z = sqr (z)  + f, |z| <= 50}

  Fzppsilo  {z = pixel, f = log (pixel):  z = sin (z)  + f, |z| <= 50}
  Fzppcolo  {z = pixel, f = log (pixel):  z = cosxx (z)  + f, |z| <= 50}
  Fzppshlo  {z = pixel, f = log (pixel):  z = sinh (z) + f, |z| <= 50}
  Fzppchlo  {z = pixel, f = log (pixel):  z = cosh (z) + f, |z| <= 50}
  Fzppsqlo  {z = pixel, f = log (pixel):  z = sqr (z)  + f, |z| <= 50}
  Fzppexlo  {z = pixel, f = log (pixel):  z = exp (z)  + f, |z| <= 50}

 comment = { NOTE: Formulas of the form: z = log(z) + function(pixel),
             and sqr/sqr, sqr/cosxx, sqr/cosh seem uninteresting.

 PART 2 - COS (Z) + SPECIAL FUNCTIONS }

  Leeze (XAXIS) = {
      s = exp(1.,0.), z = Pixel, f = Pixel ^ s:
      z = cosxx (z) + f, |z| <= 50 }
  Fzppcore  {z = pixel, f = 1. / (pixel):  z = cosxx (z)  + f, |z| <= 50}
  Fzppcopo  {z = pixel, f = (pixel) ^ (pixel):  z = cosxx (z)  + f, |z| <= 50}
  Fzppcosr  {z = pixel, f = (pixel) ^ 0.5:  z = cosxx (z)  + f, |z| <= 50}
  Fzppcota  {z = pixel, f = sin(pixel) / cosxx(pixel):
                        z = cosxx (z)  + f, |z|<= 50}
  Fzppcoct  {z = pixel, f = cosxx(pixel) / sin(pixel):
                        z = cosxx (z)  + f, |z|<= 50}
  Fzppcose  {z = pixel, f = 1. / sin(pixel):  z = cosxx (z)  + f, |z| <= 50}
  Fzppcocs  {z = pixel, f = 1. / cosxx(pixel):  z = cosxx (z)  + f, |z| <= 50}
  Fzppcoth  {z = pixel, f = sinh(pixel) / cosh(pixel):  z = cosxx (z)+f,|z|<= 50}
  Fzppcoht  {z = pixel, f = cosh(pixel) / sinh(pixel):  z = cosxx (z)+f,|z|<= 50}
  Fzpcoseh  {z = pixel, f = 1. / sinh(pixel):  z = cosxx (z)  + f, |z| <= 50}
  Fzpcocoh  {z = pixel, f = 1. / cosh(pixel):  z = cosxx (z)  + f, |z| <= 50}

  Fzppcopl  {z = pixel, f = pixel ^ (log(pixel) ):  z = cosxx (z)  + f, |z| <= 50}
  Fzppcopc  {z = pixel, f = pixel ^ (cosxx(pixel) ):  z = cosxx (z)  + f, |z| <= 50}
  Fzppcops  {z = pixel, f = pixel ^ (sin(pixel) ):  z = cosxx (z)  + f, |z| <= 50}
  Fzppcope  {z = pixel, f = pixel ^ (exp(pixel) ):  z = cosxx (z)  + f, |z| <= 50}
  Fzpcopsq  {z = pixel, f = pixel ^ (sqr(pixel) ):  z = cosxx (z)  + f, |z| <= 50}
  Fzpcopsh  {z = pixel, f = pixel ^ (sinh(pixel) ):
                        z = cosxx (z)  + f, |z| <= 50}
  Fzpcopch  {z = pixel, f = pixel ^ (cosh(pixel) ):
                        z = cosxx (z)  + f, |z| <= 50}
  Fzppcopr  {z = pixel, f = pixel ^ (1. / pixel):
                        z = cosxx (z)  + f, |z| <= 50}
  Fzpcopta  {z = pixel, f = pixel ^ (sin(pixel) / cosxx(pixel) ):
                        z = cosxx (z)  + f, |z|<= 50}
  Fzpcopct  {z = pixel, f = pixel ^ (cosxx(pixel) / sin(pixel) ):
                        z = cosxx (z)  + f, |z|<= 50}
  Fzpcopse  {z = pixel, f = pixel ^ (1. / sin(pixel) ):
                        z = cosxx (z)  + f, |z| <= 50}
  Fzpcopcs  {z = pixel, f = pixel ^ (1. / cosxx(pixel) ):
                        z = cosxx (z)  + f, |z| <= 50}
  Fzpcopth  {z = pixel, f = pixel ^ (sinh(pixel) / cosh(pixel) ):
                        z = cosxx (z)+f,|z|<= 50}
  Fzpcopht  {z = pixel, f = pixel ^ (cosh(pixel) / sinh(pixel) ):
                        z = cosxx (z)+f,|z|<= 50}
  Fzpcophs  {z = pixel, f = pixel ^ (1. / sinh(pixel) ):
                        z = cosxx (z)  + f, |z| <= 50}
  Fzpcophc  {z = pixel, f = pixel ^ (1. / cosh(pixel) ):
                        z = cosxx (z)  + f, |z| <= 50}


 { PART 3 - SIN (Z) + SPECIAL FUNCTIONS }

  Fzppsire  {z = pixel, f = 1. / (pixel):  z = sin (z)  + f, |z| <= 50}

   Mandelbrot(XAXIS) = {
      z = Pixel:  z = sqr(z) + pixel, |z| <= 4
   }

   Dragon (ORIGIN) {
      z = Pixel:
	 z = sqr(z) + (-0.74543, 0.2),
      |z| <= 4
   }

   Daisy (ORIGIN) = { z = pixel:  z = z*z + (0.11031, -0.67037), |z| <= 4 }

   InvMandel (XAXIS) {
      c = z = 1 / pixel:
	 z = sqr(z) + c;
      |z| <= 4
   }

   MarksMandelPwr (XAXIS) {
      z = pixel, c = z ^ (z - 1):
	 z = c * sqr(z) + pixel,
      |z| <= 4
   }

   DeltaLog (XAXIS) {
      z = pixel, c = log(pixel):
	 z = sqr(z) + c,
      |z| <= 4
   }

   Newton4 (XYAXIS) {
      z = pixel;
         Root = 1:
	 z3 = z*z*z;
	 z4 = z3 * z;
	 z = (3 * z4 + Root) / (4 * z3),
		.004 <= |z4 - Root|
   }


 comment = {
	The following are from Chris Green:
	These fractals all use Newton's or Halley's formula for approximation
	of a function.	In all of these fractals, p1 is the "relaxation
	coefficient". A value of 1 gives the conventional newton or halley
	iteration. Values <1 will generally produce less chaos than values >1.
	1-1.5 is probably a good range to try.	P2 is the imaginary component
	of the relaxation coefficient, and should be zero but maybe a small
	non-zero value will produce something interesting. Who knows?

	These MUST be run with floating point in order to produce the correct
	pictures.  I Haven't explored these sets very much because I lack a
	floating point coprocessor.

	For more information on Halley maps, see "Computers, Pattern, Chaos,
	and Beauty" by Pickover.

	Halley :  Halley's formula applied to x^7-x=0. Setting P1 to 1 will
		create the picture on page 277 of Pickover's book.

	HalleySin : Halley's formula applied to sin(x)=0. Setting P1 to 0.1
		will create the picture from page 281 of Pickover.

	NewtonSinExp : Newton's formula applied to sin(x)+exp(x)-1=0.

	CGNewton3 : A different variation on newton iteration. The initial
		guess is fixed at (1,1), but the equation solved is different
		at each pixel ( x^3-pixel=0 is solved). Try P1=1.8.

	CGNewtonSinExp : Newton's formula applied to sin(x)+exp(x)-pixel=0.

	HyperMandel :  A four dimensional version of the mandelbrot set. Use P1
		to select which two-dimensional plane of the four dimensional
		set you wish to examine.

 }

  halley (XYAXIS) {
	z=pixel:
	z5=z*z*z*z*z;
	z6=z*z5;
	z7=z*z6;
	z=z-p1*((z7-z)/ ((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2))),
	0.0001 <= |z7-z|
	}

  CGhalley (XYAXIS) {
	z=(1,1):
	z5=z*z*z*z*z;
	z6=z*z5;
	z7=z*z6;
	z=z-p1*((z7-z-pixel)/ ((7.0*z6-1)-(42.0*z5)*(z7-z-pixel)/(14.0*z6-2))),
	0.0001 <= |z7-z-pixel|
	}

   halleySin (XYAXIS) {
	z=pixel:
	s=sin(z);
	c=cos(z);
	z=z-p1*(s/(c-(s*s)/(c+c))),
	0.0001 <= |s|
   }

   NewtonSinExp (XAXIS) {
	z=pixel:
	z1=exp(z);
	z2=sin(z)+z1-1;
	z=z-p1*z2/(cos(z)+z1), .0001 < |z2|
   }

   CGNewtonSinExp (XAXIS) {
	z=pixel:
	z1=exp(z);
        z2=sin(z)+z1-z;
	z=z-p1*z2/(cos(z)+z1), .0001 < |z2|
   }

   CGNewton3 {
		z=(1,1):
		z2=z*z;
		z3=z*z2;
		z=z-p1*(z3-pixel)/(3.0*z2),
		0.0001 < |z3-pixel|
	}

    HyperMandel {
	a=(0,0);
	b=(0,0):
	z=z+1;
	anew=sqr(a)-sqr(b)+pixel;
	b=2.0*a*b+p1;
	a=anew,
	|a|+|b| <= 4
    }


{ The following are from Scott Taylor.
  Scott says they're "Dog" because the first one he looked at reminded
  him of a hot dog. }

  SinDog(XYAXIS)  { z = Pixel, b = p1+2:  z = sin( z ) * pixel,  |z| <= b }
  CosDog(XYAXIS)  { z = Pixel, b = p1+2:  z = cos( z ) * pixel,  |z| <= b }
  SinHDog(XYAXIS) { z = Pixel, b = p1+2:  z = sinh( z ) * pixel, |z| <= b }
  CosHDog(XYAXIS) { z = Pixel, b = p1+2:  z = cosh( z ) * pixel, |z| <= b }
  SqrDog(XYAXIS)  { z = Pixel, b = p1+2:  z = sqr( z ) * pixel,  |z| <= b }
  LogDog(XYAXIS)  { z = Pixel, b = p1+2:  z = log( z ) * pixel,  |z| <= b }
  ExpDog(XYAXIS)  { z = Pixel, b = p1+2:  z = exp( z ) * pixel,  |z| <= b }

