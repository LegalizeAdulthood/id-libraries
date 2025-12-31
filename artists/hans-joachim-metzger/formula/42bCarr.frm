Carr2070 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=sqr(conj(0.75*(pixel*pixel)))
  z=conj(pixel)*sqr(pixel)-sqr(conj(0.10/pixel))-(flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*conj(z)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2076 {; Modified Sylvie Gallet frm.
  z=flip(imag(1-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  c=pixel*sqr(pixel)-sqr(conj(0.10/pixel))-(flip(0.010/pixel))
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  cinv=p2/(z+p3)
  p=(-0.743380900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}

Carr2083 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=sqr(sqr(sinh(pixel)))/conj(pixel)
  z=flip(imag(1-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2086 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=conj(pixel-0.33)
  z=conj(pixel-0.33)*sqr(pixel)-(conj(0.10/pixel))+sqr(flip(0.010/pixel))
  z1 = 2.25*z, z2 = 3.25*z, z3 = 5.375*z, z4 = 10.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0, d=(0.01250/(conj(z))):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct - d, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2090 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=conj(-0.8006,-0.149)
  z=flip(1/acos(1-pixel))*sqr(pixel)\
       -(conj(0.0005/pixel))-sqr(flip(0.09/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2091 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=conj(-0.8006,-0.149)
  z=flip(1/atan(1-pixel))*sqr(pixel)\
        -(conj(0.005/pixel))-sqr(flip(0.09/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 0.999*(1-(t1||t2||t3||t4)), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2093 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=sqr(1-pixel)*sqr(pixel)-sqr(conj(0.010/pixel))-(flip(0.10/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct - (0.00491,0.0010)
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2094 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.63,-0.4)
  z=acos(1-pixel)^2-(conj(0.10/pixel))-(flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2095 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.63,-0.4)
  z=acos(1-pixel)^2-(conj(0.10/pixel))-sqr(asin(0.10/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2096 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.7456,-0.13)
  z=pixel-conj(0.10/pixel-flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t2 + z2*t1
  z = z*t + ct + z3*t3 + z4*t4, c = c*t + ct + z3*t4 + z4*t3
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2097 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.7456,-0.13)
  z=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 6.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2103 {; Modified Sylvie Gallet frm.
  z=c=(pixel)-0.5/((log(conj(pixel))^12)+pixel)+conj(0.040/pixel)
  compt=0, limit=real(p1*cos(pixel/5)), bailout=4
  p=(-0.743380900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
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

Carr2051 {; Modified Sylvie Gallet frm.
  c=pixel*sqr(pixel)+conj(0.00010/pixel)\
      +flip(0.00010/pixel)+tanh(0.00010/pixel)
  z=pixel-conj(0.010/pixel)-flip(0.010/pixel)
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

Carr2052 {; Modified Sylvie Gallet frm.
  z=c=tanh(pixel)-(((0.3,0.6)+pixel)/(0.20/-pixel))
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  p=(-0.745680900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}

Carr2053 {; Modified Sylvie Gallet frm.
  z=c=sinh((-0.7456,0.2)*(pixel))*sqr(pixel)\
     -conj(0.10/pixel)-flip(0.10/pixel)
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  p=(-0.745680900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}

Carr2054 {; Modified Sylvie Gallet frm.
  z=pixel*sqr(pixel)+conj(0.010/pixel)+flip(0.010/pixel)+tanh(0.010/pixel)
  c=(-0.7456,-0.13)-conj(0.001/pixel)
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  p=(-0.745680900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}

Carr2055 {; Modified Sylvie Gallet frm.
  z=sqr(sqr(conj(pixel)))-(conj(0.020/pixel))-(flip(0.020/pixel))
  c=(-0.7456,0.13)+0.009/pixel
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  p=(-0.745680900000982,-0.131850030300002):
  test=(compt<limit)
  c=(c*test+p*(1-test))
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}

Carr2056 {; Modified Sylvie Gallet frm.
  z=sqr(sqr(conj(pixel)))-(tan(0.00020/pixel))-(sin(0.00020/pixel))
  c=(-0.7456,-0.03)+0.009/pixel
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  p=(-0.745680900000982,-0.131850030300002):
  test=(compt<limit)
  c=(c*test+p*(1-test))
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}

Carr2057 {; Modified Sylvie Gallet frm.
  z=real(sqr(pixel))+flip(imag(pixel))
  c=sqr(sqr(conj(pixel)))-(sqr(0.020/pixel))-(exp(0.020/pixel))
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  p=(-0.745680900000982,-0.131850030300002):
  test=(compt<limit)
  c=(c*test+p*(1-test))
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}

Carr2058 {; Modified Sylvie Gallet frm.
  z=pixel+1/sqrt(0.1/pixel)*(tan(0.1/pixel))
  c=(-0.7456,-0.13)-0.01/pixel
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  p=(-0.745680900000982,-0.131850030300002):
  test=(compt<limit)
  c=(c*test+p*(1-test))
  z=z*z+c-0.0087
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}

Carr2060 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel
  z=pixel*sqr(pixel)-conj(0.010/pixel)-flip(0.010/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2061 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel
  z=pixel*sqr(pixel)-conj(0.010/pixel)-flip(0.10/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2062 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel
  z=pixel*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2063 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel
  z=pixel*sqr(pixel)-conj(0.10/pixel)-sqr(flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2064 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel
  z=pixel*sqr(pixel)-sqr(conj(0.10/pixel))-(flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2065 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=flip(imag(pixel))
  z=pixel*sqr(pixel)-(sqr(conj(0.10/pixel)))-sqr(flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2066 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=flip(imag(sqr(pixel)))
  z=pixel*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2067 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=1.33*(pixel)
  z=conj(pixel)*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2068 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel
  z=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2069 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=sinh(conj(pixel*pixel))
  z=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2071 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel
  z=flip(imag(1-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*conj(z)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2072 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=conj(flip(pixel))*pixel
  z=flip(imag(1-pixel))*sqr(pixel)\
      -(conj(0.10/pixel))-sqr(flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*conj(z)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2073 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=pixel*sqr(pixel)-(conj(0.10/pixel))-sqr(flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*conj(z)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2074 {; Modified Sylvie Gallet frm.
  z=c=pixel*sqr(pixel)-(conj(0.10/pixel))-flip(0.010/pixel)
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  cinv=p2/(z+p3)
  p=(-0.743380900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}

Carr2075 {; Modified Sylvie Gallet frm.
  c=pixel-conj(0.10/pixel)-flip(0.010/pixel)
  z=pixel*sqr(pixel)-sqr(conj(0.10/pixel))-(flip(0.010/pixel))
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  cinv=p2/(z+p3)
  p=(-0.743380900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}

Carr2077 {; Modified Sylvie Gallet frm.
  z=c=conj(pixel)*sqr(pixel)-(conj(0.10/pixel))-sqr(flip(0.010/pixel))
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  cinv=p2/(z+p3)
  p=(-0.743380900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}

Carr2078 {; Modified Sylvie Gallet frm.
  z=c=conj(pixel)*sqr(pixel)-sqr(conj(0.010/pixel))-(flip(0.10/pixel))
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  cinv=p2/(z+p3)
  p=(-0.743380900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}

Carr2079 {;Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=conj(pixel)*sqr(pixel)-sqr(conj(0.010/pixel))-(flip(0.10/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2080 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel
  z=flip(imag(1-pixel))*sqr(conj(pixel))\
      -(conj(0.10/pixel))-flip(0.010/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2081 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel
  z=flip(imag(1-pixel))*pixel*conj(pixel)\
        -(conj(0.10/pixel))-flip(0.010/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2082 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=sqr(pixel)/(conj(pixel))
  z=flip(imag(1-pixel))*pixel*conj(pixel)\
        -(conj(0.10/pixel))-flip(0.010/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2083 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=sqr(sqr(sinh(pixel)))/conj(pixel)
  z=flip(imag(1-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2084 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=sqr(sqr(sinh(pixel)))/conj(pixel)
  z=flip(imag(1-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct + conj(0.0010/c)
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2085 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=sinh(pixel)^5/conj(pixel)^1.5
  z=pixel*sqr(pixel)-sqr(conj(0.10/pixel))-(flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0, d4 = 4*tanh(0.010/z), d1 = conj(0.000010/c):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct + d4, c = c*t + ct + d1
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2087 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel
  z=flip(imag(1-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  z1 = 2.25*z, z2 = 3.25*z, z3 = 5.375*z, z4 = 10.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c-(0.10/c)
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2088 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.8006,-0.149)
  z=flip(conj(1-pixel))*sqr(pixel)\
       -(conj(0.0005/pixel))-sqr(flip(0.03/pixel))
  z1 = 2.25*z, z2 = 3.25*z, z3 = 5.375*z, z4 = 10.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2089 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.8006,-0.149)
  z=flip(conj(1-pixel))*sqr(pixel)\
      -(conj(0.0005/pixel))-sqr(flip(0.09/pixel))
  z1 = 2.25*z, z2 = 3.25*z, z3 = 5.375*z, z4 = 10.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2090 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=conj(-0.8006,-0.149)
  z=flip(1/acos(1-pixel))*sqr(pixel)\
       -(conj(0.0005/pixel))-sqr(flip(0.09/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2091 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=conj(-0.8006,-0.149)
  z=flip(1/atan(1-pixel))*sqr(pixel)\
        -(conj(0.005/pixel))-sqr(flip(0.09/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 0.999*(1-(t1||t2||t3||t4)), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2092 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.8006,-0.149)
  z=pixel*conj(pixel^2)-conj(0.10/pixel)-(0.0450/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*1.09*t + ct, c = c*0.999*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2093 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=sqr(1-pixel)*sqr(pixel)-sqr(conj(0.010/pixel))-(flip(0.10/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct - (0.00491,0.0010)
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2094 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.63,-0.4)
  z=acos(1-pixel)^2-(conj(0.10/pixel))-(flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2095 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.63,-0.4)
  z=acos(1-pixel)^2-(conj(0.10/pixel))-sqr(asin(0.10/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2096 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.7456,-0.13)
  z=pixel-conj(0.10/pixel-flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t2 + z2*t1
  z = z*t + ct + z3*t3 + z4*t4, c = c*t + ct + z3*t4 + z4*t3
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2097 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.7456,-0.13)
  z=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 6.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2098 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-1.099,0.235)
  z=flip(pixel)*conj(pixel+0.433)\
       -conj(0.010/pixel)-sqr(flip(0.0010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2099 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(conj(tan(pixel)))-conj(0.10/pixel)-flip(0.010/pixel)
  z=flip(pixel)*conj(sqr(pixel+0.433))\
      -(conj(0.10/pixel))-sqr(flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2100 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.7456,-0.13)
  z=(conj(tan(pixel)))-sqr(conj(0.10/pixel))-sqr(flip(0.020/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2101 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=pixel-1/((log(tan(pixel))^10)+pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2102 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=flip(imag(1-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  c=(pixel)-0.5/((log(conj(pixel))^12)+pixel)+conj(0.040/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

Carr2104 {; Modified Sylvie Gallet frm.
  z=flip(1-pixel)*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  c=(-0.8006,-0.149)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn, z2 = z*z, z4 = z2*z2
  z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z*z+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}

Carr2105 {; Modified Sylvie Gallet frm.
  z=flip(1+pixel)*sqr(conj(pixel))-conj(0.10/pixel)+flip(0.010/pixel)
  c=(-0.63,-0.4)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn, z2 = z*z, z4 = z2*z2
  z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z*z+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}

Carr2106 {; Modified Sylvie Gallet frm.
  z=c=pixel-2/(sinh(0.10/pixel)-sqr(tanh(0.010/pixel)))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn, z2 = z*z, z4 = z2*z2
  z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z*z+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter = iter+1.2
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}

Carr2107 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.8006,-0.149)
  z=pixel-1/(sinh(0.10/pixel)-sqr(cosh(0.0250/pixel)))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+0.75
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}

