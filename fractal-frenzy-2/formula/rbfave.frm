;------------------------------------------------;
; RBFAVE.FRM                                     ;
; Ron Barnett 70153,1233                         ;
;------------------------------------------------; 

   Julike = {	; Ron Barnett, 1993
		; a Julia function based upon the Ikenaga function
      z = Pixel:
      z = z*z*z + (P1-1)*z - P1, |z| <= 4
   }

   Mask = {	; Ron Barnett, 1993
		; try fn1 = log, fn2 = sinh, fn3 = cosh
      ;P1 = (0,1), P2 = (0,1)
      ;Use floating point
      z = fn1(pixel):
      z = P1*fn2(z)^2 + P2*fn3(z)^2 + pixel, |z| <= 4
   }

   PseudoZeePi = {; Ron Barnett, 1993
      z = pixel:
      x = 1-z^p1;
      z = z*((1-x)/(1+x))^(1/p1) + p2, |z| <= 4
   }

   FlipLambdaM = {; Ron Barnett, 1993
      z = 0.5:
      z = pixel*z*(1-flip(z)*flip(z)), |z| <= 100
   }

   Gopalsamy1 {; Ron Barnett, 1993
      z = pixel:
      x = real(z), y = imag(z),
      x1 = -2*x*y + p1,
      y = y*y - x*x,
      z = x1 + flip(y), |z| <= 4
   }

   LambdaPwr {; Ron Barnett, 1993
      z = pixel:
      z = p1*z*(1 - z^p2), |z| <= 100
   }  

   REB004A = {; Ron Barnett, 1993
      z = pixel:
      z =p1*fn1(z) + p1*p1*fn2(p2*z) + pixel, |z| <= 100
   }

   REB004G = {; Ron Barnett, 1993
              ; floating point required
      z = pixel:
      z = p2 + fn1(2*z+1)/(2*z+p1); 
      z = z + fn2(4*z+1)/(4*z+p1), |z| <= 100
   }

   REB004L = {; Ron Barnett, 1993
              ; floating point required
      z = pixel:
      x = flip(pixel + fn1(p1/z - z/(p2+1)));
      z = x*z + pixel, |z| <= 100
   }

   ikenagaoriginal {; Ron Barnett, 1994
        z = 0, c = pixel:
        z = z*z*z + (c - 1)*z - c, |z|<=100
   }
