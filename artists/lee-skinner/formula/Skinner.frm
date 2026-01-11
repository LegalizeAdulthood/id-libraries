Fzpcocoh {
  z = pixel, f = 1. / cosh(pixel):
  z = cosxx (z)  + f
  |z| <= 50
  ;SOURCE: skinner.frm
}
ScottSIC (XYAXIS) {
  z = pixel, TEST = (p1+3):
  z = sqr(1/cosxx(z))
  |z|<TEST
  ;SOURCE: skinner.frm
}
Fzppsinh {
  z = pixel, f = sinh (pixel):
  z = sinh (z) + f
  |z| <= 50
  ;SOURCE: skinner.frm
}
SpecC (XAXIS_NOPARM) {
     ; modified for if..else by George Martin 3/18/97
   z = p1
   x = |z| :
   IF (x>1)
      z = fn1(z)+pixel
   ENDIF
   z = fn2(z)+pixel
   x = |z|
   x <= 4
  ;SOURCE: skinner.frm
}
Fzpcophs {
  z = pixel, f = pixel ^ (1. / sinh(pixel) ):
  z = cosxx (z)  + f
  |z| <= 50
  ;SOURCE: skinner.frm
}
Fzppcopo {
  z = pixel, f = (pixel) ^ (pixel):
  z = cosxx (z)  + f
  |z| <= 50
  ;SOURCE: skinner.frm
}
Fzppshex {
  z = pixel, f = exp (pixel):
  z = sinh (z) + f
  |z| <= 50
  ;SOURCE: skinner.frm
}
Zexpe2 (XAXIS) {
  s = exp(1.,0.), z = Pixel:
  z = z ^ s + z ^ (s * pixel)
  |z| <= 100
  ;SOURCE: skinner.frm
}
