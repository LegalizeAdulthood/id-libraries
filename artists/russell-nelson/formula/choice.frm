{ The formulas with names ending in C are the 'correct' version. }
{ The floating point flag MUST be set for these. }

{ Jon Osuch  73277,1432 }

{ 7/1/91 Added modifications due to rev 16 of Fractint.
         These have a C.1 ending.  Also added formulas using
         fn1 and fn2. }

{ TestSinMandC demonstrates an IF-THEN type formula as an IF-THEN-ELSE
  without the ELSE.
    if |z|<1 then z=sin(z)
    else nothing
    z=sqr(z)+pixel }

{ Verified with Testpt.c version. }
   TestSinMandC(XAXIS_NOPARM) {z=p1,x=|z|:
    (z=sin(z))*(1<x)+(z=z)*(x<=1),
    (z=sqr(z)+pixel),
    x=|z|, x<=4}

{ EvilEyeC demonstrates an IF-THEN-ELSE structure.
    if |z|<1 then z=sin(z)+pixel
    else z=cosxx(z)+pixel }

{ Verified with Testpt.c version. }
   EvilEyeC(XAXIS_NOPARM) {z=p1,x=|z|:
    (z=sin(z)+pixel)*(1<x)+(z=cosxx(z)+pixel)*(x<=1),
    x=|z|, x<=4}

{ Corrected for correct coding of cos. }
   EvilEyeC.1(XAXIS_NOPARM) {z=p1,x=|z|:
    (z=sin(z)+pixel)*(1<x)+(z=cos(z)+pixel)*(x<=1),
    x=|z|, x<=4}
      
{ DeepSpaceProbeC demonstrates a more complicated IF-THEN-ELSE
  structure.
    if x<10 then z=sqr(z)+pixel
    else if x<20 then z=sin(z)+pixel
    else z=cosxx(z)+pixel }

{ Verified with Testpt.c version. }
  DeepSpaceProbeC(XAXIS_NOPARM) { z=p1, x=1:
  (z=sqr(z)+pixel)*(x<10)+(z=sin(z)+pixel)*(10<=x)*(x<20)+(z=cosxx(z)+pixel)*(20<=x),
     x=x+1, |z|<=4 }

{ Corrected for correct coding of cos. }
  DeepSpaceProbeC.1(XAXIS_NOPARM) { z=p1, x=1:
  (z=sqr(z)+pixel)*(x<10)+(z=sin(z)+pixel)*(10<=x)*(x<20)+(z=cos(z)+pixel)*(20<=x),
     x=x+1, |z|<=4 }

   IslandOfChaos(XAXIS_NOPARM) {z=p1, x=1:
         (x<10)*(z=sqr(z)+pixel),
         (10<=x)*(z=sin(z)/cosxx(z)+pixel),
         x=x+1, |z|<=4}

   IslandOfChaosC(XAXIS_NOPARM) {z=p1, x=1:
    (z=sqr(z)+pixel)*(x<10)+(z=sin(z)/cosxx(z)+pixel)*(10<=x),
    x=x+1, |z|<=4}

{ Corrected for correct coding of cos. }
   IslandOfChaosC.1(XAXIS_NOPARM) {z=p1, x=1:
    (z=sqr(z)+pixel)*(x<10)+(z=tan(z)+pixel)*(10<=x),
    x=x+1, |z|<=4}

   BirdOfPrey(XAXIS_NOPARM) {z=p1, x=1:
         (x<10)*(z=sqr(z)+pixel),
         (10<=x)*(z=cosxx(z)+pixel),
         x=x+1, |z|<=4}

   BirdOfPreyC(XAXIS_NOPARM) {z=p1, x=1:
    (z=sqr(z)+pixel)*(x<10)+(z=cosxx(z)+pixel)*(10<=x),
    x=x+1, |z|<=4}

{ Corrected for correct coding of cos. }
   BirdOfPreyC.1(XAXIS_NOPARM) {z=p1, x=1:
    (z=sqr(z)+pixel)*(x<10)+(z=cos(z)+pixel)*(10<=x),
    x=x+1, |z|<=4}

   FractalFender(XAXIS_NOPARM) {z=p1,x=|z|:
       (1<x)*(z=cosh(z)+pixel),
       z=sqr(z)+pixel,x=|z|,
       x<=4 }

