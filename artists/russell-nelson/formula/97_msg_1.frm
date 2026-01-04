97_MSG_1.FRM [compiled by Les St Clair <les_stclair@compuserve.com> 1997]
This file contains the Fractint "FRMs" required by the .pars in the
97_MSG_1.PAR compilation

aaa1a { 
z=pixel,x=fn1(z+1)*whitesq,c=fn2(z*(1/pixel)):
z=fn3(z*fn4(c-x))+c
|z|<=8
}

adr4x{
z=pixel:
pixel=(whitesqr!=0)*fn1((3.14,0))
z=(fn3(z+fn4(pixel)))
|z|>=4
}

ai5{
z=pixel,y=1/pixel,c=(z)/fn1(z+1):
z=(exp(z)/fn3(z*z))*fn2(y)+c
|z|<4
}

BirdOfPrey(XAXIS_NOPARM) {z=p1, x=1:
   (x<10)*(z=sqr(z)+pixel),
   (10<=x)*(z=cosxx(z)+pixel),
    x=x+1, |z|<=4}

Carr2821{;Modified Sylvie Gallet frm. [101324,3444],1996
  ;passes=1 needs to be used with this PHC formula.
  b5=pixel-conj(0.1/pixel)
  b4=pixel-flip(0.1/pixel)-conj(0.001/pixel),
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
  l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
  bailout=16,iter=0:
  t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
  t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
  z=(|z|/5)+z*z+c-0.09/pixel
  iter=iter+1
  |z|<=bailout }

Carr3024{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=flip(pixel^2)-cabs(conj(pixel^7))-conj(0.01/pixel-flip(0.001/pixel))-0.3
b4=b5-conj(|0.1/b5|)
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*flip(b5)^3
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7496,-0.132)+flip(conj(c/10)),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3034{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=cabs(0.33-cos(pixel))/(0.33-tan(3*pixel))-0.4
b4=conj(pixel)*(pixel-flip(0.001/pixel))*(pixel-conj(0.01/pixel))
c=whitesq*(b4)-(whitesq==0)*conj(b4)
z=whitesq*(b5)-(whitesq==0)*sqr(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c^4)^(real(1)-(1,0))*(0.01+z^2)+(c/6)+(-0.6856,-0.132),
iter=iter+1
imag(flip(z))<=bailout
}

Carr3054(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=pixel-flip(0.01/pixel)-conj(0.1/pixel)+0.285
b4=conj(flip(sqr(sqr(pixel-conj(0.15/pixel)))))
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(conj(c/8)),
iter=iter+1
|z|<=bailout
}

Carr3074(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=cabs(pixel/2)-pixel*((0.3,0.6)+pixel)-conj(0.1/pixel)
b4=b5^2-conj(0.1/b5-flip(0.01/b5))-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+|(flip(c/10))|,
iter=iter+1
|z|<=bailout
}

Carr3095(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=conj(0.13/pixel)+flip(0.1/pixel)
b4=(-0.7456,0.2)
b5=flip(cabs(pixel))*cabs(pixel^2)+tanh(0.1/pixel)-sinh(0.1/pixel)-b3
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/12|)^2-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75),
iter=iter+1
|z|<=bailout
}

Carr3128(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=conj(pixel)*abs(pixel)*tan(pixel)-conj(0.1/pixel),
b4=1/sinh(1/(b5*b5))
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*cabs(|z/2|),c2=2.25*conj(z/2),c3=3.375*flip(z/2)^6,c4=5.0625*z^2,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(c/8),
iter=iter+1
|z|<=bailout
}

Gallet-3-02 { ; Sylvie Gallet [101324,3444], 1996
 z = pixel :
 x = real(z) , y = imag(z)
 x1 = x - p1*fn1(y+p2*fn2(y))
 y1 = y - p1*fn1(x+p2*fn2(x))
 z = x1+flip(y1)
 |z| <= 4
}

Gallet-5-07 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = z*(0,1) , y = z*(0,-1) :
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

Gallet-6-01 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y + p2*fn2(x - p3*fn3(y)))
   y1 = y - p1*fn1(x + p2*fn2(y - p3*fn3(x)))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 32
  }

Gallet-6-04 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) * fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) * fn3(p3*x))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 32
  }

Gallet-6-08 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) / fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) / fn3(p3*x))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 1024
  }

