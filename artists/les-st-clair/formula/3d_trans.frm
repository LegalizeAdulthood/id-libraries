; Required formulas...

jenn001 {; Arno Jennen
  z=|pixel|+pixel+cosxx(pixel):
  z=fn1(z-5.75),
  |(z)|<78
  }

Fractint-9-11 {; Sylvie Gallet [101324,3444], 1996
               ; requires 'periodicity=0'
  z = fn1(log(pixel-0.025))*2 , x=real(z) , y=imag(z) , x1=x*1.8 , x3=3*x
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
  z2 = z*z , z4 = z2*z2 , n = z4*z2-1 , z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
}

Lesfrm12 {; Les St Clair, 1996
  z = pixel :
  x = fn1(z) , y = fn2(z)
  z = x*y
  |z| <= 4
}

Lesfrm13 {; Les St Clair, 1996
  z = pixel
  x = fn1(z) , y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi
  z = x/y
  |z| <= 4
}

BJ-Lesfrm13-002 {; Modified Les St Clair formula "Lesfrm13"
  z = pixel
  x = fn1(z) , y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi
  z = fn4(x/fn3(y))
  |z| <= 4
}

BJ-Lesfrm13-004 {; Les St Clair, 1996
  z = pixel
  x = fn1(z*z) , y = fn2(z*z):
  x = fn3(x)*p1*pi
  y = fn4(y)*p2*pi
  z = x/y
  |z| <= 4
}

Block_2 {
  z = c = pixel:
  r = fn1(z) / floor(c)
  z = r * z + p1
  q = ceil(c) / fn2(z)
  z = z * q * r
  round(z) < 4
}

Block_4 {
  z = c = pixel:
  r = tan(1/z) + p1
  q = floor(z) - p2 * ceil(c) - p3
  z = fn1(z) * r * q
  round(z) < 4
}
