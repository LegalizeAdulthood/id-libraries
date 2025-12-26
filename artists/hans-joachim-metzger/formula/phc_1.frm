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
 
