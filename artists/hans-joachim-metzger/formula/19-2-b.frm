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
 
