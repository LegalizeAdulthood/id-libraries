Carr1900 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = z, iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = ((z2+c)/(|c|))*test1 + (z-z1)*(1-test1) 
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1901 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = z, iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = (z*z+c+(0.1/pixel))*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1902 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel-1/pixel, c=pixel,
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1903 {; Modified Sylvie Gallet frm.  REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c=pixel,
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4+z2, z1 = (z6*z-2)/(4*z6 + (z6==0))
  z = (z2+c)*test1 + (z-tan(z1))*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1904 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = ((pixel-z2+c)/(pixel-c*c))*test1 + (z-z1)*(1-test1) 
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1905 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = ((z^4)*(c^4) + c)*test1 + (z-z1)*(1-test1) 
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1907 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = (sqr(sqr(z)+c^4)-c)*test1 + (z-z1)*(1-test1) 
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1908 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = ((4 * z * z) / (1/sin(z) + 4) + c)*test1 + (z-z1)*(1-test1) 
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1909 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z =  c = 1/(pixel-conj(1/pixel)-flip(1/pixel))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = ((4 * z * z) / (1/cotanh(z) + 4) + c)*test1 + (z-z1)*(1-test1) 
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1910 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z =  c = 1/(pixel-conj(1/pixel)-flip(1/pixel))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = ((4 *sin(z2)) / (z + 4) + c)*test1 + (z-z1)*(1-test1) 
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1911 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z =  c = pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  test3 = (test3 || (|z|>b1))
  z = (z*(1-tanh(test3 && test0 && test1)))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1912 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = pixel
  iter = 1, rad = 3, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = 0.79*(z2+c)*test1 + ((z-z1)*(1-test1)) 
  test3 = (test3 || (|z|>b1))
  z = (z*(1-tanh(cabs(test3 && test0 && test1))))
  iter = real(iter)+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1913 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z =pixel, c = (pixel-conj(1/pixel)-flip(1/pixel))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = 0.79*(z2+c)*test1 + ((z-z1)*(1-test1)) 
  test3 = (test3 || (|z|>b1))
  z = (z*(1-tanh(cabs(test3 && test0 && test1))))
  iter = real(iter)+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1914 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z =pixel, c = pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = (z2+c-0.099/pixel)*test1 + ((z-z1)*(1-test1)) 
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1915 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z =pixel, c = pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = (real(z2)*z4+c)*test1 + ((z-z1)*(1-test1)) 
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1916 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z =pixel, c = pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = (sqr(z1)*z2+c)*test1 + ((z-z1)*(1-test1)) 
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1917 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z =imag(pixel), c =(tan(pixel)+sin(pixel)-1/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1918 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z =imag(pixel), c =pixel-((tan(pixel)+sin(pixel)-1/pixel))/10
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1919 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z =imag(pixel), c =pixel-((tan(pixel)+sin(pixel)-1/pixel))/10
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  c=z+c/2.125
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1920 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = c = pixel-1/log(1/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1921 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = c = pixel-1/log(1/pixel)+1/sqrt(1/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+4
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1922 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c =(-0.63,-0.4)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+0.9
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1923 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c =(-0.7456,0.2)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1924 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c =(-0.7456,0.2)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  c=z+c/2.125
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1925 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = (-0.7456,0.21)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z4+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1926 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = (-0.7456,0.21)*(0.3,0.6)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z4+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
 
Carr1928 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = (-0.7456,0.2)/pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+1/c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1929 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = sqr(-0.63,-0.4)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1930 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = (-0.7456,0.21)*(0.3,0.6)
  iter = 1, rad = 6, center = (4.0,0.4)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+2
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1931 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  c = (1/(1/(1/(1/pixel))))+pixel, z=pixel
  iter = 1, rad = 6, center = (4.0,0.4)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1932 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=pixel, c=pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+(-0.7564,0.21978)+(c/10))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1933 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=pixel, c=exp(pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+(-0.7564,0.21978)+(c/5))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+2.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1934 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=pixel, c=exp(pixel+0.5)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+(-0.7456,0.10)+(c/7*pixel))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+2.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1935 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=pixel, c=((-0.7456,0.39562)*(|(-0.7456,0.2)|<=0)+(-0.7456,0.2))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(4.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1936 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=pixel-(1/pixel)^4.13, c=(-0.7456,0.2)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+5.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1937 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=cotan(pixel*pixel+1), c=sqr(1/pixel*0.91/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1938 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  c=sin(pixel)/2^pixel, z=pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c+real(z/5))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1939 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=c=(conj(1/pixel)^2.32)-1.25
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c+real(z/5))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1940 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=c=(tan(1/pixel)^2.32)-1.25
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c+real(z/5))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1941 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=pixel, c=(0.9/-2.48)-conj(0.2/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c+real(z/5))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1942 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=1/(pixel+sin(pixel)-(2.5/pixel-0.124)), c=sin(z*pixel-1/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c+real(z/5))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1943 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=1/(pixel+tan(pixel)-(2.5/pixel-0.124))
  c=sin(sin(z)*pixel-cotanh(1/pixel))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c+real(z/5))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1944 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=1/(pixel+cos(pixel)-(2.5/pixel-0.124))
  c=sin(tan(z)*pixel-cosxx(1/pixel))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c+real(z/5))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1945 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  c=(pixel-1)/(flip(1/pixel*0.91/pixel)+sin(1/pixel))
  z=pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c+real(z/5))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1946 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=(2*pixel)/(conj(1/pixel*0.88/pixel))
  c=(1.9/pixel)/cosh(z*z-1.2/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75;(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1947 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=0.75/pixel-sqrt(1/pixel)
  c=sin(1/pixel)/cosxx(1.5/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1948 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=conj(0.75/pixel-sqrt(1.5/pixel))
  c=sin(1/pixel)/cosxx(1.5/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1949 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  b1=1/(conj(pixel)-sqrt(1/pixel)-log(1/pixel)-0.9)
  z=pixel-(1/(pixel-conj(1/(b1))-(exp(1/(exp(pixel+0.45))))))
  c=1/(pixel+((sqrt(1/pixel))/(log(1/pixel)))-conj(b1))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1950 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  b1=1/(conj(pixel)-sqrt(1/pixel)-log(1/pixel)-0.9)
  z=1/(pixel-conj(1/pixel)-flip(1/pixel))
  c=1/(pixel+((sqrt(1/pixel))/(log(1/pixel)))-conj(b1))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = ((4 *z2) / (z + 4) + c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1951 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=1/(pixel-conj(1/pixel)-flip(1/pixel))
  c=sin(1/pixel)/cosxx(1.5/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = ((4 *z2) / (z + 4) + c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1952 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=1/(pixel-conj(1/pixel)-exp(1/pixel))
  c=1/(pixel+cosxx(1/(sqr(cos(pixel+conj(1/pixel)))))-1)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1953 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  c1=(-0.7456,0.2)
  c=(tan(1/pixel)/tan(pixel-conj(1/pixel)-flip(1/pixel)))/9+c1
  z=(tan(1/pixel-(c*c)))/(9+c1+c)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1954 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  c1=(-0.3,0.6)
  c=(cos(1/pixel)/cos(pixel-conj(1/pixel)-flip(1/pixel)))/9+c1
  z=(tan(1/pixel-(c*c)))/(9+c1+c)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1955 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=1/(pixel-sin(1/pixel)-tan(1/pixel))
  c=conj(pixel-conj(1/pixel))/(4+tan(conj(z*z-conj(7/pixel))))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1956 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=1/tan(1/pixel)
  c=1/(pixel-conj(1/z^z*z+z))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1957 (XYAXIS) {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
   ; limit = real portion of P1    (requires periodicity=0)
   ; iter <= limit ==> Mandelbrot set of  z^7+c
   ; iter >  limit ==> Newton's method applied to  z^6-1 = 0
  limit = real(p1), test0 = 1, test3=0, iter = 1 
  z = 1/(pixel-sin(1/pixel)-tan(1/pixel)) 
  c = 1/(pixel-conj(1/pixel)-flip(1/pixel)) 
  b1 = 64, b2 = 0.000001, zn = pixel :
  test1 = (iter<limit), test2=(iter!=limit), test0 = 1-test0 
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, d = 4*z4*z 
  z = (z*n+z+c)*test1 + (z-n/(d + (d==0)))*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 * test0 * test1))
  iter = real(iter)+1          ; (1.099,0.0)
  ((|z|<=b1)*test1) || ((|n|>=b2)*(1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1958 (XYAXIS) {; Modified Sylvie Gallet frm. [101324,3444],  
   ; Revised for compatability with Fractint v. 19.3 4/12/96
   ; Version of this formula in original 42carr.frm should be deleted.
   ; limit = real portion of P1    (requires periodicity=0)
   ; iter <= limit ==> Mandelbrot set of  z^7+c
   ; iter >  limit ==> Newton's method applied to  z^6-1 = 0
  limit = real(p1), test0 = 1, test3=0, iter = 1 
  z = 1/(pixel-sin(1/pixel)-tan(1/pixel)) 
  c = 1/(pixel-conj(1/pixel)-flip(1/pixel)) 
  b1 = 64, b2 = 0.000001, zn = pixel :
  test1 = (iter<limit), test2=(iter!=limit), test0 = 1-test0 
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, d = 4*z4*z 
  z = (z*n+z+c+(-0.7456,0.2))*test1 + (z-n/(d + (d==0)))*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 * test0 * test1))
  iter = real(iter)+2
  ((|z|<=b1)*test1) || ((|n|>=b2)*(1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1959 {; Modified Sylvie Gallet frm. [101324,3444], REVISED 4/12/96 
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
   ; limit = real portion of P1    (requires periodicity=0)
   ; iter <= limit ==> Mandelbrot set of  z^7+c
   ; iter >  limit ==> Newton's method applied to  z^6-1 = 0
  limit = real(p1), test0 = 1, test3=0, iter = 1 
  z=pixel, c =pixel
  b1 = 64, b2 = 0.000001, zn = pixel :
  test1 = (iter>limit*(1/-pixel)), test2=(iter!=limit), test0 = 1-test0 
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, d = 4*z4*z 
  z = (z*n+z+c)*test1 + (z-n/(d + (d==0)))*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 * test0 * test1))
  iter = iter-3.75
  ((|z|<=b1)*test1) || ((|n|>=b2)*(1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1960 {; Modified Sylvie Gallet Frm.
  z= c=1/(pixel-conj(1/pixel)-flip(1/pixel))
  compt=0, limit=real(p1), bailout=4
  p=(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: 42carr.frm
}
 
Carr1961 {; Modified Sylvie Gallet frm.
  z=1/(pixel-conj(1/pixel)-flip(1/pixel)), c=(-0.63,0.4)
  compt=0, limit=real(p1), bailout=4
  p=(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: 42carr.frm
}
 
Carr1962 {; Modified Sylvie Gallet frm.
  z =imag(pixel), c =tan(pixel)+sin(pixel)-1/pixel
  compt=0, limit=real(p1), bailout=4
  p=(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: 42carr.frm
}
 
Carr1963 {; Modified Sylvie Gallet frm.
  z= c =pixel-1/log(1/pixel)
  compt=0, limit=real(p1), bailout=4
  p=conj(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |real(z)|<=bailout
  ;SOURCE: 42carr.frm
}
 
Carr1964 {; Modified Sylvie Gallet frm.
  z= c =pixel-1/sqrt(cos(1/pixel))
  compt=0, limit=real(p1), bailout=4
  p=conj(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |real(z)|<=bailout
  ;SOURCE: 42carr.frm
}
 
Carr1965 {; Modified Sylvie Gallet frm.
  z= c =pixel
  compt=0, limit=real(p1), bailout=4
  p=conj(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=(z+c/2.125)*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |real(z)|<=bailout
  ;SOURCE: 42carr.frm
}
 
Carr1966 {; Modified Sylvie Gallet frm.
  z= c =pixel
  compt=0, limit=real(p1), bailout=4
  p=conj(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=tan(c)*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |real(z)|<=bailout
  ;SOURCE: 42carr.frm
}
 
Carr1967 {; Modified Sylvie Gallet frm.
  z=c=pixel
  compt=0, limit=real(p1), bailout=4
  p=conj(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |real(1-z)|<=bailout
  ;SOURCE: 42carr.frm
}
 
Carr1969 {; Modified Sylvie Gallet frm.
  z=c=pixel+(-0.743380900000982,-0.131850030300002) 
  compt=0, limit=real(p1), bailout=4
  p=(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+(-0.7564,0.21978)+(c/10)
  compt=compt+1
  |z|<=bailout
  ;SOURCE: 42carr.frm
}
 
Carr1970 {; Modified Sylvie Gallet frm.
  c=z=pixel 
  compt=0, limit=real(1.5/p1), bailout=4
  p=(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: 42carr.frm
}
 
Carr1971 {; Modified Sylvie Gallet frm.
  c=z=pixel 
  compt=0, limit=real(p1/pixel), bailout=4
  p=(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: 42carr.frm
}
 
Carr1972 {; Modified Sylvie Gallet frm.
  c=z=pixel 
  compt=0, limit=sqrt(p1), bailout=4
  p=(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: 42carr.frm
}
 
Carr1973 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=pixel
  c=pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = abs(p1/pixel)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1)) 
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1974 {; Modified Sylvie Gallet frm.
  c=z=pixel, d=log(1/pixel-conj(1/pixel))
  compt=0, limit=(abs(p1/5)), bailout=4
  p=(0.9/-2.48)-1.00763 :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c-real(d/5*pixel)
  compt=compt+0.39
  |z|<=bailout
  ;SOURCE: 42carr.frm
}
 
Carr1975 {; Modified Sylvie Gallet frm.
  z=exp(pixel), c=1+flip(imag(pixel))+conj(1/pixel) 
  d=log(1/pixel-conj(1/pixel))
  compt=0, limit=(abs(p1/10)), bailout=4.9
  p=(-0.743380900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c-real(d/5*pixel)
  compt=compt+0.19
  |z|<=bailout
  ;SOURCE: 42carr.frm
}
 
Carr1976 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
   ; Revised for Fractint v20 by G. Martin
  z=sqr(pixel)
  c=pixel-(1.099,0.0)/3
  iter=1, rad=6, center=(1.0,0.1)
  pix=exp(10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1/(tan(1/pixel)))
  test0=1, b1=16, b2=0.0001, test3=0: 
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+zn
  z2=z*z, z4=z2*z2, z1=(z4*z-10*pixel)/(4*z4 + (z4==0))
  z=(z2+c)*test1+((z-z1)*(1-test1)) 
  test3=(test3 || (|z|>b1))
  z=(z*(1-(test3 && test0 && test1)))
  iter=iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1927 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z-1/pixel|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr1968 {; Modified Sylvie Gallet frm.
  z=c=pixel
  compt=0, limit=real(p1), bailout=4
  p=(-0.7259,0.205999) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: 42carr.frm
}
 
