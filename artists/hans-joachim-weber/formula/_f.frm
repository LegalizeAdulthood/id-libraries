fungus035 {; Brian E. Jones
  z=c=pixel, x=imag(c), y=imag(z):
  x = fn3(z / fn4(x)) / fn2(y)
  y = z + fn1(y)
  z = z * z + c
  |z|<4
  ;SOURCE: fg35.par
}

fungus034 {; Brian E. Jones
  z=c=pixel, x=imag(c), y=imag(z):
  x = fn3(z / x) / fn2(y)
  y = z + fn1(y)
  z = z * z + c
  |z|<4
  ;SOURCE: fg34.par
}

fungus002 {; Brian E. Jones
  z=c=pixel, x=imag(c), y=imag(z):
  x = z + x / fn2(y)
  y = z + fn1(y)
  z = z * z + c
  |z|<4
  ;SOURCE: fg2c.par
}

fungus027 {; Brian E. Jones
  z=c=pixel, x=imag(c), y=imag(z):
  x = z / fn3(x) * fn2(y)
  y = z * fn4(fn1(y))
  z = z * z + c
  |z|<4
  ;SOURCE: fg27.par
}

F'Liar1 {; Generalization by Jon Horner of Chuck Ebbert formula.
         ; X: X is as true as Y
         ; Y: Y is as true as X is false
         ; Calculate new x and y values simultaneously.
         ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = pixel:
  z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) )
  fn1(abs(z))<p1
  ;SOURCE: fractint.frm
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
F'Liar1A {; Generalization by Jon Horner of Chuck Ebbert formula.
          ; X: X is as true as Y
          ; Y: Y is as true as X is false
          ; Calculate new x and y values simultaneously.
          ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel):
  z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) )
  |z| <= p1
  ;SOURCE: liar.frm
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
