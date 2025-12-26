JDfrm010 {; Jim Deutch [104074,3171], 1996.  The Original PHC formula
          ; Requires passes=1
  z = 0
  c = whitesq * pixel - (whitesq == 0) * pixel:
  z = z*z + c
  |z| < 4
  ;SOURCE: phc.frm
}
 
JDfrm021a {; Jim Deutch [104074,3171], 1996   Requires passes=1
  a = pixel, r = |a|, b = abs(a)
  q = conj(flip(b)) / real(r)
  z = a * real(whitesq) :
  z2 = z*z
  rz2 = z2 * real(r)
  sinzoz = sin(z) / (z+(whitesq==0))
  z=sinzoz/(rz2+(whitesq==0))*real(whitesq)+(q + z2)*real((whitesq==0))
  |z| - 4 < 10000000 * whitesq
  ;SOURCE: phc.frm
}
 
JDfrm031SF7 {; Jim Deutch: generalized 2-Julia pseudo-HiColor
             ; resolution specific - 1024x768
             ; p1 = 1st julia parameters
             ; p2 = 2nd julia parameters
             ; p3 slides 1st julia around the plane wrt the 2nd
  count = (count + 1) * (count != 1023)
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z=pixel + p3*evenodd
  p = p1*evenodd + p2*oddeven:
  z=z*z + p
  |z| < 4
  ;SOURCE: phc_1.frm
}
 
JDfrm031SF7 {; Jim Deutch: generalized 2-Julia pseudo-HiColor
             ; resolution specific - 1024x768
             ; p1 = 1st julia parameters
             ; p2 = 2nd julia parameters
             ; p3 slides 1st julia around the plane wrt the 2nd
  count = (count + 1) * (count != 1023)
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z=pixel + p3*evenodd
  p = p1*evenodd + p2*oddeven:
  z=z*z + p
  |z| < 4
  ;SOURCE: phc_1.frm
}
 
JD-LS0 {; Lee Skinner [75450,3631], 1996  Requires passes=1
        ; Eliminated assignment to "pixel". G. Martin 6/29/99
  f1 = sin(.5*pixel)
  f2 = 1/pixel
  c = whitesq * f1 + (whitesq==0) * f2
  z = 0:
  z = z*z + c
  |z| < 4
  ;SOURCE: phc.frm
}
 
JD-SG-01 {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
     ; Mandel: z^(p1+1) + c , inverted Newton: z^p1 - 1 = 0
     ; use p2 to adjust the size of the inverted Newton set
  z = pixel * whitesq + (p2/(pixel-p2) + 1) * (whitesq == 0)
  c = pixel, b1 = 256, b2 = 0.000001, ex = p1 - 1
  :
  zd = z^ex , zn = zd*z , n = zn - 1 , d = p1 * zd
  zo = zn*z + c , ze = z - n/d
  z = zo * whitesq + ze * (whitesq == 0)
  (|z| <= b1 && whitesq) || (|n| >= b2 && whitesq == 0)
  ;SOURCE: phc.frm
}
 
JD-SG-02 {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
     ; Mandel: z^2 + c, inverted Newton: z^p1 - 1 = 0
     ; use p2 to adjust the size of the inverted Newton set
  z = pixel * whitesq + (p2/(pixel-p2) + 1) * (whitesq == 0)
  c = pixel, b1 = 256, b2 = 0.000001, ex = p1 - 1
  :
  zd = z^ex, zn = zd*z, n = zn - 1, d = p1 * zd
  zo = z*z + c, ze = z - n/d
  z = zo * whitesq + ze * (whitesq == 0)
  (|z| <= b1 && whitesq) || (|n| >= b2 && whitesq == 0)
  ;SOURCE: phc.frm
}
 
JD-SG-03 {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
     ; Mandel: z^(p1+1) + c , Newton: z^p1 - 1 = 0
     ; use p2 to adjust the size of the inverted Newton set
  z = c = pixel, b1 = 256, b2 = 0.000001, ex = p1 - 1
  :
  zd = z^ex, zn = zd*z, n = zn - 1, d = p1 * zd
  zo = zn*z + c, ze = z - n/d
  z = zo * whitesq + ze * (whitesq == 0)
  (|z| <= b1 && whitesq) || (|n| >= b2 && whitesq == 0)
  ;SOURCE: phc.frm
}
 
JD-SG-04 {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
    ; use p1 and p2 to adjust the inverted Mandel
  z = c = pixel * whitesq + (p1 / (pixel+p2)) * (whitesq==0) :
  z = z*z + c
  |z| < 4
  ;SOURCE: phc.frm
}
 
manjul_lace {; Requires passes=1   George Martin, 1996
             ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
             ; If Real(p1) is:
             ;    0 : formula draws PHC manjul_lace
             ;    1 : formula draws mandel component only
             ;    2 : formula draws julia component  only
  IF (p1==1 || p1 == whitesq)
    z = c = 1.5*pixel
  ELSE
    z = pixel, c = (-.75, .1234567)
  ENDIF :
  z = z*z + c
  |z| <= 4
  ;SOURCE: ifs196.frm
}
 
