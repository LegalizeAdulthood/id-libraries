tracykoller1 {; Flower formula series for Tracy
              ; Copr. 1995 by Jack A. Orman
  z=1/pixel, c=cosxx(z/pixel)*sqr(pixel):
  z=z*z+sqr(c-p1)
  |z| <=4
  ;SOURCE: tracy.frm
}
 
tracykoller2 {; Created by Jack A. Orman
              ; Copr. 1995
  z=1/pixel, c=cosxx(p2)/pixel:
  z=z^p1+sqr(c/pixel)
  |z| <=10
  ;SOURCE: tracy.frm
}
 
tracykoller3 {; Created by Jack A. Orman
              ; Copr. 1995
  z=1/pixel, c=sqr(p2)/pixel:
  z=z^p1+sqr(c/pixel)
  |z| <=10
  ;SOURCE: tracy.frm
}
 
tracykoller4 {; Created by Jack A. Orman
              ; Copr. 1995
  z=1/pixel, c=sqrt(p2)/pixel:
  z=z^p1+sqr(c/pixel)
  |z| <=10
  ;SOURCE: tracy.frm
}
 
