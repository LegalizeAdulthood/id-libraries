Carr1998 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=pixel, c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4)
  z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c
  iter=iter+1
  |real(z)| <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2021 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel-1/log(cos(0.1/pixel))
  c=(-0.7456,-0.13)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2034 {; Modified Sylvie Gallet frm. [101324,3444],1996
  p01=0.1/pixel, sq=sqrt(p01)
  d2=tan(p01)/sq, d=conj(sq)/cos(sq)
  d1=d^(pixel-1), z=pixel-conj(0.10*d1)+d2
  c=(-0.7456,-0.171)
  c1=1.5*z, c2=2.25*z
  c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2025 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.7456,-0.13)
  z=(pixel)-conj(0.1/pixel)-flip(0.1/pixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr1989 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel-conj(pixel/5), p10=10*pixel, th1=tanh(1), c=z-0.099/pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter+tan(z1)+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
