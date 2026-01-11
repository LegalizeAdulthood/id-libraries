StoneSoup {
   A = Real(p1)*pixel;
   z = A;
   B = 1/p2:
   z = B*(A + Sqr(z) + p3)/z,
  |z| <= Imag(p1)     
   } 

; This variant is included for the religiouly oriented

Soup {
   A = Real(p1)*pixel;
   z = A;
   B = 1/p2:
   z = B*(A/z + z) + p3,
  |z| <= Imag(p1)     
   } 