{ Spectacular! }
   FractalFenderC(XAXIS_NOPARM) {z=p1,x=|z|:
       (z=cosh(z)+pixel)*(1<x)+(z=z)*(x<=1),
       z=sqr(z)+pixel,x=|z|,
       x<=4 }

   FractalFender2(XAXIS_NOPARM) {z=p1,x=|z|:
             (1<x)*(z=cosxx(z)+pixel),
             z=sqr(z)+pixel,x=|z|,
             x<=4 }

   FractalFender2C(XAXIS_NOPARM) {z=p1,x=|z|:
             (z=cosxx(z)+pixel)*(1<x)+(z=z)*(x<=1),
             z=sqr(z)+pixel,x=|z|,
             x<=4 }

{ Corrected for correct coding of cos. }
   FractalFender2C.1(XAXIS_NOPARM) {z=p1,x=|z|:
             (z=cos(z)+pixel)*(1<x)+(z=z)*(x<=1),
             z=sqr(z)+pixel,x=|z|,
             x<=4 }

   FlyingSquirrel(XAXIS_NOPARM) {z=p1,x=|z|:
             (1<x)*(z=sin(z)/cosxx(z)+pixel),
             z=sqr(z)+pixel,x=|z|,
             x<=4 }

   FlyingSquirrelC(XAXIS_NOPARM) {z=p1,x=|z|:
             (z=sin(z)/cosxx(z)+pixel)*(1<x)+(z=z)*(x<=1),
             z=sqr(z)+pixel,x=|z|,
             x<=4 }

{ Corrected for correct coding of cos. }
   FlyingSquirrelC.1(XAXIS_NOPARM) {z=p1,x=|z|:
             (z=tan(z)+pixel)*(1<x)+(z=z)*(x<=1),
             z=sqr(z)+pixel,x=|z|,
             x<=4 }

   Frog(XAXIS_NOPARM) {z=p1,x=|z|:
             (1<x)*(z=tanh(z)+pixel),
             z=sqr(z)+pixel,x=|z|,
             x<=4 }

   FrogC(XAXIS_NOPARM) {z=p1,x=|z|:
             (z=tanh(z)+pixel)*(1<x)+(z=z)*(x<=1),
             z=sqr(z)+pixel,x=|z|,
             x<=4 }

  Fly(XAXIS_NOPARM) {z=p1:
      x=real(z),
      (x<0)*(z=sqr(z)+pixel),
      (0<=x)*(z=sqr(z)-pixel),
      |z|<=4}

  FlyC(XAXIS_NOPARM) {z=p1:
      x=real(z),
      (z=sqr(z)+pixel)*(x<0)+(z=sqr(z)-pixel)*(0<=x),
      |z|<=4}

  DeepSpaceProbe(XAXIS_NOPARM) { z=p1, x=1:
     (x<10)*(z=sqr(z)+pixel),
     (10<=x)*(x<20)*(z=sin(z)+pixel),
     (20<=x)*(z=cosxx(z)+pixel),
     x=x+1, |z|<=4 }

  DpSpaceProbeTwo(XAXIS_NOPARM) { z=p1, x=1:
     (x<10)*(z=sqr(z)+pixel),
     (10<=x)*(x<20)*(z=exp(z)+pixel),
     (20<=x)*(z=cosxx(z)+pixel),
     x=x+1, |z|<=4 }

  DpSpaceProbeTwoC(XAXIS_NOPARM) { z=p1, x=1:
  (z=sqr(z)+pixel)*(x<10)+(z=exp(z)+pixel)*(10<=x)*(x<20)+(z=cosxx(z)+pixel)*(20<=x),
     x=x+1, |z|<=4 }

