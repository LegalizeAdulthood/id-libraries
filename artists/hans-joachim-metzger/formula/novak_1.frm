PRN_01 {; Paul Novak, 1996
  z=c=pixel, upper=4+p2:
  t= (z +  z*(fn1(fn2(z))))
  z= -1*t + c
  |z| < upper
  ;SOURCE: novak_1.frm
}
 
PRN_02 {; Paul Novak, 1996
  z=c=pixel, z2=z*z, upper=4+p2, m=p1, m1=.005+p1:
  m= m + m1
  b= (z2 + z*(fn1(fn2(z))))
  t= (z +  z*(fn2(fn3(z))))
  z= m*b + (m-1)*t + c
  |z| < upper
  ;SOURCE: novak_1.frm
}
 
PRN_03 {; Paul Novak, 1996
  z=c=pixel, z2=z*z, upper=4+p2, m=p1, m1=.005+p1:
  m= m + m1/(1.5*m)
  b= (z2 + z*(fn1(fn2(z))))
  t= (z +  z*(fn2(fn3(z))))
  z= m*b + (m-1)*t + c
  |z| < upper
  ;SOURCE: novak_1.frm
}
 
PRN_04 {; Paul Novak, 1996
  z = c = pixel, z2=z*z, upper=4+p2, m=p1, m1=.005+p1:
  m = m + m1*(1.25*(1/m))
  b = (z2 + z*(fn1(fn2(z))))
  t = (z2 + z + z*(fn1(fn3(z))))
  z = m*b + (1/m)*t + c
  |z| < upper
  ;SOURCE: novak_1.frm
}
 