Gallet-7-01 { ; Sylvie Gallet [101324,3444], 1996
  j = -0.5 + flip(0.5*sqrt(3)) , j2 = j*j
  z = pixel :
   x = z*j , y = z*j2
   x1 = x - p1*fn1(y + fn2(p2*z))
   y1 = y - p1*fn1(z + fn2(p2*x))
   z1 = z - p1*fn1(x + fn2(p2*y))
   z = z1 + x1*j + y1*j2
    |z| <= 32
  }

Gallet-7-05  { ; Sylvie Gallet [101324,3444], 1997
  x = real(pixel) , y = imag(pixel) :
   dx = p1 * fn1(fn2(y)) , dy = p1 * fn3(fn4(x))
   x = x + dx , y = y + dy
   z = x + flip(y)
    (|dx| + |dy|) >= p2
  }

Gallet-8-03 { ; Sylvie Gallet [101324,3444], Mar 1997
              ; Requires periodicity = 0
   z = c = zn = pixel :
   zn = zn*zn + c
   test = |zn| < |z|
   z = zn*0.6*test + z*(test==0)
   |zn| <= 4
   }

Gallet-8-12 { ; Sylvie Gallet [101324,3444], Mar 1997
              ; Requires periodicity = 0
  h = cabs(pixel) , pinv = 1/p1
  bailout = 2*p1 , r = real(p2) , ir = imag(p2)
  beta = asin(h/r) , alpha = asin(h/(r*ir))
  z = pixel * (((h - sqrt(r*r - h*h) * tan(beta - alpha)) / h) * (h < r) \
      + (h >= r))
  center = round(p1*z) * pinv
  test = cabs(z-center) < 0.45*pinv
  z = cabs(center) + p1 * (test == 0)
  :
  z = z + pinv
  z <= bailout
  }

Gallet-8-13 { ; Sylvie Gallet [101324,3444], Mar 1997
              ; Requires periodicity = 0
   z = x = y  = pixel , a = p1 , b = p2 :
   z = z*z - a*z + b , x = z*z - a*y + b , y = z , z = x
   b = b + 0.00001
   |z| <= 16
   }

j+c2821    { ; Sylvie Gallet frm. [101324,3444],1997
  z = real(pixel)/real(p1) + flip (imag(pixel)/imag(p1)) - p2
  pixinv = 0.1/pixel , p9 = 0.9*pixinv
  c = (0.3459989467084647,0.0835267537688434)
  b4 = pixel - flip(pixinv) - conj(0.01*pixinv)
  b5 = pixel - conj(pixinv)
  cc1a = 1.5*b5^1.2 , cc1b = 1.5*(-b5)^1.2
  cc2 = 2.25*conj(b5) , cc3 = 3.3375*flip(b5) , cc4 = 5.0625*flip(b5)
  odev = iter = tw = 0 , mz = |z| :
   tw = tw || (mz>=16)
   z = z * (mz<16 || iter>=600)
   odev = odev==tw , odev2 = odev - (odev==0)
   c1 = cc1a * odev - cc1b * (odev==0) , c2 = cc2 * odev2
   c3 = cc3 * odev2 , c4 = cc4 * odev2
   t1 = iter==800 , t2 = iter==900 , t3 = iter==1000 , t4 = iter==1150
   t = (t1||t2||t3||t4) == 0
   c = c * (iter!=600 && t) + (b4 * odev2) * (iter==600 && t) \
       + c1*t1 + c2*t2 + c3*t3 + c4*t4
   z = (b5 * odev2) * (iter==600 && t) + (z*z + c)*(iter!=600) \
       + (0.2*|z| - p9)*(iter>600)
   iter = iter + 1 , mz = |z|
    iter <= 600 || mz < 16
  }

