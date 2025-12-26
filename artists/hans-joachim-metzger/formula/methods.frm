Newton {
   ; These formulas were developed as a result of my
   ; interest in Newton's method.  They are best viewed
   ; using the OUTSIDE set to real or imag.
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = pixel
  root = 1:
  z3 = z * z * z
  z4 = z3 * z
  z = (3 * z4 + root) / (4 * z3)
  |z| <= 4
  ;SOURCE: methods.frm
}
 
