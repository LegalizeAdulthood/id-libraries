
Carr3102 (YAXIS)  {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; Converted to IF..ELSE logic by Sylvie Gallet, 02/15/98
  ; passes=1 needs to be used with this PHC formula.
  pixel = -abs(real(pixel)) + flip(imag(pixel))
  if (whitesq)
    c = sqr(abs(pixel))*abs(pixel) - 0.65
    c1 = sqr(c/9) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + c/1.5
    z = zorig = sqr(pixel)*pixel
  else
    c = - sqr(abs(pixel))*abs(pixel) + 0.65
    c1 = sqr(c/9) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + c/1.5
    z = zorig = - sqr(pixel)*pixel
  endif
  imagp1 = imag(p1) , imagp2 = imag(p2) , bailout = 16 , iter = 0
  :
  if (iter == p1)
    z = 0 , c1 = sqr(zorig/6) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + zorig
  elseif (iter == imagp1)
    z = 0 , c1 = sqr(0.25*zorig) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + 1.5 * zorig
  elseif (iter == p2)
    z = 0 , c1 = sqr(0.375*zorig) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + 2.25 * zorig
  elseif (iter == imagp2)
    z = 0 , c1 = sqr(5.0625*zorig) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + 3.375 * zorig
  endif
  z2 = z*z , z = z2 - 0.0025 * |0.2*z2*z + z2 + c2| + c1
  |z| <= bailout
}

