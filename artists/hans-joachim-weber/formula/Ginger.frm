; Title: The Ghost of the Gingerbreadman
;
; Categories: 4. Oddest Fractal
;             8. Best Animal or Human Shape
;
; Description: The stylized and distorted ghost of the Gingerbreadman.
;              Image made of two layers created with Fractint (pars and
;              formula included.)

Ginger  {
  z = z0 = pixel :
  x = 1 - imag(z) + abs(real(z))
  y = real(z)
  z = x + flip(y)
  |z - z0| >= p1
  }
