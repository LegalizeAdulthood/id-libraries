DrChaosbrot1 (xaxis) {
  z = c = pixel:
  z = sqr(z) + (((sqrt(5)+ 1)/2)+c)
  |z| <= 4
  ;SOURCE: drcha.frm
}


DrChaosbrot2 (xyaxis) {
  z = c = pixel:
  z = sqr(z) + (((sqrt(5)+ 1)/2)+c)
  |z| <= 4
  ;SOURCE: drcha.frm
}


Element (xyaxis) {
  z = pixel:
  z = z*z*z*z + ((sqrt(5)+ 1)/2)
  |z| <= 4
  ;SOURCE: drcha.frm
}


Michaelbrot (origin) {
  z = pixel:
  z = sqr(z) + ((sqrt(5)+ 1)/2)
  |z| <= 4
  ;SOURCE: drcha.frm
}


Natura (xyaxis) {
  z = pixel:
  z = z*z*z + ((sqrt(5)+ 1)/2)
  |z| <= 4
  ;SOURCE: drcha.frm
}


Raphaelbrot (xyaxis) {
  z = pixel:
  z = sqr(z) + ((sqrt(5)- 1)/2)
  |z| <= 4
  ;SOURCE: drcha.frm
}


test1 (xyaxis) {
  c = pixel
  z = ((sqrt(5)+ 1)/2):
  z =  z*z + pixel*((sqrt(5)+ 1)/2) + c
  |z| <= 4
  ;SOURCE: drcha.frm
}


test2 (xyaxis) {
  z = ((sqrt(5)+ 1)/2)/pixel:
  z =  z*z*z + pixel*((sqrt(5)+ 1)/2)
  |z| <= 4
  ;SOURCE: drcha.frm
}


Tetratephi (xyaxis) {
  z  = c = ((sqrt(5)+1)/2)/pixel:
  z = c^z + ((sqrt(5)+1)/2)
  |z| <= 4
  ;SOURCE: drcha.frm
}
