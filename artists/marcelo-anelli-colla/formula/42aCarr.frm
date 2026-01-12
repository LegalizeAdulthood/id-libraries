Carr1981 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=pixel, p10=10*pixel, th1 = tanh(1)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(1/pixel))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
Carr1997 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=pixel, c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z=z*z+c
  iter=iter+1
  |real(z)| <= bailout
  ;SOURCE: 42acarr.frm
}
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
Carr2000 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Some optimizations made by G. Martin
  z=c=pixel-1/log(cos(1/pixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2001 {; Modified Sylvie Gallet frm. [101324,3444], 1996
          ; requires "periodicity=0" (<g> command)
          ; imag(p1) = scale of the Julia set
          ; p2 = center of the Julia set
          ; p3 = param for the Julia set
  z=c=pixel+1/log(pixel)
  c1 = p3
  z1=imag(p1)*z-p2, iter=0, limit = real(p1), bailout = 16 :
  test = (iter==limit)
  z=z*(1-test)+z1*test, c=c*(1-test)+c1*test
  z=z*z+c
  iter=iter+1
  |z| <= bailout
  ;SOURCE: 42acarr.frm
}
