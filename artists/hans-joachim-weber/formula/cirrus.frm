OblateVB {; Jim Muth
  z=real(pixel)+flip(real(p1))
  c=flip(imag(pixel))+imag(p1)
  a=sqr(p2):
  z=sqr(z)+c
  |z| <= a
  ;SOURCE: 97msg.frm
}

