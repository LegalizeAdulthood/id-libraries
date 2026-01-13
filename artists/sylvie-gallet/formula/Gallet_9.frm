Gallet-9-01 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
  z = pixel :
  z = 1/(z*z + pixel)
  |z| >= p1
  ;SOURCE: gallet_9.frm
}
Gallet-9-02 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
  z1 = c = pixel, mz1 = cabs(fn2(z1)), k = real(p1)*mz1
  bailout = real(p2), z = imag(p1):
  z1 = z1*z1 + c
  z1 = fn1(real(z1)) + flip(imag(z1)), mz1 = cabs(z1)
  IF (mz1 <= k)
    z1 = (z1 + 1) * p3, mz1 = cabs(z1)
  ENDIF
  IF (mz1 < imag(p1))
    z = z1^imag(p2)
  ENDIF
  mz1 <= bailout
  ;SOURCE: 97msg.frm
}
Gallet-9-03 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
             ; Bailout: real part of p2 (must be > 0)
             ; Real and Imag parts of p1 must be > 0
             ; Imag part of p2 must be non-zero
             ; Use periodicity=0
  z1 = c = pixel, mz1 = cabs(z1*z1+z1), k = real(p1)*mz1
  bailout = real(p2), z = imag(p1) :
  z1 = z1*z1 + c
  z1 = fn1(real(z1)) + flip(imag(z1)), mz1 = cabs(z1)
  IF (mz1 <= k)
    z1 = z1 + p3, mz1 = cabs(z1)
  ENDIF
  IF (mz1 < imag(p1))
    z = z1^imag(p2)
  ENDIF
  mz1 <= bailout
  ;SOURCE: gallet_9.frm
}
Gallet-9-04 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
             ; Bailout: real part of p2 (must be > 0)
             ; Real and Imag parts of p1 must be > 0
             ; Imag part of p2 must be non-zero
             ; Use periodicity=0
  z1 = c = pixel, mz1 = cabs(fn2(z1)), k = real(p1)*mz1
  bailout = real(p2), z = imag(p1) :
  z1 = z1*z1 + c
  z1 = fn1(real(z1)) + flip(imag(z1)), mz1 = cabs(z1)
  IF (mz1 <= k)
    z1 = z1 + p3, mz1 = cabs(z1)
  ENDIF
  IF (mz1 < imag(p1))
    z = z1^imag(p2)
  ENDIF
  mz1 <= bailout
  ;SOURCE: gallet_9.frm
}
Gallet-9-05 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
  z1 = c = pixel , r1 = |real(p1)*z1|
  r2 = imag(p1)*imag(p1)
  bailout = real(p2), z = 0 :
  z1 = fn1(z1) + c
  mz1 = |z1|
  IF (mz1 <= r1)
    z1 = z1 + p3, mz1 = cabs(z1)
  ENDIF
  IF (mz1 < r2)
    z = z1^imag(p2)
  ENDIF
  mz1 <= bailout
  ;SOURCE: 97msg.frm
}
Gallet-9-06 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
             ; Bailout: real part of p2 (must be > 0)
             ; Real and Imag parts of p1 must be > 0
             ; Imag part of p2 must be non-zero
             ; Use periodicity=0
  z1 = c = pixel, mz1 = cabs(z1), k = real(p1)*mz1
  bailout = real(p2), z = imag(p1) :
  z1 = z1*z1 + c
  z1 = fn1(real(z1)) + flip(fn2(imag(z1))), mz1 = cabs(z1)
  IF (mz1 <= k)
    z1 = z1 + p3, mz1 = cabs(z1)
  ENDIF
  IF (mz1 < imag(p1))
    z = z1^imag(p2)
  ENDIF
  mz1 <= bailout
  ;SOURCE: gallet_9.frm
}
Gallet-9-07 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
             ; Bailout: real part of p1 (must be > 0)
             ; Imag part of p1 must be > 0
             ; p2 must be non-zero
             ; Use periodicity=0
  z1 = c = pixel, mz1 = |z1|
  bailout = real(p1), z = 0 :
  mz1old = mz1
  z1 = z1*z1 + c
  z1 = fn1(z1), mz1 = |z1|
  IF (mz1 <= mz1old)
    z1 = z1 + p3, mz1 = |z1|
  ENDIF
  IF (mz1 < imag(p1))
    z = z1^p2
  ENDIF
  mz1 <= bailout
  ;SOURCE: gallet_9.frm
}
Gallet-9-08 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
             ; Bailout: real part of p2 (must be > 0)
             ; Real and Imag parts of p1 must be > 0
             ; Imag part of p2 must be non-zero
             ; Use periodicity=0
  z1 = c = pixel, mz1 = |z1*z1+z1|, k = real(p1)*mz1
  bailout = real(p2), z = imag(p1) :
  z1 = sqr(sqr(z1) + c) + c
  z1 = fn1(real(z1)) + flip(imag(z1)), mz1 = |z1|
  IF (mz1 <= k)
    z1 = z1 + p3, mz1 = |z1|
  ENDIF
  IF (mz1 < imag(p1))
    z = z1^imag(p2)
  ENDIF
  mz1 <= bailout
  ;SOURCE: gallet_9.frm
}
