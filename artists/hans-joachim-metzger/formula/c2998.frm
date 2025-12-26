Carr2998 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; Converted to IF..ELSE logic by Sylvie Gallet, 13/02/98
          ; passes=1 needs to be used with this PHC formula.
  pixinv = .01/pixel
  c = pixel - flip(pixinv) - conj(0.1*pixinv)
  IF (whitesq)
    c = flip(conj(0.1*c)) + (-0.7456,-0.132)
    z = zorig = pixel - conj(pixinv)
  ELSE
    c = flip(conj(-0.1*c)) + (-0.7456,-0.132)
    z = zorig = - pixel + conj(pixinv)
  ENDIF
  imagp1 = imag(p1), imagp2 = imag(p2), bailout = 16, iter = 0
  :
  IF (iter == p1)
    z = 0
    c = 0.15 * flip(conj(zorig)) + (-0.7456,-0.132)
  ELSEIF (iter == imagp1)
    z = 0
    c = 0.225 * flip(conj(zorig)) + (-0.7456,-0.132)
  ELSEIF (iter == p2)
    z = 0
    c = 0.3375 * flip(conj(zorig)) + (-0.7456,-0.132)
  ELSEIF (iter == imagp2)
    z = 0
    c = 0.50625 * flip(conj(zorig)) + (-0.7456,-0.132)
  ENDIF
  iter = iter + 1
  z = z*z + c
  z <= bailout
  ;SOURCE: 42xcarr.frm
}
 
