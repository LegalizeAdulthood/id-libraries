JDG-7-01c {; Formula by Jim Deutch, Modified Sylvie Gallet frm
           ; image and 60 deg rotation w/ palette divided
  j = -0.5 + flip(0.5*sqrt(3)), j2 = conj(j)
  IF (whitesq)
    z = pixel
  ELSE
    z = -j2*pixel
  ENDIF
  :
  x = z*j , y = z*j2
  x1 = x - p1*fn1(y + fn2(p2*z))
  y1 = y - p1*fn1(z + fn2(p2*x))
  z1 = z - p1*fn1(x + fn2(p2*y))
  z = z1 + x1*j + y1*j2
  t1 = (|z| <= 32)
  t = t1 || (whitesq == (imag(z) >= 0))
  IF (t==0)
    z = conj(z)
  ENDIF
  t1
  ;SOURCE: sgjdg701.par
}

JDG-7-01c {; Formula by Jim Deutch, Modified Sylvie Gallet frm
           ; image and 60 deg rotation w/ palette divided
  j = -0.5 + flip(0.5*sqrt(3)), j2 = conj(j)
  IF (whitesq)
    z = pixel
  ELSE
    z = -j2*pixel
  ENDIF
  :
  x = z*j , y = z*j2
  x1 = x - p1*fn1(y + fn2(p2*z))
  y1 = y - p1*fn1(z + fn2(p2*x))
  z1 = z - p1*fn1(x + fn2(p2*y))
  z = z1 + x1*j + y1*j2
  t1 = (|z| <= 32)
  t = t1 || (whitesq == (imag(z) >= 0))
  IF (t==0)
    z = conj(z)
  ENDIF
  t1
  ;SOURCE: sgjdg701.par
}

