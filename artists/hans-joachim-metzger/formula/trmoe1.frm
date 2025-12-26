trmoe-12 {
  z=c=1/pixel
  y=fn1(c):
  z=z*y+fn2(c)
  ;SOURCE: trmoe1.frm
}
 
trmoe-13 {
  z=fn1(pixel), c=fn2(cos(1/pixel)), x=fn3(c+z)
  z=(z*z)+c/x
  |z|<=4
  ;SOURCE: trmoe1.frm
}
 
