Lesfrm10 {
  c=z=pixel:
  z=z+(fn1(fn2(Z)))+C/P1
  |z|<4
  ;SOURCE: les.frm
}
Lesfrm20 {; Les St Clair, 1996
  z = c = pixel:
  x=real(z), y=imag(z)
  x= fn1(x) + p1*c
  y= fn2(y) + p2*c
  z = x+flip(y)
  |z| <4
  ;SOURCE: les.frm
}
