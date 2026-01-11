Fzppshlo {
  z = pixel, f = log (pixel):
  z = sinh (z) + f
  |z| <= 50
  ;SOURCE: skinner.frm
}
Fzppcopo {
  z = pixel, f = (pixel) ^ (pixel):
  z = cosxx (z)  + f
  |z| <= 50
  ;SOURCE: skinner.frm
}
Elliptic2 (XAXIS) {; By Alastair Scott
  z = pixel:
  z = pixel*(1.57079 - z*z*(0.392699 + z*z*(0.073631\
       +z*z*(0.030680 + z*z*0.016778))))
  |z|<=4
  ;SOURCE: elliptic.frm
}
ScottSIS (XYAXIS) {
  z = pixel, TEST = (p1+3):
  z = sqr(1/sin(z))
  |z|<TEST
  ;SOURCE: skinner.frm
}
aaaa (XAXIS) {
  z = pixel, c = z:
  z = exp(z*log(z))
  |z| <= p1
  ;SOURCE: dan.frm
}
Sam_5 (XAXIS) {
  z = Pixel:
  z = z^2.718281828 + pixel
  ;SOURCE: sam.frm
}
Fzppsisq {
  z = pixel, f = sqr (pixel):
  z = sin (z)  + f
  |z| <= 50
  ;SOURCE: skinner.frm
}
F'Liar2 {; Generalization by Jo. Horner of Chuck Ebert Formula
         ; x(n+1) = 1 - abs(y(n)-x(n! )
         ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) )
  z = fn1(pixel):
  x = 1 - abs(imag(z)-real(z))
  z = flip(1 - abs(1-real(x)-imag(z) ) ) + real(x)
  |z| <= p1
  ;SOURCE: form2.frm
}
