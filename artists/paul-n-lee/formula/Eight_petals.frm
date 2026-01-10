Test0035 {; Jim Muth
  a=real(p1), b=imag(p1), d=real(p3), f=imag(p3)
  z=p2, c=fn1(pixel^b)/b:
  z=z^a+(d*z^f)+c
  |z| <=100
  ;SOURCE: 98msg.frm
}
