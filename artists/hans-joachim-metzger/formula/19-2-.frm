REB005G {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1(const + p1*x)*y/const
  y1 = -fn2(const + y)*x/const
  x2 = x1*x1 - y1*y1 + p2
  y2 = 2*x1*y1
  z = x2 + flip(y2)
  |z| <= 100
  ;SOURCE: fractint.frm
}

