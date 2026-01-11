
Gallet-6-02 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   hx = p1*fn1(x + p2*fn2(y)) , hy = p1*fn1(y + p2*fn2(x))
   x = x + hy , y = y + hx
   z = x + flip(y) , mhx = |hx| , mhy = |hy|
    (mhx+mhy) >= p3 && mhx <= 1e35 && mhy <= 1e35
  ;SOURCE: gallet-6.frm
}

Gallet-11-02 {
  center = p2
  rad = real(p3) , bailout = imag(p3)
  r = |pixel-center|
  if (r <= rad)
    pixel = (pixel-center) / sqrt(rad-r) + center
    p = p1
  else
    p = 1 + flip(p1)
  endif
  z = pixel , p_1 = p-1
  :
  zp1 = z^p_1
  num = z*zp1 - 1 , den = p*zp1
  z = z - num/den
  |num| >= bailout
  }

Gallet-11-05 {
  z = w = pixel , p_1 = p1 - 1 , iter = 0 :
  w2 = w^p_1
  num = w * w2 - 1 , den = p1 * w2
  w = w - num / den
  iter = iter + 1
  z = z + imag(p2) * w / iter
  |num| >= p2
  }

gravijul { ; r^(-2) Mark Christenson 1/25/98
; defaults: p1 = (1,0) p2 = (0,0) p3 = (4,0)
   z = pixel:
   w = fn1(z)
   z = fn3(p1/fn2(w*w)) + p2
    |z| < p3
  }

Invasion5 {; Mike Traynor
           ; From Earl L. Hinrichs' non-fractint formula
  z = Pixel, c = pixel :
  z = z^2 + c,
  x = p1*fn1(real(z^2 + c)),
  y = p2*imag(z^2 + c),
  z =  x + flip(y)
  z = z^2 + c,
  |(z^2)| <= 4
  ;SOURCE: invasio2.frm
}
