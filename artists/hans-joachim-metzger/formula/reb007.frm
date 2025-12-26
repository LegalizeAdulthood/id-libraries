3RDIMFRAME-ROBERTJ {; Ron Barnett, 1995
                    ; floating point required
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(p3)+flip(imag(p3)*p1):
  z=z*z*z/5+z*z+c 
  |z|<=100
  ;SOURCE: reb007.frm
}
 
3RDIMMANOWAR01J {; Ron Barnett, 1995
                 ; floating point required
  z=z1=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(p3)+flip(imag(p3)*p1):
  z=z*z+z1+c
  z1=z 
  |z|<=100
  ;SOURCE: reb007.frm
}
 
JMask2 {; Ron Barnett, 1995      
  z = fn1(pixel):
  z = P1*fn2(z)^2 + P2*fn3(z)^2 + P3 
  |z| <= 4
  ;SOURCE: reb006.frm
}
 
REB004LJulia {; Ron Barnett, 1995
              ; floating point required
  z = pixel:
  x = flip(pixel + fn1(p1/z - z/(p2+1)))
  z = x*z + p3 
  |z| <= 100
  ;SOURCE: reb007.frm
}
 
SJFRAME-ROBERTJ {; Ron Barnett, 1995
                 ; floating point required
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(p3)+flip(imag(p3)):
  z=z*z*z/5+z*z+c 
  |z|<=100
  ;SOURCE: reb007.frm
}
 
sjjulike01 {; Ron Barnett, 1995
  y = pixel
  z=real(y)+flip(imag(y)*p1)
  c=p2+p1*real(p3)+flip(imag(p3)):
  z = z*z*z + (c - 1)*z - c 
  |z|<=100
  ;SOURCE: reb006.frm
}
 
