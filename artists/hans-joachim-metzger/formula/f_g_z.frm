FGZ_-1 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + c
  z = ((-1, 0) * z * z) / (z - 1) + c
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}
 
