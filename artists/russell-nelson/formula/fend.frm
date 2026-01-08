FractalFenderCS (XAXIS_NOPARM) { ; Spectacular!
   ; Modified for if..else logic 3/18/97 by Sylvie Gallet
   z = p1 , x = |z| :
   IF (x>1)
      z=cosh(z)+pixel
   ENDIF
   z = sqr(z) + pixel , x = |z|
   x <= 4
   }


