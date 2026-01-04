BEJ0002{;
z=c=pixel,x=y=cos(pixel*0.05):
z=fn1(z*x+y)
x=fn2(c*y+z)
|z|<8
}

BEJ-N187{;
z=c=pixel,q=sin(conj(0.1,1.0)):
z1=fn1(z/sqrt(pixel+1))/q
z=fn1(z)/imag(p1)*fn2(z)/real(p1)+c
|real(z)|<4
}

BEJ-N187a{;
pixel=sqr(conj(conj(pixel*sqr(pi))))
z=c=pixel:
z1=fn1(z/sqrt(pixel+1))
z=fn1(z)/imag(p1)*fn2(z)/real(p1)+c
|real(z)|<4
}

BEJ-N219{;
pixel=fn2(sqrt(pixel/.5)*pixel)
z=c=pixel,zc=pixel/sqr(pixel*.5):
c=((zc/p1)/pixel)/(zc*sqrt(fn1(real(z)))),
z=z*z+c
|imag(z)|<4
}

BEJ-N224{;
pixel=flip(-abs(pixel*(pixel*1))),
z=pixel,c=fn1(pixel^z)*.05:
z=sinh(z*z)*fn2((c*c)*(z*c))+(z*pi)
z=z*z+c
|z|<4
}

BEJ-N227{;
pixel=pixel*(fn1(pixel*pi)),
z = pixel , c = fn1(flip(pixel^fn3(z))):
z = fn2(z * z) + c 
|z| < 16
}

BEJ-N229e{;
pixel=flip(-abs(pixel*sqrt(pixel*1))),
z=sqr(pixel),c=cotan(pixel^fn1(z)):
z=fn3(z*z)+(acos(c+pixel)/fn2(c))
|z|<4
}

BEJ-N229f{;
pixel=flip(-abs(pixel*sqrt(pixel*1))),
z=sqr(pixel),c=cotan(pixel^fn1(z)):
z=fn3(sin(z*z))+(acos(c+pixel)/fn2(c))
|z|<4
}

BEJ-N229l{;
pixel=flip(-abs(pixel*sqrt(pixel*1))),
z=sqr(atan(sqrt(pixel))),c=cotan(pixel^fn1(z)):
z=fn3(sqr(sin(z*z)))+(acos(c+pixel)/fn2(c))
|z|<4
}

BEJ-N241{;
z=c=sin(acos(tan(log(pixel*p1))))* whitesq + (pixel) * (whitesq == 0):
z=sqr(z)+c
|real(z)|<16
}

BEJ-N262{;
z=pixel,x=real(z),y=imag(z):
x=fn1(z*x)
z=fn2(y+z)
|z|<16
}

BJ-Zexpe-004e{;
  s = exp(1.,0.), z = Pixel:
   z = z ^ s + pixel
   s = fn1(s + fn2(z*s)) / s
    |z| <= 100
  }

BJ-Zexpe-008 {;
  s = fn1(exp(1.,0.)*(p1*p2)) , z = pixel:
   z = z ^ s + pixel 
    |z| <= 100
  }

BJ-Zexpe-009 {;
  s = fn1(exp(1.,0.)*fn2(p1*p2)) , z = pixel:
   z = z ^ s + pixel 
    |z| <= 100
  }

BJ-Zexpe-010 {;
  s = exp(p1)^fn1(p2) , z = pixel:
   z = z ^ s + pixel 
    |z| <= 100
  }

BJ-Zexpe-016 {;
  z = fn1(pixel), s = (exp(1.,0.)*fn2(p1*p2)), Root = 1:
   z3 = ((z^ s + pixel)*z*z)
   z4 = z3 * z
   z = (3 * z4 + Root) / (4 * z3) 
    .004 <= |z4 - Root|
  }

BJ-Zexpe-018 {;
  z = pixel, s = (exp(1.,0.)*fn2(p1*p2)), Root = 1:
   z3 = fn1(z*z)^ s + pixel
   z4 = z3 * z * z
   z5 = (3 * z4 + Root) / (4 * z3) 
   z = z*z + pixel
    .004 <= |z| != |z4 - Root|
  }

BJ-SG-5-07-c { ; Modified Gallet 5-07
	       ; Sylvie Gallet [101324,3444], 1996 
  z = pixel , x = fn3(z*(0,1)) , y = fn4(z*(0,-1)) :
   hx = p1*fn1(x) , hy = p1*fn2(y)
   x = x + hy , y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) <= p2
  }

gallet-2-09 {   ; Sylvie Gallet [101324,3444], 1995
   z = pixel , p = p1-1 :
   sinz = sin(z)
   z0 = sinz^p , z1 = (sinz*z0+z)/(p1*z0*fn1(z)+1)
   z = z-z1
   |z1| >= 0.000001
}

Gallet-5-03 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z), y = imag(z) :
   x1 = x*x + p1*fn1((y) + fn2(p2*y))
   y1 = y*y + p1*fn1((x) + fn2(p2*x))
   x = x1 , y = y1
   z = fn3(x * y)
    |z| <= p3
  }

Gallet-5-07 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = z*(0,1) , y = z*(0,-1) :
   hx = p1*fn1(x) , hy = p1*fn2(y)
   x = x + hy , y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) <= p2
  }

BJ-SG-5-07-a { ; Modified Gallet 5-07
	       ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = z*(0,1) , y = (whitesq == 0) + (z*(0,-1)) * whitesq:
   hx = p1 * fn1(x) , hy = p1*fn2(y)
   x = x + hy , y = y + hx
   z = x + flip(y) 
    (|hx|+|hy|) <= p2
  }

