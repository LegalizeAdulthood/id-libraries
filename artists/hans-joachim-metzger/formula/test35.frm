multifrac35 {
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
  y=abs(w)*x*y-p2
  if (x<w)
  w=abs(x)*x*w-p3
  else
  w=abs(y)*x*w-p3
  endif
  z=z^(z-x-y-w)
  endif
  |z| > (x2*w2*y2)
  }

multifrac35 {
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
  y=abs(w)*x*y-p2
  if (x<w)
  w=abs(x)*x*w-p3
  else
  w=abs(y)*x*w-p3
  endif
  z=z^(z-x-y-w)
  endif
  |z| > (x2*w2*y2)
  }

