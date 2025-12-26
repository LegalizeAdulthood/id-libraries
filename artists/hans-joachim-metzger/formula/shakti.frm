Bhakti {
  z = pixel:
  z = z + p1
  r = fn2(z) * z  
  q = z^pi 
  z = fn1(z) * (r/q)
  |z| <= 4
  ;SOURCE: shakti.frm
}
 
Shakti {
  z = pixel:
  z = z + p1
  r = z * z * z 
  q = z^e 
  z = z * (r/q)
  |z| <= 4
  ;SOURCE: shakti.frm
}
 
Devotion {
  z = pixel:
  z = z + p1
  r = fn1(z) * z * z  
  q = z^e 
  z = (z - imag(1/r)/z - real(1/q))
  |z| <= 4
  ;SOURCE: shakti.frm
}
 
Dharma (XAXIS) {
  z = c = pixel:
  z = z + p1
  r = tan(1/z) + pixel
  z = fn1(r) * z 
  |z| < 4
  ;SOURCE: shakti.frm
}
 
Sattva {
  z = pixel + p1:
  r = fn1(tan(1/z)) + pixel 
  z = z * fn2(r)
  |z| < 4
  ;SOURCE: shakti.frm
}
 
