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
 
