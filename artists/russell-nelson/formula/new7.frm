Moo {; Requires Periodicity=0
     ; significant speedup of MOO, artists take note!!!
     ; Revised 6/8/96 for orgform, speedup using halfe suggested
     ;  by Tim Wegner
  halfe = e*(-.5), z = pixel:
  z = z + p1
  r = tan(1/z) + pixel
  z = fn1(z)*r^halfe   ; was z = fn1(z)/sqrt(r)^e
  |z| < 4
  ;SOURCE: mad_cow.frm
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
Fractint-9-41 {; Sylvie Gallet [101324,3444], 1996
          ; requires 'periodicity=0'
  z = pixel-0.025 , x=real(z) , y=imag(z) , x1=x*1.8 , x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2))
  test = 1 - (real(f||r||a||c||t1||i||n||t2)*real(y>-0.225)*real(y<0.225))
  z = fn1(fn2(fn4(1+(fn3(0.0,-0.65)/(pixel+(0.0,.75)))))) :
   z2 = z*z , z4 = z2*z2 , n = z4*z2-1 , z = z-n/(6*z4*z)
    (|n|>=0.0001) && test
  }
JoWe_02(XYAXIS) { ; Jo Weber [100424,35], 6/1996
                      z = pixel
		      p=1*(|p1|<=0)+p1, q=1*(|p2|<=0)+p2 :
                      a1=sqr(z), a2=p/a1, a3=q/(sqr(a1))
                      z=(fn1(a1)+fn2(a2)*fn1(a3))*pixel,
   }
