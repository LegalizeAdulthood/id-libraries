contest5  {; Kerry Mitchell
      ; slightly optimized version of Contest formula
         z=p1, c=pixel:
         z2=sqr(z), z=z*z2+c*(1+z-z2), |z| <= 16
         }

