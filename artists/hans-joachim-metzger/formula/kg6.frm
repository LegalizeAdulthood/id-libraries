601 {
  z =  pixel, c = fn1(z):
  z = z + c
  z = (z-1)^2 * (c+3)
  z <= p1
  ;SOURCE: kg6.frm
}
 
605 {
  z = c = pixel:
  z = z^c + fn1 (c)
  |z| <= p1
  ;SOURCE: kg6.frm
}
 
606 {
  z = c = pixel:
  z = z^c - fn1 (c)
  |z| <= p1
  ;SOURCE: kg6.frm
}
 
607 {
  z = c = pixel:
  z = z^c + fn1 (z+c)
  |z| <= p1
  ;SOURCE: kg6.frm
}
 
