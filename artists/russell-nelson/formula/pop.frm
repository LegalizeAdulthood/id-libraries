These formulas are  based on Bradley Beacham's and Jon
Horner's remarkable PopCornJulCplx from Beacham's snazzy.frm. 
My contributions are of the "monkey-at-the-keyboard" kind, but 
their formula is so robust that almost anything you do with it 
is rewarding. Homage to them!

pop01   { 
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel), y = imag(pixel):
    a = x - h*fn1((y) + fn2(k*y))
    b = y - h*fn1((x) + fn2(k*x))
    x = a, y = b
    z = fn3(x) * fn4(y)
    |z| <= 64
}

pop02   { 
  h = (0.05 * ((p1)<=0))
  k = (3.00 * ((p2)<=0))
  x = real(pixel) + p1, y = imag(pixel) + p2:
    a = x - h*fn1((y) + fn2(k*y))
    b = y - h*fn1((x) + fn2(k*x))
    x = a, y = b
    z = fn3(x) * fn4(y)
    |z| <= 64
}

pop03   { 
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.00 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel), y = imag(pixel):
    a = x - h*fn1((y) + fn2(k*y))
    b = y - h*fn1((x) + fn2(k*x))
    x = a, y = b
    z = fn3(x) * fn4(y) + h + k
    |z| <= 64
}

pop04   { 
  h = (0.10 * ((p1)<=0) + (p1) * (0<p1))
  k = (5.00 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel), y = imag(pixel):
    a = x - h*fn1((y) + fn2(k*y))
    b = y - h*fn1((x) + fn2(k*x))
    x = a, y = b
    z = fn3(x) * fn4(y) *  fn3(x) * fn4(y)  
    |z| <= 64
}

pop05   { 
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.00 * ((p2)<=0) + (p2) * (0<p2))
  c = pixel
  x = real(pixel), y = imag(pixel):
    a = x - h*fn1((y) + fn2(k*y))
    b = y - h*fn1((x) + fn2(k*x))
    x = a, y = b
    z = fn3(x*x) + fn4(y*y) + c
    |z| <= 64
}

pop06   { 
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.00 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel), y = imag(pixel):
    a = x - h*fn1((y) + fn2(k*y))
    b = y - h*fn1((x) + fn2(k*x))
    x = a, y = b
    z = fn3(x*x) + fn4(y*y) + x*y
    |z| <= 64
}

pop07   { 
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel), y = imag(pixel):
    a = x*x - h*fn1((y) + fn2(k*y))
    b = y*y - h*fn1((x) + fn2(k*x))
    x = a, y = b
    z = fn3(x) * fn4(y)
    |z| <= 64
}

pop08   { 
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel), y = imag(pixel):
    a = x*x + h*fn1((y) - fn2(k*y))
    b = y*y + h*fn1((x) - fn2(k*x))
    x = a, y = b
    z = fn3(x) * fn4(y)
    |z| <= 64
}

pop09   { 
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel), y = imag(pixel):
    a = x*x + h*fn1((y) + fn2(k*y))
    b = y*y + h*fn1((x) + fn2(k*x))
    x = a, y = b
    z = fn3(x) * fn4(y)
    |z| <= 64
}

