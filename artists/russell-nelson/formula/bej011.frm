mans-galore-011 {; Variation on Sylvie Gallet formula. 
	       ; George Martin [76440,1143]
               ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel/(1.0,0.1), iter=0 , x = real(z) , y = imag(z)
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
  }

mans-galore-012 {; Variation on Sylvie Gallet formula. 
	       ; George Martin [76440,1143]
               ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0 , x = real(z) , y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1),
  x1 = x - p2*fn1(y+p3*fn2(y)),
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + x1+flip(y1)
  c = c*(1 - test) + test*magnification*c
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  }

mans-galore-013 {; Variation on Sylvie Gallet formula. 
	       ; George Martin [76440,1143]	
               ; Modified Mans-Galore & Gallet 3-02  
  z=c=pixel, iter=0 , x = real(z) , y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1),
  x1 = x - p2*fn1(y+p3*fn2(y)),
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + x1+flip(y1) 
  z = z*(1 - test) + y1+flip(x1) 
  c = c*(1 - test) + test*magnification*c
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  }

G-1-test002    {; Sylvie Gallet [101324,3444], 1996
  ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
  c = z = pixel , x = real(z) , y = imag(z), x1 = x - p2*fn1(y+p3*fn2(y)), coracao=x1+flip(y1)
  y1 = y - p2*fn1(x+p3*fn2(x))
  z1 = c1 = 1.5*z , z2 = c2 = fn3(coracao) ,
  l1 = real(p1) , l2 = imag(p1) , 
  bailout = 16 , iter = 0 :
   t1 = (iter==l1) , t2 = (iter==l2) , 
   z = z*(1-(t1||t2)) + z1*t1 + z2*t2 
   c = c*(1-(t1||t2)) + c1*t1 + c2*t2 
   z = z*z+c
   iter = iter+1
    |z| <= bailout
  }

G-1-test005    {; Sylvie Gallet [101324,3444], 1996
  ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
  c = z = pixel , x = real(z) , y = imag(z), x1 = x - p2*fn1(y*y+p3*fn2(y)), coracao=x1+flip(y1)
  y1 = y - p2*fn1(x*x+p3*fn2(x))
  z1 = c1 = 1.5*z , z2 = c2 = fn3(coracao) ,
  l1 = real(p1) , l2 = imag(p1) , 
  bailout = 16 , iter = 0 :
   t1 = (iter==l1) , t2 = (iter==l2) , 
   z = z*(1-(t1||t2)) + z1*t1 + z2*t2 
   c = c*(1-(t1||t2)) + c1*t1 + c2*t2 
   z = z*z+c
   iter = iter+1
    |z| <= bailout
  }

G-1-test006    {; Sylvie Gallet [101324,3444], 1996
  ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
  c = z = pixel , x = real(z) , y = imag(z), x1 = x - p2*fn1(y*y+p3*fn2(y)), coracao=x1+flip(y1)
  y1 = y - p2*fn1(x*x+p3*fn2(x))
  z1 = c1 = 1.5*z , z2 = c2 = fn3((coracao)*pixel) ,
  l1 = real(p1) , l2 = imag(p1) , 
  bailout = 16 , iter = 0 :
   t1 = (iter==l1) , t2 = (iter==l2) , 
   z = z*(1-(t1||t2)) + z1*t1 + z2*t2 
   c = c*(1-(t1||t2)) + c1*t1 + c2*t2 
   z = z*z+c
   iter = iter+1
    |z| <= bailout
  }

G-1-test007    {; Sylvie Gallet [101324,3444], 1996
  ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
  c = z = pixel , x = real(z) , y = imag(z), x1 = x - p2*fn1(y*y+p3*fn2(y)), coracao=x1+flip(y1)
  y1 = y - p2*fn1(x*x+p3*fn2(x))
  z1 = c1 = 1.5*z , z2 = c2 = fn3((coracao)/pixel*pixel) ,
  l1 = real(p1) , l2 = imag(p1) , 
  bailout = 16 , iter = 0 :
   t1 = (iter==l1) , t2 = (iter==l2) , 
   z = z*(1-(t1||t2)) + z1*t1 + z2*t2 
   c = c*(1-(t1||t2)) + c1*t1 + c2*t2 
   z = z*z+c
   iter = iter+1
    |z| <= bailout
  }

G-1-test017    {; Sylvie Gallet [101324,3444], 1996
  ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
  c = z = pixel , x = real(z) , y = imag(z), fn1 = recip , fn2 = log ,
  x1 = x - p2*fn1(y*y+p3*fn2(y)), coracao=x1+flip(y1)
  y1 = y - p2*fn1(x*x+p3*fn2(x))
  z1 = c1 = atan(fn3((coracao)*pixel)) ,
  l1 = real(p1) , l2 = imag(p1) , 
  bailout = 16 , iter = 0 :
   t1 = (iter==l1) , 
   z = z*(1-(t1)) + z1*t1 
   c = c*(1-(t1)) + c1*t1
   z = z*z+c
   iter = iter+1
    |z| <= bailout
  }

