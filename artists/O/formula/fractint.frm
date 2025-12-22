
{--- BRADLEY BEACHAM -----------------------------------------------------}

OK-42 { ; MUTATION OF FN + FN
  z = pixel, p1x = real(p1)+1, p1y = imag(p1)+1
  p2x = real(p2)+1, p2y = imag(p2)+1:
   zx = real(z), zy = imag(z)
   x = fn1(zx*p1x - zy*p1y) + fn2(zx*p2x - zy*p2y)
   y = fn3(zx*p1y + zy*p1x) + fn4(zx*p2y + zy*p2x)
   z = x + flip(y)
    |z| <= 20
  }

{--- CHRIS GREEN ---------------------------------------------------------}

CGNewton3 [float=y] {; Chris Green -- A variation on newton iteration.
  ; The initial guess is fixed at (1,1), but the equation solved
  ; is different at each pixel ( x^3-pixel=0 is solved).
  ; Use floating point.
  ; Try P1=1.8.
  z=(1,1):
   z2=z*z
   z3=z*z2
   z=z-p1*(z3-pixel)/(3.0*z2)
    0.0001 < |z3-pixel|
  }
