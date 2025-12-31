Gallet-6-04 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) * fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) * fn3(p3*x))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}

Gallet-6-01 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y + p2*fn2(x - p3*fn3(y)))
   y1 = y - p1*fn1(x + p2*fn2(y - p3*fn3(x)))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}

Gallet-6-02 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   hx = p1*fn1(x + p2*fn2(y)), hy = p1*fn1(y + p2*fn2(x))
   x = x + hy, y = y + hx
   z = x + flip(y), mhx = |hx|, mhy = |hy|
    (mhx+mhy) >= p3 && mhx <= 1e35 && mhy <= 1e35
  ;SOURCE: gallet-6.frm
}

Gallet-6-02 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   hx = p1*fn1(x + p2*fn2(y)), hy = p1*fn1(y + p2*fn2(x))
   x = x + hy, y = y + hx
   z = x + flip(y), mhx = |hx|, mhy = |hy|
    (mhx+mhy) >= p3 && mhx <= 1e35 && mhy <= 1e35
  ;SOURCE: gallet-6.frm
}

Gallet-6-03 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
  x2 = x*x, y2 = y*y
   x1 = x2 - p1*fn1(y2 + fn2(p2*x) + fn3(p3*y))
   y1 = y2 - p1*fn1(x2 + fn2(p2*y) + fn3(p3*x))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}

Gallet-6-05 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y * fn2(p2*x) + fn3(p3*y))
   y1 = y - p1*fn1(x * fn2(p2*y) + fn3(p3*x))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}

Gallet-6-06 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   hx = p1*fn1(x + p2*fn2(x)), hy = p1*fn1(y + p2*fn2(y))
   x = x + hy, y = y + hx
   z = x + flip(y), m = (|hx|+|hy|)
    m >= p3 && m <= 1e30
  ;SOURCE: gallet-6.frm
}

Gallet-6-07 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, h = p3, h2 = h + h
  n0 = - p1*fn1(p2*fn2(0)) :
   n = z - p1*fn1(z + p2*fn2(z)) - n0
   d = (h2 - p1*(fn1(z+h + p2*fn2(z+h)) - fn1(z-h + p2*fn2(z-h))))/h2
   z = z - n/d, m = |n|
    m > 0.000001 && m <= 1e40
  ;SOURCE: gallet-6.frm
}

Gallet-6-08 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) / fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) / fn3(p3*x))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 1024
  ;SOURCE: gallet-6.frm
}

Gallet-6-09 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x ^ (p1 + y^(p2 + (x - p3*y)))
   y1 = y ^ (p1 + x^(p2 + (y - p3*x)))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}

