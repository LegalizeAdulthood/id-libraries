faulty1 {; based on formulas by Brad Beacham and Gordon Lamb  
  z=real(pixel)+flip(imag(pixel))
  c=real(pixel)+flip(imag(pixel))
  count = 1, shift = p1:
  a = (z^2.71828182845905) * (count <= shift)
  b = (z*z*z) * (shift < count)
  count = count + 1
  z =  a + b + c
  |z| < 64  
  ;SOURCE: faulty.frm
}
 
faulty2 {; based on formulas by Brad Beacham and Gordon Lamb  
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p1*real(pixel)+flip(imag(pixel))
  count = 1, shift = p2:
  a = (z^2.718281845905) * (count <= shift)
  b = (z*z*z) * (shift < count)
  count = count + 1
  z =  a + b + c
  |z| < 64  
  ;SOURCE: faulty.frm
}
 
faulty3 {                                          
  z = pixel/p1, c = pixel:
  z = z^2.71828182845905 + c   
  |z| <= 4
  ;SOURCE: faulty.frm
}
 
faulty4 {  
  z = pixel + p1, c = pixel:
  z = z^2.71828182854905 + sqr(pixel) + c
  |z| < 16
  ;SOURCE: faulty.frm
}
 
faulty5 {; Eliminated variable "e' - now a predefined variable
  z = pixel + p1, c = pixel: 
  z = z*z^e / (z^e + c) + c
  |z| <= 64
  ;SOURCE: faulty.frm
}
 
