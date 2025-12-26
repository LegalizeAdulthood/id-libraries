kg1701 {; Karl Geigl 100327,156
  z=pixel, c=pixel:
  z=fn1(z)+c
  c=fn2(c)+z
  |z| <= p2
  ;SOURCE: kg17.frm
}
 
kg1702 {; Karl Geigl 100327,156
  z=pixel, c=p1:
  z=fn1(z)+fn2(c)
  c=p2+c
  |z| <= p1
  ;SOURCE: kg17.frm
}
 
kg1703 {; Karl Geigl 100327,156
  z=pixel, c=1/pixel:
  z=fn1(z)+c
  c=p2*c
  |z| <= p1
  ;SOURCE: kg17.frm
}
 
kg1704 {; Karl Geigl 100327,156
  z=1/pixel, c=p1:
  z=fn1(z)+c
  c=p2*fn2(c)
  |z| <= p1
  ;SOURCE: kg17.frm
}
 
