multifrac33 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x=x2-y2-p1
  if (x<y)
  y=abs(x)*x*y-p2
  w=x2-w2-p3
  z=sqr(z-x-y-w)
  else
  w=2*x*w-p3
  y = abs(w)*x*y-p2
  z=z^(z-x-y-w)
  endif
  |z| > (x2+w2+y2)
  }

multifrac33 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x=x2-y2-p1
  if (x<y)
  y=abs(x)*x*y-p2
  w=x2-w2-p3
  z=sqr(z-x-y-w)
  else
  w=2*x*w-p3
  y = abs(w)*x*y-p2
  z=z^(z-x-y-w)
  endif
  |z| > (x2+w2+y2)
  }

