fungus01 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z + x / fn2(y)
  y = z + fn1(y)
  z = z * z + c
  |z|<4
  ;SOURCE: fungus.frm
}

fungus02 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z + x / fn2(y)
  y = z + fn3(fn1(y))
  z = z * z + c
  |z|<4
  ;SOURCE: fungus.frm
}

fungus03 {
  z = pixel
  c = pixel * (whitesq == 0) + (-0.75,0.1234) * whitesq
  x=imag(c), y=imag(z):
  x = z + x / fn2(y)
  y = z + fn1(y)
  z = z * z + c
  |z|<4
  ;SOURCE: fungus.frm
}

fungus04 {
  z = pixel
  c = pixel * (whitesq == 0) + (-0.75,0.1234) * whitesq
  x=imag(c), y=imag(z):
  x = z + x / y
  y = fn3(z) + fn2(fn1(y))
  z = z * z + c
  |z|<4
  ;SOURCE: fungus.frm
}

fungus05 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z / x * fn2(y)
  y = z * fn1(y)
  z = z * z + c
  |z|<4
  ;SOURCE: fungus.frm
}

fungus06 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z / fn3(x) * fn2(y)
  y = z * fn4(fn1(y))
  z = z * z + c
  |z|<4
  ;SOURCE: fungus.frm
}

fungus07 {
  z=pixel
  c=pixel * (whitesq == 0) + (-0.75,0.1234) * whitesq
  x=imag(c), y=imag(z):
  x = z / fn3(x) * fn2(y)
  y = z * fn4(fn1(y))
  z = z * z + c
  |z|<4
  ;SOURCE: fungus.frm
}

fungus08 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = fn3(z / x) / fn2(y)
  y = z + fn1(y)
  z = z * z + c
  |z|<4
  ;SOURCE: fungus.frm
}

fungus09 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = fn3(z / fn4(x)) / fn2(y)
  y = z + fn1(y)
  z = z * z + c
  |z|<4
  ;SOURCE: fungus.frm
}

fungus10 {; Originally posted with name fungus010
  z=c=pixel, x=imag(c), y=imag(z):
  x = fn3(z / fn4(x)) / fn2(y)
  y = z / fn1(y)
  z = z * z + c
  |z|<4
  ;SOURCE: fungus.frm
}

