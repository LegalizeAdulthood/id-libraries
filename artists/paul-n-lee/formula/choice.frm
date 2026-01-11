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

TestSinMandC (XAXIS_NOPARM) {; Rewritten for Fractint v. 20 by
                             ; George Martin, 10/98
  z=p1, x=|z|:
  IF (x > 1)
    z = sin(z)
  ENDIF
  z=sqr(z)+pixel
  x=|z|
  x<=4
  ;SOURCE: choice.frm
}

{ EvilEyeC demonstrates an IF-THEN-ELSE structure.
    if |z|<1 then z=sin(z)+pixel
    else z=cosxx(z)+pixel }

EvilEyeC (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=sin(z)+pixel
  ELSE
    z=cosxx(z)+pixel
  ENDIF
  x=|z|
  x<=4
  ;SOURCE: choice.frm
}

{ Corrected for correct coding of cos. }

EvilEyeC.1 (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=sin(z)+pixel
  ELSE
    z=cos(z)+pixel
  ENDIF
  x=|z|
  x<=4
  ;SOURCE: choice.frm
}

{ DeepSpaceProbeC demonstrates a more complicated IF-THEN-ELSE
  structure.
    if x<10 then z=sqr(z)+pixel
    else if x<20 then z=sin(z)+pixel
    else z=cosxx(z)+pixel }

DeepSpaceProbeC (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=sin(z)+pixel
  ELSE
    z=cosxx(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

{ Corrected for correct coding of cos. }

DeepSpaceProbeC.1 (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=sin(z)+pixel
  ELSE
    z=cos(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

IslandOfChaos (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=sin(z)/cosxx(z)+pixel
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

IslandOfChaosC (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSE
    z=sin(z)/cosxx(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

{ Corrected for correct coding of cos. }

IslandOfChaosC.1 (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSE
    z=tan(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

BirdOfPrey (XAXIS_NOPARM) {; Optimized by Sylvie Gallet
  z = p1 :
  z = cosxx(sqr(z) + pixel) + pixel
  |z| <= 4
  ;SOURCE: fract196.frm
}

BirdOfPreyC (XAXIS_NOPARM) {
      ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSE
    z=cosxx(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

{ Corrected for correct coding of cos. }

BirdOfPreyC.1 (XAXIS_NOPARM) {
      ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSE
    z=cos(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

FractalFender (XAXIS_NOPARM) {; Edited for Fractint v. 20
                              ; by George Martin, 10/98
  z=p1, x=|z|:
  z=cosh(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

{ Spectacular! }

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

FractalFender2 (XAXIS_NOPARM) {; Edited for Fractint v. 20
                               ; by George Martin, 10/98
  z=p1, x=|z|:
  z=cosxx(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

FractalFender2C (XAXIS_NOPARM) {; Edited for Fractint v. 20
                                ; by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=cosxx(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

{ Corrected for correct coding of cos. }

FractalFender2C.1 (XAXIS_NOPARM) {; Edited for Fractint v. 20
                                  ; by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=cos(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

FlyingSquirrel (XAXIS_NOPARM) {; Edited for Fractint v. 20
                               ; by George Martin 10/98
  z=p1, x=|z|:
  z=sin(z)/cosxx(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

FlyingSquirrelC (XAXIS_NOPARM) {; Edited for Fractint v. 20
                                ; by George Martin 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=sin(z)/cosxx(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

{ Corrected for correct coding of cos. }

FlyingSquirrelC.1 (XAXIS_NOPARM) {; Edited for Fractint v. 20
                                  ; by George Martin 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=tan(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

Frog (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  z=tanh(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

FrogC (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=tanh(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

Fly (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin 10/98
  z=p1:
  x=real(z)
  z=sqr(z)+pixel
  z=sqr(z)-pixel
  |z|<=4
  ;SOURCE: choice.frm
}

FlyC (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin 10/98
  z=p1:
  x=real(z)
  IF (x<0)
    z = sqr(z) + pixel
  ELSE
    z = sqr(z) - pixel
  ENDIF
  |z|<=4
  ;SOURCE: choice.frm
}

DeepSpaceProbe (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=sin(z)+pixel
  z=cosxx(z)+pixel
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

DeepSpaceProbeTwo (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=exp(z)+pixel
  z=cos(z)+pixel
  x=x+1
  |z|<=4
  ;SOURCE: form1.frm
}

DpSpaceProbeTwoC (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=exp(z)+pixel
  ELSE
    z=cosxx(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

{ Corrected for correct coding of cos. }

DpSpaceProbeTwoC.1 (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=exp(z)+pixel
  ELSE
    z=cos(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

Moth (XAXIS_NOPARM) {
   ; Edited for Fractint v. 20 by George Martin 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=exp(z)+pixel
  z=log(z)+pixel
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

MothC (XAXIS_NOPARM) {
   ; Edited for Fractint v. 20 by George Martin 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=exp(z)+pixel
  ELSE
    z=log(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

ManInTheOzone (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=cosxx(z)+pixel
  z=sin(z)+pixel
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

ManInTheOzoneC (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=cosxx(z)+pixel
  ELSE
    z=sin(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

{ Corrected for correct coding of cos. }

ManInTheOzoneC.1 (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=cos(z)+pixel
  ELSE
    z=sin(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

SinhEgg (XAXIS_NOPARM) {; Edited for Fractint v. 20 by
                        ; George Martin, 10/98
  z=p1, x=|z|:
  z=sinh(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

SinhEggC (XAXIS_NOPARM) {
  z=p1, x=|z|:
  IF (x>1)
    z = sinh(z) + pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

SinEgg (XAXIS_NOPARM) {; Edited for Fractint v. 20 by
                       ; George Martin 10/98
  z=p1, x=|z|:
  z=sin(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

SinEggC (XAXIS_NOPARM) {; Edited for Fractint v. 20 by
                        ; George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z = sin(z) + pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

Eyeball (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=sinh(z)+pixel
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

EyeballC (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSE
    z=sinh(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

TurtleC (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin
  z=p1:
  x=real(z)
  IF (x<0)
    z=sqr(z)+pixel
  ELSE
    z=sqr(z)-pixel
  ENDIF
  |z|<=4
  ;SOURCE: choice.frm
}

IfThenfn1fn2 (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=fn1(z)
  ENDIF
  z=fn2(z)+pixel
  x=|z|
  x<=4
  ;SOURCE: choice.frm
}

IfThenElsefn1fn2 (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=fn1(z)+pixel
  ELSE
    z=fn2(z)+pixel
  ENDIF
  x=|z|
  x<=4
  ;SOURCE: choice.frm
}

IfElsefn1fn2fn3 (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=fn1(z)+pixel
  ELSEIF (x<20)
    z=fn2(z)+pixel
  ELSE
    z=fn3(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

{ An extraneous one. }
   WaldoTwinsC(XAXIS_NOPARM) {z=p1:z=cosxx(sin(z+pixel))+pixel, |z|<=4}

{ Corrected for correct coding of cos. }
   WaldoTwinsC.1(XAXIS_NOPARM) {z=p1:z=cos(sin(z+pixel))+pixel, |z|<=4}
