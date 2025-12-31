xof1 (XAXIS) {
  z = pixel+z:
  z = p1 * (z^p2) + p2 * (z^p1)
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgxof.frm
}

xof2 (XYAXIS) {
  z = pixel/p2:
  z = p1 * (z^p2) - p2 * (z^p1)
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgxof.frm
}

xof3 (XYAXIS) {
  z = pixel/z:
  z = p1 * (z^p2) - p2 * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgxof.frm
}

xof4 (XYAXIS) {
  z = pixel+z:
  z = p1 / fn1 (z*z) / (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgxof.frm
}

xof5 (XYAXIS) {
  z = pixel + z:
  z = p1 / fn1 (z*z) * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgxof.frm
}

xof6 (XYAXIS) {
  z = 1/pixel + z:
  z = p1 / fn1 (z*z) * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgxof.frm
}

xof7 (XYAXIS) {
  z = pixel + 1/z:
  z = p1 / fn1 (z*z) * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgxof.frm
}

