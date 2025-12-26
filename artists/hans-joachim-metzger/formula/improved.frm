Halley (xyaxis) {; Chris Green. Halley's formula applied to x^7-x=0.
   ; P1 real usually 1 to 1.5, P1 imag usually zero. Use floating point.
   ; Setting P1 to 1 creates the picture on page 277 of Pickover's book
  z=pixel:
  z5=z*z*z*z*z
  z6=z*z5
  z7=z*z6
  z=z-p1*((z7-z)/ ((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2)))
  0.0001 <= |z7-z|
  ;SOURCE: fractint.frm
}
 
Halley (xyaxis) {; Chris Green. Halley's formula applied to x^7-x=0.
   ; P1 real usually 1 to 1.5, P1 imag usually zero. Use floating point.
   ; Setting P1 to 1 creates the picture on page 277 of Pickover's book
  z=pixel:
  z5=z*z*z*z*z
  z6=z*z5
  z7=z*z6
  z=z-p1*((z7-z)/ ((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2)))
  0.0001 <= |z7-z|
  ;SOURCE: fractint.frm
}
 
halleySin (XYAXIS) {; Chris Green. Halley's formula applied to sin(x)=0.
   ; Use floating point.
   ; P1 real = 0.1 will create the picture from page 281 of Pickover's book.
  z=pixel:
  s=sin(z), c=cos(z)
  z=z-p1*(s/(c-(s*s)/(c+c)))
  0.0001 <= |s|
  ;SOURCE: fractint.frm
}
 
InvMandel (XAXIS) {; Mark Peterson
  c = z = 1 / pixel:
  z = sqr(z) + c
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
