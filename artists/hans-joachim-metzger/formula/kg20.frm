kg2001 {
  z = y = pixel:
  z = fn1(z) + fn2(z-y) 
  y = p1 / z-y  
  |z| <= p1
  ;SOURCE: kg20.frm
}
 
kg2002 {
  z = y = pixel:
  z = fn1(z) + fn2(z+y) 
  y = y*y / z*z-y       
  |z| <= p1
  ;SOURCE: kg20.frm
}
 
kg2003 {
  z = y = pixel:
  z = fn1(z) + fn2(z*z-y) 
  y = p1*z / z-y        
  |z| <= p1
  ;SOURCE: kg20.frm
}
 
kg2004 {
  z = y = pixel:
  z = fn1(z) + fn2(z-y*y) 
  y = p1*y / z-y        
  |z| <= p1
  ;SOURCE: kg20.frm
}
 
