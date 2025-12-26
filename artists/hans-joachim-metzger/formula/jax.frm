Fatso {
  z=x=1/pixel, c= fn1 (z):
  z = (x^3)-(c^3)
  x=fn2(z)
  |z| <=3
  ;SOURCE: fractint.frm
}
 
Bjax {
  z=c=2/pixel:
  z =(1/((z^(real(p1)))*(c^(real(p2))))*c) + c
  ;SOURCE: fractint.frm
}
 
Ajax {;the Final Effort 
  z=c=2/pixel:
  z =(z^(real(p1)))*(c^(real(p2))) + c
  |z| <=4
  ;SOURCE: jax.frm
}
 
Bali {; The difference of two squares
  z=x=1/pixel, c= fn1 (z):
  z = (x+c) * (x-c)
  x=fn2(z)
  |z| <=3
  ;SOURCE: fractint.frm
}
 
Bali {; The difference of two squares
  z=x=1/pixel, c= fn1 (z):
  z = (x+c) * (x-c)
  x=fn2(z)
  |z| <=3
  ;SOURCE: fractint.frm
}
 
Jax {; The original
  z=c=2/pixel:
  z =(z^4)*(c^4) + c
  |z| <=4
  ;SOURCE: jax.frm
}
 
