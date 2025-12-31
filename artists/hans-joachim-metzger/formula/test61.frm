multifrac61 {
  z =pixel:
  y2=tan(y)
  x2=cabs(x)
  x = x2-y2-p1
  if (x2<y2)
  y = 2*y2*x2-p2
  z = sqr(z)-x-y
  else
  y= y2-x2-p2
  z=sqr(z-x-y)
  endif
  |z| > (x*y)
  }

multifrac61 {
  z =pixel:
  y2=tan(y)
  x2=cabs(x)
  x = x2-y2-p1
  if (x2<y2)
  y = 2*y2*x2-p2
  z = sqr(z)-x-y
  else
  y= y2-x2-p2
  z=sqr(z-x-y)
  endif
  |z| > (x*y)
  }