{ Corrected for correct coding of cos. }
  DpSpaceProbeTwoC.1(XAXIS_NOPARM) { z=p1, x=1:
  (z=sqr(z)+pixel)*(x<10)+(z=exp(z)+pixel)*(10<=x)*(x<20)+(z=cos(z)+pixel)*(20<=x),
     x=x+1, |z|<=4 }

  Moth(XAXIS_NOPARM) { z=p1, x=1:
     (x<10)*(z=sqr(z)+pixel),
     (10<=x)*(x<20)*(z=exp(z)+pixel),
     (20<=x)*(z=log(z)+pixel),
     x=x+1, |z|<=4 }

  MothC(XAXIS_NOPARM) { z=p1, x=1:
     (z=sqr(z)+pixel)*(x<10)+(z=exp(z)+pixel)*(10<=x)*(x<20)+(z=log(z)+pixel)*(20<=x),
     x=x+1, |z|<=4 }

  ManInTheOzone(XAXIS_NOPARM) { z=p1, x=1:
     (x<10)*(z=sqr(z)+pixel),
     (10<=x)*(x<20)*(z=cosxx(z)+pixel),
     (20<=x)*(z=sin(z)+pixel),
     x=x+1, |z|<=4 }

  ManInTheOzoneC(XAXIS_NOPARM) { z=p1, x=1:
     (z=sqr(z)+pixel)*(x<10)+(z=cosxx(z)+pixel)*(10<=x)*(x<20)+(z=sin(z)+pixel)*(20<=x),
     x=x+1, |z|<=4 }

{ Corrected for correct coding of cos. }
  ManInTheOzoneC.1(XAXIS_NOPARM) { z=p1, x=1:
     (z=sqr(z)+pixel)*(x<10)+(z=cos(z)+pixel)*(10<=x)*(x<20)+(z=sin(z)+pixel)*(20<=x),
     x=x+1, |z|<=4 }

   SinhEgg(XAXIS_NOPARM) {z=p1,x=|z|:
             (1<x)*(z=sinh(z)+pixel),
             z=sqr(z)+pixel,x=|z|,
             x<=4 }

   SinhEggC(XAXIS_NOPARM) {z=p1,x=|z|:
   (z=sinh(z)+pixel)*(1<x)+(z=z)*(x<=1),
   z=sqr(z)+pixel,x=|z|,
   x<=4 }

   SinEgg(XAXIS_NOPARM) {z=p1,x=|z|:
             (1<x)*(z=sin(z)+pixel),
             z=sqr(z)+pixel,x=|z|,
             x<=4 }

   SinEggC(XAXIS_NOPARM) {z=p1,x=|z|:
   (z=sin(z)+pixel)*(1<x)+(z=z)*(x<=1),
   z=sqr(z)+pixel,x=|z|,
   x<=4 }

   Eyeball(XAXIS_NOPARM) {z=p1, x=1:
         (x<10)*(z=sqr(z)+pixel),
         (10<=x)*(z=sinh(z)+pixel),
         x=x+1, |z|<=4}

   EyeballC(XAXIS_NOPARM) {z=p1, x=1:
         (z=sqr(z)+pixel)*(x<10)+(z=sinh(z)+pixel)*(10<=x),
         x=x+1, |z|<=4}

   TurtleC(XAXIS_NOPARM) {z=p1:
         x=real(z),
         (z=sqr(z)+pixel)*(x<0)+(z=sqr(z)-pixel)*(0<=x),
         |z|<=4}

   IfThenfn1fn2(XAXIS_NOPARM) {z=p1,x=|z|:
    (z=fn1(z))*(1<x)+(z=z)*(x<=1),
    (z=fn2(z)+pixel),
    x=|z|, x<=4}

   IfThenElsefn1fn2(XAXIS_NOPARM) {z=p1,x=|z|:
    (z=fn1(z)+pixel)*(1<x)+(z=fn2(z)+pixel)*(x<=1),
    x=|z|, x<=4}

  IfElsefn1fn2fn3(XAXIS_NOPARM) { z=p1, x=1:
  (z=fn1(z)+pixel)*(x<10)+(z=fn2(z)+pixel)*(10<=x)*(x<20)+(z=fn3(z)+pixel)*(20<=x),
     x=x+1, |z|<=4 }

{ An extraneous one. }
   WaldoTwinsC(XAXIS_NOPARM) {z=p1:z=cosxx(sin(z+pixel))+pixel, |z|<=4}

{ Corrected for correct coding of cos. }
   WaldoTwinsC.1(XAXIS_NOPARM) {z=p1:z=cos(sin(z+pixel))+pixel, |z|<=4}