JDFancyFract {; requires Fractint 19.5
  row=imag(scrnpix)
  col=real(scrnpix)
  rows=imag(scrnmax)
  cols=real(scrnmax)
  y=row/(rows-1)
  x=col/(cols-1)
  in=0
  in=in+(x>.070&&x<.132&&y<.729&&y>.687)
  in=in+(x>.054&&x<.070&&y<.718&&y>.666)
  in=in+(x>.132&&x<.148&&y<.718&&y>.687)
  in=in+(x>.046&&x<.054&&y<.708&&y>.645)
  in=in+(x>.148&&x<.164&&y<.708&&y>.687)
  in=in+(x>.031&&x<.046&&y<.697&&y>.635)
  in=in+(x>.164&&x<.179&&y<.697&&y>.677)
  in=in+(x>.179&&x<.187&&y<.687&&y>.656)
  in=in+(x>.187&&x<.195&&y<.677&&y>.645)
  in=in+(x>.195&&x<.203&&y<.666&&y>.635)
  in=in+(x>.203&&x<.210&&y<.656&&y>.614)
  in=in+(x>.210&&x<.218&&y<.635&&y>.572)
  in=in+(x>.218&&x<.234&&y<.625&&y>.458)
  in=in+(x>.328&&x<.351&&y<.604&&y>.447)
  in=in+(x>.421&&x<.445&&y<.604&&y>.562)
  in=in+(x>.476&&x<.492&&y<.604&&y>.531)
  in=in+(x>.546&&x<.570&&y<.604&&y>.572)
  in=in+(x>.648&&x<.664&&y<.604&&y>.395)
  in=in+(x>.710&&x<.734&&y<.604&&y>.489)
  in=in+(x>.765&&x<.781&&y<.604&&y>.593)
  in=in+(x>.835&&x<.859&&y<.604&&y>.447)
  in=in+(x>.906&&x<.929&&y<.604&&y>.468)
  in=in+(x>.414&&x<.421&&y<.593&&y>.531)
  in=in+(x>.445&&x<.453&&y<.593&&y>.572)
  in=in+(x>.492&&x<.5&&y<.593&&y>.427)
  in=in+(x>.539&&x<.546&&y<.593&&y>.479)
  in=in+(x>.570&&x<.585&&y<.593&&y>.572)
  in=in+(x>.640&&x<.648&&y<.593&&y>.562)
  in=in+(x>.664&&x<.671&&y<.593&&y>.375)
  in=in+(x>.734&&x<.742&&y<.593&&y>.572)
  in=in+(x>.773&&x<.796&&y<.593&&y>.520)
  in=in+(x>.453&&x<.460&&y<.583&&y>.572)
  in=in+(x>.531&&x<.539&&y<.583&&y>.5)
  in=in+(x>.585&&x<.601&&y<.583&&y>.572)
  in=in+(x>.671&&x<.679&&y<.583&&y>.572)
  in=in+(x>.742&&x<.75&&y<.583&&y>.562)
  in=in+(x>.234&&x<.242&&y<.572&&y>.354)
  in=in+(x>.460&&x<.468&&y<.572&&y>.562)
  in=in+(x>.546&&x<.562&&y<.572&&y>.562)
  in=in+(x>.593&&x<.609&&y<.572&&y>.562)
  in=in+(x>.421&&x<.437&&y<.562&&y>.5)
  in=in+(x>.468&&x<.476&&y<.562&&y>.541)
  in=in+(x>.546&&x<.554&&y<.562&&y>.458)
  in=in+(x>.5&&x<.515&&y<.552&&y>.427)
  in=in+(x>.351&&x<.359&&y<.531&&y>.427)
  in=in+(x>.437&&x<.445&&y<.531&&y>.458)
  in=in+(x>.484&&x<.492&&y<.531&&y>.479)
  in=in+(x>.734&&x<.742&&y<.531&&y>.427)
  in=in+(x>.796&&x<.804&&y<.531&&y>.427)
  in=in+(x>.781&&x<.796&&y<.520&&y>.437)
  in=in+(x>.859&&x<.867&&y<.520&&y>.427)
  in=in+(x>.242&&x<.25&&y<.510&&y>.302)
  in=in+(x>.382&&x<.390&&y<.510&&y>.479)
  in=in+(x>.429&&x<.437&&y<.5&&y>.468)
  in=in+(x>.554&&x<.562&&y<.5&&y>.447)
  in=in+(x>.156&&x<.218&&y<.489&&y>.458)
  in=in+(x>.25&&x<.289&&y<.489&&y>.458)
  in=in+(x>.359&&x<.367&&y<.489&&y>.468)
  in=in+(x>.390&&x<.398&&y<.489&&y>.437)
  in=in+(x>.671&&x<.679&&y<.489&&y>.364)
  in=in+(x>.726&&x<.734&&y<.489&&y>.437)
  in=in+(x>.804&&x<.812&&y<.489&&y>.479)
  in=in+(x>.929&&x<.937&&y<.489&&y>.364)
  in=in+(x>.367&&x<.375&&y<.479&&y>.458)
  in=in+(x>.398&&x<.406&&y<.479&&y>.427)
  in=in+(x>.445&&x<.453&&y<.479&&y>.447)
  in=in+(x>.742&&x<.75&&y<.479&&y>.416)
  in=in+(x>.812&&x<.828&&y<.479&&y>.468)
  in=in+(x>.320&&x<.328&&y<.468&&y>.458)
  in=in+(x>.375&&x<.390&&y<.468&&y>.447)
  in=in+(x>.562&&x<.570&&y<.468&&y>.437)
  in=in+(x>.601&&x<.609&&y<.468&&y>.427)
  in=in+(x>.703&&x<.726&&y<.468&&y>.458)
  in=in+(x>.765&&x<.773&&y<.468&&y>.458)
  in=in+(x>.820&&x<.835&&y<.468&&y>.458)
  in=in+(x>.914&&x<.929&&y<.468&&y>.395)
  in=in+(x>.226&&x<.234&&y<.458&&y>.375)
  in=in+(x>.406&&x<.414&&y<.458&&y>.427)
  in=in+(x>.453&&x<.460&&y<.458&&y>.437)
  in=in+(x>.710&&x<.726&&y<.458&&y>.447)
  in=in+(x>.773&&x<.781&&y<.458&&y>.447)
  in=in+(x>.804&&x<.812&&y<.458&&y>.427)
  in=in+(x>.335&&x<.351&&y<.447&&y>.437)
  in=in+(x>.359&&x<.367&&y<.447&&y>.427)
  in=in+(x>.460&&x<.492&&y<.447&&y>.427)
  in=in+(x>.570&&x<.601&&y<.447&&y>.427)
  in=in+(x>.843&&x<.859&&y<.447&&y>.437)
  in=in+(x>.093&&x<.109&&y<.437&&y>.333)
  in=in+(x>.632&&x<.648&&y<.437&&y>.427)
  in=in+(x>.679&&x<.703&&y<.437&&y>.427)
  in=in+(x>.851&&x<.859&&y<.437&&y>.427)
  in=in+(x>.890&&x<.914&&y<.437&&y>.427)
  in=in+(x>.937&&x<.968&&y<.437&&y>.427)
  in=in+(x>.25&&x<.257&&y<.416&&y>.302)
  in=in+(x>.679&&x<.687&&y<.416&&y>.354)
  in=in+(x>.937&&x<.945&&y<.416&&y>.354)
  in=in+(x>.921&&x<.929&&y<.395&&y>.375)
  in=in+(x>.734&&x<.757&&y<.375&&y>.333)
  in=in+(x>.109&&x<.117&&y<.364&&y>.312)
  in=in+(x>.117&&x<.140&&y<.343&&y>.302)
  in=in+(x>.257&&x<.265&&y<.343&&y>.302)
  in=in+(x>.101&&x<.109&&y<.333&&y>.312)
  in=in+(x>.140&&x<.242&&y<.333&&y>.302)
  in=in+(x>.265&&x<.304&&y<.333&&y>.302)
  out=in==0
  test=in+out*4
  c=pixel
  z=in*(x+y/8)*689:
  z=(z-1)*in+(z*z+c)*out
  out*|z|+in<test*out+z*in
  ;SOURCE: jdmask1.frm
}

