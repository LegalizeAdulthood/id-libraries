multifrac54 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2>y2)
  x = x2-y2
  y = y2-x2
  z = z^(z-x-y)
  else
  x=fn3(x)+p1
  z=sqr(z)-x
  endif
  |z| > x
  }

multifrac54 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2>y2)
  x = x2-y2
  y = y2-x2
  z = z^(z-x-y)
  else
  x=fn3(x)+p1
  z=sqr(z)-x
  endif
  |z| > x
  }

