BJ-man-julz-002 {; Sylvie Gallet [101324,3444], 1995
  z=fn1(flip(imag(1-pixel))*conj(tan(pixel))\
    -conj(0.10/pixel)-flip(0.010/pixel)), c = z
  compt=0, limit = real(p1), bailout = 4
  p = (-0.743380900000982,-0.131850030300002)/p2 :
  test = (compt<limit)
  c = fn2(c*test+p*(1-test))
  z = z*z+c
  compt = compt+1
  |z| <= bailout
  ;SOURCE: bejones.frm
}
 
BJ-man-julz-004 {; Sylvie Gallet [101324,3444], 1995
  c = z = fn1((((0.3,0.6)+pixel)/(0.20/-pixel))*(0.1,1.0)) 
  compt=0, limit = real(p1), bailout = 4
  p = (-0.743380900000982,-0.131850030300002) :
  test = (compt<limit)
  c = c*test+p*(1-test)
  z = z*z+c
  compt = compt+1
  |z| <= bailout
  ;SOURCE: bejones.frm
}
 
BJ-man-lam-fn-6 {; Sylvie Gallet [101324,3444], 1995
                 ; requires "periodicity=0" (<g> command)
  c = z = fn1(pixel*sqr(1.0,0.1)), lambda = (1.0,0.4) 
  pix2 = pixel*4+0.8, compt = 0, limit = real(p1) :
  test1 = (compt<limit), test2 = (compt!=limit)
  z = (z-pix2)*test2 + pix2
  bailout = 4096 - 4032*test1
  z2 = lambda*sin(z)/(pix2/p2)
  z = (z*z+c-z2)*test1+z2
  compt = compt+1
  |z| <= bailout
  ;SOURCE: bejones.frm
}
 
BJ-man-lam-fn-9b {; Sylvie Gallet [101324,3444], 1995
                  ; requires "periodicity=0" (<g> command)
  c=z=fn1(conj(sin(pixel*(1.0,0.1)/p2)))/(1.0,0.1)\
      -fn3(conj(sin(pixel*(1.0,0.1)/p2))) 
  lambda = (1.0,0.4)/p3 
  pix2 = fn2(pixel*4+0.8), compt = 0, limit = real(p1):
  test1 = (compt<limit), test2 = (compt!=limit)
  z = (z-pix2)*test2 + pix2
  bailout = 4096 - 4032*test1
  z2 = lambda*sin(z)
  z = (z*z+c-z2)*test1+z2
  compt = compt+1
  |z| <= bailout
  ;SOURCE: bejones.frm
}
 
BJ-SG-G-1-g052 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = fn1(z*z*z), z2 = c2 = fn2(2.25*z1) 
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
 
BJ-SG-G-1-g053 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = fn1(1.5/(z*z*z)), z2 = c2 = fn2(2.25*z1) 
  z3 = c3 = fn3(3.375*z2), z4 = c4 = fn4(z*z*z)*(1/pixel)
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
 
BJ-SG-G-1-g062 {;Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = sqr(conj(0.75*(pixel*pixel)))*(0.1,1.0)
  z1 = c1 = fn1(1.5/(z*z*z*z*z*z*z*z))/p3, z2 = c2 = fn2(2.25*z1*z*z)
  z3 = c3 = fn3(3.375*z2), z4 = c4 = fn4(z*z*z)^(1/pixel)
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
 
BJ-SG-G-1-g067 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = fn4((((0.3,0.6)+pixel)/(0.20/-pixel))*(0.1,1.0)) 
  z1 = c1 = fn1(conj(sin(0.0742,-0.0391)))*(1.5*z) 
  z2 = c2 = fn2(2.25*z1)
  z3 = c3 = fn3(3.375*z2), z4 = c4 = (z*z*z)*(1/pixel)
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
 
BJ-SG-G-1-g074 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel, lambda = (1.0,0.4), pix2 = pixel*4+0.8 
  compt = 0, limit = real(p1)
  z1 = c1 = (1.5*z)+fn1((z-pix2)*test2 + pix2 / ((z*z+c-z2)*test1+z2)) 
  z2 = c2 = 2.25*z 
  z3 = c3 = fn2((z-pix2)*test2 + pix2 / ((z*z+c-z2)*test1+z2)) 
  z4 = c4 = fn3((z-pix2)*test2 + pix2 / ((z*z+c-z2)*test1+z2))
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 4096 - 4032*test1 
  iter = 0, pix2 = pixel*4+0.8, compt = 0, limit = real(p3) :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  test1 = (compt<limit), test2 = (compt!=limit)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = (z-pix2)*test2 + pix2
  z5 = lambda*sin(z)
  z = (z*z+c)
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}
 
BJ-SG-MaNewt-001 {; Modified Sylvie Gallet [101324,3444], 1995
  z = fn1(1/pixel), c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center+rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bejones.frm
}
 
BJ-SG-MaNewt-014 {; Modified Sylvie Gallet [101324,3444], 1995
  z = pixel + rad, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = fn1((10*pixel+(5.0,-3.4))*(-0.1,-0.95))
  zn = fn2(center+rad/(pix-center))
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 96msg.frm
}
 
BJ-SG-MaNewt-024 {; Modified Sylvie Gallet [101324,3444], 1995
  z = pixel * (center/p2), c = z, iter = 1
  rad = 3.1, center = fn1(-1.0,0.1)
  pix = fn2((10*pixel+((5.0,-1.4)/p3))*(0.0,-1.0))
  zn = fn3(center+rad/(pix-center))
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bejones.frm
}
 
BJ-SG-MaNewt-026 {; Modified Sylvie Gallet [101324,3444], 1995
                  ; Unmatched parentheses error corrected by George 
                  ; Martin, 5/4/98
  z = pixel * fn1(rad/p2), c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = fn2((10*pixel+((5.0,-3.4)/p3))*(0.0,-0.95))
  zn = fn3(center+rad/(pix-center))
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bejones.frm
}
 
