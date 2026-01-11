Ormandelbrot48 {
  z=pixel, c=p1:
  z=sqr(sqr(z)+fn1(c)/sqr(z)-fn2(c))
  |z|<=4
  ;SOURCE: orman3.frm
}

Ormandelbrot50 {; Mandel-Julia Hybrid
  z = c =pixel, d=p1:
  z = (sqr(z) + C)*(Sqr(z) + D)
  z <= 4
  ;SOURCE: orman3.frm
}

Ormandelbrot51 {; Mandel-Julia Hybrid
  z = c =pixel, d=p1:
  z = (sqr(z) + C)+(Sqr(z) + D)
  z <= 4
  ;SOURCE: orman3.frm
}

PixJack {
   z = pixel, c = p1:
   z = z*z + c * pixel
   z <= 4
   ;SOURCE: orman3.frm
}

PixJack2 {
   z = pixel, c = p1, d=c/pixel:
   z = z*z + c + d
   z <= 4
   ;SOURCE: orman3.frm
}

