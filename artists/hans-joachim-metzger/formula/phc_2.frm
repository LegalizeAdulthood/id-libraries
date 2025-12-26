JD-SG-05 {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
    ; use p1 and p2 to adjust the 2nd Mandel
    ; p1 = -1 (default)
    ; Modified for IF..ELSE logic by Sylvie Gallet, 05/15/97
  z = 0
  IF (whitesq)
    c = pixel
  ELSE
    IF (p1)
      c = p1*pixel + p2
    ELSE
      c = - pixel + p2
    ENDIF
  ENDIF
  :
  z = z*z + c
  |z| < 4
  ;SOURCE: phctopng.frm
}
 
JD-SG-06 {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  IF (whitesq)
    z = real(p1)
  ELSE
    z = flip(imag(p1))
  ENDIF
  :
  z = z*z + pixel
  |z| < 4
  ;SOURCE: phctopng.frm
}
 
