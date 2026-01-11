Tim's_Newton_a {
  z = pixel, z2 = z*z, z3 = z*z2:
  num = (z3 + p1*z2 + 1)^.5
  denom = (1.5*z2 + p1*z)/num
  z = z - (num/denom)
  z2 = z*z+c
  z3 = z*z2
  p2 <= |z3 + p1*z2 + 1|
  ;SOURCE: bej's2.frm
}
