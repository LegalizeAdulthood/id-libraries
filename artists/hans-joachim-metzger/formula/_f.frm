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
 
