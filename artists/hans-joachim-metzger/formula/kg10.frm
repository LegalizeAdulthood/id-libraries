1001 {
  z = pixel:
  z = z^(z+p1) + c
  |z| <= p2
  ;SOURCE: kg10.frm
}
 
1002 {
  z = pixel:
  z = z^(z+p1) + p1^c
  |z| <= p2
  ;SOURCE: kg10.frm
}
 
1003 {
  z = pixel:
  z = z^(z+p1) - c
  |z| <= p2
  ;SOURCE: kg10.frm
}
 
1005 {
  z = pixel:
  z = z^(z-p1) + c
  |z| <= p2
  ;SOURCE: kg10.frm
}
 
1006 {
  z = pixel:
  z = z^(z-p1) - c
  |z| <= p2
  ;SOURCE: kg10.frm
}
 
1104 (XYAXIS) {
  z = pixel:
  z = p1 * (z^p2) - p2 * (z^p1)
  z = z + pixel
  z = fn1(z) ^p1
  |z| <= p2
  ;SOURCE: kg11.frm
}
 
