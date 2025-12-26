multifrac53 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2>y2)
  x = x2-y2
  y = y2-x2
  z = z^(z-x-y)
  else
  x=x2-y2
  y=2*y2*x2
  z=sqr(z-x-y)
  endif
  |z| > (x*y)
  }
 
multifrac53 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2>y2)
  x = x2-y2
  y = y2-x2
  z = z^(z-x-y)
  else
  x=x2-y2
  y=2*y2*x2
  z=sqr(z-x-y)
  endif
  |z| > (x*y)
  }
 
