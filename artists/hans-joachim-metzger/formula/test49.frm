multifrac49 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  z2=fn3(z)
  if (x2>y2)
  x = x2-y
  y = y2-z
  z = z2-x
  z = z^(z)-x-y
  else
  x=2*x2*y
  y=2*y2*w
  z=2*z2*x
  z=sqr(z)-x-y
  endif
  |z| > (x*y*z)
  }
 
multifrac49 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  z2=fn3(z)
  if (x2>y2)
  x = x2-y
  y = y2-z 
  z = z2-x
  z = z^(z)-x-y
  else
  x=2*x2*y
  y=2*y2*w
  z=2*z2*x
  z=sqr(z)-x-y
  endif
  |z| > (x*y*z)
  }
 
