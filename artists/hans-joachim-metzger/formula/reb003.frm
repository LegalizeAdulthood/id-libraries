Gopalsamy4 {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = -x*y + p1
  y = 2*y*y - 3*x*x
  z = x1 + flip(y)
  |z| <= 4
  ;SOURCE: reb003.frm
}

GopalsamyFn {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = fn1(x)*fn2(y)
  y1 = fn3(x)*fn4(y)
  x2 = -2*x1*y1 + p1
  y = y1*y1 - x1*x1
  z = x2 + flip(y)
  |z| <= 100
  ;SOURCE: fractint.frm
}

Foam {
  z = 0.5:
  x = pixel*(z - 1/z) + p1
  z = pixel*(x - 1/sqr(x) + p2)
  |z| <= 100
  ;SOURCE: reb003.frm
}

Gopalsamy1 {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = -2*x*y + p1
  y = y*y - x*x
  z = x1 + flip(y)
  |z| <= 4
  ;SOURCE: reb003.frm
}

Gopalsamy2 {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = -4*x*y + p1
  y = 4*y*y - x*x
  z = x1 + flip(y)
  |z| <= 4
  ;SOURCE: reb003.frm
}

Gopalsamy3 {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = 3*x*y*y - x*x*x + p1
  y = y*y*y - 3*x*x*y
  z = x1 + flip(y)
  |z| <= 4
  ;SOURCE: reb003.frm
}

Gopalsamy5 {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = 2*x*y
  y1 = x*x - y*y
  x2 = -2*x1*y1 + p1
  y = y1*y1 - x1*x1
  z = x2 + flip(y)
  |z| <= 4
  ;SOURCE: reb003.frm
}

GopalsamyExp {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = -exp(x)*cos(y) + p1
  y = -exp(x)*sin(y)
  z = x1 + flip(y)
  |z| <= 100
  ;SOURCE: reb003.frm
}

GopalsamyExp2 {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = exp(x)*cos(y)
  y1 = exp(x)*sin(y)
  x2 = -2*x1*y1 + p1
  y = y1*y1 - x1*x1
  z = x2 + flip(y)
  |z| <= 100
  ;SOURCE: reb003.frm
}

GopalsamySin {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = -sin(x)*cosh(y) + p1
  y = -cos(x)*sinh(y)
  z = x1 + flip(y)
  |z| <= 100
  ;SOURCE: reb003.frm
}

GopalsamySin2 {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = sin(x)*cosh(y)
  y1 = cos(x)*sinh(y)
  x2 = -2*x1*y1 + p1
  y = y1*y1 - x1*x1
  z = x2 + flip(y)
  |z| <= 100
  ;SOURCE: reb003.frm
}

GopalsamySinh {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = -sin(x)*cosh(y) + p1
  y = -cos(x)*sinh(y)
  z = x1 + flip(y)
  |z| <= 100
  ;SOURCE: reb003.frm
}

GopalsamySinh2 {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = sinh(x)*cos(y)
  y1 = cosh(x)*sin(y)
  x2 = -2*x1*y1 + p1
  y = y1*y1 - x1*x1
  z = x2 + flip(y)
  |z| <= 100
  ;SOURCE: reb003.frm
}

LambdaPwr {
  z = pixel:
  z = p1*z*(1 - z^p2)
  |z| <= 100
  ;SOURCE: reb003.frm
}

PseudoLambda {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = -p1*(x - x*x + y*y) + p2
  y = -p1*(y - 2*x*y)
  z = x1 + flip(y)
  |z| <= 100
  ;SOURCE: reb003.frm
}

PseudoMandelLambda {
  z = 0.5, c = pixel:
  x = real(z), y = imag(z)
  x1 = -c*(x - x*x + y*y) + p1
  y = -c*(y - 2*x*y)
  z = x1 + flip(y)
  |z| <= 100
  ;SOURCE: reb003.frm
}

MandellambdaPwr {; This provide a "map" for LambdaPwr
  z = (1/(p1+1))^(1/p1):
  z = pixel*z*(1 - z^p1)
  |z| <= 100
  ;SOURCE: reb003.frm
}

