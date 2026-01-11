Newton3 {; Chris Green
         ; Try p1=1.8 and p2 = 3.0
  z  = (1,1):
  z2 = z*z
  z3 = (z*z2) - pixel
  z  = z-p1*z3/(p2*z2)
  0.0001 < |z3|
  ;SOURCE: improved.frm
}
Mind_2 {
   ; These formulas were developed after having read
   ; COMPUTERS AND THE IMAGINATION [Chapter 27] Turning
   ; a Universe Inside-Out.  This is just a new venture
   ; and I am still exploring this rich area.
   ; This Fractint .FRM file (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel:
  z = c * sin(1 / z)
  |z| <= 100
  ;SOURCE: physics.frm
}
Mind_3 {
   ; This Fractint .FRM file (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel:
  z = c * sin(1 / z)
  z = z * z + c
  |z| <= 4
  ;SOURCE: physics.frm
}
Mind_4 {
   ; This Fractint .FRM file (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel
  z = c * sin(1 / z):
  z = z * z + c
  |z| <= 4
  ;SOURCE: physics.frm
}
