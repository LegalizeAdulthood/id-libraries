multifrac56 {
  z=p1
  c =pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2<y2)
  x = x2-y2
  y = y2-x2
  z = sqr(z)-x-y
  |z| > (x*y)
  else
  z=sqr(z)+c
  |z| < 4
  endif
  }

multifrac56 {
  z=p1
  c =pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2<y2)
  x = x2-y2
  y = y2-x2
  z = sqr(z)-x-y
  |z| > (x*y)
  else
  z=sqr(z)+c
  |z| < 4
  endif
  }

