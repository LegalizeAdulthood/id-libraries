

 comment = {  Interesting Guitar shaped  objects.  Highly self-similar: }

 Guitar1 {z = pixel:
          z = log(z) * 1.0 / (sin(z) ), |z| <= 50}

 comment = {  Interesting Guitars, only variation in range.
              Highly self-similar as well: }

 Guitar2 {z=pixel:
          z = log(z) * 1.0 / (sin(z) ), |z| <= 4}

 comment = {  Interesting antenna-like repititions:
              try corners=-0.65288/0.18788/-0.568976/0.12495 }

 C {z=pixel, c=3.141592653589793:
    z = log(c*pixel*z) + z, |z| <= 50}

 comment = { Doesn't finish.  Starts out with turbulence but gets order in
             Quadrant 2 (as far as I can see) }

 Wontfin (XAXIS) {z = pixel:
          z = | log(z) | + sin(z), |z| <= 50}

 Quotient (XAXIS) {z = pixel:
           z = (sqr(z) + pixel) / (sqr(z) - pixel), |z| <= 42}

 Trispine (XAXIS) {z = pixel:
           z = sin(z + pixel),
           z + z = z + lambda + pixel, |z| <= 42}

 Cross {z = pixel:
        z = cos(z) + pixel,
        z + z = z + sqr(pixel), |z| <= 42}

 Zing {z = pixel,
       log2 = 2 ^ (pixel*z):
       z = cosh(z+pixel),
       z + z = z + log2, |z|<= 42}

 Zack (XAXIS) { z = pixel,
                r = rand:
                z + z = (fn1(pixel) + sin(z) ) / (sqr(z) ), |z| <= 42}

 Wing {z = pixel:
       z - z = cotan (lastsqr) / (z*z*z + pixel), |z| <= 42}

 Spiral (XYAXIS)  {z = pixel:
                   z = sin(z) * (cos(z) + 1.), |z| <= 42}

 comment = { With fn1 of recip it will not finish but does produce an
             interesting bat, self-similar form: }

 Bat { z = pixel:
       z = fn1 (log (sin(z) ) ), |z| <= 42}
