BJ-BC1974-c {; Modified Bob Carr frm from a modified Sylvie Gallet frm.
  c=z=pixel, d=log(1/pixel-conj(1/pixel))
  compt=0, limit=(abs(p1/5))/p2, bailout=4
  p=(1.0/-2.48)-(1.00763):
  test=(compt<limit)+fn1(c)
  c=c*(test/p3)+p*(1-test)
  z=(z*z+c)-real(d/100*pixel)
  compt=compt+0.39
  |z|<=bailout
  ;SOURCE: bej0015.frm
}

BJ-BC1974-h {; Modified Bob Carr frm from a modified Sylvie Gallet frm.
  c=z=fn2(pixel*pixel)/p2, d=log(1/pixel-conj(1/pixel))
  compt=0, limit=(abs(p1/5)), bailout=4
  p=(1.0/-2.48)-(1.00763):
  test=(compt<limit)+fn1(c)
  c=c*(test/p3)+p*(1-test)
  z=(z*z+c)-real(d/100*pixel)
  compt=compt+0.39
  |z|<=bailout
  ;SOURCE: bej0015.frm
}

BJ-SG-3-03-g {; Modified Sylvie Gallet [101324,3444], 1996
  z = pixel, c = sin(conj(-0.81256,-0.1295)) :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(x*x+p2*fn2(y))
  y1 = y - p1*fn1(y*y+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: sg-bc-bj.frm
}

BEJ_N90f {; Revised for version 20.0 by George Martin
          ; Original formula used undefined variable "atan"
  z=c=pixel, limit=atan(p1):
  test1=(limit>0), test2=srand(0)
  z=(z*z+c)/limit+(fn1(1/p1)+c)
  c=(-0.7456,-0.0186)
  c=sin(conj(-0.81256,-0.1295))
  |z|<4
  ;SOURCE: sg-bc-bj.frm
}

BEJ_N90j {; Revised for version 20.0 by George Martin
          ; Original formula used undefined variable "atan"
  z=c=pixel, limit=atan(p1):
  test1=(limit<=0)+(1*p1)
  z=z*z*z
  z=fn1((z)*z+c)/(test1^limit)
  c=(-0.7456,-0.0186)+(z*z+c)
  c=sin(conj(-0.81256,-0.1295))
  |fn1(z+pixel)|<4
  ;SOURCE: sg-bc-bj.frm
}

BEJ_N90j-1 (YAXIS) {; Revised for version 20.0 by George Martin
                    ; Original formula used undefined variable "atan"
  z=c=pixel, limit=atan(p1):
  test1=(limit<=0)+(1*p1)
  z=z*z*z
  z=fn1((z)*z+c)/(test1^limit)
  c=(-0.7456,-0.0186)+(z*z+c)
  c=sin(conj(-0.81256,-0.1295))
  |fn1(z+pixel)|<4
  ;SOURCE: sg-bc-bj.frm
}

BJ-BC-1e {; Modified Bob Carr modified Sylvie Gallet frm.
  z=pixel
  c=pixel^2+0.25
  iter=1, rad=6, center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0:
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z+zn)*test2-(zn), z2=z*z+c, z4=z2*z2
  z6=z2*z4, z1=((z6*z-1)/(imag(p1)*z6))
  z=(z*z+(c-((0.3,0.65))-c/8))*test1+((z-z1)*(1-test1))
  test3=(test3 || (|z|>b1))
  z=z*1.01105*(1-(test3 && test0 && test1))
  iter=iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 96msg.frm
}

BJ-BC-1g {; Modified Bob Carr modified Sylvie Gallet frm.
  z=pixel
  c=pixel^2+0.25
  iter=1, rad=6, center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0:
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+(zn), z2=z*z/fn1(zn*pixel), z4=z2*z2
  z6=z2*z4, z1=((z6*z-1)/(imag(p1)*z6))
  z=(z*z+(c-((0.3,0.65))-c/8))*test1+((z-z1)*(1-test1))
  test3=(test3 || (|z|>b1))
  z=z*1.01105*(1-(test3 && test0 && test1))
  iter=iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 96msg.frm
}

