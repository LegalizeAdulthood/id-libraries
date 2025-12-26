oof1x (XAXIS) {; Added variable "newpixel". G. Martin 6/29/99
  newpixel = fn2 (pixel)
  z = newpixel:
  z = p1 * (z^p2) + p2 * (z^p1)
  z = z + newpixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof1x.frm
}
 
