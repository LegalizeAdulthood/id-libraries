CubeG2_Ma { ; a-plane M-set
            ; p2 = b
            ; real(p3) affects coloring (outside=real); default is 64.
            ; imag(p3) affects periodicity checking --
            ; smaller is less sensitive, negative disables; default is 0.001.
            ; Use periodicity=0 if you seem to be getting all blank screens.
a = pixel, b = p2, c = real(p3), t = imag(p3), ta2 = 3*a*a
IF(c==0)
  c = 64
ENDIF
IF(t==0)
  t = 0.001
ENDIF
z1 = a, z2 = -a, z1done = 0, z2done = 0, z1b = a, z2b = -a, even = 0, i = 0,
m = maxit-1, done = 0:
IF(z1done==0)
  z1 = (sqr(z1)-ta2)*z1+b
  IF(lastsqr>2000)
    z1done=1
  ELSE
    IF(t>0)
      IF(even==1)
        z1b = (sqr(z1b)-ta2)*z1b+b
      ENDIF
      IF(|z1-z1b|<t)
        z1done = 2
      ENDIF
    ENDIF
  ENDIF
ENDIF
IF(z2done==0)
  z2 = (sqr(z2)-ta2)*z2+b
  IF(lastsqr>2000)
    z2done=1
  ELSE
    IF(t>0)
      IF(even==1)
        z2b = (sqr(z2b)-ta2)*z2b+b
      ENDIF
      IF(|z2-z2b|<t)
        z2done = 2
      ENDIF
    ENDIF
  ENDIF
ENDIF
i = i + 1
even = 1 - even
IF(i==m)
  IF(z1done==0)
    z1done = 2
  ENDIF
  IF(z2done==0)
    z2done = 2
  ENDIF
ENDIF
IF(z1done>0 && z2done>0)
  done = 1
  ci = z1done + z2done*2 - 3
  z = c*ci-7
ENDIF
done == 0
}

CubeG2_Mb { ; b-plane M-set
            ; p1 = a
            ; real(p3) affects coloring (outside=real); default is 64.
            ; imag(p3) affects periodicity checking --
            ; smaller is less sensitive, negative disables; default is 0.001.
            ; Use periodicity=0 if you seem to be getting all blank screens.
a = p1, b = pixel, c = real(p3), t = imag(p3), ta2 = 3*a*a
IF(c==0)
  c = 64
ENDIF
IF(t==0)
  t = 0.001
ENDIF
z1 = a, z2 = -a, z1done = 0, z2done = 0, z1b = a, z2b = -a, even = 0, i = 0,
m = maxit-1, done = 0:
IF(z1done==0)
  z1 = (sqr(z1)-ta2)*z1+b
  IF(lastsqr>2000)
    z1done=1
  ELSE
    IF(t>0)
      IF(even==1)
        z1b = (sqr(z1b)-ta2)*z1b+b
      ENDIF
      IF(|z1-z1b|<t)
        z1done = 2
      ENDIF
    ENDIF
  ENDIF
ENDIF
IF(z2done==0)
  z2 = (sqr(z2)-ta2)*z2+b
  IF(lastsqr>2000)
    z2done=1
  ELSE
    IF(t>0)
      IF(even==1)
        z2b = (sqr(z2b)-ta2)*z2b+b
      ENDIF
      IF(|z2-z2b|<t)
        z2done = 2
      ENDIF
    ENDIF
  ENDIF
ENDIF
i = i + 1
even = 1 - even
IF(i==m)
  IF(z1done==0)
    z1done = 2
  ENDIF
  IF(z2done==0)
    z2done = 2
  ENDIF
ENDIF
IF(z1done>0 && z2done>0)
  done = 1
  ci = z1done + z2done*2 - 3
  z = c*ci-7
ENDIF
done == 0
}

CubeG2_J { ; Julia sets
           ; p1 = a, p2 = b
a = p1, b = p2, ta2 = 3*a*a, z = pixel:
z = (sqr(z)-ta2)*z+b,
lastsqr<2000
}

