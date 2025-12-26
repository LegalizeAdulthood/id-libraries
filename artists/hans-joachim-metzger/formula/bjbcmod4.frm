BJ-SG-man-newt-dd {; Modified Sylvie Gallet [101324,3444], 1995
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center+rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = fn1(z*z)/(z*z*z), z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: msg-1.frm
}
 
mandel-newton_j6g {; Modified Sylvie Gallet Frm [101324,3444], 1995
                   ; Revised for Fractint v20 by G. Martin
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center/rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  c1=(-0.7056,-0.0086)
  c=fn1(fn2(conj(-0.80256,-0.1095)))
  z = (z-zn)*test2 + zn
  z2 = (z^2+(-0.6956,0.10)+(test1/7*pixel)), z4 = (z2*z2) 
  z1 = (z4*z-1)/(4*z4)
  z = (z2+(c))*test1 + (z-z1)*(1-test1) 
  iter = iter+(3.099,-3.099)
  ((|z2| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bej4.frm
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
 
