gravijul {; r^(-2) Mark Christenson 1/25/98
   ; defaults: p1 = (1,0) p2 = (0,0) p3 = (4,0)
  z = pixel:
  w = fn1(z)
  z = fn3(p1/fn2(w*w)) + p2
  |z| < p3
  ;SOURCE: 98msg.frm
}

gravijul-v2 {; Variation on Mark Christenson's gravijul by Sylvie Gallet
  z = pixel:
  w = fn1(real(z)), x = fn3(p1/fn2(w*w))
  w = fn1(imag(z)), y = fn3(p1/fn2(w*w))
  z = x + flip(y) + p2
  |z| < p3
  ;SOURCE: 98msg.frm
}

gravijul-v3 {; Variation on Mark Christenson's gravijul by Sylvie Gallet
  z = pixel:
  w = fn1(z)
  z = fn3(fn2(w*w)^p1) + p2
  |z| < p3
  ;SOURCE: 98msg.frm
}

gravijul-v4 {; Variation on Mark Christenson's gravijul by Sylvie Gallet
  z = pixel :
  w = fn1(1/z)
  z = fn3(fn2(w*w)^p1) + p2
  |z| < p3
  ;SOURCE: sg_gravj.par
}

