Carr-14 {; modified fnzp fnpix
  z = 1 / tan(1 / pixel) +p1
  c = ((1 * (|p2|<=0) +p2) * fn2(1 / pixel) ):
  z = fn1(z) * fn2(z)
  |z| <=64 
  ;SOURCE: carr.frm
}
 
Carr-15 (xaxis) {; Mark Peterson modified(Zoom all the way out & look)
                 ; Edited for Fractint v20 by G. Martin
  z = log(pixel), z = cosxx(z): 
  z = z + cosxx(pixel)
  z = sqr(z)
  Lastsqr <=4 
  ;SOURCE: carr.frm
}
 
Carr-16 {
  z = 0:
  z2 = z^z^z
  z = (cosxx(sqr(z-1)) ) + (sin(pixel))
  |z| <= 6
  ;SOURCE: carr.frm
}
 
Carr-17 (xaxis) {; Mark Peterson modified by Bob Carr
  c = z = 1 / pixel:
  z = sqr(z) +c
  z2 = sqr(z) +c
  |z| <= 10
  ;SOURCE: carr.frm
}
 
Carr-18 {
  c = z= (sqr(pixel)):
  z = (sqr(1 / cosxx(z)) ) + (sin(z^z^z))
  |z| <= 10
  ;SOURCE: carr.frm
}
 
Carr-19 {
  c = z = (sqr(1 / pixel)):
  z = (sqr(1 / cosxx(z)) ) + (sin(z^z^z))
  |z| <= 10
  ;SOURCE: carr.frm
}
 
Carr-20 {
  z = pixel, z = cosxx(z):
  z = z + (sqr(pixel))
  z = sqr (log(1 / (z)) )
  |z| <= 4
  ;SOURCE: carr.frm
}
 
Carr-21 {
  z = 1 / pixel, z = cosxx(z):
  z = z + (sqr(pixel))
  z = sqr (log(1 / (z)) )
  |z| <= 4
  ;SOURCE: carr.frm
}
 
Carr-22 {
  z = 1 / pixel, z = cosxx(z):
  z = z + (sqr(pixel))
  z = sqr (cosxx(1 / (z)) )
  |z| <= 4
  ;SOURCE: carr.frm
}
 
Carr-23 {
  z = 1 / pixel, z = cosxx(z):
  z = z + (sqr(pixel))
  z = sin(cosxx(1 / (z)) )
  |z| <= 4
  ;SOURCE: carr.frm
}
 
Carr-24 {; InvRadius-Mandel formula manipulated
  c=z=1/pixel:
  z=sqr(z*z) - c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-25 {; Carr-24 Modified
  c=z=1/pixel:
  z=sqr(z) + (c-1)
  |z| <= 4
  ;SOURCE: carr.frm
}
 
Carr-27 {; Carr-24 Modified
  c=z=1/pixel:
  z=sqr(z) + (c-1 1/4)
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-28 {; Carr-24 Modified
  c=z=1/pixel:
  z=(z*z*z) + c
  |z| <= 4
  ;SOURCE: carr.frm
}
 
Carr-29 {; Carr-24 Modified
  c=z=1/pixel:
  z=1-(z*z*z) + c
  |z| <= 4
  ;SOURCE: carr.frm
}
 
Carr-30 {; Carr-24 Modified
  c=z=1/pixel:
  z=(z*z*z*z*z) +c
  |Z| <= 4
  ;SOURCE: carr.frm
}
 
Carr-32 {; Carr-24 Modified
  c=z=pixel:
  z=(z*z*z*z*z*z) + c
  |z| <= 4
  ;SOURCE: carr.frm
}
 
Carr-34 {; Carr-24 Modified
  c=z=pixel:
  z=(z*z*z*z*z*z*z) + c
  |z| <= 8
  ;SOURCE: carr.frm
}
 
