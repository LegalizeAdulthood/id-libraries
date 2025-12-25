mandel-newton_j4 {; Modified Sylvie Gallet Frm [101324,3444], 1995
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center+rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = fn1(fn2(z*z+c)), z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+fn3(c))*test1 + (z-z1)*(1-test1) 
  iter = iter+(3.099,-3.099)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bej4.frm
}
 
mandel-newton_j6c {; Modified Sylvie Gallet Frm [101324,3444], 1995
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center/rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  c=(-0.7456,-0.0186)
  c=fn1(sin(conj(-0.81256,-0.1295)))
  z = (z-zn)*test2 + zn
  z2 = (z*z)-(zn), z4 = (z2*z2), z1 = (z4*z-1)/(4*z4)
  z = (z2+(c))*test1 + (z-z1)*(1-test1) 
  iter = iter+(3.099,-3.099)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bej4.frm
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
 
BEJ_N13 {; Revised for Fractint v. 20 by George Martin
         ; Second line was
         ; z*z*z=z^sqr(5+1/p1)*(-1+3/p2)
  z=pixel, c=atan(pixel):
  z=z^sqr(5+1/p1)*(-1+3/p2)
  zsqr=z*z
  x = (1.5+z^p1)^(1/p1)
  z = z*(1+y)/(1-x) + p2
  z=fn1(z)+c
  z=fn2(z)-c
  |z| <4
  ;SOURCE: bej's.frm
}
 
