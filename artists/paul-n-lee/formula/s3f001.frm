ScottLPC (XAXIS) {
  z = pixel, TEST = (p1+3):
  z = log(z)+cosxx(z)
  |z|<TEST
  ;SOURCE: skinner.frm
}
Fzppsqsi {
  z = pixel, f = sin (pixel):
  z = sqr (z)  + f
  |z| <= 50
  ;SOURCE: skinner.frm
}
Fzpcopsq {
  z = pixel, f = pixel ^ (sqr(pixel) ):
  z = cosxx (z)  + f
  |z| <= 50
  ;SOURCE: skinner.frm
}
Fzppcoht {
  z = pixel, f = cosh(pixel) / sinh(pixel):
  z = cosxx (z)+f
  |z|<= 50
  ;SOURCE: skinner.frm
}
Fzppsiex {
  z = pixel, f = exp (pixel):
  z = sin (z)  + f
  |z| <= 50
  ;SOURCE: skinner.frm
}
Liar2 {; by Chuck Ebbert.
       ; Same as Liar1 but use sequential reasoning, calculating
       ; new y value using new x value.
       ; x(n+1) = 1 - abs(y(n)-x(n) );
       ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
  z = pixel:
  x = 1 - abs(imag(z)-real(z))
  z = flip(1 - abs(1-real(x)-imag(z) ) ) + real(x)
  |z| <= 1
  ;SOURCE: liar.frm
}
Fzppchlo {
  z = pixel, f = log (pixel):
  z = cosh (z) + f
  |z| <= 50
  ;SOURCE: skinner.frm
}
