multifrac28 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x2<y2)
  y=2*x*y-p2
  z=z^(z-x-y)
  else
  y=abs(x)*y*x-p2
  z=sqr(z-x-y)
  endif
  |z| > (x2*y2)
  }

multifrac28 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x2<y2)
  y=2*x*y-p2
  z=z^(z-x-y)
  else
  y=abs(x)*y*x-p2
  z=sqr(z-x-y)
  endif
  |z| > (x2*y2)
  }

