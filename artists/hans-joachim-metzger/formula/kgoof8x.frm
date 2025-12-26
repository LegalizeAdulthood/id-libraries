oof8x (XYAXIS) {; Revised for Fractint v20 by G. Martin
                ; Added variable "newpixel". G. Martin 6/29/99  
  newpixel = fn1 (pixel) + fn2 (pixel)
  z = newpixel:
  z = z^(fn2(1))
  z = z + newpixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof8x.frm
}
 
