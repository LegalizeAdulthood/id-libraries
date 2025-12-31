001 (YAXIS) {
  z = pixel:
  z = z*z + pixel
  z = fn1(z) + p1
  ;SOURCE: damion.frm
}

018 (XAXIS) {
  z = pixel:
  z = z*z + cos(z) + p1
  z = fn1(z) + pixel
  ;SOURCE: damion.frm
}

AMINO_5 {
  z = pixel:
  z = (|Z| - z) + z * z + p1
  z = fn1(z) - fn2(z)
  z = pixel + sqrt(z)
  |z| < 4
  ;SOURCE: damion.frm
}

AMINO_7 (XAXIS) {
  z = pixel :
  z = z + c / sqrt(2)
  z = sin(cos(z) + z) + (z + c)
  z = fn1(z) + pixel
  ;SOURCE: damion.frm
}

BUG05 (XYAXIS) {
  z = 0:
  z = sin(z) + cos(pixel) + c + p1
  z = z ^ fn1(z) + z
  ;SOURCE: damion.frm
}

ZAAR_1 (XAXIS) {
  z = 0:
  z = fn1((c-z) * sin(z)) -z + (z+c/2)
  z = pixel + z + p1
  ;SOURCE: damion.frm
}

ZAAR_3 (XAXIS) {
  z = 0:
  z = fn1(z + z * z ) + p1
  z = (z * z) / (z + c)
  z = pixel + z
  ;SOURCE: damion.frm
}

ZAAR_4 {
  z = sqrt(2):
  z = (z*z+c) / z
  z = fn1(z) + pixel
  |z| <= 64
  ;SOURCE: damion.frm
}

