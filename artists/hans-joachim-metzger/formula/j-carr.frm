Carr-Orman2 {; Modified by Jack A. Orman
  z=1/pixel, c=fn1(p2)/pixel:
  z=z^p1+fn2(c/pixel)
  |z| <=10
  ;SOURCE: j-carr.frm
}

Carr-Orman1 {; Modified by Jack A. Orman
  z=1/pixel, c=fn1(z/pixel):
  z=z*z*z+fn2(c-p1)
  |z| <=10
  ;SOURCE: j-carr.frm
}

