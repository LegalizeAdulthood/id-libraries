Carr2884 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
          ; Rewritten for if..else by Sylvie Gallet 5/22/98
  IF (whitesq)
    c = 0.15/log(exp(pixel^7 + |sin(pixel^3.5)| - 0.4) - 0.8)
    c = (-0.7456,-0.132) + c/10 - 1/(c*6000)
    z = zorig = (pixel - conj(0.1/pixel) - flip(0.01/pixel))^7
  ELSE
    c = - 0.15/log(exp(pixel^7 + |sin(pixel^3.5)| - 0.4) - 0.8)
    c = (-0.7456,-0.132) + c/10 - 1/(c*6000)
    z = zorig = - (pixel - conj(0.1/pixel) - flip(0.01/pixel))^7
  ENDIF
  bailout = 16, iter = 0
  :
  IF (iter == p1)
    z = c = (-0.7456,-0.132) + 0.15*zorig - 1/(zorig*9000)
  ELSEIF (iter == imag(p1))
    z = c = (-0.7456,-0.132) + 0.225*zorig - 1/(zorig*13500)
  ELSEIF (iter == p2)
    z = c = (-0.7456,-0.132) + 0.3375*zorig - 1/(zorig*20250)
  ELSEIF (iter == imag(p2))
    z = c = (-0.7456,-0.132) + 0.50625*zorig - 1/(zorig*30375)
  ELSE
    z = z*z + c
  ENDIF
  iter = iter + 1
  |z| <= bailout
  ;SOURCE: 98msg.frm
}
 
