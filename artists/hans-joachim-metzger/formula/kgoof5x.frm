oof5x (XYAXIS) {; Added variable "newpixel". G. Martin 6/29/99
  newpixel = fn1 (pixel)
  z = newpixel:
  z = p1 / fn1 (z*z) * (fn2(z))
  z = z + newpixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof5x.frm
}
 
