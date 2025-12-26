kg1601 {
  z = y = pixel-z:
  z = fn1(z) * fn2(y) 
  y = fn1(y) / fn2(z)   
  |z| <= p1
  ;SOURCE: kg16.frm
}
 
kg1602 {
  z = y = pixel+z:
  z = fn1(z) / fn2(y) 
  y = fn1(y) / fn2(z)   
  |z| <= p1
  ;SOURCE: kg16.frm
}
 
kg1603 {
  z = y = pixel+1/z:
  z = fn1(z) * fn2(y) 
  y = fn1(y) * fn2(z)   
  |z| <= p1
  ;SOURCE: kg16.frm
}
 
kg1604 {
  z = y = pixel/z:
  z = fn1(z) / fn2(y) 
  y = fn1(y) * fn2(z)   
  |z| <= p1
  ;SOURCE: kg16.frm
}
 
