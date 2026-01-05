InverseJuliaFnFn {; Pokorny modifie par J.P. Louvet
                  ; P1 = c
                  ; P2 = iter (normalement 4)
  z=pixel
  c=P1:
  z=fn1(1/(fn2(z)^2+c))
  |z|<=P2
  ;SOURCE: fract-02.par
}