mans-galore-018 {; Variation on Sylvie Gallet formula. 
	       ; George Martin [76440,1143]
	       ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0 , x = real(z) , y = imag(z) , fn1 = flip(sqr(recip)) , fn2 = flip(sqr(log(z))) ,
  nextzoom = iterspace = real(p1), magnification = imag(p1),
  x1 = x - p2*fn1(y+p3*fn2(y)),
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + x1+flip(y1)
  c = c*(1 - test) + test*magnification*c
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  }

mans-galore-019 {; Variation on Sylvie Gallet formula. 
	       ; George Martin [76440,1143]
	       ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0 , x = real(z) , y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1),
  x1 = x - p2*fn1(y+p3*fn2(y)),
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + x1+flip(y1)
  c = c*(1 - test) + test*magnification*c
  z = fn3(z)*fn4(z)+c
  iter = iter + 1
  |z| <= 16
  }

mans-galore-020 {; Variation on Sylvie Gallet formula. 
	       ; George Martin [76440,1143]
	       ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0 , x = real(z) , y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1),
  x1 = x - p2*fn1(y+p3*fn2(y)),
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + x1+flip(y1)
  c = c*(1 - test) + test*magnification*c
  z = fn3(z*z+c)
  iter = iter + 1
  |z| <= 16
  }

mans-galore-021 {; Variation on Sylvie Gallet formula. 
	       ; George Martin [76440,1143]
	       ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0 , x = real(z) , y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1),
  x1 = x - p2*fn1(y+p3*fn2(y)),
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + y1+flip(x1)
  c = c*(1 - test) + test*magnification*c
  z = fn3(z*z+c)
  iter = iter + 1
  |z| <= 16
  }

mans-galore-022 {; Variation on Sylvie Gallet formula. 
	       ; George Martin [76440,1143]
	       ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0 , x = real(z) , y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1),
  x1 = x - p2*fn1(y+p3*fn2(y)),
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + y1+y1+flip(x1+x1)
  c = c*(1 - test) + test*magnification*c
  z = fn3(z*z+c)
  iter = iter + 1
  |z| <= 16
  }

mans-galore-024 {; Variation on Sylvie Gallet formula. 
	       ; George Martin [76440,1143]
               ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel,  iter=0 , x = real(z) , y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1),
  x1 = x - p2*fn1(y+p3*fn2(y)),
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + fn4(x1+flip(y1))
  c = c*(1 - test) + test*magnification*c
  z = fn3(z)*z+c
  iter = iter + 1
  |z| <= 16
  }

mans-galore-027 {; Variation on Sylvie Gallet formula. 
	       ; George Martin [76440,1143]
	       ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0 , x = real(z) , y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1),
  x1 = x - p2*fn1(y+p3*fn2(y)),
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + fn3(x1)+flip(fn4(y1))
  c = c*(1 - test) + test*magnification*c
  z = z*z+c
  iter = iter + 1
  |z| <= 16
  }

mans-galore-029 {; Variation on Sylvie Gallet formula. 
	       ; George Martin [76440,1143]
	       ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0 , x = real(z) , y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1),
  x1 = x - p2*fn1(y+p3*fn2(fn3(y))),
  y1 = y - p2*fn1(x+p3*fn2(fn3(x))):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + fn4(x1)+flip(fn4(y1))
  c = c*(1 - test) + test*magnification*c
  z = z*z+c
  iter = iter + 1
  |z| <= 16
  }

mans-galore-032 {; Variation on Sylvie Gallet formula. 
	       ; George Martin [76440,1143]
	       ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0 , x = real(z) , y = imag(z) ,
  nextzoom = iterspace = real(p1), magnification = imag(p1),
  x1 = x - p2*fn1(y+p3*fn2(y)),
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + fn3(x1)+sqr(flip(fn4(y1)))
  c = c*(1 - test) + test*magnification*c
  z = z*z+c
  iter = iter + 1
  |z| <= 16
  }

mans-galore-036 {; Variation on Sylvie Gallet formula. 
	       ; George Martin [76440,1143]
	       ; Modified Mans-Galore & Gallet 3-02
  z = pixel , c = pixel , x = real(z) , y = imag(z) , 
  nextzoom = iterspace = real(p1), magnification = imag(p1),
  x1 = x - p2*fn1(y+p3*fn2(y)),
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + fn3(x1)/flip(fn4(y1))
  c = c*(1 - test) + test*magnification*c
  z = z*z+c
  iter = iter + 1
  |z| <= 16
  }

mans-galore-037 {; Variation on Sylvie Gallet formula. 
	       ; George Martin [76440,1143]
	       ; Modified Mans-Galore & Gallet 3-02
  z = pixel , c = pixel , x = real(z) , y = imag(z) , 
  nextzoom = iterspace = real(p1), magnification = imag(p1),
  x1 = x - p2*fn1(y+p3*fn2(y)),
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + fn3(x1)*flip(fn4(y1))
  c = c*(1 - test) + test*magnification*c
  z = z*z+c
  iter = iter + 1
  |z| <= 16
  }
