MarksMandelPwr_tan (XAXIS) {
  z = pixel, c = z ^ (z - 1):
  z = c * sin(z)/cos(z) + pixel
  |z| <= 4
  ;SOURCE: formulas.frm
}
 
Zexpe (XAXIS) {
  s = exp(1.,0.), z = Pixel:
  z = z ^ s + pixel
  |z| <= 100
  ;SOURCE: fractint.frm
}
 
