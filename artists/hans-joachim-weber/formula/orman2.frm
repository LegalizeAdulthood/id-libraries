HalleyJack (xyaxis) {
  z=pixel:
  s=fn1(z), c=fn2(z)
  z=z-p1*(s/(c-(s*s)/(c+c)))
  p2<=|s|
  ;SOURCE: orman2.frm
}

DaliJack (Yaxis) {
  z = pixel:
  C1 = fn1(z) / fn2(z)
  C2 = fn3(z) - fn4(z)
  C3 = fn1(z) * fn3(z)
  z = C1 * C2 - C3
  |z| <= 4
  ;SOURCE: orman2.frm
}

DaliJack2 (Yaxis) {
  z = pixel:
  C1 = fn1(z) * fn2(z)
  C2 = fn3(z) - fn4(z)
  C3 = fn1(z) / fn3(z)
  z = C1 / C2 - C3
  |z| <= 4
  ;SOURCE: orman2.frm
}

DaliJack3 {
  z = pixel:
  C1 = fn1(z) * fn2(z)
  C2 = fn3(z) * fn4(z)
  C3 = fn1(z) / fn3(z)
  z = C1 / C2 - C3
  |z| <= 4
  ;SOURCE: orman2.frm
}

Ormandelbrot20 {
  z=c=pixel:
  z=(z*z+c)/(z*z-c)
  |z|<4
  ;SOURCE: orman2.frm
}

Ormandelbrot20A {
  z=pixel, C=P1:
  z=(z*z+c)*(z*z-c)
  |z|<4
  ;SOURCE: orman2.frm
}

Ormandelbrot22 {
  z=c=pixel:
  z=(z*z+c)*(z*z-c)
  |z|<4
  ;SOURCE: orman2.frm
}

Ormandelbrot41 {
  c=z=pixel, zp=.1:
  z=fn1((z*z+c)/(z*z-c))
  zp=z
  |z|<4
  ;SOURCE: orman2.frm
}

Ormandelbrot43 {
  z=pixel, z=sqr(z), c=p1:
  z=z*z + c
  z=fn1(z)
  |z|<4
  ;SOURCE: orman2.frm
}

Ormandelbrot43 {
  z=pixel, z=sqr(z), c=p1:
  z=z*z + c
  z=fn1(z)
  |z|<4
  ;SOURCE: orman2.frm
}

Ormandelbrot44 {
  z=pixel, c=p1:
  z=z*z + c
  z=fn1(z)
  |z|<4
  ;SOURCE: orman2.frm
}

