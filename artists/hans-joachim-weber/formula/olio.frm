MandOlio {
  z = pixel :
  z = z + p1
  z = z * fn1(pixel + z)
  z = sqr(1/z)
  |z| < 4
  ;SOURCE: olio.frm
}

Olio {
  z = c = pixel :
  z = z + p1
  z = c * fn1(pixel + z)
  z = sqr(1/z)
  |z| < 4
  ;SOURCE: olio.frm
}

Olio_2 (XAXIS) {
  z = pixel, fpix = fn1(pixel) + p1:
  z = z + pixel
  z = z * fpix
  z = fn2(1/z)
  |z| < 4
  ;SOURCE: olio.frm
}

Olio_3 (XAXIS) {
  z = pixel, fpix = fn1(pixel) + p1:
  z = z*z + pixel
  z = z * fpix
  z = fn2(1/z)
  |z| < 4
  ;SOURCE: olio.frm
}

Olio_4 (XAXIS) {
  z = c = pixel:
  z = sin(sqr(z)) * fn1(1/c)
  z = sin(z) + c
  |z| < 4
  ;SOURCE: olio.frm
}

Olio_4_B (XAXIS) {
  z = c = pixel:
  z = sin(sqr(z)) * fn1(1/sqr(z))
  z = sin(z) + c
  |z| < 4
  ;SOURCE: olio.frm
}

Olio_5 (XAXIS) {
  z = pixel, sqpix = sqrt(pixel) + p1:
  z = (1/z+z) * sqpix
  z = (pixel - 1/z) + fn1(z)
  |z| < 4
  ;SOURCE: olio.frm
}

Olio_6 (XAXIS) {
  z = c = pixel:
  z = sqr(c) / sqrt(z)
  z = z*z^1.5 + fn1(z)
  z = (z*3/-2+c^2)
  |z| < 4
  ;SOURCE: olio.frm
}

Olio_6_B (XAXIS) {
  z = c = pixel:
  z = sqr(z) - sqrt(c)
  z = z*z^1.5 + fn1(z)
  z = (z*3/-2+c^2)
  |z| < 4
  ;SOURCE: olio.frm
}

Olio_Magnet (XAXIS) {
  z = pixel :
  z = z + p1 + 0.5
  z = z * fn1(pixel)
  z = sqr(1/z)
  |z| < 4
  ;SOURCE: olio.frm
}

Olio_Srand {
  z = pixel :
  z = z + p1
  z = z * z + srand(z)
  |z| < 4
  ;SOURCE: olio.frm
}

Random_Olio {
  z = pixel, rand = srand(z):
  z = z + p1
  z = z + rand
  |z| < 4
  ;SOURCE: olio.frm
}

