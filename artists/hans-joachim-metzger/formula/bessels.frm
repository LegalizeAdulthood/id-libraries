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
 
