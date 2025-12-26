kg2201 {
  z=pixel+c:
  z=fn1(z)^p1 + fn2(z)^p2 + c
  |z| <= p2
  ;SOURCE: kg22.frm
}
 
kg2202 {
  z=p1+pixel:
  z=fn1(z)*p1 + fn2(z)^p2 + c
  |z| <= p2
  ;SOURCE: kg22.frm
}
 
kg2203 {
  z=p1-pixel:
  z=fn1(z)/p1 + fn2(z)^p2 + c
  |z| <= p2
  ;SOURCE: kg22.frm
}
 
kg2204 {
  z=pixel^p1:
  z=fn1(z)/p1 ^ fn2(z)^p2 + c
  |z| <= p2
  ;SOURCE: kg22.frm
}
 
kg2205 {
  z=p1/pixel:
  z=fn1(z)/p1 ^ fn2(z)*p2 + c
  |z| <= p2
  ;SOURCE: kg22.frm
}
 
