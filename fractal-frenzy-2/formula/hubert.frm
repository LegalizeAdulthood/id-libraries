

 comment {  Interesting Guitar shaped  objects.  Highly self-similar: }

 Guitar1 {z = pixel:
          z = log(z) * 1.0 / (sin(z) ), |z| <= 50}

 comment {  Interesting Guitars, only variation in range.
              Highly self-similar as well: }

 Guitar2 {z=pixel:
          z = log(z) * 1.0 / (sin(z) ), |z| <= 4}

 comment {  Interesting antenna-like repititions:
              try corners=-0.65288/0.18788/-0.568976/0.12495 }

 C {z=pixel, c=3.141592653589793:
    z = log(c*pixel*z) + z, |z| <= 50}

 comment { Doesn't finish.  Starts out with turbulence but gets order in
             Quadrant 2 (as far as I can see) }

 Wontfin (XAXIS) {z = pixel:
          z = | log(z) | + sin(z), |z| <= 50}

 Quotient (XAXIS) {z = pixel:
           z = (sqr(z) + pixel) / (sqr(z) - pixel), |z| <= 42}

Trispine (XAXIS) {; Edited for Fractint v. 20 by George Martin
  z = pixel:
  z = sin(z + pixel)
  z = z + lambda + pixel
  |z| <= 42
  ;SOURCE: hubert.frm
}

Cross {; Edited for Fractint v. 20 by George Martin, 10/98
  z = pixel:
  z = cos(z) + pixel
  z = z + sqr(pixel)
  |z| <= 42
  ;SOURCE: hubert.frm
}

Zing {; Edited for Fractint v. 20 by George Martin, 10/98
  z = pixel
  log2 = 2 ^ (pixel*z):
  z = cosh(z+pixel)
  z = z + log2
  |z|<= 42
  ;SOURCE: hubert.frm
}

Zack (XAXIS) {; Edited for Fractint v. 20 by George Martin, 10/98
  z = pixel
  r = rand:
  z = (fn1(pixel) + sin(z)) / (sqr(z))
  |z| <= 42
  ;SOURCE: hubert.frm
}

Wing {; Edited for Fractint v. 20 by George Martin, 10/98
      ; This formula used LastSqr as a variable without any
      ; use of the function Sqr, resulting in garbage values
      ; being assigned to the LastSqr variable by the parser.
      ; The following gives a good approximation of the images
      ; created in integer mode with the old formula.
  z = pixel
  c = cotan(3,9):
  z = c / (z*z*z + pixel)
  |z| <= 42
  ;SOURCE: hubert.frm
}

 Spiral (XYAXIS)  {z = pixel:
                   z = sin(z) * (cos(z) + 1.), |z| <= 42}

 comment { With fn1 of recip it will not finish but does produce an
             interesting bat, self-similar form: }

 Bat { z = pixel:
       z = fn1 (log (sin(z) ) ), |z| <= 42}
