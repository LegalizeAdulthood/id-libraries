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
BESSEL-4 {
   ; (c) 1993 by
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  c = z = pixel:
  z = -sin(z) / z - cos(z) / (z * z) + pixel
  |z| <= 100
  ;SOURCE: bessels.frm
}
