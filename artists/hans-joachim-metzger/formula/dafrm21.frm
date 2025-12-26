dafrm21 {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = -fn1((x*x*x + y*y*y - 1) - 6*x)*x/(2*x*x*x + y*y*y - 1)
  y1 = -fn2((x*x*x + y*y*y - 1) + 6*x)*y/(2*x*x*x + y*y*y - 1)
  x2 = x1*x1*x1 - y1*y1*y1 + p1 + 5
  y2 = 4*x*y - 18
  z = x2 + flip(y2)
  |z| <= 100
  ;SOURCE: fractint.frm
}
 