BJ-BC1997b (XAXIS) {; Modified Bob Carr
                    ; modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel, c=pixel
  z1=c1=(1.5*z), z2=c2=(2.25*z), z3=c3=(3.375*z), z4=c4=(5.0625*z)
  l1=real(p1)
  l2=imag(p1)
  l3=real(p2)
  l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  z=fn1(z)*(1-(t1||t2||t3||t4))
  c=c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 +c4*t4
  z=z*z+c
  iter=iter+1
  |real(z)| <= bailout
  ;SOURCE: sg-bc-bj.frm
}

BJ-BC1997c (XAXIS) {; Modified Bob Carr
                    ; modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel, c=pixel
  z1=c1=(1.5*z), z2=c2=(2.25*z), z3=c3=(3.375*z), z4=c4=(5.0625*z)
  l1=real(p1)
  l2=imag(p1)
  l3=real(p2)
  l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  z=z*(1-(t1||t2||t3||t4))
  c=c*(1-(t1||t2||t3||t4))+fn1(c1*t1)+fn2(c2*t2)+fn3(c3*t3)+fn4(c4*t4)
  z=z*z+c
  iter=iter+1
  |real(z)| <= bailout
  ;SOURCE: sg-bc-bj.frm
}

BJ-BC1997d (XAXIS) {; Modified Bob Carr
                    ; modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel, c=pixel
  z1=c1=(1.5*z), z2=c2=(2.25*z), z3=c3=(3.375*z), z4=c4=(5.0625*z)
  l1=real(p1)
  l2=imag(p1)
  l3=real(p2)
  l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  z=z*(1-(t1||t2||t3||t4))
  c=c*(1-(t1||t2||t3||t4))+fn1(c1*t1)+fn2(fn1(c2*t2))\
      +fn3(fn2(fn1(c3*t3)))+fn4(fn3(fn2(fn1(c4*t4))))
  z=z*z+c
  iter=iter+1
  |real(z)| <= bailout
  ;SOURCE: sg-bc-bj.frm
}

BJ-BC1997e (XAXIS) {; Modified Bob Carr
                    ; modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel, c=pixel
  z1=c1=(1.5*z), z2=c2=(2.25*z), z3=c3=(3.375*z), z4=c4=(5.0625*z)
  l1=real(p1)
  l2=imag(p1)
  l3=real(p2)
  l4=imag(p2)
  bailout=16, iter=0 :
  t1=fn1(iter==l1), t2=fn2(iter==l2), t3=fn3(iter==l3), t4=fn4(iter==l4)
  z=z*(1-(t1||t2||t3||t4))
  c=c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 +c4*t4
  z=z*z+c
  iter=iter+1
  |real(z)| <= bailout
  ;SOURCE: sg-bc-bj.frm
}

BJ-BC1997e (XAXIS) {; Modified Bob Carr
                    ; modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel, c=pixel
  z1=c1=(1.5*z), z2=c2=(2.25*z), z3=c3=(3.375*z), z4=c4=(5.0625*z)
  l1=real(p1)
  l2=imag(p1)
  l3=real(p2)
  l4=imag(p2)
  bailout=16, iter=0 :
  t1=fn1(iter==l1), t2=fn2(iter==l2), t3=fn3(iter==l3), t4=fn4(iter==l4)
  z=z*(1-(t1||t2||t3||t4))
  c=c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 +c4*t4
  z=z*z+c
  iter=iter+1
  |real(z)| <= bailout
  ;SOURCE: sg-bc-bj.frm
}

BJ-BC1997f (XAXIS) {; Modified Bob Carr
                    ; modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel, c=pixel
  z1=c1=(1.5*z), z2=c2=(2.25*z), z3=c3=(3.375*z), z4=c4=(5.0625*z)
  l1=real(p1)
  l2=imag(p1)
  l3=real(p2)
  l4=imag(p2)
  bailout=16, iter=0 :
  t1=fn1(iter==l1), t2=fn2(iter==l2), t3=fn3(iter==l3), t4=fn4(iter==l4)
  c=(-0.7456,-.0186)
  c=sin(conj(-0.81256,-0.1295))+p3
  z=z*(1-(t1||t2||t3||t4))
  c=c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 +c4*t4
  z=z*z+c
  iter=iter+1
  |real(z)| <= bailout
  ;SOURCE: sg-bc-bj.frm
}

