carr2821 { ; Modified Sylvie Gallet frm. [101324,3444],1996
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
   }

Carr2821a { ; Modified Sylvie Gallet frm. [101324,3444],1996
            ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
            ; Optimized by Sylvie Gallet, April 1997
   e = -0.1/pixel , z = c = conj(e) + pixel , r = |z|
   k = e*0.9 , p = k + flip(e) + conj(0.01*e) + pixel
   bailout = 16 , im1 = imag(p1) , im2 = imag(p2)
   iter = 0 :
   IF (iter == p1)
      p = (c^1.2)*1.5 + k , r = z = 0
   ELSEIF (iter == im1)
      p = conj(c)*2.25 + k , r = z = 0
   ELSEIF (iter == p2)
      p = flip(c)*3.375 + k , r = z = 0
   ELSEIF (iter == im2)
      p = flip(c)*5.0625 + k , r = z = 0
   ENDIF
   iter = iter + 1 , z = real(r)*0.2 + sqr(z) + p , r = |z|
   r <= bailout
   }

Carr2821b { ; Modified Sylvie Gallet frm. [101324,3444],1996
            ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
            ; Optimized by Sylvie Gallet, April 1997
   e = 0.1/pixel , z = c = conj(e) - pixel , r = |z|
   k = e*(-0.9) , p = k + flip(e) + conj(0.01*e) - pixel
   bailout = 16 , im1 = imag(p1) , im2 = imag(p2)
   iter = 0 :
   IF (iter == p1)
      p = (c^1.2)*1.5 + k , r = z = 0
   ELSEIF (iter == im1)
      p = conj(c)*2.25 + k , r = z = 0
   ELSEIF (iter == p2)
      p = flip(c)*3.375 + k , r = z = 0
   ELSEIF (iter == im2)
      p = flip(c)*5.0625 + k , r = z = 0
   ENDIF
   iter = iter + 1 , z = real(r)*0.2 + sqr(z) + p , r = |z|
   r <= bailout
   }

