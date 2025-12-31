Carr-01 {
  z = Pixel, z = cosxx(z):
  z = z + Pixel
  z = sqr(z)
  |z| <=4
  ;SOURCE: carr.frm
}

Carr-02 {
  c = z = 1 / pixel
  z = cosxx(z) + c
  |z| <= 4
  ;SOURCE: carr.frm
}

Carr-02A {
  c=z=1/pixel:
  z=sqr(z) + .33
  |z| <=4
  ;SOURCE: carr.frm
}

Carr-02B {
  c=z=1/pixel:
  z=sqr(z^z) + .33
  |z| <=4
  ;SOURCE: carr.frm
}

Carr-02C {
  c=z=1/pixel:
  z=sqr(conj(z^z^z^z^z)) + .33
  |z| <=4
  ;SOURCE: carr.frm
}

Carr-02D {
  c=z=(1/pixel)/pixel-0.25:
  z=sqr(z) + 0.33
  |z| <=4
  ;SOURCE: carr.frm
}

Carr-02E {; Try using Distance Estimator function on this formula
  c=z=1/pixel:
  z=sqr(z) + c
  z1=sqr(z) + 0.33
  |z| <=4
  ;SOURCE: carr.frm
}

Carr-03 {
  c = z = 1 / pixel:
  z = sin((z*z) - (aa3*z)) +b
  |z| <= (p2 + 3)
  ;SOURCE: carr.frm
}

Carr-04 {
  c = z = 1 / pixel
  z = cosh(z) + c
  |z| <= 4
  ;SOURCE: carr.frm
}

Carr-05 {
  a=(0,0), b=(0,0):
  z=z+1
  anew=sqr(a)-sqr(b)+pixel
  b=2.0*a*b+p1
  a=anew
  |a|+|b| <= 4
  c = z = 1 / pixel
  z = sqr(z) + c
  |z| <= 4
  ;SOURCE: carr.frm
}

Carr-06 {; was OK-03 and was modified
  z = c = pixel:
  z = cosxx(z)/c
  z = sin(z)
  |z| <= (5 + p1)
  ;SOURCE: carr.frm
}

Carr-07 {; was OK-02 and was modified
         ; Edited for Fractint v. 20 by George Martin, 10/98
  z = c = 1 / pixel, k = 1 + p1:
  z = (c^z) + c
  z = cotan(z) * k
  |z| <= (5 + p2)
  ;SOURCE: carr.frm
}

Carr-08 {; was OK-01 and was modified
  z = 0, c = 1 / pixel:
  z = (c^z) + c
  z = sqr(z)
  |z| <= (5 + p1)
  ;SOURCE: carr.frm
}

Carr-09 {; was OK-04 and was modified
  z = 0, c = cosxx(pixel):
  z = sqr(z) + c
  |z| <= (5 + p1)
  ;SOURCE: carr.frm
}

Carr-10 {
  c=z= 1/pixel:
  z=(tanh(z)*tanh(1/z)*z) + c
  |z| <=(5 + p1)
  ;SOURCE: carr.frm
}

Carr-11 {
  c=z=1/pixel:
  z=sqr(z*(z+1.918)) + c
  z=sin(z*z) + c
  |z| <= 4
  ;SOURCE: carr.frm
}

Carr-12 {
  c=z=sqr(pixel):
  z=sqr(z) + 2*c
  z=sqr(z) + c
  |z| <= 4
  ;SOURCE: carr.frm
}

Carr-13 {; Edited for Fractint v. 20 by George Martin, 10/98
  c = z = cosxx(pixel):
  z = cosxx(z) + 2
  c = z = 1 / sqr(pixel)
  z = 1 / cosxx(z) +c
  |z| <= 4
  ;SOURCE: carr.frm
}

