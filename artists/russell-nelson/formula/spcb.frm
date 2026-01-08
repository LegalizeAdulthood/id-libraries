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

FractalFenderCarr (XAXIS_NOPARM) {; Edited for Fractint v. 20
                                  ; by George Martin, 10/98
  z=(pixel)/(1.099,0), x=|z|:
  IF (x>1)
    z=cosxx(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: spcb.frm
}
