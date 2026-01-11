Wineglass(XAXIS) {; Pieter Branderhorst
  c = z = pixel:
   z = z * z + c
   c = (1+flip(imag(c))) * real(c) / 2 + z
    |z| <= 4
  }
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
Richard1 (XYAXIS) {; Jm Collard-Richard
  z = pixel:
   sq=z*z, z=(sq*sin(sq)+sq)+pixel
    |z|<=50
  }
LeeMandel2 (XYAXIS) {; Kevin Lee
  z=Pixel:
  c=sqr(pixel)/z, c=z+c, z=sqr(c*pixel)
  |z|<4
  ;SOURCE: fractint.frm
}
LeeMandel3 (XAXIS) {; Kevin Lee
  z=Pixel, c=Pixel-sqr(z):
  c=Pixel+c/z, z=c-z*pixel
  |z|<4
  ;SOURCE: fractint.frm
}
InvMandel (XAXIS) {; Mark Peterson
  c = z = 1 / pixel:
   z = sqr(z) + c
    |z| <= 4
  }
Jm_14 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(z)*pixel))+pixel
    |z|<=t
  }
Richard10(XYAXIS) {; Jm Collard-Richard
  z=pixel:
   z=1/sin(1/(z*z))
    |z|<=50
  }
Halley (XYAXIS) [float=y] {; Chris Green. Halley's formula applied to x^7-x=0.
  ; P1 real usually 1 to 1.5, P1 imag usually zero. Use floating point.
  ; Setting P1 to 1 creates the picture on page 277 of Pickover's book
  z=pixel:
   z5=z*z*z*z*z
   z6=z*z5
   z7=z*z6
   z=z-p1*((z7-z)/ ((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2)))
    0.0001 <= |z7-z|
  }
ULI_4 {
  z = Pixel:
   z = fn1(1/(z+p1))*fn2(z+p1)
    |z| <= p2
  }
Ent {; Scott Taylor
  ; Try params=.5/.75 and the first function as exp.
  ; Zoom in on the swirls around the middle.  There's a
  ; symmetrical area surrounded by an asymmetric area.
  z = Pixel, y = fn1(z), base = log(p1):
   z = y * log(z)/base
    |z| <= 4
  }
Mandelbrot(XAXIS) {; Mark Peterson
  ; Classical fractal showing LastSqr speedup
  z = Pixel, z = Sqr(z):  ; Start with z**2 to initialize LastSqr
   z = z + Pixel
   z = Sqr(z)
    LastSqr <= 4	  ; Use LastSqr instead of recalculating
  }
Sterling(XAXIS) {; davisl
  z = Pixel:
   z = ((z/2.7182818)^z)/sqr(6.2831853*z)
    |z| <= 4
  }
Dragon (ORIGIN) {; Mark Peterson
  z = Pixel:
   z = sqr(z) + (-0.74543, 0.2)
    |z| <= 4
  }
