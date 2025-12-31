Fractint-9-11 {; Sylvie Gallet [101324,3444], 1996
               ; requires 'periodicity=0'
  z = fn1(log(pixel-0.025))*2, x=real(z), y=imag(z), x1=x*1.8, x3=3*x
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
  test = 1 - fn2((real(f||r||a||c||t1||i||n||t2)*real(y>-0.225)*real(y<0.225)))
  z = 1+(0.0,-0.65)/fn3(pixel+(0.0,.75)) :
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
  ;SOURCE: bej012.frm
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

Gallet-3-03 {; Sylvie Gallet [101324,3444], 1996
  z = pixel :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(y*y+p2*fn2(y))
  y1 = y - p1*fn1(x*x+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: gallet-3.frm
}

Quiz {; Sylvie Gallet [101324,3444], 1995
  z=0, c=pixel, c1=0.25-c*c, c2=c1-1, ki=p1*(0.0,1.0) :
  z2=z*z, n=z2*z + c2*z - c1
  d=3*z2 + c2 + ki
  z=z-n/d
  |n|>=0.000001
  ;SOURCE: 96msg.frm
}

