Carr3034 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; optimized by Sylvie Gallet
	  ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
	  ; passes=1 needs to be used with this PHC formula.
  b5 = cabs(0.33-cos(pixel)) / (0.33-tan(3*pixel)) - 0.4
  b4 = (|pixel| - (0,0.001))*(pixel-conj(0.01/pixel))
  IF (whitesq)
    c = b4/6 + (-0.6756,-0.132), z0 = z = b5
  ELSE
    c = - conj(b4)/6 + (-0.6756,-0.132), z0 = z = - sqr(b5)
  ENDIF
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  IF (iter==l1)
    z = 0, c = 0.25*z0 + (-0.6756,-0.132)
  ELSEIF (iter==l2)
    z = 0, c = 0.375*z0 + (-0.6756,-0.132)
  ELSEIF (iter==l3)
    z = 0, c = 0.5625*z0 + (-0.6756,-0.132)
  ELSEIF (iter==l4)
    z = 0, c = 0.84375*z0 + (-0.6756,-0.132)
  ENDIF
  z = z*z + c
  iter = iter+1
  z <= bailout
  ;SOURCE: 42ycarr.frm
}

