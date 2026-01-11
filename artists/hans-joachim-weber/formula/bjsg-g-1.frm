BJ-SG-G-1-g031 {; Modified  Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter,
   ; periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = fn1(1.5*z), z2 = c2 = fn2(2.25*z1)
  z3 = c3 = fn3(3.375*z2), z4 = c4 = fn4(z1*c2*z3)*(1/pixel)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}

BJ-SG-G-1-g035 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter,
   ; periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = fn1(1.5*z*z), z2 = c2 = fn2(2.25*z1*z)
  z3 = c3 = fn3(3.375*z2*z), z4 = c4 = fn4(z1*c2*z3)*(1/pixel)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16 , iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}

BJ-SG-G-1-g051 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter,
   ; periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = fn1(1.5*z*z*z*z), z2 = c2 = fn2(sqrt(2.25*z1))
  z3 = c3 = fn3(conj(3.375*z2))*(1/pixel)
  z4 = c4 = fn4(conj(sin(z1*c2*z3)*(1/pixel)))
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}

