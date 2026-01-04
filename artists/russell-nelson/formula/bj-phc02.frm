JD-SG-05 { ; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  ; use p1 and p2 to adjust the 2nd Mandel
  ; p1 = -1 (default)
  p1 = p1 * (p1!=0) - (p1==0)
  z = 0 , c = pixel * whitesq + (p1*pixel+p2) * (whitesq == 0) :
   z = z*z + c
    |z| < 4
 }

Gallet-PHC3-03b { ; Sylvie Gallet [101324,3444], 1996
 z = pixel :
 x = real(z) , y = imag(z) ,
 x1 = x - p1*fn1(y*y+p2*fn2(y))
 y1 = y - p1*fn1(x*x+p2*fn2(x))
 z = x1+flip(y1)* (whitesq == 0) + (x1*y1) * whitesq,
 |z| <= 4
} 

BJ-SG-3-03-gb { ;Modified Sylvie Gallet [101324,3444], 1996
z = pixel , c = sin(conj(-0.81256,-0.1295)) :
 x = real(z) , y = imag(z)
 x1 = x - p1*fn1(x*x+p2*fn2(y)) * (whitesq == 0)+c* whitesq 
 y1 = y - p1*fn1(y*y+p2*fn2(x)) 
 z = x1+flip(y1)  
 |z| <= 4
}

BJ-SG-3-03-gd { ;Modified Sylvie Gallet [101324,3444], 1996
z = pixel , c = sin(conj(-0.81256,-0.1295)) :
 x = real(z) , y = imag(z)
 x1 = x - p1*fn1(x*x+p2*fn2(y)) * (whitesq == 0) + c * whitesq 
 y1 = y - p1*fn1(y*y+p2*fn2(x)) 
 z = fn3(x1+flip(y1))  
 |z| <= 4
}

BJ-SG-3-03-gda { ;Modified Sylvie Gallet [101324,3444], 1996
z = pixel , c = sin(conj(-0.81256,-0.1295)) :
 x = real(z) , y = imag(z)
 x1 = x - p1*fn1(x*x+p2*fn2(y)) * fn3((whitesq == 0) + (c/(x+y)) * whitesq)
 y1 = y - p1*fn1(y*y+p2*fn2(x)) 
 z = x1+flip(y1)  
 |z| <= 4
}

Mans-G+SG-3-03 {;Test Variation on Sylvie Gallet formula
  z=c=pixel, iter=0 , x = real(z) , y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1),
  x1 = x - p2*fn1(y+p3*fn2(y))* (whitesq == 0) + c * whitesq,
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test)  
  c = c*(1 - test) + test*magnification*c
  z = (z+ x1+flip(y1))*z+c
  iter = iter + 1
  |z| <= 16
  }

Mans-G+SG-3-03b {;Test Variation on Sylvie Gallet formula
  z=c=pixel, iter=0 , x = real(z) , y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1),
  x1 = x - p2*fn1(y+p3*fn2(y))* (whitesq == 0) + c * whitesq,
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test)  
  c = c*(1 - test) + test*magnification*c
  z = (x1+flip(y1)) * (whitesq == 0) + (z*z + c) * whitesq
  iter = iter + 1
  |z| <= 16
  }

BEJ-N188a{;
z=pixel,c=pixel,zc=pixel*sin(conj(conj(pixel))):
c=sin(conj(imag(zc)))/p1,
z=fn1(z/1)*z+c
|real(z)|<4
}

BEJ-N197{;
z=c=pixel,zc=pixel/sqr(pixel*.5):
c=(zc/p1)/(zc/fn1(z)),
z=z*z+c
|imag(z)|<4
}

BEJ-N198{;
z=c=pixel,zc=pixel/sqr(pixel*.5):
c=(zc/p1)/(zc/sqrt(fn1(z))),
z=z*z+c
|imag(z)|<4
}

BEJ-N199{;
z=c=pixel,zc=pixel/sqr(pixel*.5):
c=((zc/p1)/(zc/sqrt(z))) * (whitesq == 0) + ((zc/p2)/(zc/sqrt(abs(z)))) * whitesq,
z=z*z+c
|imag(z)|<4
}

BEJ-N202{;
z=c=pixel,zc=pixel/sqr(pixel*.5):
c=(zc/p1)/(zc*sqrt(fn1(real(z)))),
z=z*z+c
|imag(z)|<4
}

BEJ-N205{;
z=c=pixel,zc=pixel/sqr(pixel*.5):
c=(zc/p1)/(zc*sqrt(fn1(real(z))+zc)),
z=z*z+c
|imag(z)|<4
}

BEJ-N219{;
pixel=fn2(sqrt(pixel/.5)*pixel)
z=c=pixel,zc=pixel/sqr(pixel*.5):
c=((zc/p1)/pixel)/(zc*sqrt(fn1(real(z)))),
z=z*z+c
|imag(z)|<4
}

BEJ-N221{;
pixel=sqr(pixel)*-abs(cosxx(pixel)),
z=c=pixel/p1:
z=fn1(z)*z+c
|real(z)|<4
}

BEJ-N223a{;
pixel=sqr(pixel),
z=pixel,c=pixel^z:
z=fn1(z)*z+((c+pixel)^c)
|real(z)/(pixel*p1)|<4
}