BJ-SG-5-07-c { ; Modified Gallet 5-07
	       ; Sylvie Gallet [101324,3444], 1996 
  z = pixel , x = fn3(z*(0,1)) , y = fn4(z*(0,-1)) :
   hx = p1*fn1(x) , hy = p1*fn2(y)
   x = x + hy , y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) <= p2
  }

Gallet-5-08 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) + fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) + fn3(p3*x))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 32
  }

Gallet-5-09 { ; Sylvie Gallet [101324,3444], 1996
              ; PHC formula
  z = pixel * (whitesq - 0.5*(whitesq == 0 )) :
   x = real(z) , y = imag(z)
   x1 = x - p1 * fn1(y + p2*fn2(y))
   y1 = y - p1 * fn1(x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 64
  }

Carr2003b{;Modified Sylvie Gallet frm. [101324,3444], 1996
   ; requires "periodicity=0" (<g> command)
   ; imag(p1) = scale of the Julia set
   ; p2 = center of the Julia set
   ; p3 = param for the Julia set 
   z= c =pixel,
   c1 = p3,
   z1=imag(p1-cos(pixel))*z-p2 , iter=0 , 
   limit=real(p1), bailout = 16 :
   test = (iter==limit)
   z=z*fn1(1-test)+fn2(z1*test),c=fn3(c*(1-test)+(c1*test))
   z=z*z+c,
   iter=iter+1
   |z| <= bailout
}

BJ-BC1974-c  {;Modified Bob Carr frm from a modified Sylvie Gallet frm.
c=z=pixel, d=log(1/pixel-conj(1/pixel)),
compt=0 , limit=(abs(p1/5))/p2 , bailout=4
p=(1.0/-2.48)-(1.00763) :
test=(compt<limit)+fn1(c)
c=c*(test/p3)+p*(1-test)
z=(z*z+c)-real(d/100*pixel),
compt=compt+0.39
|z|<=bailout
}

BJ-BC1974-h  {;Modified Bob Carr frm from a modified Sylvie Gallet frm.
c=z=fn2(pixel*pixel)/p2, d=log(1/pixel-conj(1/pixel)),
compt=0 , limit=(abs(p1/5)) , bailout=4
p=(1.0/-2.48)-(1.00763) :
test=(compt<limit)+fn1(c)
c=c*(test/p3)+p*(1-test)
z=(z*z+c)-real(d/100*pixel),
compt=compt+0.39
|z|<=bailout
}

Gallet-4-02 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , h = p1 , a = p2 :
   x = real(z) , y = imag(z)
   y1 = y + fn2(x + a*fn1(x+h))
   x1 = x - fn2(y + a*fn1(y+h))
   z = x1 + flip(y1)
    |z| <= 16
  }

Gallet-4-04 { ; Sylvie Gallet [101324,3444], 1996
              ; PHC formula
  z = pixel * whitesq + (whitesq == 0 ) / pixel :
   x = real(z) , y = imag(z)
   x1 = x - p1 * fn1(y + p2*fn2(y))
   y1 = y - p1 * fn1(x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
  }

Gallet-4-06 { ; Sylvie Gallet [101324,3444], 1996
              ; PTC 24 bits formula
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = -0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z = c * pixel :
   x = real(z) , y = imag(z)
   x1 = x - p1 * fn1(y*y + p2*fn2(y))
   y1 = y - p1 * fn1(x*x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
  }

Gallet-4-14 { ; Sylvie Gallet [101324,3444], 1996
              ; Hypercomplex Newton formula applied to h^p2 - 1 = 0
  ; h(0) = real(pixel) + i*imag(pixel) + j*real(p1) + k*imag(p1)
  ; h(n+1) = h(n) - (h(n)^p2-1) / (p2*h(n)^(p2-1))
  ; |h| >= 0.0000005
  p = (0,1)*p1 , ex = p2 - 1
  a = pixel + p , b = pixel - p :
   a2 = a^ex , b2 = b^ex
   na = a2*a - 1 , da = p2*a2
   nb = b2*b - 1 , db = p2*b2
   a = a - na/da , b = b - nb/db
    |na| + |nb| >= 0.000001
  }

13h{;Modified Sylvie Gallet frm.
pixel=-flip(-abs(pixel*(fn1(sqrt(pixel*1))))),
z = pixel , c = fn2(sqrt(flip(pixel^z))) * (0.0803645521966,0.01745329252)  ,
d1=(0.00099475/-pixel)+(flip(0.00010/pixel)),
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=(z*(1-test))+flip(imag(0.03750/pixel))* (whitesq == 0) + (fn4(atanh(abs(sqr(pixel))))) * whitesq, 
c=c*(1-test)+d1+test*(p2*c)
z=fn3(z^2)+(c/p3)-0.1/pixel,
iter=iter+1
|z|<=16
}

13m(YAXIS){;Modified Sylvie Gallet frm.
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=c=pixel/pi,
d1=(0.00099475/-pixel)+(flip(0.00010/pixel)),
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=(z*(1-test))+flip(imag(0.03750/pixel)) * (z^2+c-0.1/pixel), 
c=c*(1-test)+d1+test*(-flip(abs(p2*c+p3)))
z=z^2+c-0.1/pixel,
iter=iter+1
|z|<=16
}

NY002{;
z=pixel,c=fn1(z),zc=fn2(c+z):
z=fn3(zc)-fn4((z*z)+c)
|z|<16
}
