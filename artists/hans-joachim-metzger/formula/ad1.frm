a-03 {
  z=pixel, x=fn3(z-1)/fn4(1/z+1):
  z=(fn1(z^2)/x)^(fn2(x^3))/(z+1)+c
  |z|<4
  ;SOURCE: ad1.frm
}
 
a0b0 {
  z=pixel:
  z=fn1(z^(e*(1/sqr(-1))-fn2((z+1)^e)))+c
  |z|<4
  ;SOURCE: ad1.frm
}
 
an6 {
  z=pixel:
  z=((fn1(z)^p1)/fn2(abs(z+p2))*fn2(z)+c)
  |z|<4
  ;SOURCE: ad1.frm
}
 
Carr-928 {
  z=conj(6/pixel), c=cosh(pixel+8):
  z=(((imag(z)/c)+(z*1/c))/(pixel-c*c))/0.6
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}
 
