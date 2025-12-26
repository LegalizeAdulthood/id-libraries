Raphaelbrot (xyaxis) {; phi
  z = pixel:
  z = sqr(z) + ((sqrt 5 - 1)/2) 
  |z| <= 4
  ;SOURCE: drcha.frm
}
 
test1 (xyaxis) {; =phi
  c = pixel 
  z = ((sqrt 5 + 1)/2):
  z =  z*z + pixel*((sqrt 5 + 1)/2) + c
  |z| <= 4
  ;SOURCE: drcha.frm
}
 
test3 {; Michael Theroux [71673,2767]
       ; fix and generalization by Ron Barnett [70153,1233]
       ; =phi
       ; try p1 = 2.236067977 for the golden mean
  z = ((p1 + 1)/2)/pixel:
  z =  z*z + pixel*((p1 + 1)/2)/((p1 - 1)/2)
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
Natura (xyaxis) {; phi yoni
  z = pixel:
  z = z*z*z + ((sqrt 5 + 1)/2) 
  |z| <= 4
  ;SOURCE: drcha.frm
}
 
