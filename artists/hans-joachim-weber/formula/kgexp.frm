kgexp2 {
  z = Pixel, c=fn1(z):
  z = z ^ 2.71828182845905 - c + pixel
  |z| <= 100
  ;SOURCE: kgexp.frm
}

kgexp10 {
  z = Pixel:
  z = z + 2.71828182845905 ^ c + c
  |z| <= 100
  ;SOURCE: kgexp.frm
}

kgexp3 {
  z = Pixel, c=fn1(z):
  z = z ^ 2.71828182845905 + c * pixel
  |z| <= 100
  ;SOURCE: kgexp.frm
}

kgexp4 {
  z = Pixel, c=fn1(z):
  z = z ^ 2.71828182845905 + c ^ pixel
  |z| <= 100
  ;SOURCE: kgexp.frm
}

