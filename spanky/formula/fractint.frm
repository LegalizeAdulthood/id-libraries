comment {
 This iteration of FRACTINT.FRM was first released with Fractint 19.0

 Included here are just enough entries for the parameter sets in the
 spanky library.
}

{--- LEE SKINNER ---------------------------------------------------------}

JTet (XAXIS) {; Julia form 1 of the Tetration formula --Lee Skinner
  z = pixel:
   z = (pixel ^ z) + P1
    |z| <= (P2 + 3)
  }

Cubic (XYAXIS) {; Lee Skinner
  p = pixel, test = p1 + 3
  t3 = 3*p, t2 = p*p
  a = (t2 + 1)/t3, b = 2*a*a*a + (t2 - 2)/t3
  aa3 = a*a*3, z = 0 - a :
   z = z*z*z - aa3*z + b
    |z| < test
 }

{--- CHRIS GREEN ---------------------------------------------------------}

Halley (XYAXIS) {; Chris Green. Halley's formula applied to x^7-x=0.
  ; P1 real usually 1 to 1.5, P1 imag usually zero. Use floating point.
  ; Setting P1 to 1 creates the picture on page 277 of Pickover's book
  z=pixel:
   z5=z*z*z*z*z
   z6=z*z5
   z7=z*z6
   z=z-p1*((z7-z)/ ((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2)))
    0.0001 <= |z7-z|
  }

{--- JM COLLARD-RICHARD --------------------------------------------------}

Jm_04 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))
    |z|<=t
  }

Jm_14 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(z)*pixel))+pixel
    |z|<=t
  }

{--- PIETER BRANDERHORST -------------------------------------------------}

Wineglass(XAXIS) {; Pieter Branderhorst
  c = z = pixel:
   z = z * z + c
   c = (1+flip(imag(c))) * real(c) / 2 + z
    |z| <= 4
  }

{--- MARK PETERSON -------------------------------------------------------}

InvMandel (XAXIS) {; Mark Peterson
  c = z = 1 / pixel:
   z = sqr(z) + c
    |z| <= 4
  }

Mandelbrot(XAXIS) {; Mark Peterson
  ; Classical fractal showing LastSqr speedup
  z = Pixel, z = Sqr(z):  ; Start with z**2 to initialize LastSqr
   z = z + Pixel
   z = Sqr(z)
    LastSqr <= 4	  ; Use LastSqr instead of recalculating
  }

Newton4(XYAXIS) {; Mark Peterson
  ; Note that floating-point is required to make this compute accurately
  z = pixel, Root = 1:
   z3 = z*z*z
   z4 = z3 * z
   z = (3 * z4 + Root) / (4 * z3)
    .004 <= |z4 - Root|
  }

{--- BRADLEY BEACHAM -----------------------------------------------------}

OK-01 { ;TRY P1 REAL = 10000, FN1 = SQR
  z = 0, c = pixel:
   z = (c^z) + c
   z = fn1(z)
    |z| <= (5 + p1)
  }
