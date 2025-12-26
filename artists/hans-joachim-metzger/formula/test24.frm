multifrac24 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=abs(y)*x*y-p2
  z=z^(z-x+y)
  else
  y=abs(x)*y*x-p2
  z=sqr(z-x+y)
  endif
  |z| > (x2*y2)
  }
 
multifrac24 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=abs(y)*x*y-p2
  z=z^(z-x+y)
  else
  y=abs(x)*y*x-p2
  z=sqr(z-x+y)
  endif
  |z| > (x2*y2)
  }
 
