Hall-c {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = pixel:
  z = (-2.7+5*z*conj(z)+1.5*real(z^6))*z+1*conj(z*z)+c
  |z| <= 4
  ;SOURCE: hallween.frm
}
