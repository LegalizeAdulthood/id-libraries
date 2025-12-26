pixey07 {
  z = pixel + p1 
  c = pixel:
  z = fn1(z-1/pixel)^2.71828182845905 + fn2(c)  
  |z| <= 16
  ;SOURCE: pixey.frm
}
 
pixey12 { 
  z =fn1(pixel + p1)
  c =fn2(pixel - sqr(z)):
  z =c + z^2.71828182845905 - 1
  |z| <=16
  ;SOURCE: pixey.frm
}
 
pixey13 { 
  z = fn1(pixel + p1)
  c = fn2(pixel - sqr(z)):
  z = z^2.71828182845905 + c
  |z| <=16
  ;SOURCE: pixey.frm
}
 
