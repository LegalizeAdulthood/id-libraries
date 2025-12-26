Carr3102 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
	     ; Converted to IF..ELSE logic by Sylvie Gallet, 02/15/98
	     ; passes=1 needs to be used with this PHC formula.
             ; Added variable "newpixel". G. Martin 6/13/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  IF (whitesq)
    c = sqr(abs(newpixel))*abs(newpixel) - 0.65
    c1 = sqr(c/9) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + c/1.5
    z = zorig = sqr(newpixel)*newpixel
  ELSE
    c = - sqr(abs(newpixel))*abs(newpixel) + 0.65
    c1 = sqr(c/9) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + c/1.5
    z = zorig = - sqr(newpixel)*newpixel
  ENDIF
  imagp1 = imag(p1), imagp2 = imag(p2), bailout = 16, iter = 0
  :
  IF (iter == p1)
    z = 0, c1 = sqr(zorig/6) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + zorig
  ELSEIF (iter == imagp1)
    z = 0, c1 = sqr(0.25*zorig) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + 1.5 * zorig
  ELSEIF (iter == p2)
    z = 0, c1 = sqr(0.375*zorig) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + 2.25 * zorig
  ELSEIF (iter == imagp2)
    z = 0, c1 = sqr(5.0625*zorig) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + 3.375 * zorig
  ENDIF
  z2 = z*z, z = z2 - 0.0025 * |0.2*z2*z + z2 + c2| + c1
  |z| <= bailout
  ;SOURCE: 42zcarr.frm
}
 
