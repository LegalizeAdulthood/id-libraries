multifrac46 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  w2=fn3(w)
  if (x2>y2)
  x = x2-y
  y = y2-w
  w = w2-x
  z = z^(z-x-y-w)
  else
  x=2*x2*y
  y=2*y2*w
  w=2*w2*x
  z=sqr(z)-x-y-w
  endif
  |z| > (x*y*w)
  }

multifrac46 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  w2=fn3(w)
  if (x2>y2)
  x = x2-y
  y = y2-w
  w = w2-x
  z = z^(z-x-y-w)
  else
  x=2*x2*y
  y=2*y2*w
  w=2*w2*x
  z=sqr(z)-x-y-w
  endif
  |z| > (x*y*w)
  }

