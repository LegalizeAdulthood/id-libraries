1102 {
  z = pixel:
  z = p1 * (z^p2) - p2 * (z^p1)
  z = z + pixel
  |z| <= p2
  ;SOURCE: kg11.frm
}
 
1103 (XAXIS) {
  z = pixel:
  z = p1 * (z^p2) + p2 * (z^p1)
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kg11.frm
}
 
1101 {
  z = pixel:
  z = p1 * (z^p2) + p2 * (z^p1)
  z = z + pixel
  |z| <= p2
  ;SOURCE: kg11.frm
}
 
1104 (XYAXIS) {
  z = pixel:
  z = p1 * (z^p2) - p2 * (z^p1)
  z = z + pixel
  z = fn1(z) ^p1
  |z| <= p2
  ;SOURCE: kg11.frm
}
 
