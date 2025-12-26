aa-diamand {
  z = c = pixel:
  z = sqr(z)+c
  (real(z)+imag(z))<p1
  ;SOURCE: eli.frm
}
 
aa-z-to-c (XAXIS) {
  z = pixel, c = z:
  z = exp(c*log(z))
  |z| <= p1
  ;SOURCE: eli.frm
}
 
aaa-deals {
  z = pixel, a=real(z), b=imag(z), i=((0-1)^0.5):
  x = real(z)
  y = imag(z)
  u = x*x + y*y + a
  v = (0-2)*x*y + b
  z = u + v*i
  |z|<p1
  ;SOURCE: eli.frm
}
 