JDG-7-01c { ; Modified Sylvie Gallet frm
;image and 60 deg rotation w/ palette divided
  j = -0.5 + flip(0.5*sqrt(3)) , j2 = j*j , j3 = conj(flip(j))
  rot = whitesq+j3*j3*(whitesq==0)
  z = pixel*rot:
   x = z*j , y = z*j2
   x1 = x - p1*fn1(y + fn2(p2*z))
   y1 = y - p1*fn1(z + fn2(p2*x))
   z1 = z - p1*fn1(x + fn2(p2*y))
   z = z1 + x1*j + y1*j2
   t1 = (|z| <= 32)
   z = z*t1 + (t1==0)*((z*whitesq+conj(z)*(whitesq==0))*(imag(z)>=0) \
   + (conj(z)*whitesq+z*(whitesq==0))*(imag(z)<0))
   |z| <= 32
  }

jdphc08 {
z=pixel*whitesq+(pixel+p3)*(whitesq==0)
p=p1*whitesq+p2*(whitesq==0):
z=z*z+p
|z|<4
}

Jm_20 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1(z^pixel),
	|z|<=t
  }

jowe_63 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=sin(z)*(1+2*tan(z))+tan(z)*cos(z)
z=fn1(z)
|z|<=bailout
}

jowe_64 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=sin(z)*(1+2*tan(z))+tan(z)*cos(z)
q=real(z), r=imag(z)
z1=z*q, z2=z/q
z3=z*r, z4=z/r
z1=z1-z4, z2=z2+z3
z=fn1(z1-z2)-fn2(z2-z1)
|z|<=bailout
}

