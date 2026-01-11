001 (YAXIS) {
  z = pixel:
  z = z*z + pixel
  z = fn1(z) + p1
  ;SOURCE: damion.frm
}

002 (XYAXIS) {
  z = pixel:
  z = fn1(z-c) + z + p1
  z <= 100
  ;SOURCE: damion.frm
}

003 (XYAXIS) {
  z = pixel:
  z = fn2(z) + fn1(z) + p1
  z <= 4
  ;SOURCE: damion.frm
}

