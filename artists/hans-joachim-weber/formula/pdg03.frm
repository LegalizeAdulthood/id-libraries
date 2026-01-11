PD_301 {
  bailout = p3
  z = pixel:
  c = fn1(z) + fn2(z) + p1
  z = fn3(z*z) + fn4(p2*c)
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

PD_302 {
  bailout = p3
  z = pixel:
  z2 = z*z
  c = sin(z2) + cos(z2)
  za = (fn1(z2) + fn2(p1*c))*(z <= c)
  zb = (fn3(p2/z) + fn4(z))*(c < z)
  z = za + zb
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

PD_302 {
  bailout = p3
  z = pixel:
  z2 = z*z
  c = sin(z2) + cos(z2)
  za = (fn1(z2) + fn2(p1*c))*(z <= c)
  zb = (fn3(p2/z) + fn4(z))*(c < z)
  z = za + zb
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

PD_303 {; Replaced variable "e" with "ee", 5/7/99. G. Martin
  bailout = 4 + imag(p3)
  ee = real(p3), z = c = pixel:
  ze = fn1(z^ee), c = z + p1
  z = fn3(fn2(ze + p2)/pixel) + fn4(c)
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

PD_303 {; Replaced variable "e" with "ee", 5/7/99. G. Martin
  bailout = 4 + imag(p3)
  ee = real(p3), z = c = pixel:
  ze = fn1(z^ee), c = z + p1
  z = fn3(fn2(ze + p2)/pixel) + fn4(c)
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

PD_304 {
  bailout = 4 + imag(p3)
  a = conj(pixel*pixel)
  z = a/pixel, n = fn3(1/pixel):
  c = fn1(z*a + p1)
  z = fn2(z^p2*n) + |fn4(c*real(p3))|
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

PD_304 {
  bailout = 4 + imag(p3)
  a = conj(pixel*pixel)
  z = a/pixel, n = fn3(1/pixel):
  c = fn1(z*a + p1)
  z = fn2(z^p2*n) + |fn4(c*real(p3))|
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

PD_305 {
  bailout = 4 + p3
  z = pixel, x = real(pixel), y = imag(pixel)
  c = fn1(p1*x*x*x) + fn2(p2*y*y*y)
  d = cabs(pixel)/2:
  z = fn3(z) + fn4(c) + z*c + d
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

PD_305 {
  bailout = 4 + p3
  z = pixel, x = real(pixel), y = imag(pixel)
  c = fn1(p1*x*x*x) + fn2(p2*y*y*y)
  d = cabs(pixel)/2:
  z = fn3(z) + fn4(c) + z*c + d
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

PD_306 {
  bailout = 4 + p3
  z = pixel:
  c = p1*fn1(1/z) + p2
  z = fn2(z^z) + fn3(c)
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

PD_307 {
  bailout = 4 + p2, z = pixel:
  c = fn1(real(z) + p1) / fn2(imag(z) + p1)
  z = fn3(z*c) - 1/z
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

PD_307 {
  bailout = 4 + p2, z = pixel:
  c = fn1(real(z) + p1) / fn2(imag(z) + p1)
  z = fn3(z*c) - 1/z
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

PD_308 {
  bailout = 4 + p3, z = pixel:
  a = fn1(z - pixel)
  b = fn2(z*(z + p1))
  c = fn3(pixel - z)
  z = fn4(a*b/(c + p2))
  (|real(z)| <= bailout) && (|imag(z)| <= bailout)
  ;SOURCE: pdg03.frm
}

PD_309 {; Replaced variable "e" with "ee", 5/7/99. G. Martin
  bailout = 4 + imag(p3)
  z = conj(fn1(pixel + p1))
  ee = fn4(pixel + real(p3)):
  z = fn2(flip(z^ee)) + fn3(|z*p2|)
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

PD_310 {
  bailout = 4 + p3
  z = pixel, c = z*z*p1:
  z = fn1(z*(p2 - z) + conj(c))
  c = fn2(c)/(p2*c)
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

PD_311 {
  bailout = 4 + imag(p3)
  z = tanh(p1 - 1/conj(pixel))
  x = real(z), y = imag(z)
  c = fn4(real(p3)/pixel):
  x1 = fn1(x*sin(x) - x)
  y1 = fn1(y*sin(y) - y)
  x2 = fn2(x1*x1) + p2*conj(y1*x) + c
  y2 = fn3(y1*y1) + p2*conj(x1*y) + c
  z = x2 + flip(y2)
  x = x1, y = y1
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

PD_312 {; Revised for Fractint v20 by G. Martin
  bailout = 4 + imag(p3)
  expo = 1 + real(p3)
  z = fn4(1/conj(pixel))
  x = real(z), y = imag(z):
  x1 = acosh(x*sin(x) - p1*x^expo)
  y1 = acosh(y*sin(y) - p1*y^expo)
  x2 = fn1(p2*conj(x1*x))
  y2 = fn2(p2*conj(y1*y)) + log(y1*y1)
  z = x2 + flip(y2)
  x = x1, y = y1
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

PD_312 {; Revised for Fractint v20 by G. Martin
  bailout = 4 + imag(p3)
  expo = 1 + real(p3)
  z = fn4(1/conj(pixel))
  x = real(z), y = imag(z):
  x1 = acosh(x*sin(x) - p1*x^expo)
  y1 = acosh(y*sin(y) - p1*y^expo)
  x2 = fn1(p2*conj(x1*x))
  y2 = fn2(p2*conj(y1*y)) + log(y1*y1)
  z = x2 + flip(y2)
  x = x1, y = y1
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

PD_313 {
  bailout = 4 + p3, z = pixel
  c = fn1(p1 + z):
  z2 = z*z + p2
  z = fn2(z^z2) + c
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

PD_313 {
  bailout = 4 + p3, z = pixel
  c = fn1(p1 + z):
  z2 = z*z + p2
  z = fn2(z^z2) + c
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

PD_314 {
  bailout = 4 + imag(p3), k = real(p3)
  z = pixel:
  x = real(z), y = imag(z)
  v = x*y
  x1 = fn1(x*x + p1) + fn2(v)
  y1 = fn3(p2 - y*y) + flip(v)
  z = x1 + flip(y1 + k/fn4(|z|))
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

PD_314 {
  bailout = 4 + imag(p3), k = real(p3)
  z = pixel:
  x = real(z), y = imag(z)
  v = x*y
  x1 = fn1(x*x + p1) + fn2(v)
  y1 = fn3(p2 - y*y) + flip(v)
  z = x1 + flip(y1 + k/fn4(|z|))
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

PD_315 {; Revised for Fractint v20 by G. Martin
  bailout = 4 + imag(p3)
  z = pixel, expo = real(p3)
  x = fn1(real(z)), y = fn2(imag(z)):
  xn = fn3(x + p1) + fn4(p2 - x^expo)
  yn = fn3(y + p1) + fn4(p2 - y^expo)
  z = xn + flip(yn)
  x = xn, y = yn
  |z| <= bailout
  ;SOURCE: pdg03.frm
}

