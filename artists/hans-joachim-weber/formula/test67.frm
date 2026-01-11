multifrac67 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (x2<y2)
  x=x2-y2-p1
  y=y2-x2-p2
  if (y2<w2)
  w=w2-x2-p3
  else
  w=w2-y2-p3
  endif
  z=fn1(z+x+y+w)
  else
  x=x2*y2-p1
  y=2*x2*y2-p2
  if (x2<w2)
  w=2*x2*w2-p3
  else
  w=2*y2*w2-p3
  endif
  z=fn2(z+x+y+w)
  endif
  |z| > (x2+w2+y2)
  }

multifrac67 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (x2<y2)
  x=x2-y2-p1
  y=y2-x2-p2
  if (y2<w2)
  w=w2-x2-p3
  else
  w=w2-y2-p3
  endif
  z=fn1(z+x+y+w)
  else
  x=x2*y2-p1
  y=2*x2*y2-p2
  if (x2<w2)
  w=2*x2*w2-p3
  else
  w=2*y2*w2-p3
  endif
  z=fn2(z+x+y+w)
  endif
  |z| > (x2+w2+y2)
  }

