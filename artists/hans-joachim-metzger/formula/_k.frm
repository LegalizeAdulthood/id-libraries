kg1402 {
  z = y = pixel+p2:
  z = fn1(z) / fn2(y) 
  y = fn1(y) / fn2(z)   
  |z| <= p1
  ;SOURCE: kg14.frm
}
 
kg1403 {
  z = y = pixel*p2:
  z = fn1(z) * fn2(y) 
  y = fn1(y) * fn2(z)   
  |z| <= p1
  ;SOURCE: kg14.frm
}
 
limerick {; Bradley Beacham  [74223,2745]
          ; Just an experiment -- nothing earth-shaking...
  z = c = pixel, test = p1 + 4:
  z = fn1(z)
  z = fn1(z)
  z = fn2(z)
  z = fn2(z)
  z = fn1(z) + c
  |z| < test
  ;SOURCE: zsazsa.frm
}
 
wiltetrate {; by me
  z = pixel :
  z=z^(cotanh(z^.5))+pixel
  |z|<=4
  ;SOURCE: wilson.frm
}
 
