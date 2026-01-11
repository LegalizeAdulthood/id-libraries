Primal {; Rollo Silver
        ; Select p1 such that 0. <= p1 <= 1.
  z = c = Pixel, t = real(p1), test = (p2+10)*(p2+10):
  zsq = z*z
  zcu = zsq*z
  z = (1.-t)*zsq + t*zcu + c
  |z| <= test
  ;SOURCE: primal.frm
}

Primal {; Rollo Silver
        ; Select p1 such that 0. <= p1 <= 1.
  z = c = Pixel, t = real(p1), test = (p2+10)*(p2+10):
  zsq = z*z
  zcu = zsq*z
  z = (1.-t)*zsq + t*zcu + c
  |z| <= test
  ;SOURCE: primal.frm
}

