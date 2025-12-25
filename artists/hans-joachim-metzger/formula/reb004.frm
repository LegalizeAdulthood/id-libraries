REB004M {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1(const - 12*x)*x/(4*const)
  y1 = -fn2(const + 12*x)*y/(4*const)
  x2 = x1*x1 - y1*y1 + p1
  y2 = 2*x*y
  z = x2 + flip(y2)
  |z| <= 100
  ;SOURCE: fractint.frm
}
 
REB004A {; Ron Barnett, 1993
  z = pixel:
  z =p1*fn1(z) + p1*p1*fn2(p2*z) + pixel
  |z| <= 100
  ;SOURCE: fractint.frm
}
 
REB004K {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = flip(pixel + fn1(3/z - z/4))
  z = x*z + p1
  |z| <= 100
  ;SOURCE: fractint.frm
}
 