jowe_66 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=(tan(z)^2+cotan(z)^2)/(sin(z)^2-cos(z)^2)
z=fn1(z)
|z|<=bailout
}

jowe_67_2 { ; by Jo Weber [100424,35], 12/1996
z=c=pixel
bailout=p3 :
z1=sin(z)-tan(z)
z2=cos(z)-cotan(z)
z1=z1+c
z2=z2+(z1>=0)
z=z1*z2
z=fn1(z)
|z|<=bailout
}

JoWe-SG-8-12a  { ; Sylvie Gallet [101324,3444], Mar 1997
                 ; modified by JoWeber 3/1997
                 ; Requires periodicity = 0
  h = tan(pixel) , pinv = 1/p1
  bailout = 2*p1 , r = real(p2) , ir = imag(p2)
  beta = asin(h/r) , alpha = asin(h/(r*ir))
  z = pixel * (((h - sqrt(r*r - h*h) * tan(beta - alpha)) / h) * (h < r) \
      + (h >= r))
  center = round(p1*z) * pinv
  test = cabs(z-center) < 0.45*pinv
  z = cabs(center) + p1 * (test == 0)
  :
  z = z + pinv
  z <= bailout
  }

JoWe-SG-8-12b   { ; Sylvie Gallet [101324,3444], Mar 1997
                  ; modified by JoWeber 3/1997
                  ; Requires periodicity = 0
  h = tan(pixel) , pinv = 1/p1
  bailout = 2*p1 , r = real(p2) , ir = imag(p2)
  beta = asin(h/r) , alpha = asin(h/(r*ir))
  z = pixel * (((h - sqrt(r*r - h*h) * tan(beta - alpha)) / h) * (h < r) \
      + (h >= r))
  center = round(p1*z) * pinv
  test = cabs(z-center) < 0.7*pinv
  z = cabs(center) + p1 * (test == 0)
  :
  z = z + pinv
  z <= bailout
  }

JoWe-SG-8-12c   { ; Sylvie Gallet [101324,3444], Mar 1997
                  ; modified by JoWeber 3/1997
                  ; Requires periodicity = 0
  h = sin(pixel) , pinv = 1/p1
  bailout = 2*p1 , r = real(p2) , ir = imag(p2)
  beta = asin(h/r) , alpha = asin(h/(r*ir))
  z = pixel * (((h - sqrt(r*r - h*h) * tan(beta - alpha)) / h) * (h < r) \
      + (h >= r))
  center = round(p1*z) * pinv
  test = cabs(z-center) < 0.25*pinv
  z = cabs(center) + p1 * (test == 0)
  :
  z = z + pinv
  z <= bailout
  }

JoWe_XY_51m_1 { ; Jo Weber [100424,35] 11/1996
k=(6,4), l = (0,4)
pixel=cos(sin((k-pixel)/(l+pixel)))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
}

KC-1m {;via Jo Weber, July 1996
  c=p1
  d=p2
  e=p3
  z=pixel:
  z=fn1(z)/c - (d/fn2(z))
  |z|>p3
}

KC-2 {;Ken Conrad, 9/96
  a=p1
  b=p2
  c=p3
  z=pixel:
  z=(fn1(z)-a)/(fn2(z)-b)
  |z|<c
}

Lesfrm04 (xaxis) { 
  c=z=pixel:
  z=z+(fn1(c^2)/fn2(z^2))/c^4,
  |z| <=6
  ;SOURCE: les.frm
}

Lesfrm13 { ; Les St Clair, 1996
 z = pixel 
 x = fn1(z) , y = fn2(z):
 x = x*p1*pi
 y = y*p2*pi 
 z = x/y
 |z| <= 4
}

Lesfrm30 { ; Modified Sylvie Gallet formula
           ; Modified Gallet-5-08
           ; Les St Clair 1997
  z = pixel^0.5 , x = real(z) , y = imag(z) :
   x1 = x + p1*fn1(y + fn2(p2*x) + fn3(p3*y))
   y1 = y + p1*fn1(x + fn2(p2*y) + fn3(p3*x))
   x = x1*pi  , y = (y1*pi)/(x*x*x)
   z = x + flip(y) 
    |z| <= 32
  }

