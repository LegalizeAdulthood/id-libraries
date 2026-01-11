multifrac41 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x = x2-y2-w2-p1
  y = abs(w)*x*y-p2
  w = abs(y)*x*w-p3
  z = z^(z-x-y-w)
  |z| > (x2*w2*y2)
  }

multifrac41 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x = x2-y2-w2-p1
  y = abs(w)*x*y-p2
  w = abs(y)*x*w-p3
  z = z^(z-x-y-w)
  |z| > (x2*w2*y2)
  }