BJ-Man-Galore-g (xaxis) {; Modified Variation on Sylvie Gallet formula.
   ; George Martin [76440,1143]
   ; periodicity=0 must be set
   ; Try 50 or more for real(p1) - even multiples of
   ;    256 give interesting effects
   ; Try 1.2 - 1.8 for imag(p1)
   ; Try 1000 or more for Maximum Iterations (x menu)
  z=c=pixel, iter=0
  nextzoom = iterspace = real(p1), magnification = imag(p1):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test)
  c = c*(1 - test) + test*magnification*c
  z = fn1(z*z*z+c)
  iter = iter + 1
  |z| <= 16
  ;SOURCE: sg-bc-bj.frm
}

BJ-SG-G-1-a {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
  c = z = pixel
  z1 = c1 = fn1(1.5*z), z2 = c2 = fn2(2.25*z)
  z3 = c3 = fn3(3.375*z), z4 = c4 = fn4(5.0625*z)
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

BJ-SG-G-1-e {; Modified Sylvie Gallet [101324,3444], 1996
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
  z = z*z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}

BJ-SG-G-1-f {; Modified Sylvie Gallet [101324,3444], 1996
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
  z = z*z*z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}

BJ-SG-G-1-h {; Modified Sylvie Gallet [101324,3444], 1996
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
  z = fn2(z*z)*(z*z*z+c)
  iter = iter+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}

BJ-SG-man-lam2 {; Modified Sylvie Gallet [101324,3444], 1995
                ; requires "periodicity=0" (<g> command)
  c = z = pixel, lambda = (1.0,0.4)
  pix2 = pixel*4+0.8, compt = 0, limit = real(p1) :
  test1 = (compt<limit), test2 = (compt!=limit)
  z = (z-pix2)*test2 + pix2
  bailout = 20000 + 1000*test1   ; the bug is here...
  z2 = fn1(lambda*fn2(sin(fn3(z))))
  z = (z*z+c-z2)*test1+z2
  compt = compt+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}

BJ-SG-man-lam6 {; Modified Sylvie Gallet [101324,3444], 1995
                ; requires "periodicity=0" (<g> command)
  c = z = pixel, lambda = (1.0,0.4)
  pix2 = pixel*4+0.8, compt = 0, limit = real(p1) :
  test1 = (compt<limit), test2 = (compt!=limit)
  z = (z-pix2)*test2 + pix2
  bailout = 20000 + 1000*test1   ; the bug is here...
  z2 = fn1((lambda^p2)*fn2(sin(fn3(z))))
  z = (z*z+c-z2)*test1+z2
  compt = compt+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}

BJ-SG-man-lam7 {; Modified Sylvie Gallet [101324,3444], 1995
                ; requires "periodicity=0" (<g> command)
  c = z = pixel, lambda = (1.0,0.4)
  pix2 = pixel*4+0.8, compt = 0, limit = real(p1) :
  test1 = (compt<limit), test2 = (compt!=limit)
  z = (z-pix2)*test2 + pix2
  bailout = 20000 + 1000*test1   ; the bug is here...
  z2 = fn1((lambda^p2)*fn2(sin(fn3(z))))
  c=(-0.7456,-.0186)
  c=sin(conj(-0.81256,-0.1295))
  z = (z*z+c-z2)*test1+z2
  compt = compt+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}

BJ-SG-man-man-a {; Modified Sylvie Gallet [101324,3444], 1995
                 ; requires "periodicity=0" (<g> command)
  c1 = (0.34396372130558980 , 0.05608272738673762)
  c2 = (-0.72141758920523890 , 0.25918045895127010)
  c = z = sqr(conj(fn2(pixel))), delta = fn1(c2-c1), b = c+delta
  compt = 0, limit = real(p1), bailout = 16 :
  test1 = (compt<limit), test2 = (compt!=limit)
  z = z * test2
  c = b - delta * test1
  z = z*z+c
  compt = compt+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}

BJ-SG-man-man-c {; Modified Sylvie Gallet [101324,3444], 1995
                 ; requires "periodicity=0" (<g> command)
  c1 = (0.34396372130558980 , 0.05608272738673762)
  c2 = (-0.72141758920523890 , 0.25918045895127010)
  c = z = sqr(conj(fn1(fn2(pixel)))), delta = fn3(c2-c1), b = c+delta
  compt = 0, limit = real(p1), bailout = 16 :
  test1 = (compt<limit), test2 = (compt!=limit)
  z = z * test2
  c = b - delta * test1
  z = z*z+c
  compt = compt+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}

BJ-SG-man-newt-ee {; Modified Sylvie Gallet [101324,3444], 1995
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center+rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z+c, z4 = fn1(z2*z2), z1 = (z4*z-1)/(4*z4)
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: sg-bc-bj.frm
}

BJ-SG-man-newt-gg {; Modified Sylvie Gallet [101324,3444], 1995
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center+rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  x = real(z), y = imag(z)
  x1 = x - p2*fn1(y*y+p2*fn2(y))
  y1 = y - p2*fn1(x*x+p2*fn2(x))
  z = x1+flip(y1)
  z2 = z*z+c, z4 = fn1(z2*z2), z1 = (z4*z-1)/(4*z4)
  z = (z2)*test1 + (z-z1)*(1-test1)
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: sg-bc-bj.frm
}

BJ-SG-man-newt-h {; Modified Sylvie Gallet [101324,3444], 1995
  z = pixel, c = sqr(fn1(z)/p2)^2+0.25, iter = 1
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
  ;SOURCE: sg-bc-bj.frm
}

BJ-SG-man-newt-j {; Modified Sylvie Gallet [101324,3444], 1995
  z = pixel, c = sqrt(fn1(conj(fn2(z+pixel)))/p2)^2+0.25, iter = 1
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
  ;SOURCE: sg-bc-bj.frm
}

BJ-SG-man-newt-k {; Modified Sylvie Gallet [101324,3444], 1995
  z = pixel, c = sqrt(fn1(conj(fn2(z+pixel))/p2))^2+0.25, iter = 1
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
  ;SOURCE: sg-bc-bj.frm
}

BJ-SG-man-newt-l {; Modified Sylvie Gallet [101324,3444], 1995
  z = pixel, c = fn1(real(pixel))+fn2(sqrt(imag(pixel))), iter = 1
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
  ;SOURCE: sg-bc-bj.frm
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

Carr2003a {; Modified Sylvie Gallet frm. [101324,3444], 1996
           ; requires "periodicity=0" (<g> command)
           ; imag(p1) = scale of the Julia set
           ; p2 = center of the Julia set
           ; p3 = param for the Julia set
  z = c = pixel
  c1 = p3
  z1=imag(p1-cos(pixel))*z-p2, iter=0
  limit=real(p1), bailout = 16 :
  test = (iter==limit)
  z=fn1(z*(1-test))+fn2(z1*test), c=fn3(c*(1-test))+fn4(c1*test)
  z=z*z+c
  iter=iter+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}

man-jul-BJ6a {; Modified Sylvie Gallet [101324,3444], 1995
              ; requires "periodicity=0" (<g> command)
  z = pixel, c = z, z2 = z*z, z3 = z*z2
  compt=0, limit = real(p1), bailout = 4
  p = (-0.743380900000982,-0.131850030300002) :
  test = (compt<limit)
  num = (z3 + p2*z2 + 1)^.5
  denom = (1.5*z2 + p2*z)/num
  c = c*test+p*(1-test)
  z = fn1(z) - (num/denom)
  z2 = z*z
  z3 = z*z2
  z = z*z+c
  compt = compt+1
  p3 <= |z3 + p2*z2 + 1|
  ;SOURCE: sg-bc-bj.frm
}

newton-z3fnBJ2 {; Sylvie Gallet [101324,3444], 1995
                ; equation z^3-1 = 0
                ; solution z = 1
  z = fn1(pixel), z1 = fn2(pixel) :
  z = (z1+z-1/(z*z))/3 ; <==> z-(z*z2-1)/(3*z2)
  |z-(1.0,0.0)| >= real(p1)
  ;SOURCE: sg-bc-bj.frm
}

zmincoszb {; David Walter
  z =c= pixel:
  z10=z*z+c
  fz = z - cos(z10)
  fdashz = 1 + sin(z)
  z = z - fz/(fdashz + P1)
  0.0001 <= |fz|
  ;SOURCE: sg-bc-bj.frm
}

