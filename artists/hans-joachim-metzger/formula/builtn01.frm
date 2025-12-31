BJ-SG-3-03-g {; Modified Sylvie Gallet [101324,3444], 1996
  z = pixel, c = sin(conj(-0.81256,-0.1295)) :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(x*x+p2*fn2(y))
  y1 = y - p1*fn1(y*y+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: sg-bc-bj.frm
}

BJ-SG-G-1-d {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter,
   ; periodicity=0
   ; Edited for Fractint v. 20 by George Martin 10/98
  c = z = pixel
  c1=sin(conj(-0.81256,-0.1295))/p3
  c = fn1(c1)
  z1 = c1 = 1.5*z, z2 = c2 = 2.25*z
  z3 = c3 = 3.375*z, z4 = c4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}

BJ-SG-G-1-g021 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter,
   ; periodicity=0
  c = z = pixel, c0=(0.08638,-0.4922)
  z1 = c1 = 1.5*z, z2 = c2 = 2.25*z
  z3 = c3 = 3.375*z, z4 = c4 = 5.0625*z
  z5 = c5 = z*z*z, z6 = c6 = fn1(z1*z2*z3*z4*z5)
  l1 = real(p1), l2 = imag(p1)
  l3 = real(p2), l4 = imag(p2)
  l5 = real(p3), l6 = imag(p3)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2)
  t3 = (iter==l3), t4 = (iter==l4)
  t5 = (iter==l5), t6 = (iter==l6)
  z = fn2(z*(1-(t1||t2||t3||t4))+z1*t1+z2*t2+z3*t3+z4*t4+z5*t5+z6*t6)
  c = fn3(c*(1-(t1||t2||t3||t4))+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+c6*t6)
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}

BJ-SG-G-1-g024 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter,
   ; periodicity=0
  c = z = pixel, c0=(0.08638,-0.4922)
  z1 = c1 = 1.5*z, z2 = c2 = fn1(2.25*z)
  z3 = c3 = fn2(3.375*z), z4 = c4 = fn3(5.0625*z)
  z5 = c5 = fn4(7.0268*z), z6 = c6 = z1*z2*z3*z4*z5
  l1 = real(p1), l2 = imag(p1)
  l3 = real(p2), l4 = imag(p2)
  l5 = real(p3), l6 = imag(p3)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2)
  t3 = (iter==l3), t4 = (iter==l4)
  t5 = (iter==l5), t6 = (iter==l6)
  z = z*(1-(t1||t2||t3||t4))+z1*t1+z2*t2+z3*t3+z4*t4+z5*t5+z6*t6
  c = c*(1-(t1||t2||t3||t4))+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+c6*t6
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}

lambdafn {; Chuck Ebbert.
          ; P1 is lambda, P2 = bailout (default 64).
          ; lambda default is (1,.4)
  z = pixel
  m = ((1,.4) * (|p1|<=0) + p1 )  ; force (1,.4) when p1=0
  t = (64 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = fn1(z) * m
  abs(imag(z)) <= t && abs(real(z)) <= t
  ;SOURCE: builtn.frm
}

