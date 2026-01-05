Fzpcophs  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = pixel ^ (1. / sinh(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}
test-round {
c=floor(pixel) :
z = c/2
round(z)==(z+.5)
}
test-ceil {
c=floor(pixel) :
z = c/2
ceil(z)==(z+.5)
}
test-floor {
c=floor(pixel) :
z = c/2
floor(z)==z
}
test-trunc {
c=floor(pixel) :
z = c/2
trunc(z)==z
}
Graph { ; Sylvie Gallet [101324,3444], 1996
        ; Modified for if..else logic 3/17/97 by Sylvie Gallet
   ; 2 parameters: curves thickness = real(p1)
   ;                 axes thickness = imag(p1)
   ; choose for example real(p1) = 0.002 and imag(p1) = 0.001
   epsilon = abs(real(p1)) , axes = abs(imag(p1))
   z = 0 , x = round(real(pixel)/epsilon) * epsilon
   IF ((|real(pixel)| <= axes) || (|imag(pixel)| <= axes))
      z = z + 1
   ENDIF
   IF (|x + flip(fn1(x))-pixel| <= epsilon)
      z = z + 2
   ENDIF
   IF (|x + flip(fn2(x))-pixel| <= epsilon)
      z = z + 4
   ENDIF
   IF (|x + flip(fn3(x))-pixel| <= epsilon)
      z = z + 8
   ENDIF
   IF (|x + flip(fn4(x))-pixel| <= epsilon)
      z = z + 16
   ENDIF
   IF (z == 0)
      z = z + 100
   ENDIF
   :
   z = z - 1
   z > 0
   }
