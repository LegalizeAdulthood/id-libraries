shifter01 { ; After shift, switch from z*z to z*z*z
            ; Bradley Beacham  [74223,2745]
            ; Modified for if..else logic 3/18/97 by Sylvie Gallet
   ; P1 = shift value, P2 varies bailout value
   z = c = pixel , iter = 1 , shift = p1 , test = 4 + p2 :
   IF (iter <= shift)
      z = z*z + c
   ELSE
      z = z*z*z + c
   ENDIF
   iter = iter + 1
   |z| < test
   }
FractalFenderC (XAXIS_NOPARM) { ; Spectacular!
   ; Modified for if..else logic 3/18/97 by Sylvie Gallet
   z = p1 , x = |z| :
   IF (1 < x)
      z = cosh(z) + pixel
   ENDIF
   z = sqr(z) + pixel , x = |z|
   x <= 4
   }
