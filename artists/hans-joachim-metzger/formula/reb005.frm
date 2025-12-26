REB005A {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1(const - 12*x)*x/(4*const)
  y1 = -fn2(const + 12*y)*y/(4*const)
  x2 = x1*x1 - y1*y1 + p1
  y2 = 2*x1*y1
  z = x2 + flip(y2)
  |z| <= 100
  ;SOURCE: fractint.frm
}
 
REB005B {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1(const - x)*x/const
  y1 = -fn2(const + y)*y/const
  x2 = x1*x1 - y1*y1 + p1
  y2 = 2*x1*y1
  z = x2 + flip(y2) 
  |z| <= 100
  ;SOURCE: reb005.frm
}
 
REB005E {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1((const - x)*x/const)
  y1 = -fn2((const + y)*y/const)
  x2 = x1*x1 - y1*y1 + p1
  y2 = 2*x1*y1
  z = x2 + flip(y2)
  |z| <= 100
  ;SOURCE: fractint.frm
}
 
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
 
REB005F {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1((const - 12*x)*x/(4*const))
  y1 = -fn2((const + 12*y)*y/(4*const))
  x2 = x1*x1 - y1*y1 + p1
  y2 = 2*x1*y1
  z = x2 + flip(y2)
  |z| <= 100
  ;SOURCE: fractint.frm
}
 
3RDIMFRAME-ROBERT {; Ron Barnett, 1994
                   ; floating point required
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1):
  z=z*z*z/5+z*z+c 
  |z|<=100
  ;SOURCE: reb005.frm
}
 
3RDIMIKENAGA02 {; Ron Barnett, 1994
                ; floating point required
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1)
  z=conj(z), c=conj(c):
  z=z*z*z+(c-1)*z-c 
  |z|<=100
  ;SOURCE: reb005.frm
}
 
3RDIMMANOWAR01 {; Ron Barnett, 1994
                ; floating point required
  z=z1=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1):
  z=z*z+z1+c
  z1=z 
  |z|<=100
  ;SOURCE: reb005.frm
}
 
3RDIMSPIDER01 {; Ron Barnett, 1994
               ; floating point required
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1):
  z=z*z+c
  c=c/2+z 
  |z|<=100
  ;SOURCE: reb005.frm
}
 
REB005C {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1(const + p1*x)*x/const
  y1 = -fn2(const + y)*y/const
  x2 = x1*x1 - y1*y1 + p2
  y2 = 2*x1*y1
  z = x2 + flip(y2) 
  |z| <= 100
  ;SOURCE: reb005.frm
}
 
REB005D {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1((const + p1*x)*x/const)
  y1 = -fn2((const + y)*y/const)
  x2 = x1*x1 - y1*y1 + p2
  y2 = 2*x1*y1
  z = x2 + flip(y2) 
  |z| <= 100
  ;SOURCE: reb005.frm
}
 
SJIKENAGA01 {; Ron Barnett, 1994
             ; floating point required
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=z*z*z+(c-1)*z-c 
  |z|<=100
  ;SOURCE: reb005.frm
}
 
SJIKENAGA02 {; Ron Barnett, 1994
             ; floating point required
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel))
  z=conj(z), c=conj(c):
  z=z*z*z+(c-1)*z-c 
  |z|<100
  ;SOURCE: reb005.frm
}
 
SJIKENAGA03 {; Ron Barnett, 1994
             ; floating point required
  z=real(pixel)-flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)-flip(imag(pixel)):
  z=z*z*z+(c-1)*z-c 
  |z|<=100
  ;SOURCE: reb005.frm
}
 
SJMANOWAR01 {; Ron Barnett, 1994
             ; floating point required
  z=z1=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=z*z+z1+c
  z1=z 
  |z|<=100
  ;SOURCE: reb005.frm
}
 
SJSPIDER01 {; Ron Barnett, 1994
            ; floating point required
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=z*z+c
  c=c/2+z 
  |z|<=100
  ;SOURCE: reb005.frm
}
 
SJFRAME-ROBERT {; Ron Barnett, 1994
                ; floating point required
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=z*z*z/5+z*z+c 
  |z|<=100
  ;SOURCE: reb005.frm
}
 
