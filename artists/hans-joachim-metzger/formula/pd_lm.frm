pd_lm_x   {; Formula by P. DiGiorgi, 7/97
    ; Generalized formula based on Lambda(fn||fn).
    ; Use integers +/- 1 to 8 for real(p3) to control
    ; image symmetry.  Negative values change bailout
    ; criteria from [real(z)] to [real(z) && imag(z)].
    ; Imag(p3) = bailout value.
  z = fn4(pixel)
  test1 = real(p2), test2 = imag(p2)
  sym = abs(real(p3))
  IF (sym == 1)
    z = abs(z)
  ELSEIF (sym == 2)
    z = conj(abs(z))
  ELSEIF (sym == 3)
    z = -abs(z)
  ELSEIF (sym == 4)
    z = conj(-abs(z))
  ELSEIF (sym == 5)
    z = real(z) + flip(abs(imag(z)))
  ELSEIF (sym == 6)
    z = real(z) + flip(-abs(imag(z)))
  ELSEIF (sym == 7)
    z = abs(real(z)) + flip(imag(z))
  ELSEIF (sym == 8)
    z = -abs(real(z)) + flip(imag(z))
  ENDIF
  bailout = imag(p3):
  IF (cabs(z) > test1)
    z = p1*fn1(z)*fn2(1 - z)
  ELSEIF (cabs(z) > test2)
    z = p1*fn1(z)*fn3(1 + z)
  ELSE
    z = p1*fn1(z)*fn2(1 - z)
  ENDIF
  IF (real(p3) >= 0)
    exit = (z <= bailout)
  ELSE
    exit = ((real(z) <= bailout) && (imag(z) <= bailout))
  ENDIF
  exit
  ;SOURCE: pd_lm.frm
}
 
