OldHalleySin (XYAXIS) {
  z=pixel:
  s=sin(z)
  c=cosxx(z)
  z=z-p1*(s/(c-(s*s)/(c+c)))
  0.0001 <= |s|
  ;SOURCE: fractint.frm
}

CGNewtonSinExp (XAXIS) {
  z=pixel:
  z1=exp(z)
  z2=sin(z)+z1-z
  z=z-p1*z2/(cos(z)+z1)
  .0001 < |z2|
  ;SOURCE: fractint.frm
}

FractalFenderC (XAXIS_NOPARM) {; Spectacular!
    ; Modified for if..else logic 3/18/97 by Sylvie Gallet
   z = p1, x = |z| :
   IF (1 < x)
      z = cosh(z) + pixel
   ENDIF
   z = sqr(z) + pixel, x = |z|
   x <= 4
  ;SOURCE: fract196.frm
}

Zexpe (XAXIS) {
  s = exp(1.,0.), z = Pixel:
  z = z ^ s + pixel
  |z| <= 100
  ;SOURCE: fractint.frm
}

SpecC (XAXIS_NOPARM) {
     ; modified for if..else by George Martin 3/18/97
   z = p1
   x = |z| :
   IF (x>1)
      z = fn1(z)+pixel
   ENDIF
   z = fn2(z)+pixel
   x = |z|
   x <= 4
  ;SOURCE: skinner.frm
}

Fzpcocoh {
  z = pixel, f = 1. / cosh(pixel):
  z = cosxx (z)  + f
  |z| <= 50
  ;SOURCE: skinner.frm
}

Fzpcophs {
  z = pixel, f = pixel ^ (1. / sinh(pixel) ):
  z = cosxx (z)  + f
  |z| <= 50
  ;SOURCE: skinner.frm
}

Fzppchco {
  z = pixel, f = cosxx (pixel):
  z = cosh (z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}

Fzppcopo {
  z = pixel, f = (pixel) ^ (pixel):
  z = cosxx (z)  + f
  |z| <= 50
  ;SOURCE: skinner.frm
}

Fzppcosq {
  z = pixel, f = sqr (pixel):
  z = cosxx (z)  + f
  |z| <= 50
  ;SOURCE: fractint.frm
}

Fzppsinh {
  z = pixel, f = sinh (pixel):
  z = sinh (z) + f
  |z| <= 50
  ;SOURCE: skinner.frm
}

RCL_10 {; Ron Lewen, 76376,2567
  z=pixel:
  z=flip((z^2+pixel)/(pixel^2+z))
  |z| <= 4
  ;SOURCE: fractint.frm
}

ScottSIC (XYAXIS) {
  z = pixel, TEST = (p1+3):
  z = sqr(1/cosxx(z))
  |z|<TEST
  ;SOURCE: skinner.frm
}

ScSkZCZZ (XYAXIS) {
  z = pixel, TEST = (p1+3):
  z = (z*cosxx(z)) - z
  |z|<TEST
  ;SOURCE: fractint.frm
}

Fzppshlo {
  z = pixel, f = log (pixel):
  z = sinh (z) + f
  |z| <= 50
  ;SOURCE: skinner.frm
}

Fzppsisq {
  z = pixel, f = sqr (pixel):
  z = sin (z)  + f
  |z| <= 50
  ;SOURCE: skinner.frm
}

Mothra (XAXIS) {; Ron Lewen, 76376,2567
                ; Remember Mothra, the giant Japanese-eating moth?
                ; Well... here he (she?) is as a fractal!
  z=pixel:
  a=z^5 + z^3 + z + pixel
  b=z^4 + z^2 + pixel
  z=b^2/a
  |real(z)| <= 100 || |imag(z)| <= 100
  ;SOURCE: fractint.frm
}

ScottSIS (XYAXIS) {
  z = pixel, TEST = (p1+3):
  z = sqr(1/sin(z))
  |z|<TEST
  ;SOURCE: skinner.frm
}

