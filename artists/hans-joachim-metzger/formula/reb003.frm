Gopalsamy4 {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = -x*y + p1
  y = 2*y*y - 3*x*x
  z = x1 + flip(y) 
  |z| <= 4
  ;SOURCE: reb003.frm
}
 
GopalsamyFn {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = fn1(x)*fn2(y)
  y1 = fn3(x)*fn4(y)
  x2 = -2*x1*y1 + p1
  y = y1*y1 - x1*x1
  z = x2 + flip(y)
  |z| <= 100
  ;SOURCE: fractint.frm
}
 