Lesfrm34 { ; Modified Sylvie Gallet formula
           ; Modified Gallet-5-08
           ; Les St Clair 1997
  z = pixel*pi , x = real(z), y = imag(z):
   x1 = x - p1*fn1(y + 0.5*fn2(y+fn1(x)) + fn3(p2*x) + fn3*fn1(p3*y)) 
   y1 = y - p1*fn1(x + 0.5*fn2(x+fn1(y)) + fn3(p2*y) + fn3*fn1(p3*x))
   x = x1^pi , y = y1^pi
   z = (x + flip(y))^pi
    |z| <= 32
  }

Lesfrm35 { ; Modified Sylvie Gallet formula
           ; Modified Gallet-5-08
           ; Les St Clair 1997
  z = pixel*pi , x = real(z), y = imag(z):
   x1 = x - p1*fn1(y + 0.5*fn2(y+fn1(x)) + fn3(p2*x) + fn3*fn1(p3*y)) 
   y1 = y - p1*fn1(x + 0.5*fn2(x+fn1(y)) + fn3(p2*y) + fn3*fn1(p3*x))
   x = x1+p1^pi , y = y1+p2^pi
   z = (x + flip(y))
    |z| <= 32
  }

LGDF0016 { ;Return of the Son of Nothing
           ;LGD (c)1996 [72332,507]
          c=z=pixel:
          z=z*z*(c*p2)*z+fn1(z+c)
          c=c*fn2(z)
          |z|<=p1
          }

M_Laguerre2 {
   c = P1, z = Pixel:
   z = (z*(z - 4) +2 ) / 2 + c,
   |z| < 100
}

m+j+n_2 {; Sylvie Gallet [101324,3444], 1996
         ; real(p1) = size of the Mandelbrot set
         ; imag(p1) = rotation angle (degrees): negative = clockwise
         ; p2 = parameter for the Julia set
         ; p3 = exponent for the Newton set
  p0 = p3 - 1 , odev = iter = tj = tn = tw = 0 , tm = 1
  z = cm = pixel * exp(-flip(imag(p1)) * 0.01745329252) / abs(real(p1)) :
  tw = tw || (|z| >= 16) || (iter == 300)
  z = (z*z+cm) * (tw == 0) + z * tw
  z = z * (iter != 300) + pixel * (iter == 300)
  zp0 = z^p0 , d = zp0 * p3 , n = zp0 * z - 1
  z = (-n/d+z) * tn + z * tm + (z*z+p2) * tj
  iter = iter + 1 , odev = (odev == tw)
  tj = (odev == 0) && (iter > 300)
  tn = odev && (iter > 300)
  tm = (iter <= 300)
  tm || ((|z| < 16) && tj) || ((|n| > 0.000001) && tn)
}

m+j+n_2+if { ; Sylvie Gallet [101324,3444], 1996
  p0 = p3 - 1 , odd = iter = wait = 0
  z = cm = pixel * exp(-flip(imag(p1)) * 0.01745329252) / abs(real(p1)) :
  odd = odd == wait
  if (iter < 300)
    if (wait == 0)
      z = z*z + cm
    endif 
    bailout = |z| <= 16
    if (bailout == 0)
      z = 0 , wait = 1 , bailout = 1
    endif 
  else 
    if (iter == 300)
      if (wait == 0)
        odd = 0 , wait = 1
      endif 
      z = pixel , bailout = 1
    else 
      if (odd)
        zp0 = z^p0 , d = zp0 * p3 , n = zp0 * z - 1
        z = (-n/d+z) , bailout = |n| > 0.000001
      else 
        z = z*z+p2 , bailout = |z| < 16
      endif 
    endif 
  endif 
  iter = iter + 1
  bailout
  }

PD_414 {; PHC version of PD_207
  bailout = 4 + p3
  z = z1 = pixel
  x = real(pixel), y = imag(pixel)
  c = fn1(x^p1) + fn1(y^p1):
  z1 = fn2(fn3(z1^p2)) + fn4(c)
  x1 = real(z1), y1 = imag(z1)
  z2 = -x1 + flip(y1)
  z = log(z1)*whitesq + log(z2)*(whitesq==0)
  |z| <= bailout
  ;SOURCE: pdg04.frm
}

