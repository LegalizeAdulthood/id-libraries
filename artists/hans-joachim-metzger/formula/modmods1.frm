G-1-test002 {; Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel, x = real(z), y = imag(z) 
  x1 = x - p2*fn1(y+p3*fn2(y)) 
  coracao=x1+flip(y1)
  y1 = y - p2*fn1(x+p3*fn2(x))
  z1 = c1 = 1.5*z, z2 = c2 = fn3(coracao)
  l1 = real(p1), l2 = imag(p1) 
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2) 
  z = z*(1-(t1||t2)) + z1*t1 + z2*t2 
  c = c*(1-(t1||t2)) + c1*t1 + c2*t2 
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: bej011.frm
}
 
G-1-test005 {; Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel, x = real(z), y = imag(z)
  x1 = x - p2*fn1(y*y+p3*fn2(y)), coracao=x1+flip(y1)
  y1 = y - p2*fn1(x*x+p3*fn2(x))
  z1 = c1 = 1.5*z, z2 = c2 = fn3(coracao)
  l1 = real(p1), l2 = imag(p1) 
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2) 
  z = z*(1-(t1||t2)) + z1*t1 + z2*t2 
  c = c*(1-(t1||t2)) + c1*t1 + c2*t2 
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: bej011.frm
}
 
G-1-test006 {; Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel, x = real(z), y = imag(z) 
  x1 = x - p2*fn1(y*y+p3*fn2(y)), coracao=x1+flip(y1)
  y1 = y - p2*fn1(x*x+p3*fn2(x))
  z1 = c1 = 1.5*z, z2 = c2 = fn3((coracao)*pixel)
  l1 = real(p1), l2 = imag(p1) 
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2) 
  z = z*(1-(t1||t2)) + z1*t1 + z2*t2 
  c = c*(1-(t1||t2)) + c1*t1 + c2*t2 
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: bej011.frm
}
 
G-1-test007 {; Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel, x = real(z), y = imag(z)
  x1 = x - p2*fn1(y*y+p3*fn2(y)), coracao=x1+flip(y1)
  y1 = y - p2*fn1(x*x+p3*fn2(x))
  z1 = c1 = 1.5*z, z2 = c2 = fn3((coracao)/pixel*pixel)
  l1 = real(p1), l2 = imag(p1) 
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2) 
  z = z*(1-(t1||t2)) + z1*t1 + z2*t2 
  c = c*(1-(t1||t2)) + c1*t1 + c2*t2 
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: bej011.frm
}
 
G-1-test017 {; Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
   ; Edited for Fractint v20 by G. Martin
  c = z = pixel, x = real(z), y = imag(z)
  x1 = x - p2*fn1(y*y+p3*fn2(y)), coracao=x1+flip(y1)
  y1 = y - p2*fn1(x*x+p3*fn2(x))
  z1 = c1 = atan(fn3((coracao)*pixel))
  l1 = real(p1), l2 = imag(p1) 
  bailout = 16, iter = 0 :
  t1 = (iter==l1) 
  z = z*(1-(t1)) + z1*t1 
  c = c*(1-(t1)) + c1*t1
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: bej011.frm
}
 
mans-galore-011 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel/(1.0,0.1), iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x))
  z = z*(1 - test) + x1+flip(y1)
  c = c*(1 - test) + test*magnification*c
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}
 
mans-galore-012 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + x1+flip(y1)
  c = c*(1 - test) + test*magnification*c
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}
 
mans-galore-013 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143] 
                 ; Modified Mans-Galore & Gallet 3-02  
  z=c=pixel, iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + x1+flip(y1) 
  z = z*(1 - test) + y1+flip(x1) 
  c = c*(1 - test) + test*magnification*c
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}
 
mans-galore-018 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
                 ; Revised for Fractint v20 by G. Martin
  z=c=pixel, iter=0, x = real(z), y = imag(z) 
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + x1+flip(y1)
  c = c*(1 - test) + test*magnification*c
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}
 
mans-galore-019 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + x1+flip(y1)
  c = c*(1 - test) + test*magnification*c
  z = fn3(z)*fn4(z)+c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}
 
mans-galore-020 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + x1+flip(y1)
  c = c*(1 - test) + test*magnification*c
  z = fn3(z*z+c)
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}
 
mans-galore-021 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + y1+flip(x1)
  c = c*(1 - test) + test*magnification*c
  z = fn3(z*z+c)
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}
 
mans-galore-022 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + y1+y1+flip(x1+x1)
  c = c*(1 - test) + test*magnification*c
  z = fn3(z*z+c)
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}
 
mans-galore-024 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel,  iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + fn4(x1+flip(y1))
  c = c*(1 - test) + test*magnification*c
  z = fn3(z)*z+c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}
 
