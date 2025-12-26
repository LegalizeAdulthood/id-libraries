PD_202 {
  z = pixel:
  z = fn1(z*z*z + p1)/fn2(-z*pixel)
  |z| <= p2
  ;SOURCE: pdg02.frm
}
 
PD_201 {
  z = pixel, test = p1:
  y = sqr(z*p1)
  x = fn1(pixel + fn2(p2/(z+(z*y)) - z/(y+z)))
  z = x*z + pixel
  |z| <= (100 + p1)
  ;SOURCE: pdg02.frm
}
 
PD_203 {
  z=pixel
  x=real(pixel)
  y=imag(pixel)
  d=fn1(x*x)+fn2(y*y):
  z=(((z*z)/-z^p1)*d)+fn3(d/z)
  |z|<=p2
  ;SOURCE: pdg02.frm
}
 
PD_204 {
  z = c = pixel:
  z=fn1(z*z)+fn2(p2/c)
  |z|<4
  ;SOURCE: pdg02.frm
}
 
PD_205 {; Revised for Fractint v20 by G. Martin
  z = pixel, n = oldn = 1
  c = fn1(fn2(pixel)):
  z = fn3(z^((n + p1)/oldn)) - c
  oldn = n
  n = fn4(n + 1 + p2)
  |real(z)| < p3 
  ;SOURCE: pdg02.frm
}
 
PD_205 {; Revised for Fractint v20 by G. Martin
  z = pixel, n = oldn = 1
  c = fn1(fn2(pixel)):
  z = fn3(z^((n + p1)/oldn)) - c
  oldn = n
  n = fn4(n + 1 + p2)
  |real(z)| < p3 
  ;SOURCE: pdg02.frm
}
 
PD_206 {
  z1 = z2 = pixel:
  x = real(z1), y = imag(z1)
  c = x*x + y*y
  x1 = -fn1((c - x)*x/c)
  y1 = -fn2((c + y)*y/c)
  x2 = x1*x1 - y1*y1 + p1
  y2 = 2*x1*y1
  z1 = x2 + flip(y2)
  z2 = (z2*z2 - p2)/(z2*z2 + p2)*fn1(z2)*fn2(z2) + pixel
  z = fn3(z1 - z2)
  |z| <= (100 + p3)
  ;SOURCE: pdg02.frm
}
 
PD_207 {
  z = pixel
  x = real(pixel), y = imag(pixel)
  c = fn1(x^p1) + fn1(y^p1):
  z = fn2(fn3(z^p2)) + fn4(c)
  |z| <= p3
  ;SOURCE: pdg02.frm
}
 
PD_208 {
  z = pixel
  x = real(pixel), y = imag(pixel)
  c = fn1(x*x) + fn2(y*y):
  z = fn3(z*z) + p1*(fn4(c*c))
  |z| <= p2
  ;SOURCE: pdg02.frm
}
 
PD_209 {
  z = pixel, lastz = 0
  x = (real(sin(pixel)))^2
  y = (imag(sin(pixel)))^2:
  c = fn1(x*y) + fn2(1/(x*y))
  z = fn3(z^p1) + fn4(c + lastz)
  lastz = z
  |z| <= p2
  ;SOURCE: pdg02.frm
}
 
PD_210 {
  a = fn1(pixel*pixel) - conj(pixel) + fn1(pixel)
  z = flip(a*a) / abs(a-pixel):
  x = real(z), y = imag(z)
  x = (p1 + x*x) - fn2(x - y)
  y = (p1 + y*y) - fn3(y - x)
  z = x + y
  |z| <= p2
  ;SOURCE: pdg02.frm
}
 
PD_211 {
  a = (pixel*pixel), b = conj(1-pixel), c = flip(1-pixel)
  z = fn1(a*p1) - b - c:
  x = real(z), y = imag(z)
  x = fn2(x*x + p2) - fn3(b - c)
  y = fn2(y*y + p2) - fn3(b - c)
  z = x + y
  |z| <= p3
  ;SOURCE: pdg02.frm
}
 
PD_212 {
  z1 = fn1(pixel), z2 = fn2(1/pixel)
  x1 = real(z1), y1 = imag(z1)
  x2 = real(z2), y2 = imag(z2)
  c = tan(x1*x2) + tan(y1*y2):
  z1 = fn3((z1^(p1*2)) + (z1^p1)) + c
  z2 = fn4((z2^(p1*2)) + (z2^p1)) + c
  z = z1 + flip(z2)
  (|z1| <= p2) || (|z2| <= p2)
  ;SOURCE: pdg02.frm
}
 
