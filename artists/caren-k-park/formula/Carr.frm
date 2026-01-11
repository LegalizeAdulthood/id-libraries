Carr-84 {
  z=c=1/pixel:
  z=sin(z*z) + ((tanh(1/pixel))/(0.33/c))
  |z| <=4
  ;SOURCE: carr.frm
}
03-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sin(z) + c-0.14
  z=sin(z) + c-0.14
  |z| <=10
  ;SOURCE: carr.frm
}
Carr-588 {
  z=1/pixel, c=tanh(1/pixel*z*conj(z*z-5)):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}
Carr-607 {
  z=1/flip(pixel), c=1/cos(z*z*z):
  z=z*z*z+flip(conj(c-0.624))
  |z| <=10
  ;SOURCE: carr.frm
}
Carr-608 {
  z=1/flip(pixel), c=1/cos(z*z*z):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}
Carr-572 {
  z=1/conj(pixel-p1), c=sin(z/pixel)^conj(z/pixel):
  z=z*z+(c-p2)
  |z| <=10
  ;SOURCE: carr.frm
}
Carr-579 {
  z=1/conj(pixel-0.524), c=1/sin(1/(z*z)):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}
Carr-580 {
  z=1/conj(pixel-0.524), c=1/sin(1/(z*z))+0.124*pixel:
  z=z*z*z+conj(c)
  |z| <=10
  ;SOURCE: carr.frm
}
Carr-788 {
  Z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=1/z^z*z+tanh((c+0.129)*(c-0.129))
  |z| <=10
  ;SOURCE: carr.frm
}
