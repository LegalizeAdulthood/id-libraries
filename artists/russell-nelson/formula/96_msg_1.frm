; 96_MSG_1.FRM [compiled by Les St Clair 101461.2032@compuserve.com 1996]
; This file contains the Fractint "FRMs" required by the .pars in the
; 96_MSG_1.PAR compilation

1306 {
  z = 0.1/pixel:
  z = fn1 ( fn2 (fn3 (z)))
  |z| <= p1
  ;SOURCE: kg13.frm
}

BJ-Lesfrm13-001 { ;Modified Les St Clair formula "Lesfrm13"
 z = pixel
 x = fn1(z) , y = fn2(z):
 x = x*p1*pi
 y = y*p2*pi
 z = fn4(fn3(x)/y)
 |z| <= 4
}

BJ-Lesfrm13-002 { ;Modified Les St Clair formula "Lesfrm13"
 z = pixel
 x = fn1(z) , y = fn2(z):
 x = x*p1*pi
 y = y*p2*pi
 z = fn4(x/fn3(y))
 |z| <= 4
}


BJ-SG-G-1-g031   {;Modified  Sylvie Gallet [101324,3444], 1996
  ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = fn1(1.5*z) , z2 = c2 = fn2(2.25*z1) ,
  z3 = c3 = fn3(3.375*z2) , z4 = c4 = fn4(z1*c2*z3)*(1/pixel)
  l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
  bailout = 16 , iter = 0 :
   t1 = (iter==l1) , t2 = (iter==l2) , t3 = (iter==l3) , t4 = (iter==l4)
   z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
   c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
   z = z*z+c
   iter = iter+1
    |z| <= bailout
  }

