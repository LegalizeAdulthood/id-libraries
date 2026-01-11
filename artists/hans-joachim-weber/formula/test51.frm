multifrac51 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  z2=fn3(z)
  if (x2>y2)
  x = x2-y2
  y = y2-z2
  z = z2-x2
  z = z^(z-x-y)
  else
  x=2*x2*y2
  y=2*y2*z2
  z=2*z2*x2
  z=sqr(z-x-y)
  endif
  |z| > (x*y*z)
  }

multifrac51 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  z2=fn3(z)
  if (x2>y2)
  x = x2-y2
  y = y2-z2
  z = z2-x2
  z = z^(z-x-y)
  else
  x=2*x2*y2
  y=2*y2*z2
  z=2*z2*x2
  z=sqr(z-x-y)
  endif
  |z| > (x*y*z)
  }

