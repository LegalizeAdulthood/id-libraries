gravijul {; r^(-2) Mark Christenson 1/25/98
   ; defaults: p1 = (1,0) p2 = (0,0) p3 = (4,0)
  z = pixel:
  w = fn1(z)
  z = fn3(p1/fn2(w*w)) + p2
  |z| < p3
  ;SOURCE: 98msg.frm
}

gravijul4 {; variation of a Mark Christenson frm
  bailout = imag(p3), k = real(p3)
  z = abs(pixel):
  v = fn1(z)*k
  w = fn2(v*v)
  z = fn4(p1/fn3(w*w)) + p2
  |z| < bailout
  ;SOURCE: 98msg.frm
}

