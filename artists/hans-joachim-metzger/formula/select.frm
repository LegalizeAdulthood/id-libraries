BirdOfPrey+ (XAXIS_NOPARM) {; Jon Osuch
                            ; Try p1=0, p2=4, fn1=sqr, fn2=cosxx
      ; Edited for Fractint v. 20 by George Martin, 10/98
  z = p1
  x = 1:
  z=fn1(z)+pixel
  z=fn2(z)+pixel
  x = x+1
  |z| <=p2
  ;SOURCE: jpl1.frm
}

BirdOfPrey (XAXIS_NOPARM) {; Optimized by Sylvie Gallet
  z = p1 :
  z = cosxx(sqr(z) + pixel) + pixel
  |z| <= 4
  ;SOURCE: fract196.frm
}

