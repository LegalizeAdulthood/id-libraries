tC1197 {; generalized CARR1197, by Caren Park
    ; where fn1 = conj, fn2 = exp, fn3 = cosxx, fn4 = sqr
    ;
  z  = fn1(1 / pixel * 0.91 / pixel)
  z2 = z + fn2( fn3(1 / pixel))
  z3 = z * z2
  c  = ( 1 / fn3( fn4( pixel))) / (1.099, 0):
  z = (z * 1 / c)
  z2 = z3 - (z2 + z / c)
  z3 = z2 - (z3 + z2)
  |real(z)| <= 100 
  ;SOURCE: forummsg.frm
}
 
Carr1298 {
  z=real(pixel)+flip(imag(pixel))
  c=real(pixel)+conj(imag(pixel)):
  z=(z*z+pixel)/(pixel*pixel+z)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}
 
