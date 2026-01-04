Carr2958 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
          ; Converted to IF..ELSE logic by Sylvie Gallet, 02/21/98
  b4 = abs(sinh(0.5+pixel/2))^3 - conj(0.1/pixel) - flip(0.1/pixel) + 0.5
  if (whitesq)
    c = conj(b4)/10 + (-0.7456,-0.132) , z = zorig = sqr(b4)
  else
    c = - sqr(b4)/10 + (-0.7456,-0.132) , z = zorig = - conj(b4)
  endif
  imagp1 = imag(p1) , imagp2 = imag(p2) , bailout = 16 , iter = 0
  :
  if (iter == p1)
    z = 0 , c = 0.15 * zorig + (-0.7456,-0.132)
  elseif (iter == imagp1)
    z = 0 , c = 0.225 * zorig + (-0.7456,-0.132)
  elseif (iter == p2)
    z = 0 , c = 0.3375 * zorig + (-0.7456,-0.132)
  elseif (iter == imagp2)
    z = 0 , c = 0.50625 * zorig + (-0.7456,-0.132)
  endif
  iter = iter + 1
  z = z*z + c
  z <= bailout
  }