BJ-SG-MaNewt-014 {    ;Modified Sylvie Gallet [101324,3444], 1995
   z = pixel + rad, c = z , iter = 1
   rad = 3.1 , center = (1.0,0.1)
   pix = fn1((10*pixel+(5.0,-3.4))*(-0.1,-0.95))
   zn = fn2(center+rad/(pix-center))
   limit = real(p1) , b1 = 16 , b2 = 0.0001 :
   test1 = (iter<limit) , test2=(iter!=limit)
   z = (z-zn)*test2 + zn
   z2 = z*z , z4 = z2*z2 , z1 = (z4*z-1)/(4*z4)
   z = (z2+c)*test1 + (z-z1)*(1-test1)
   iter = iter+1
   ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

Carr1939{;Modified Sylvie Gallet frm.   REVISED 4/12/96
	 ;Revised for compatability with Fractint v. 19.3
	 ;Version of this formula in original 42carr.frm should be deleted.
   z=c=(conj(1/pixel)^2.32)-1.25,
   iter = 1 , rad = 6 , center = (1.0,0.1)
   pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
   zn = center+rad/(pix-center) , limit = real(p1)
   test0 = 1 , b1 = 16 , b2 = 0.0001 , test3=0:
   test1 = (iter<limit) , test0 = 1-test0 , test2=(iter!=limit)
   z = (z-zn)*test2 + zn
   z2 = z*z , z4 = z2*z2 , z1 = (z4*z-1)/(4*z4 + (z4==0)),
   z = (z2+c+real(z/5))*test1 + ((z-z1)*(1-test1))
   test3 = (test3 || (|z|>b1))
   z = (z*(1-(test3 && test0 && test1)))
   iter = iter+(1.099,0.0)
   ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

Carr1971{;Modified Sylvie Gallet frm.
c=z=pixel,
compt=0 , limit=real(p1/pixel) , bailout=4
p=(-0.743380900000982,-0.131850030300002) :
test=(compt<limit)
c=c*test+p*(1-test)
z=z*z+c
compt=compt+1
|z|<=bailout
}

Carr1973{;Modified Sylvie Gallet frm.
   z=pixel,
   c=pixel,
   iter = 1 , rad = 6 , center = (1.0,0.1)
   pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
   zn = (center+rad/(pix-center)) , limit = abs(p1/pixel)
   test0 = 1 , b1 = 16 , b2 = 0.0001 , b3= 0.00011 , test3=0:
   test1 = (iter<limit) , test0 = 1-test0 , test2=(iter!=limit)
   z = (z-zn)*test2 + zn
   z2 = z*z , z4 = z2*z2 , z1 = (z4*z-1)/(4*z4),
   z = (z2+c)*test1 + ((z-z1)*(1-test1))
   test3 = (test3 || (|z|>b1))
   z = (z*(1-(test3 && test0 && test1)))
   iter = iter+1
   ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

Carr1973m {;Modified Sylvie Gallet frm.
   z=pixel,
   c=pixel,
   iter = 1 , rad = 6 , center = (1.0,0.1)
   pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
   zn = (center+rad/(pix-center)) , limit = abs(p1/pixel)
   test0 = 1 , b1 = 16 , b2 = 0.0001 , b3= 0.00011 , test3=0:
   test1 = (iter<limit) , test0 = 1-test0 , test2=(iter!=limit)
   z = (z-zn)*test2 + zn
   z2 = z*z , z4 = z2*z2 , n = z4*z-1 , d1 = 4*z4
   d = d1+(1-d1)*(z==0) , z1 = n/d
   z = (z2+c)*test1 + ((z-z1)*(1-test1))
   test3 = (test3 || (|z|>b1))
   z = (z*(1-(test3 && test0 && test1)))
   iter = iter+1
   ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

Carr1998(XAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
z=pixel,c=pixel,
z1=c1=(1.5*z),z2=c2=(2.25*z),z3=c3=(3.375*z),z4=c4=(5.0625*z),
l1=real(p1),
l2=imag(p1),
l3=real(p2),
l4=imag(p2),
bailout=16, iter=0 :
t1=(iter==l1) , t2=(iter==l2) , t3=(iter==l3),t4=(iter==l4),
z=z*(1-(t1||t2||t3||t4))
c=c*(1-(t1||t2||t3||t4))+(c1*t1)+(c2*t2)+(c3*t3)+(c4*t4+pixel/imag(p2))
z=z*z+c,
iter=iter+1
|real(z)| <= bailout
}

Carr2036{;Modified Sylvie Gallet frm. [101324,3444],1996
z=pixel-((1/pixel)/(1/log(cos(0.01/pixel))))-flip(imag(0.305/pixel)),
c=(-0.38652609,0.575229)+0.010/pixel
z1=c1=(1.5*z),z2=c2=(2.25*z),z3=c3=(3.375*z),z4=c4=(5.0625*z),
l1=(real(p1)),l2=(imag(p1)),l3=(real(p2)),l4=(imag(p2)),
bailout=16, iter=0 :
t1=(iter==l1) , t2=(iter==l2) , t3=(iter==l3),t4=(iter==l4),
z=z*(1-(t1||t2||t3||t4))
c=c*(1-(t1||t2||t3||t4))+(c1*t1)+(c2*t2)+(c3*t3)+(c4*t4+(pixel)/imag(p2))
z=z*z+c+0.057
iter=iter+1
(|real(z)|) <= bailout
}


Carr2167{;Modified Sylvie Gallet frm. [101324,3444],1996
 z=sinh((-0.7456,0.2)*(pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.10/pixel),
 c=tanh((-0.7456,0.2)*(pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.10/pixel),
 d1=(conj(0.000004550/pixel)),
 z1=c1=(1.5*z+d1),z2=c2=(2.25*z+d1),z3=c3=(3.375*z+d1),z4=c4=(11.0625*z+d1),
 l1=(real(p1)),l2=(imag(p1)),l3=(real(p2)),l4=(imag(p2)),
 bailout=16,iter=0:
 t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
 z=z*(1-(t1||t2||t3||t4))+(z1*t1+d1)+(z2*t2+d1)+(z3*t3+d1)+(z4*t4+d1)
 c=(c-0.00625)*(1-(t1||t2||t3||t4))+(c1*t1+d1)+(c2*t2+d1)+(c3*t3+d1)+(c4*t4+d1),
 z=z*z+c,
 iter=iter+1
 (|real(z)|) <= bailout
 }


Carr2178{;Modified Sylvie Gallet frm. [101324,3444],1996
z=(pixel+pixel)-1/log(pixel-1/sin(0.010/pixel))^2.5,
c=sin(conj(-0.81256,-0.2495)),
d1=(conj(0.0002550/pixel)),
z1=c1=(1.5*z+d1),z2=c2=(2.25*z+d1),z3=c3=(3.375*z+d1),z4=c4=(11.0625*z+d1),
l1=(real(p1)),l2=(imag(p1)),l3=(real(p2)),l4=(imag(p2)),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
z=(z-c/6)*(1-(t1||t2||t3||t4))+((z1*t1+d1)+(z2*t2+d1)+(z3*t3+d1)+(z4*t4+d1)),
c=c*(1-(t1||t2||t3||t4))+((c1*t1+d1)+(c2*t2+d1)+(c3*t3+d1)+(c4*t4+d1)),
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2289(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=(pixel)+(pixel-flip(0.0010/pixel)-conj(0.010/pixel))
z=(pixel-conj(asin(pixel+pixel+0.32))),
d1=conj(flip(conj(0.00059350/pixel)))
z1=c1=(1.5*z+d1),z2=c2=(2.25*z+d1),z3=c3=(3.375*z+d1),z4=c4=(5.0625*z+d1),
l1=(real(p1)),l2=(imag(p1)),l3=(real(p2)),l4=(imag(p2)),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
z=(z)*(1-(t1||t2||t3||t4))+(z1*t1+d1)+(z2*t2+d1)+(z3*t3+d1)+(z4*t4+d1),
c=c*(1-(t1||t2||t3||t4))+(c1*t1+d1)+(c2*t2+d1)+(c3*t3+d1)+(c4*t4+d1),
z=z*z+c,
iter=iter+1,
(|real(z)|) <= bailout
}



Carr2322(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=(pixel/5)/(conj(0.073*pixel-cos(1/pixel)-conj(1/pixel))),
z=(pixel-conj(0.10/pixel)-flip(0.010/pixel))
d1=(0.00030217/-pixel)+(flip(0.00010/pixel)),
z1=c1=(1.5*z+d1),z2=c2=(2.25*z+d1),z3=c3=(3.375*z+d1),z4=c4=(5.0625*z+d1),
l1=(real(p1)),l2=(imag(p1)),l3=(real(p2)),l4=(imag(p2)),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
z=z*(1-(t1||t2||t3||t4))+(z1*t1+d1)+(z2*t2+d1)+(z3*t3+d1)+(z4*t4+d1),
c=c*(1-(t1||t2||t3||t4))+(c1*t1+d1)+(c2*t2+d1)+(c3*t3+d1)+(c4*t4+d1),
z=z^2+c+tan(z/2),
iter=iter+1,
(|real(z)|) <=bailout
}

Carr2330(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
m=tan(pixel)-tanh(pixel),
z=2*m+flip(pixel),c=(-0.7,0.2),
d1=conj(conj(0.0003545/-pixel))+(tanh(0.00010/pixel)),
z1=c1=(1*z+d1),z2=c2=(1.5*z+d1),z3=c3=(2.25*z+d1),z4=c4=(3.375*z+d1),
z5=c5=(5.0625*z+d1),
l1=(real(p1)),l2=(imag(p1)),l3=(real(p2)),l4=(imag(p2)),l5=(300)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5)
z=z*(1-(t1||t2||t3||t4))+(z1*t1-d1)+(z2*t2+d1)+(z3*t3+d1)+(z4*t4+d1)+(z5*t5+d1)
c=c*(1-(t1||t2||t3||t4))+(c1*t1+d1)+(c2*t2+d1)+(c3*t3+d1)+(c4*t4+d1)+(c5*t5+d1)
z=z^2.45+c+sinh(z/6),
iter=iter+1,
(|real(z)|) <=bailout
}

Carr2363(YAXIS){;Modified Sylvie Gallet frm.
pixel=-abs(real(pixel))+flip(imag(pixel)),
m=conj(0.010/pixel)+flip(0.0010/pixel),b=conj(conj(0.010/pixel))
z=cabs(pixel)
c=cabs(3.5*pixel^10)-sinh(0.001/pixel-tan(0.01/pixel))+0.135,
d1=(0.00045056/-pixel)+(flip(0.00010/pixel)),
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)
c=c*(1-test)+d1+test*(p2*c+p3)
z=z^2+c,
iter=iter+1
|z|<=16
}

Carr2381(YAXIS){;Modified Sylvie Gallet frm.
pixel=-abs(real(pixel))+flip(imag(pixel)),
m3=cabs(pixel+0.5)*conj(conj(pixel^7))
z=(m3-conj(0.10/pixel)-sqr(flip(0.00510/pixel)))-0.25,
c=(-1.099,-0.0049)/2,
d1=(0.00075756/-pixel)+(flip(0.00010/pixel)),
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test),
c=c*(1-test)+flip(d1)+test*(p2*c+p3)
z=z^2+c,
iter=iter+1
|z|<=16
}

ComplexNewton_01    {; Jon Horner (ex-CAL) [ not sure about this one ]
                     ; modified by Jo Weber, 6/1996
		    pm1 = p1-1,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
  }

D-ROCK {
z = 0, c = pixel:
z = sqr(z) + c
c = c + p1 * z
z = fn1(z)/c
|z| <= 4
}

davidsmask {
c = pixel,
c2 = c*c,c75 = c2 + 0.75, c25 = c2 - 0.25,
c75p1 = c75 + p1,
z = pixel:
z2 =z*z,
n = z*z2 - c75*z + c25,
d = 3*z2 - c75p1,
z = z- n/d,
0.000001 <= |n|
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

G-2_variation (xaxis){; Variation on Sylvie Gallet formula.
               ; George Martin [76440,1143]
	       ; periodicity=0, maxiter > 2000
  z=c=pixel, iter=numzoom=0, nextzoom = real(p1):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*real(p1)
  numzoom = numzoom + test
  zoomfactor = imag(p1)^numzoom
  z = z*(1 - test) + test*zoomfactor*pixel
  c = c*(1 - test) + test*zoomfactor*pixel
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  }

Gallet-3-01 (XAXIS) { ; Sylvie Gallet [101324,3444], 1996
            ; choose p1, p2 such as
            ; 0 < real(p1) < imag(p1) < real(p2) < maxiter
 z = c = pixel , z1 = c1=1.5*z , z2 = c2=2.25*z , z3 = c3=3.375*z
 l1=real(p1) , l2=imag(p1) , l3=real(p2) , bailout=16 , iter=0 :
 t1=(iter==l1) , t2=(iter==l2) , t3=(iter==l3)
 tt = 1 - (t1||t2||t3) , z = z * real(tt)
 c = c * real(tt) + c1*real(t1) + c2*real(t2) + c3*real(t3)
 z = z*z+c , iter = iter+1
 |z| <= bailout
}

Gallet-3-02 { ; Sylvie Gallet [101324,3444], 1996
 z = pixel :
 x = real(z) , y = imag(z)
 x1 = x - p1*fn1(y+p2*fn2(y))
 y1 = y - p1*fn1(x+p2*fn2(x))
 z = x1+flip(y1)
 |z| <= 4
}

Gallet-3-03 { ; Sylvie Gallet [101324,3444], 1996
 z = pixel :
 x = real(z) , y = imag(z)
 x1 = x - p1*fn1(y*y+p2*fn2(y))
 y1 = y - p1*fn1(x*x+p2*fn2(x))
 z = x1+flip(y1)
 |z| <= 4
}

Gallet-3-07 (YAXIS) {; Sylvie Gallet [101324,3444], 1996
                ; Newton's method applied to
                ; x -> sin(y)^2+cos(x)^3 = 0
                ; y -> cos(x)^2+sin(y)^3 = 0
 z = 0.05/pixel , x=real(z) , y=imag(z)
 cx=cos(x) , sx=sin(x) , cy=cos(y) , sy=sin(y)
 cx2=cx*cx , cx3=cx2*cx , sy2=sy*sy , sy3=sy2*sy :
 d = 6*(cx*sy-4)     ; normal value -->  d = 9*(cx*sy-4)
 x = x+(sy3+3*sy*cx3-2*cx2)/(cx*sx*d)
 y = y-(cx3+3*cx*sy3-2*sy2)/(sy*cy*d)
 z = x + flip(y)
 cx=cos(x) , sx=sin(x) , cy=cos(y) , sy=sin(y)
 cx2=cx*cx , cx3=cx2*cx , sy2=sy*sy , sy3=sy2*sy
 |sy2+cx3+flip(cx2+sy3)| > 0.00001
}

Gallet-3-13   { ; Sylvie Gallet [101324,3444], 1996
 z = pixel/(pixel*pixel+1) :
 x = real(z) , y = imag(z)
 x1 = x - p1*fn1(y+p2*fn2(y))
 y1 = y - p1*fn1(x+p2*fn2(x))
 z = x1+flip(y1)
 |z| <= 4
}

Gallet-3-15 { ; Sylvie Gallet [101324,3444], 1996
  z = Pixel*(0.0,1.0) :
  n = sin(z)-z-pixel , z = z-n/(cos(z)-pixel)
  |n| > real(p1)
}

 inandout01 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = pixel, c1 = fn1(pixel), c2 = fn2(pixel):
    a = (|z| <= |oldz|) * (c1) ;IN
    b = (|oldz| < |z|)  * (c2) ;OUT
    oldz = z
    z = fn3(z*z) + a + b + p1
    |z| <= test
}

inandout03 {
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = c = pixel:
   a = (|z| <= |oldz|) * (c)    ;IN
   b = (|oldz| < |z|)  * (z*p1) ;OUT
   c = fn1(a + b)
   oldz = z
   z = fn2(z*z) + c
    |z| <= test
  }

JoWe_02(XYAXIS) { ; Jo Weber [100424,35], 6/1996
                      z = pixel
		      p=1*(|p1|<=0)+p1, q=1*(|p2|<=0)+p2 :
                      a1=sqr(z), a2=p/a1, a3=q/(sqr(a1))
                      z=(fn1(a1)+fn2(a2)*fn1(a3))*pixel,
   }

Lesfrm05 (xaxis) {
c=z=pixel:
z=z+p1/fn1(z^2)/c^3,|z| <=6
}

Lesfrm10 {
c=z=pixel:
z=z+(fn1(fn2(Z)))+C/P1,|z|<4
}

Lesfrm14 (xaxis) { ; Les St Clair, 1996
 z = c = pixel:
 x = p1*fn1(z)
 y = p2*fn2(z)
 z = c + (x^y)
 |z| <= 4
}

Lesfrm16 { ; Les St Clair, 1996
 z = c = pixel:
 x = p1*fn1(z)
 y = p2*fn2(z)
 x1= x*x
 y1= y*y
 z = c + x1/y1
 |z| <= 4
}

Lesfrm19 { ; Les St Clair, 1996
 z = c = pixel:
 x=real(z), y=imag(z)
 x= fn1(z*x)+(p1^c)+c
 y= fn2(z*y)+(p2^c)+c
 z = x+flip(y)
 |z| <4
 }

mandel_nest{; George Martin [76440,1143]
	    ; Based on nesting method developed by Sylvie Gallet
	    ; Must use periodicity=0, float=yes
	    ; real(p1) is reduction factor, e.g 1 (default) is same size,
	    ;     2 is half the size (linear; 1/4 the area size)
	    ; imag(p1) is clockwise rotation of the image in degrees
            ; p2 - real portion moves image along the x axis, imag
	    ;     portion along the y axis. + = right,up.
	    ; real(p3) - iteration spacing. 256 and multiples causes
	    ;     nested images to have same coloring. Default 256
  z=0, c=pixel
  newpixel=pixel, iter=0
  reduction=real(p1) + (real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3 + (p3<=0)*256
  rotation=pi*flip(imag(p1))/180:
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  newpixel = newpixel*(1-test) + test*reduction*(newpixel-p2)*exp(rotation)
  z = z*(1 - test)
  c = c*(1 - test) + test*newpixel
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  }

mandels_galore (xaxis){; Variation on Sylvie Gallet formula.
	       ; George Martin [76440,1143]
	       ; periodicity=0 must be set
	       ; Try 50 or more for real(p1) - even multiples of
	       ;    256 give interesting effects
	       ; Try 1.2 - 1.8 for imag(p1)
	       ; Try 1000 or more for Maximum Iterations (x menu)
  z=c=pixel, iter=0
  nextzoom = iterspace = real(p1), magnification = imag(p1):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test)
  c = c*(1 - test) + test*magnification*c
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  }

mandels_spiral {; Variation on George Martin's mandels_galore formula.
	       ; Sylvie Gallet [101324,3444], 1996
	       ; periodicity=0
  z=c=pixel, iter=0
  nextzoom = iterspace = real(p1):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test)
  c = c*(1 - test) + test*(p2*c + p3)
  z = z*z + c
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

Moo { ;; Requires Periodicity=0
z = pixel:
z = z + p1
r = tan(1/z) + pixel
z = fn1(z)/sqrt(r)^e
|z| < 4
}

Moo_2 { ;; Requires Periodicity=0
z = pixel:
z = z + p1
r = tan(1/z) * pixel
z = fn1(z)/sqrt(r)^(e/2)
|z| < 4
}

Moo_3 {
z = pixel:
z = z + p1
r = tan(1/z) * pixel
z = fn1(z)/sqrt(r)
|z| < 4
}

Sattva {
z = pixel + p1:
r = fn1(tan(1/z)) + pixel
z = z * fn2(r)
|z| < 4
}

Sneaky-D {
z = 0, c = pixel:
z = fn1(z) + c
c = c + fn2(1/z) + p1
z = c
|z| <= 6
}

t6{
 z=(pixel^(1/tan(pixel^p1)))^(fn1(pixel^(1/pixel^p2))):
 z=fn2(z^fn3(1/z^2.5878))+c
 |real(z)|<=4
}

Trekle {
z = 0, c = pixel:
z = z + p1
z = (z * fn1(sqrt(z)))/fn2(c)
z = z + sqr(c)
|z| < 4
}

Whatever_01(XYAXIS) { ; Original formula Whatever_the_name
                        ; modified by Jo Weber [100424,35], 6/1996
                          z = pixel:
                          z=z*z+(1/z*z)+pixel,
   }

Whatever_01_m(XYAXIS) { ; Original formula Whatever_the_name
                        ; modified by Jo Weber [100424,35], 6/1996
                          z = pixel:
                          a1=z*z, a2=1/a1, a=a1+a2,
                          z=a+pixel,
   }

Zeppo { ; Mutation of 'Liar4'.
  ; Original formula by Chuck Ebbert [76306,1226]
  ; For 'Liar4' set FN1 & FN2 =IDENT and P1 & P2 = default
  ; p1 & p2 = Parameters (default 1,0 and 0,0)
  z = pixel
  ; The next line sets p=default if p1=0, else p=p1
  p = (1 * (|p1|<=0) + p1):
   z =fn1(1-abs(imag(z)*p-real(z)))+flip(fn2(1-abs(1-real(z)-imag(z))))-p2
    |z| <= 1
  ;SOURCE: fractint.frm
  }
