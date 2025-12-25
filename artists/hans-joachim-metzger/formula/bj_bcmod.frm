BJ-BC1974 {; Modified Bob Carr frm from a modified Sylvie Gallet frm.
  c=z=pixel, d=log(1/pixel-conj(1/pixel))
  compt=0, limit=(abs(p1/5)), bailout=4
  p=(0.9/-2.48)-1.00763 :
  test=(compt<limit)+fn1(c)
  c=c*test+p*(1-test)
  z=z*z+c-real(d/5*pixel)
  compt=compt+0.39
  |z|<=bailout
  ;SOURCE: bej's.frm
}
 
BEJ_22 {
  z=pixel:
  z=z*z*z
  z1=z*z*z*z
  z=fn1(z1)+pixel
  |z|<4
  ;SOURCE: bej's.frm
}
 
BEJ_25 {
  z=pixel:
  z1=z*z*z
  z2=z+pixel
  z3=z*z+(z*z)
  z=fn1(z3)+pixel
  |z|<=4
  ;SOURCE: bej's.frm
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
 
BEJ_N24 {
  z=pixel, c=pixel:
  z1=z*z
  z2=(z*p1)^(z+p2)
  z=fn1(z2)+pixel
  |z|<4
  ;SOURCE: bej's.frm
}
 
BEJ_N4 {
  z=c=pixel:
  zsqr=z*z
  zsin=(c+p1^1.5)*(c+p1/1.2)
  z=(z*1)/(c+p2)
  z=fn1(z)
  z=fn2(z)
  |z|<4
  ;SOURCE: bej's.frm
}
 
BJ_Newton1 {
  z=pixel, Root=1:
  z=fn1(fn2(z*z+c))
  z1=sqr(z)
  z2=log(z)/z1+1
  z3=z+p1*z2/(cos(z)+z1)
  .0004<|z+Root|
  ;SOURCE: bej3.frm
}
 
gallet-2-07b {; Modified Sylvie Gallet frm [101324,3444], 1995
              ; (sin z)^p1 + z = 0 solution = 0
  z = pixel, c=pixel:
  z1=z*z+c
  sqrz = flip(z)
  z0 = recipz^(p1-1), z1 = (sqrz*z0+z)/(p1*z0*acosh(z)+1)
  z =fn1(fn2(z+z1))
  |z1| >= 0.000001
  ;SOURCE: bej3.frm
}
 
gallet-2-07e {; Modified Sylvie Gallet frm [101324,3444], 1995
              ; (sin z)^p1 + z = 0 solution = 0
  z = pixel, c=pixel, Root=1:
  z1=z*z+c
  sqrz = flip(z)
  z0 = recipz^(p1-1), z1 = (sqrz*z0+z)/(p1*z0*acosh(z)+1)
  z =Root-fn1(fn2(z*z+c))+pixel/p1
  |z1-Root| >= 0.000001
  ;SOURCE: bej3.frm
}
 
mandel-newton_a {; Modified Sylvie Gallet frm [101324,3444], 1995
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (-3.6,-3.0)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = fn1(center+rad)/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bej3.frm
}
 
NewNewton_a {
  z = pixel+1/fn1(p2 * pixel-p1)  + 1/fn2(p2 * pixel), Root = 1:
  z = (4 * z^5 + Root) / fn1(fn2(4*z^5+1)/(5*z^4)) 
  0.001<=|z^5-Root+1|
  ;SOURCE: bej3.frm
}
 
