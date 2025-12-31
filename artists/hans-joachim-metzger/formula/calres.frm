htd {
   ; Try a second order inductive term.
  z = zp2 = pixel, zp1 = (0,0), huge=1.0e32:
  temp = z
  z = zp1*zp1 - zp2
  zp2 = zp1
  zp1 = p1/temp
  (|zp1| <= 64) && (|z| <= huge)
  ;SOURCE: noel.frm
}

mfn2fn {
  z=pixel:
  power = fn2(z)
  z = fn1(z)^power + pixel
  |z| < p2
  ;SOURCE: fractals.frm
}

NewtonSinExp (XAXIS) {; Chris Green
                      ; Newton's formula applied to sin(x)+exp(x)-1=0.
                      ; Use floating point.
  z=pixel:
  z1=exp(z)
  z2=sin(z)+z1-1
  z=z-p1*z2/(cos(z)+z1)
  .0001 < |z2|
  ;SOURCE: fractint.frm
}

OK-09 {
  z = c = pixel, d = fn1(pixel), k = 1 + p1:
  z = z^c * k
  z = d / z
  |z| <= (5 + p2)
  ;SOURCE: overkill.frm
}

OK-12 {; TRY FN1 = SQR, FN2 = SQR
  z = c = pixel:
  z = fn1(z) + c
  z = fn2(z) / c
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}

pheonix (XAXIS) {
   ; Add conjugation and produce a great fractal even if it's spelt wrong.
  z = pixel, zp1 = zp2 = (0,0):
  temp = z
  z  = z*z - zp2
  zp2 = zp1
  zp1 = conj(temp)
  |zp1| <= 4
  ;SOURCE: noel.frm
}

3jRatz-fn {; try fn=ident, p1 < 1
  z = Pixel :
  z = (z * z * z * fn1(z) * p1 + p2 )/(z * z * fn2(z) * p1 + p2 )
  | z | <= 10
  ;SOURCE: fn-ratz.frm
}

3RDIM01 {; Mandelbrot
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1):
  z=z*z+c
  |z|<=64
  ;SOURCE: fractint.frm
}

NovaM {; Mandelbrot-like set for Nova.
       ; P2 is an inverse bailout,
       ; set this to a small nonzero value and use
       ; floating point. E.g. 0.0000001.
       ; The Nova Formulae, discovered by PGD.
       ; Freely distributable but may not be sold.
  z=1
  c=pixel:
  z2=z*z
  z3=z*z2
  func=z3-1
  der=3*z2
  oz=z
  z=z-(func/der)+c
  |oz-z|>p2
  ;SOURCE: nova.frm
}

OK-16 {
  z = v = pixel :
  z = fn1(z)^v
  v = v + z
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}

OK-18 {
  z = v = pixel:
  z = fn1(v) + real(z)
  v = fn2(z) + imag(v)
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}

PixNwt {
  z = pixel, Root = fn1(p2 * pixel):
  z = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1))
  .001 <= |z^p1 - Root|
  ;SOURCE: crazynwt.frm
}

TileMandel {; Terren Suydam (terren@io.com), 1996
            ; modified by Sylvie Gallet [101324,3444]
            ; Modified for if..else logic 3/19/97 by Sylvie Gallet
            ; p1 = center = coordinates for a good Mandel
   ; 0 <= real(p2) = magnification. Default for magnification is 1/3
   ; 0 <= imag(p2) = numtiles. Default for numtiles is 3
  center = p1
  IF (p2 > 0)
     mag = real(p2)
  ELSE
     mag = 1/3
  ENDIF
  IF (imag(p2) > 0)
     numtiles = imag(p2)
  ELSE
     numtiles = 3
  ENDIF
  omega = numtiles*2*pi/3
  x = asin(sin(omega*real(pixel))), y = asin(sin(omega*imag(pixel)))
  z = c = (x+flip(y)) / mag + center:
  z = z*z + c
  |z| <= 4
  ;SOURCE: fract196.frm
}

