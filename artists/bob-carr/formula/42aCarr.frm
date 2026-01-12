Carr1978 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=(-0.7456,0.2), p10=10*pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1/(1/exp(1/pixel)))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
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
Carr1982 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=pixel, p10=10*pixel, th1 = tanh(1)
  iter = 1, dit=-1/pixel+(1.099,0.0), rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter + dit
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
Carr1983 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=pixel , p10=10*pixel, th1 = tanh(1)
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
  iter = iter+z4+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
Carr1984 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=pixel, p10=10*pixel, th1 = tanh(1)
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
Carr1985 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=pixel, p10=10*pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+z6+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
Carr1986 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=(-0.7456,0.2), p10=10*pixel, th1=tanh(1)
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
Carr1987 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=1/pixel, c=1/pixel, p10=10*pixel, th1=tanh(1)
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
Carr1988 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=c=1/(pixel-conj(1/pixel)-flip(1/pixel))
  p10=10*pixel, th1=tanh(1)
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
Carr1990 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=(pixel-conj(pixel/5)), c=(-0.7456,0.2)-0.099/pixel
  p10=10*pixel, th1=tanh(1)
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
  iter = iter+3.75   ; (1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
Carr1991 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z =imag(pixel), c =pixel-((tan(pixel)+sin(pixel)-1/pixel))/10
  p10=10*pixel, iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(3.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
Carr1992 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z = c = pixel+1/log(pixel), p10=10*pixel, th1=tanh(1)
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
  iter = iter+(1.099,0.0)+zn/z4
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
Carr1993 {; Modified Sylvie Gallet frm.
  z=imag(pixel), c=pixel-((tan(pixel)+sin(pixel)-1/pixel))/10
  compt=0, limit=real(p1*cos(pixel/5)), bailout=4
  p=(-0.743380900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+(1.099,0.0)
  |z|<=bailout
  ;SOURCE: 42acarr.frm
}
Carr1994 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444], 1996
  z=c=1/pixel, c1=1.5*z, c2=2.25*z, c3=3.375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t=1-(t1||t2||t3), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3
  z=z*z+c
  iter=iter+1
  |z| <= bailout
  ;SOURCE: 42acarr.frm
}
Carr1995 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G. Martin, 6/27/99
  newpixel=real(pixel)+flip(abs(imag(pixel)))
  z=1/newpixel, c=(-0.7456,0.2), c1=1.5*z, c2=2.25*z, c3=3.375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t=1-(t1||t2||t3), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3
  z=z*z+c
  iter=iter+1
  |z| <= bailout
  ;SOURCE: 42acarr.frm
}
Carr1996 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=pixel, c1=1.5*z, c2=2.25*z, c3=3.375*z, p0=0.099/pixel
  l1=real(p1), l2=imag(p1), l3=real(p2), bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t=1-(t1||t2||t3), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3
  z=z*z+c-p0
  iter=iter+1
  |real(z)| <= bailout
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
Carr1999 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z = c = pixel+1/log(pixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
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
Carr2002 {; Modified Sylvie Gallet frm. [101324,3444], 1996
          ; requires "periodicity=0" (<g> command)
          ; imag(p1) = scale of the Julia set
          ; p2 = center of the Julia set
          ; p3 = param for the Julia set
  z = c = pixel
  c1 = p3
  z1=imag(p1-pixel)*z-p2, iter=0
  limit=real(p1), bailout = 16 :
  test = (iter==limit)
  z=z*(1-test)+(z1*test), c=(c*(1-test)+(c1*test))
  z=z*z+c
  iter=iter+1
  |z| <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2003 {; Modified Sylvie Gallet frm. [101324,3444], 1996
          ; requires "periodicity=0" (<g> command)
          ; imag(p1) = scale of the Julia set
          ; p2 = center of the Julia set
          ; p3 = param for the Julia set
  z = c = pixel
  c1 = p3
  z1=imag(p1-cos(pixel))*z-p2, iter=0
  limit=real(p1), bailout = 16 :
  test = (iter==limit)
  z=z*(1-test)+(z1*test), c=(c*(1-test)+(c1*test))
  z=z*z+c
  iter=iter+1
  |z| <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2004 {; Modified Sylvie Gallet frm. [101324,3444], 1996
          ; requires "periodicity=0" (<g> command)
          ; imag(p1) = scale of the Julia set
          ; p2 = center of the Julia set
          ; p3 = param for the Julia set
  z = c = pixel
  c1 = p3
  z1=imag(p1-cos(2*(pixel)))*z-p2, iter=0
  limit=real(p1), bailout = 16 :
  test = (iter==limit)
  z=z*(1-test)+(z1*test), c=(c*(1-test)+(c1*test))
  z=z*z+c
  iter=iter+1
  |z| <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2005 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=pixel-1/log(cos(1/pixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2006 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=pixel-1/log(sinh(1/pixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2007 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel, z=pixel+1/log(pixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4)
  z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2008 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel, c=pixel-1/log (-0.7456,0.2)
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
Carr2009 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel+1/log(pixel)
  z=pixel-1/log(pixel-1/log(tan(1/pixel))-1/log(2/pixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=cos(imag(p1)), l3=real(p2), l4=cos(imag(p2))
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2010 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  pp1=1/pixel, z=1/(pixel-real(pp1)+flip(imag(pp1)*2.924))
  c=1/(pixel-conj(pp1)-flip(pp1))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=cos(imag(p1)), l3=real(p2), l4=cos(imag(p2))
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4)
  z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+(c+(-0.3,0.6))
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2011 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  pp1=1/pixel, c=1/(pixel-conj(pp1)-flip(pp1))
  z=1/(pixel-(3/c-c/4)-conj(pp1))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=cos(imag(p1)), l3=real(p2), l4=cos(imag(p2))
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c+(0.35776,-0.08294)
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2012 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel+1/log(pixel), c=pixel
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
Carr2013 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=0.724*real(pixel)+flip(imag(pixel))
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
Carr2014 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=0.724*real(pixel)+flip(imag(pixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=flip(conj(z*z))+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2015 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=0.724*real(pixel)+flip(imag(pixel)), p0=0.09/pixel
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=flip(conj(z*z))+c-p0
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2016 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel, c=(-0.3,0.6)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z2=z*z, z=z2*z/5+z2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2017 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=(pixel)-1/log(conj(0.5/pixel-1))
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
Carr2018 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel-1/log(10*pixel)*(sinh(0.1/pixel))
  c=sqrt(pixel-conj(0.135/pixel))+pixel
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z=z*z+c-cp
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2019 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel-1/log(10*pixel)*(sinh(0.1/pixel))
  c=(-0.7456,-0.13)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z2=z*z, z=real(z)*z2/5+z2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2020 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel+sqrt(10*pixel)*(tan(0.1/pixel))
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
Carr2022 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel+1/log(cos(0.1/pixel-0.025))*(tan(0.1/pixel-0.025))
  c=(-0.7456,-0.13)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4
  c=z+c/2.125
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2023 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel+1/log(cos(0.1/pixel-0.025))*(tan(0.1/pixel-0.025))
  c=(-0.87456,-0.13)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z2=z*z, z=real(z)*z2/5+z2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2024 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=1.442*(real(pixel-1/log(0.019/pixel)))+flip(imag(pixel))
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
Carr2026 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.7456,-0.13)
  z=(pixel)-conj(0.1/pixel)-flip(0.1/pixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z2=z*z, z=real(z)*z2/5+z2+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2027 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.7456,-0.171), p10=0.1/pixel
  z=(pixel)-conj(p10)-flip(p10)-cabs(p10)-tan(p10)
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
Carr2028 {; Modified Sylvie Gallet frm. [101324,3444],1996
  p10=10*pixel, z=pixel-1/log(sqrt(p10)*(tan(1/p10)))
  c=(-0.7456,-0.171)
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
Carr2029 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel+1/log(sqrt(0.1/pixel)*log(0.1/pixel))
  c=(-0.7456,-0.171)
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
Carr2030 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=sin(pixel)-log(sqrt(0.1/pixel)*cos(log(0.1/pixel)))
  c=(-0.7456,-0.171)
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
Carr2031 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=sin(pixel)-log(sqrt(0.1/pixel)*cos(log(0.1/pixel)))
  c=(-0.7456,-0.171)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  c=z+c/2.125
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2032 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(pixel)-(conj(sqrt(0.1/pixel))/cos(sqrt(0.1/pixel)))/cosxx(pixel)
  c=(-0.7456,-0.171)
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
Carr2033 {; Modified Sylvie Gallet frm. [101324,3444],1996
  d=(conj(sqrt(0.1/pixel))/cos(sqrt(0.1/pixel)))
  d1=d^pixel
  z=(pixel-d/d1)
  c=(-0.7456,-0.171)
  z1=c1=(1.5*z), z2=c2=(2.25*z), z3=c3=(3.375*z), z4=c4=(5.0625*z)
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  z=z*(1-(t1||t2||t3||t4))
  c=c*(1-(t1||t2||t3||t4))+(c1*t1)+(c2*t2)+(c3*t3)+(c4*t4+(pixel)/imag(p2))
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 96msg.frm
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
Carr2035 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel-((1/pixel)/(1/log(cos(0.01/pixel))))-conj(0.105/pixel)
  c=(-0.7456,-0.171)
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
Carr2036 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel-((1/pixel)/(1/log(cos(0.01/pixel))))-flip(imag(0.305/pixel))
  c=(-0.38652609,0.575229)+0.010/pixel
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c+0.057
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2037 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel-log(cos(0.01/pixel))/pixel-1/log(flip(imag(0.305/pixel)))
  c=(-0.38652609,0.575229)+0.010/pixel
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c+0.057
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2037 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel-log(cos(0.01/pixel))/pixel-1/log(flip(imag(0.305/pixel)))
  c=(-0.38652609,0.575229)+0.010/pixel
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c+0.057
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
Carr2038 {; Modified Sylvie Gallet frm.
  c=z=pixel-log(cos(0.01/pixel))/pixel-1/log(flip(imag(0.305/pixel)))
  compt=0, limit=real(p1*cos(pixel/5)), bailout=4
  p=(-0.745680900000982,0.1931):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42acarr.frm
}
Carr2039 {; Modified Sylvie Gallet frm.
  z = pixel+1/log(10*pixel)
  c = (-0.7456,-0.13)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+1.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
Carr2040 {; Modified Sylvie Gallet frm.
  z=pixel, c=pixel-conj(0.10/pixel)-flip(0.10/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0, th1=tanh(1):
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
Carr2041 {; Modified Sylvie Gallet frm.
  c=(-0.7456,-0.13)
  z=pixel-conj(0.10/pixel)-flip(0.10/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
Carr2042 {; Modified Sylvie Gallet frm.
  z=pixel-1/log(0.00000001)/pixel-conj(0.010/pixel)
  c=pixel-(0.00000001-z)/cosxx(1/log(0.00000001-z))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (real(z2)*z4+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
Carr2043 {; Modified Sylvie Gallet frm.
  c=(0.3,0.6)
  z=pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4), z5=z4*z2-1
  z = (z2+c/z5)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 96msg.frm
}
Carr2044 {; Modified Sylvie Gallet frm.
  z=pixel-conj(0.010/pixel)-flip(0.010/pixel),
  c=(0.3,0.6)-(0.0165/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0)), z5=z4*z2-1
  z = (z2+c/z5)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
Carr2045 {; Modified Sylvie Gallet frm.
  z=pixel-(((0.3,0.6)+pixel)/(1.099,0))
  c=(-0.7456,-0.13)-0.09/cos(pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
Carr2046 {; Modified Sylvie Gallet frm.
  z=tanh(pixel)-(((0.3,0.6)+pixel)/(0.20/-pixel))
  c=(-0.7456,-0.13), c2=c-(0.05/(cos(pixel)))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c2)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}
Carr2047 {; Modified Sylvie Gallet frm.
  z=pixel*sqr(pixel)-conj(0.010/pixel)-flip(0.010/pixel)
  c=(-0.7456,-0.13)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}
Carr2048 {; Modified Sylvie Gallet frm.
  z=conj((0.3,0.6)*(pixel))*sqr(pixel)-conj(0.010/pixel)-flip(0.010/pixel)
  c=(-0.7456,-0.13)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}
Carr2049 {; Modified Sylvie Gallet frm.
  z=c=conj((0.3,0.6)*(pixel))*sqr(pixel)\
       -conj(0.010/pixel)-flip(0.010/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}
Carr2050 {; Modified Sylvie Gallet frm.
  z=c=sinh((-0.7456,0.2)*(pixel))*sqr(pixel)\
        -conj(0.010/pixel)-flip(0.010/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}
