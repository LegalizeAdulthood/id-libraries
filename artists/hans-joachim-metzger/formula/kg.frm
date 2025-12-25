davidsmask {
  c = pixel
  c2 = c*c, c75 = c2 + 0.75, c25 = c2 - 0.25
  c75p1 = c75 + p1
  z = pixel:
  z2 =z*z
  n = z*z2 - c75*z + c25
  d = 3*z2 - c75p1
  z = z- n/d
  0.000001 <= |n|
  ;SOURCE: davweird.frm
}
 
oof7 (XYAXIS) {
  z = pixel:
  z = z^(fn1(z^(p1)))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof7.frm
}
 
1001 {
  z = pixel:
  z = z^(z+p1) + c
  |z| <= p2
  ;SOURCE: kg10.frm
}
 
