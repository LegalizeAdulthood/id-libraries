carr2821 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; Converted to if.else by Sylvie Gallet and George Martin 3/97
          ; passes=1 needs to be used with this PHC formula.
   pixinv = 0.1/pixel
   p9 = 0.9*pixinv
   imagp1 = imag(p1)
   imagp2 = imag(p2)
   IF (whitesq)
      z = zorig = pixel - conj(pixinv)
      c = pixel - flip(pixinv) - conj(0.01*pixinv) - p9
      mz = |z|
   ELSE
      c = flip(pixinv) + conj(0.01*pixinv) - pixel - p9
      z = zorig = conj(pixinv) - pixel
      mz = |z|
   ENDIF
   bailout = 16
   iter = 0
   :
   IF (iter==p1)
      z = mz = 0
      c = 1.5*zorig^1.2 - p9
   ELSEIF (iter==imagp1)
      z = mz = 0
      c = 2.25*conj(zorig) - p9
   ELSEIF (iter==p2)
      z = mz = 0
      c = 3.375*flip(zorig) - p9
   ELSEIF (iter==imagp2)
      z = mz = 0
      c = 5.0625*flip(zorig) - p9
   ENDIF
   z = mz*0.2 + z*z + c
   mz = |z|
   iter = iter + 1
   mz <= bailout
  ;SOURCE: ifs196.frm
}
