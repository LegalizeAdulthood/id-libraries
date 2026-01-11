Fzpcopcs {
  z = pixel, f = pixel ^ (1. / cosxx(pixel) ):
  z = cosxx (z)  + f
  |z| <= 50
  ;SOURCE: skinner.frm
}
a---mand {
  z = c = pixel:
  z = z^c + sin(c)
  |z|<p1
  ;SOURCE: eli.frm
}
aa-mand-im (XAXIS) {
  z = c = pixel:
  z = sqr(z)+c
  imag(z)<p1
  ;SOURCE: eli.frm
}
F'Liar1D {; Generalization by Jon Horner of Chuck Ebbert formula.
          ; X: X is as true as Y
          ; Y: Y is as true as X is false
          ; Calculate new x and y values simultaneously.
          ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel):
  z = p1 - abs(imag(z)-real(z) ) + flip(p2 - abs(1-real(z)-imag(z) ) )
  |z| <1
  ;SOURCE: liar.frm
}
Fzpcopch {
  z = pixel, f = pixel ^ (cosh(pixel) ):
  z = cosxx (z)  + f
  |z| <= 50
  ;SOURCE: skinner.frm
}
F'Liar1C {; Generalization by Jon Horner of Chuck Ebbert formula.
          ; X: X is as true as Y
          ; Y: Y is as true as X is false
          ; Calculate new x and y values simultaneously.
          ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel):
  z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) )
  fn2(abs(z))<p1
  ;SOURCE: liar.frm
}
FractalFenderTwoC (XAXIS_NOPARM) {; Edited for Fractint v. 20
                                  ; by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=cos(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: form1.frm
}
