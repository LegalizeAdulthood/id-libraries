


              { Formulae created by:  Jon Osuch  [73277,1432] }


{=========================================================================}

BirdOfPrey (XAXIS_NOPARM) {; Optimized by Sylvie Gallet
  z = p1 :
  z = cosxx(sqr(z) + pixel) + pixel
  |z| <= 4
  ;SOURCE: fract196.frm
}

{=========================================================================}

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

{=========================================================================}

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

{=========================================================================}

Eyeball (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=sinh(z)+pixel
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

{=========================================================================}

FlyingSquirrel (XAXIS_NOPARM) {; Edited for Fractint v. 20
                               ; by George Martin 10/98
  z=p1, x=|z|:
  z=sin(z)/cosxx(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

{=========================================================================}

FractalFender (XAXIS_NOPARM) {; Edited for Fractint v. 20
                              ; by George Martin, 10/98
  z=p1, x=|z|:
  z=cosh(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
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

{=========================================================================}

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

{=========================================================================}

Fly (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin 10/98
  z=p1:
  x=real(z)
  z=sqr(z)+pixel
  z=sqr(z)-pixel
  |z|<=4
  ;SOURCE: choice.frm
}

{=========================================================================}

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

{=========================================================================}

IslandOfChaos (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=sin(z)/cosxx(z)+pixel
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}


{=========================================================================}

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

{=========================================================================}

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

{=========================================================================}

SinhEgg (XAXIS_NOPARM) {; Edited for Fractint v. 20 by
                        ; George Martin, 10/98
  z=p1, x=|z|:
  z=sinh(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

{=========================================================================}

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

{=========================================================================}

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


{=========================================================================}

WaldoTwinsC(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=0, p2=4, fn1=cosxx, fn2=sin
    ; Note:  use floating point
    z   = p1:
    z   = fn1(fn2(z+pixel)) + pixel,
   |z| <= p2
   }

