oof5 (XYAXIS) {
  z = pixel:
  z = p1 / fn1 (z*z) * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof5.frm
}
 
oof6 (XYAXIS) {
  z = c = pixel:
  z = c * fn1 (z*z) * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof6.frm
}
 
oof7 (XYAXIS) {
  z = pixel:
  z = z^(fn1(z^(p1)))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof7.frm
}
 
