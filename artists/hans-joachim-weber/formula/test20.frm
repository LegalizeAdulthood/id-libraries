multifrac20 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=2*x*y-p2
  else
  y=2*x*y-p1
  endif
  z = z^(z-x+y)
  |z| > (x2+y2)
  }

multifrac20 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=2*x*y-p2
  else
  y=2*x*y-p1
  endif
  z = z^(z-x+y)
  |z| > (x2+y2)
  }

