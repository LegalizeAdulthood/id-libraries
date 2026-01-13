test1 (xyaxis) {; =phi
  c = pixel
  z = ((sqrt(5) + 1)/2):
  z =  z*z + pixel*((sqrt(5) + 1)/2) + c
  |z| <= 4
  ;SOURCE: drcha.frm
}
test3 (xyaxis) {; =phi
  z = ((sqrt(5) + 1)/2)/pixel:
  z =  z*z + pixel*((sqrt(5) + 1)/2)/((sqrt(5) - 1)/2)
  |z| <= 4
  ;SOURCE: drcha.frm
}
Raphaelbrot (xyaxis) {; phi
  z = pixel:
  z = sqr(z) + ((sqrt(5) - 1)/2)
  |z| <= 4
  ;SOURCE: drcha.frm
}
