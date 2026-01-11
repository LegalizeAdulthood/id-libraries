oof2 (XYAXIS) {
  z = pixel:
  z = p1 * (z^p2) - p2 * (z^p1)
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof2.frm
}

PhonyMandelM {
  c=pixel
  f=15/8
  z=1:
  k=z*z
  z=(k*k/4-k*z*f/3-k/2+f*z-.25)*c
  |z|<=127
  ;SOURCE: pderb.frm
}

