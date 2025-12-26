1206 {
  z = pixel:
  z = fn1 (1/z) - pixel + z
  |z| <= p2
  ;SOURCE: kg12.frm
}
 
1201 {
  z = pixel:
  z = fn1 (1/z) + pixel
  |z| <= p2
  ;SOURCE: kg12.frm
}
 
1202 {
  z = pixel:
  z = fn1 (1/z) - pixel
  |z| <= p2
  ;SOURCE: kg12.frm
}
 
oof11  {
  z = y = pixel:
  z = fn1(z) * fn2(y) 
  y = fn1(y) / fn2(z)   
  |z| <= p1
  ;SOURCE: kgoof11.frm
}
 
oof2 (XYAXIS) {
  z = pixel:
  z = p1 * (z^p2) - p2 * (z^p1)
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof2.frm
}
 
oof3 (XYAXIS) {
  z = pixel:
  z = p1 * (z^p2) - p2 * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof3.frm
}
 
