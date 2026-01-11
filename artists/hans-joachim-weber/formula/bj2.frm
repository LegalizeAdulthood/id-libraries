BEJ_N41 {
  z=c=pixel, maria=sqr(z)+log(z):
  z=fn1(z)+p1/(maria+pixel)
  z=(z*z+c)
  |z|<4
  ;SOURCE: bej-mari.frm
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

BJ-SG-man-newt-p {; Modified Sylvie Gallet [101324,3444], 1995
  z = pixel, c = c=sin(fn1(sqrt(log(1/pixel*0.91/pixel)))), iter = 1
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
  ;SOURCE: msg-1.frm
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

mandel-newton_j6e {; Modified Sylvie Gallet Frm [101324,3444], 1995
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center/rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit), test3=(zn^limit)
  c=(-0.7456,-0.0186)
  c=sin(conj(-0.81256,-0.1295))
  z = (z-zn)*test2 + zn
  z2 = fn1(z*z/c)-(zn), z4 = (z2*z2), z1 = (z4*z-1)/(4*z4)
  z = (z2+(c))*test1 + (z-z1)*(1-test1)
  iter = iter+(2.079,-2.079)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bej4.frm
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

BEJ-N187 {
  z=c=pixel, q=sin(conj(0.1,1.0)):
  z1=fn1(z/sqrt(pixel+1))/q
  z=fn1(z)/imag(p1)*fn2(z)/real(p1)+c
  |real(z)|<4
  ;SOURCE: bej0015.frm
}

BEJ_N28C_B {; Revised for Fractint v. 20 by George Martin
            ; Fourth line began
            ; z3=z^(zsqr=z*z)
            ; Also, sqrz was defined and never used
            ; fn1 used as a variable
  z=pixel:
  z1=z*fn1(z*fn2(z))
  z2=sqr(z)/fn1(z)
  z3=z^(z*z), zsin=(c+p1^1.5)*(c+p1/1.2)
  z=(z*1)/(c+p2), z=fn1(z), z=fn2(z)
  |z|<4
  ;SOURCE: bej's.frm
}

Modified_a { ; Gallet-3-11 Sylvie Gallet [101324,3444], 1996
  z=fn1(pixel^p1/p2+p2*pixel/fn2(p1^pixel)), p=p2/p1:
  z = z*p
  (z+p) <= p1
  ;SOURCE: bej's2.frm
}

Tim's_Newton {; Modified Newt_ellipt_oops by Tim Wegner
              ; Use floating point.
  z = pixel, z2 = z*z, z3 = z*z2:
  num = (z3 + fn1(p1)*z2 + 1)^.5
  denom = (1.5*z2 + p1*z)/num
  z = z - (num/denom)
  z2 = z*z+c
  z3 = z*z2
  fn2(p2) <= |z3 + p1*z2 + 1|
  ;SOURCE: bej's2.frm
}
Tim's_Newton_a {
  z = pixel, z2 = z*z, z3 = z*z2:
  num = (z3 + p1*z2 + 1)^.5
  denom = (1.5*z2 + p1*z)/num
  z = z - (num/denom)
  z2 = z*z+c
  z3 = z*z2
  p2 <= |z3 + p1*z2 + 1|
  ;SOURCE: bej's2.frm
}
Tim's_Newton_b {; Modified Newt_ellipt_oops by Tim Wegner
                ; Use floating point.
  z = pixel, z2 = z*z, z3 = z*z2
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  num = (z3 + fn1(p1)*z2 + 1)^.5
  denom = (1.5*z2 + p1*z)/num
  z = z - (num/denom)
  z = sqr(z) + p1
  z2 = z*z+c
  z3 = z*z2
  fn2(p2+t) <= |z3 + p1*z2 + 1|
  ;SOURCE: bej's2.frm
}
