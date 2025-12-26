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
 
REB004B {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  z = pixel + p1*(z/2 + z*z/6 + z*z*z/12) 
  |z| <= 100
  ;SOURCE: reb004.frm
}
 
REB004C {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  z = p2 + p1*(z/2 + z*z/6 + z*z*Z/12) 
  |z| <= 100
  ;SOURCE: reb004.frm
}
 
REB004D {; Ron Barnett, 1993
  z = pixel:
  z = pixel + fn1(2*z+1)/(2*z+p1) 
  |z| <= 100
  ;SOURCE: reb004.frm
}
 
REB004E {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  z = pixel + fn1(2*z+1)/(2*z+p1) 
  z = z + fn2(4*z+1)/(4*z+p2) 
  |z| <= 100
  ;SOURCE: reb004.frm
}
 
REB004F {; Ron Barnett, 1993
  z = pixel:
  z = p2 + fn1(2*z+1)/(2*z+p1) 
  |z| <= 100
  ;SOURCE: reb004.frm
}
 
REB004F {; Ron Barnett, 1993
  z = pixel:
  z = p2 + fn1(2*z+1)/(2*z+p1) 
  |z| <= 100
  ;SOURCE: reb004.frm
}
 
REB004G {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  z = p2 + fn1(2*z+1)/(2*z+p1) 
  z = z + fn2(4*z+1)/(4*z+p1) 
  |z| <= 100
  ;SOURCE: reb004.frm
}
 
REB004H {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  z = pixel + fn1(3/z - z/4) 
  |z| <= 100
  ;SOURCE: reb004.frm
}
 
REB004I {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  z = p1 + fn1(3/z - z/4) 
  |z| <= 100
  ;SOURCE: reb004.frm
}
 
REB004J {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = flip(pixel + fn1(3/z - z/4))
  z = x*z + pixel 
  |z| <= 100
  ;SOURCE: reb004.frm
}
 
REB004L {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = flip(pixel + fn1(p1/z - z/(p2+1)))
  z = x*z + pixel
  |z| <= 100
  ;SOURCE: fractint.frm
}
 
REB004L {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = flip(pixel + fn1(p1/z - z/(p2+1)))
  z = x*z + pixel
  |z| <= 100
  ;SOURCE: fractint.frm
}
 
