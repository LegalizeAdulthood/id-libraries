
gravijul { ; r^(-2) Mark Christenson 1/25/98
; defaults: p1 = (1,0) p2 = (0,0) p3 = (4,0)
   z = pixel:
   w = fn1(z)
   z = fn3(p1/fn2(w*w)) + p2
    |z| < p3
  }

gravijul-v1 { ; Variation on Mark Christenson's gravijul by Sylvie Gallet
   z = pixel^imag(p3) :
   w = fn1(z)
   z = fn3(p1/fn2(w*w)) + p2
    |z| < p3
  }

gravijul-v2 { ; Variation on Mark Christenson's gravijul by Sylvie Gallet
   z = pixel :
   w = fn1(real(z)) , x = fn3(p1/fn2(w*w))
   w = fn1(imag(z)) , y = fn3(p1/fn2(w*w))
   z = x + flip(y) + p2
    |z| < p3
  }

gravijul-v3 { ; Variation on Mark Christenson's gravijul by Sylvie Gallet
   z = pixel:
   w = fn1(z)
   z = fn3(fn2(w*w)^p1) + p2
    |z| < p3
  }

gravijul-v4 { ; Variation on Mark Christenson's gravijul by Sylvie Gallet
  z = pixel :
   w = fn1(1/z)
   z = fn3(fn2(w*w)^p1) + p2
    |z| < p3
  }

gravijul-v5 { ; r^(-2) Mark Christenson 1/25/98
   z = pixel :
   w = fn1(z)
   z = fn3(p1/fn2(w*(1-w))) + p2
    |z| < p3
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
