SinhEgg (XAXIS_NOPARM) {; Edited for Fractint v. 20 by
                        ; George Martin, 10/98
  z=p1, x=|z|:
  z=sinh(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}
Natura (xyaxis) {; phi yoni
  z = pixel:
  z = z*z*z + ((sqrt(5) + 1)/2)
  |z| <= 4
  ;SOURCE: drcha.frm
}
j1 {
   ; see also alx1 in _a.frm - a formula formerly named j1, changed
   ; to avoid duplication of name with this formula.
  z=pixel, c=p1:
  z=sqr(z)+c
  c=c+p2
  |z| <= 4
  ;SOURCE: explode.frm
}
jfnc {
  z=pixel, c=p1:
  z=sqr(z)+c
  c=c+p2*fn1(c)
  |z| <= 4
  ;SOURCE: explode.frm
}
FractalFender (XAXIS_NOPARM) {; Edited for Fractint v. 20
                              ; by George Martin, 10/98
  z=p1, x=|z|:
  z=cosh(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}
Frame-RbtJ {; Ron Barnett, 1993
  z = pixel:
  z = z*z*z/5 + z*z + p1
  |z| <= 100
  ;SOURCE: reb001.frm
}
J_TchebychevT3 {
  c = pixel, z = P1:
  z = c*z*(4*z*z-3)
  |z|<100
  ;SOURCE: tchebych.frm
}
