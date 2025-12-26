multifrac52 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2>y2)
  x = x2-y
  y = y2-z
  z = z^(z-x-y)
  else
  x=2*x2*y
  y=2*y2*z
  z=sqr(z-x-y)
  endif
  |z| > (x*y)
  }
 
multifrac52 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2>y2)
  x = x2-y
  y = y2-z 
  z = z^(z-x-y)
  else
  x=2*x2*y
  y=2*y2*z
  z=sqr(z-x-y)
  endif
  |z| > (x*y)
  }
 
