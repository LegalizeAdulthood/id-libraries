BEJ-N219 {; Revised by G. Martin to eliminate assignment to "pixel"
  newpixel=fn2(sqrt(pixel/.5)*pixel)
  z=c=newpixel, zc=newpixel/sqr(newpixel*.5):
  c=((zc/p1)/newpixel)/(zc*sqrt(fn1(real(z))))
  z=z*z+c
  |imag(z)|<4
  ;SOURCE: bj-phc02.frm
}

Gallet-4-02 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, h = p1, a = p2 :
   x = real(z), y = imag(z)
   y1 = y + fn2(x + a*fn1(x+h))
   x1 = x - fn2(y + a*fn1(y+h))
   z = x1 + flip(y1)
    |z| <= 16
  ;SOURCE: gallet-4.frm
}

Gallet-4-14 {; Sylvie Gallet [101324,3444], 1996
             ; Hypercomplex Newton formula applied to h^p2 - 1 = 0
   ; h(0) = real(pixel) + i*imag(pixel) + j*real(p1) + k*imag(p1)
   ; h(n+1) = h(n) - (h(n)^p2-1) / (p2*h(n)^(p2-1))
   ; |h| >= 0.0000005
  p = (0,1)*p1, ex = p2 - 1
  a = pixel + p, b = pixel - p :
   a2 = a^ex, b2 = b^ex
   na = a2*a - 1, da = p2*a2
   nb = b2*b - 1, db = p2*b2
   a = a - na/da, b = b - nb/db
    |na| + |nb| >= 0.000001
  ;SOURCE: gallet-4.frm
}

Gallet-4-06 {; Sylvie Gallet [101324,3444], 1996
             ; PTC formula
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = -0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z = c * pixel :
   x = real(z), y = imag(z)
   x1 = x - p1 * fn1(y*y + p2*fn2(y))
   y1 = y - p1 * fn1(x*x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
  ;SOURCE: gallet-4.frm
}

Gallet-4-01 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, h = p1, a = p2 :
   x = real(z), y = imag(z)
   x1 = x - fn2(x + a*fn1(x+h))
   y1 = y + fn2(y + a*fn1(y+h))
   z = x1 + flip(y1)
    |z| <= 4
  ;SOURCE: gallet-4.frm
}

Gallet-4-03 {; Sylvie Gallet [101324,3444], 1996
  z2 = 0, z1 = c = pixel :
   z = fn1(z1) + p1*real(c)*fn2(z1) + p2*imag(c)*z2
   z2 = z1, z1 = z
    |z| <= 4
  ;SOURCE: gallet-4.frm
}

Gallet-4-04 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = pixel * whitesq + (whitesq == 0 ) / pixel :
   x = real(z), y = imag(z)
   x1 = x - p1 * fn1(y + p2*fn2(y))
   y1 = y - p1 * fn1(x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
  ;SOURCE: gallet-4.frm
}

Gallet-4-05 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = pixel :
   x = real(z), y = imag(z)
   x1 = x - p1 * fn1(y*(y - whitesq) + p2*fn2(y))
   y1 = y - p1 * fn1(x*(x - (whitesq == 0)) + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
  ;SOURCE: gallet-4.frm
}

Gallet-4-07 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = 10 * pixel, bailout = real(p3)
   c = p1 * (whitesq + (0,1) * (whitesq == 0)) :
   test = flip(c*z) >= 0
   z = (z - p2 * (test - (test == 0))) * c
    abs(real(z)) < bailout || abs(imag(z)) < bailout
  ;SOURCE: gallet-4.frm
}

Gallet-4-08 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = pixel * (whitesq - (whitesq == 0))
  c = p1, bailout = real(p3) :
   test = flip(z*(c-z)) >= 0
   z = (z - p2 * (test - (test == 0))) * c
    abs(real(z)) < bailout || abs(imag(z)) < bailout
  ;SOURCE: gallet-4.frm
}

Gallet-4-09 {; Sylvie Gallet [101324,3444], 1996
  p = (0,1) * p1, bailout = p2
  a = pixel + p, b = pixel - p :
   a = fn1(a) + flip(fn2(a))
   b = fn1(b) + flip(fn2(b))
   z = (a + b)/2
    |a| + |b| <= bailout
  ;SOURCE: gallet-4.frm
}

Gallet-4-10 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  p = (0,1) * p1 * ((0,1) * whitesq - (whitesq == 0))
  a = pixel + p, b = pixel - p
  a1 = b1 = 0, a2 = 3*a*a, b2 = 3*b*b :
   a = a^3 - a2*a + a1, b = b^3 - b2*b + b1
   a1 = a1 + p2, b1 = b1 + p2
   z = (a + b)/2
    |z| <= p3
  ;SOURCE: gallet-4.frm
}

Gallet-4-11 {; Sylvie Gallet [101324,3444], 1996
  p = (0,1) * p1, bailout = p2
  a = pixel + p, b = pixel - p :
   a = fn1(a) + flip(fn2(a))
   b = fn1(b) + flip(fn2(b))
   z = (a + b) / 2
    |a| <= bailout || |b| <= bailout
  ;SOURCE: gallet-4.frm
}

Gallet-4-11 {; Sylvie Gallet [101324,3444], 1996
  p = (0,1) * p1, bailout = p2
  a = pixel + p, b = pixel - p :
   a = fn1(a) + flip(fn2(a))
   b = fn1(b) + flip(fn2(b))
   z = (a + b) / 2
    |a| <= bailout || |b| <= bailout
  ;SOURCE: gallet-4.frm
}

Gallet-4-12 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  p = p1 * ((0,1) * whitesq - (whitesq == 0))
  a = pixel + p, b = pixel - p, c = p2/pixel
  a1 = b1 = 0, a2 = 3*a*a, b2 = 3*b*b :
   a = a^3 - a2*a + a1, b = b^3 - b2*b + b1
   a1 = a1 + c, b1 = b1 + c
   z = (a + b)/2
    |z| <= p3
  ;SOURCE: gallet-4.frm
}

Gallet-4-13 {; Sylvie Gallet [101324,3444], 1996
             ; Hypercomplex Mandel formula
   ; c = real(pixel) + i*imag(pixel) + j*real(p1) + k*imag(p1)
   ; h(0) = 0, h(n+1) = h(n)^2 + c
   ; |h| <= 64
  p = (0,1)*p1
  a = b = 0, ca = pixel + p, cb = pixel - p :
   a = a*a + ca, b = b*b + cb
   z = (a + b)/2
    |a| + |b| <= 128
  ;SOURCE: gallet-4.frm
}

