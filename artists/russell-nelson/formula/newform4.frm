billsfm4  {
  z = p1, temp = pixel :
  z = fn1(temp^p2)
  IF (5 < z)
    temp = fn2(temp)
  ELSE
    temp = fn3(z)
  ENDIF
  z < 100
}

WK990208 {
       z=c=pixel:
       z = z * z + pixel,
       if (fn1(|z|) < .05)
          z = z * 100
       endif
       |z| < 4
      }

bills_diff_delt1  { ; Apr-13-98
                   ; p1 = offset for y var
                   ; real p2 = base real exponent
                   ; imag p2 = base imag exponent
                   ; real p3 = exponent real delta
                   ; imag p3 = exponent imag delta
                   ;
  c = x = pixel, y = pixel + p1
  splus = real(p2) + real(p3) + flip(imag(p2) + imag(p3))
  sminus = real(p2) - real(p3) + flip(imag(p2) - imag(p3)):
  xtemp = x^splus +c
  x = fn1(xtemp)
  ytemp = y^sminus +c
  y = fn1(ytemp)
  d = |x-y|
  z = d^2
  |z| < 2
  ;SOURCE: 180998.frm
}

starFlexBalls_Mand {;adapted from Paul Carlson by Kathy Roth
; Copyright (c) Paul W. Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ;
    c=log(sqr(sqr(pixel))*pixel)*0.2
    w = z = iter = bailout = 0
    d0 = p1 + p2
    d1 = 0.382683432365 * p1
    d2 = 0.923879532511 * p1
    dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
    :
     w2=fn1(w)+c
    w=c*(1-w2*w2)/(1+w2*w2)
    ;
    IF ((abs(cabs(w) - p1) < p2) && iter > 0)
 bailout = 1
 wr = real(w), wi = imag(w)
 awr = abs(wr), awi = abs(wi)
 IF (awr >= awi)
     dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
     adjust = 1
 ELSE
     dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
     adjust = 0
 ENDIF
 IF     (wr >= 0 && wi >= 0)
     range_num = 1 - adjust
 ELSEIF (wr < 0 && wi >= 0)
     range_num = 2 + adjust
 ELSEIF (wr < 0 && wi < 0)
     range_num = 5 - adjust
 ELSE
     range_num = 6 + adjust
 ENDIF
 ratio = sqrt(dist / dsqd)
 z = 29 * ratio + range_num * 30 + 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1000
  ;SOURCE: 281098.frm
}

bills_wonder  {
  z = 1/pixel, a = real(p1), b = imag(p1):
  ztemp = z^a - z^b
  z = (fn1(ztemp)^p2)/z
  |z| < real(p3)
  ;SOURCE: 061098.frm
}

bills_xy-trade6  {
  a = real(p1), b = imag(p1)
  c = real(p2), d = imag(p2)
  e = real(p3), f = imag(p3)
  z = pixel+c/pixel
  zold = pixel^e:
  x = (real(z)-real(zold))^a
  y = (imag(z)-imag(zold))^b
  zold = fn3(z)
  z = (y +flip(x))
  z = ( (fn1(z)) - (fn2(zold)) )^d
  |z| < f
  ;SOURCE: 281098.frm
}

MandelbrotMix4 {; Jim Muth
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f
  h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1
  l=imag(p3)+100, c=fn1(pixel):
  z=k*((a*(z^b))+(d*(z^f)))+c
  |z| < l
}

MandelbrotMix4_v1 {; Jim Muth
  c=pixel, a=real(p1), b=imag(p1), d=real(p2), f=imag(p2)
  g=1/f, h=1/d, j=1/(f-b), z=(-a*b*g*h)^j:
  z=(a*(z^b))+(d*(z^f))+c
  |z| <= 100
}

la14{
z=pixel:
x=fn1(z+1),c=imag(fn2(z+1)),y=real(fn2(z))
z=(fn3(y)+fn4(c))+fn4(fn1(x)*(tan(y-1)))+whitesq
|z|<=4
}

Parallelogram {
 ;Nature Leseul
 z=0, z1=0, z2=0, c=pixel:
 z1 = (real(z1)+imag(z2))
 z2 = (real(z2)+imag(z1))
 z = z1*z2 + c
 z1 = z1*z1 + c
 z2 = z2*z2 + c
 |z| < 4
}

ParallelogramErr {
 ;Nature Leseul
 z=0, z1=0, z2=0, c=pixel:
 z1 = (real(z1)+imag(z2))
 z = z1*z2 + c
 z1 = z1*z1 + c
 z2 = z2*z2 + c
 |z| < 4
}

penmand1 {
a=(-1)^.4,
b=pixel,
c=sin(real(b))+flip(sin(imag(b))),
b=b*a,
c=c*a+sin(real(b))+flip(sin(imag(b))),
b=b*a,
c=c*a+sin(real(b))+flip(sin(imag(b))),
b=b*a,
c=c*a+sin(real(b))+flip(sin(imag(b))),
b=b*a,
c=c*a+sin(real(b))+flip(sin(imag(b))),
c=c*p1,
z=0:
z=sqr(z)+c,
|z|<=1000
}

Cayley-mand { ; Mark Townsend, 17 Feb 1999
; Always use floating point math and turn
; periodicity checking off.
;*************************
  z = oldz = 0, a = pixel:
;*************************
  oldz = z
  z = (2 * z * z * z - (a - 1)) / (3 * z * z - a)
  |z - oldz| >= 0.00001
}

Cayley-jul {  ; Mark Townsend, 17 Feb 1999
; Always use floating point math and turn
; periodicity checking off.
;*****************************
  z = pixel, a = p1, oldz = 0:
;*****************************
  oldz = z
  z = (2 * z * z * z - (a - 1)) / (3 * z * z - a)
  |z-oldz| >= 0.00001
}

billsfv4  {
  temp = pixel :
  z = fn1(temp^p1)
  IF (5 < z)
    temp = fn2(temp)
  ELSE
    temp = fn3(z)
  ENDIF
  z < 100
  }

bills-rotate3 {
  a = real(p1), b = imag(p1)
  c = real(p2), d = imag(p2)
  e = real(p3), f = imag(p3)
  w = pixel
  x = pixel
  y = pixel
  z = pixel
  :
  w = fn1(x+y)^a + w
  x = fn2(y+w)^b + x
  y = fn3(w+x)^c + y
  z = (w^2 - (x^2) * (y^2))*d + z*e
  |z| < f
}

delt2-UcPop {  ; Bill Decker mod 8-10-98
            ;5-29-98 kathy roth
            ;variant of Morgan Owens Uc03
            x=real(pixel), y=imag(pixel), h=imag(p2)
    t=p1, bailout = real(p2):
    newx = x+h*sin((y) - fn2(3*y))
    newy = y+h*sin((x) - fn2(3*x))
    x=newx, y=newy
    z=x-flip(y)
    x=real(z),y=imag(z)
    ax=4*x-2,ay=4*y-2
    Tx=fn1(ax*(ax*ax+2))
    Ty=fn1(ay*(ay*ay+2))
    x=x+t*Ty,y=y-t*Tx
    z=x-flip(y)
    |z|<=bailout
    }

Epsilon_Rot {;epsiloncross test rotated 45 degrees
    z=c=pixel:
    z=z*z+c
    r=real(z), i=imag(z)
    if ((((r-i)>-0.01) && ((r-i)<0.01)) || (((r+i)>-0.01) && ((r+i)<0.01)))
      z=1E6            ;forces escape
    endif
    |z| < 4
  }

gravity-z=pix { ; Kerry Mitchell 23feb99
        ;
        ; loosely based on gravitational attraction formula
        ;
        ; p1 = "time step", small in magnitude (about .1 or less)
        ;
        z1=1, dt2=p1, z=pixel, bailout=1000:
        z0=z1, z1=z, f=1/z-1/sqr(z)
        z=2*z1-z0+f*dt2, |z| < bailout
        }

gravity-dt2=pix { ; Kerry Mitchell 23feb99
        ;
        ; loosely based on gravitational attraction formula
        ;
        ; set p1 to about 1 in magnitude, e.g, (1.0,0.1)
        ;
        z1=1, z=p1, dt2=pixel, bailout=1000:
        z0=z1, z1=z, f=1/z-1/sqr(z)
        z=2*z1-z0+f*dt2, |z| < bailout
        }

gravijul {; r^(-2) Mark Christenson 1/25/98
; defaults: p1 = (1,0) p2 = (0,0) p3 = (4,0)
z = pixel:
w = fn1(z)
z = fn3(p1/fn2(w*w)) + p2
|z| < p3
;SOURCE: 98msg.frm
}

HenonJul{
bailout=real(p2)
a=real(p1)
b=imag(p1)
z=pixel:
x=real(z)
z=1+imag(z)-a*sqr(x)+flip(b*x)
|z|<=bailout}

HenonMan{
bailout=real(p2)
z=pixel
a=real(pixel)
b=imag(pixel):
x=real(z)
z=1+imag(z)-a*sqr(x)+flip(b*x)
|z|<=bailout}

MandelLattes(XYAxis)){
bailout=real(p2)+100
z=c=pixel:
zz=sqr(z)
z=c*((zz+2)*zz+1)/(z*(zz-1))
|z|<=bailout}

SimplePendulumG{
bailout=real(p2)+4
dt=real(p1)
z=pixel
pi2=Pi+Pi:
x=real(z)
y=imag(z)
z=x+y*dt+flip(y+fn1(pi2*x)*dt)
|z|<=bailout}

C06-29{;V.1.1 - earlier versions may be discarded
; = zC05-C04
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x
Tx=(fn1(xx*(xx*(xx-6)+7)-2))
yy=y*y
Ty=(fn1(yy*(yy*(yy-6)+7)-2))
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
test=(|Tx|+|Ty|)
test>=bailout && test<=1e30}

H04-26{;V.1.1 - earlier versions may be discarded
; = 2(xH(3)-3H(2))
t=p1,bailout=real(p3),z=pixel,v=imag(p3):
x=real(z),y=imag(z)
xx=x*x
Tx=(fn1(4*(4*xx*(xx-3)+3)))
yy=y*y
Ty=(fn1(4*(4*yy*(yy-3)+3)))
x=x-t*Ty,y=y+t*Tx
w=fn1(x+flip(y))
z=fn3(v/fn2(w*w))+p2
|z|<=bailout}

Ca07-26{;V.1.1.1 - earlier versions may be discarded
; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
a=p1
b=a*(a*(a*(a+6)+11)+6)/21
c=a+a+8
d=(a+a)*(a+11)/15+4
k=7*(a+5)/5
t=real(p2),bailout=real(p3),z=pixel,v=imag(p3):
x=real(z),y=imag(z)
xx=x*x
Tx=(fn1(b*x*(c*xx*((xx+xx)*(d*xx-k)+7)-7)))
yy=y*y
Ty=(fn1(b*y*(c*yy*((yy+yy)*(d*yy-k)+7)-7)))
x=x-t*Ty,y=y+t*Tx
w=fn1(x+flip(y))
z=fn3(v/fn2(w*w))+p2
|z|<=bailout}

C07-09{;V.1.1 - earlier versions may be discarded
; = zC06-C05
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x,yy=y*y
Tx=fn1(x*(xx*(xx*(xx-7)+12)-5))
Ty=fn1(y*(yy*(yy*(yy-7)+12)-5))
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

Beta07-09 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(-(((((((x+7)*x+42)*x+210)*x+840)*x+2520)*x+5040)*x+(5040*ex*ex-5040))/(x4*x4*ex))
  Ty=fn1(-(((((((y+7)*y+42)*y+210)*y+840)*y+2520)*y+5040)*y+(5040*ey*ey-5040))/(y4*y4*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}

Beta03-06{;V.1.1 - earlier versions may be discarded
; = Beta[3] = (-exp(-z)-3Beta[2])/z
r=p1,bailout=real(p2)/10000,z=pixel:
ez=exp(z)
z2=z*z
e1=ez*ez
e2=6*e1-6
e3=ez*z2*z2
f=(-(((z+3)*z+6)*z+e2)/e3)
fd=((((z+4)*z+6)*z-e2)*z+24*e1+24)/(e3*z)
fdd=(((((3*z+27)*z+74)*z-30*e^2+96)*z+48*e1+144)*z+264*e1+264)/(e3*z2)
oz=z
z=z-r*f/(fd-fdd*f/(fd+fd))
bailout<=|z-oz|}

Alpha04-22{;V.1.1 - earlier versions may be discarded
; = Alpha[4] = (exp(-z)-4Alpha[3])/z
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
x2=x*x,y2=y*y
Tx=fn1(((((x-4)*x+12)*x-24)*x+24)/(exp(x)*x2*x2*x))
Ty=fn2(((((y-4)*y+12)*y-24)*y+24)/(exp(y)*y2*y2*y))
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

Beta05-23{;V.1.1 - earlier versions may be discarded
; = Beta[5] = (-exp(-z)-5Beta[4])/z
t=p1,bailout=4,z=fn3(pixel):
x=real(z),y=imag(z)
ex=exp(x),ey=exp(y)
x2=x*x,y2=y*y
Tx=fn1(-(((((x+5)*x+20)*x+60)*x+120)*x+(120*ex*ex-120))/(x2*x2*x2*ex))
Ty=fn2(-(((((y+5)*y+20)*y+60)*y+120)*y+(120*ey*ey-120))/(y2*y2*y2*ey))
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

Uc05-28{;V.1.1 - earlier versions may be discarded
; = 2z(2z-1)U04-U03
t=p1,bailout=real(p2),z=pixel,x=real(pixel),y=imag(pixel),h=imag(p2):
newx=x-h*fn2(y+fn3(3*y))
newy=y-h*fn2(x+fn3(3*x))
x=newx,y=newy
ax=4*x-2,aax=ax*ax
Tx=(fn1(ax*(aax*(aax-4)+3)))
ay=4*y-2,aay=ay*ay
Ty=(fn1(ay*(aay*(aay-4)+3)))
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

H02-25{;V.1.1 - earlier versions may be discarded
; = 2(xH(1)-H(0))
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
ax=x+x
y=y+t*(fn1(ax*ax-2))
ay=y+y
x=x-t*(fn2(ay*ay-2))
z=x+flip(y)
|z|<=bailout}

Pc06-25{;V.1.1 - earlier versions may be discarded
; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
y=y+t*fn1((((((64*x-1528/5)*x+24628/45)*x-4553/10)*x+1055/6)*x-27)*x+1)
x=x-t*fn2((((((64*y-1528/5)*y+24628/45)*y-4553/10)*y+1055/6)*y-27)*y+1)
z=x+flip(y)
|z|<=bailout}

L04-29{;V.1.1 - earlier versions may be discarded
; = ((7-z)L(3)-3L(2))/4
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
Tx=(fn1(x*(x*(x*(x/8-2)/3+3)-4)+1))
Ty=(fn1(y*(y*(y*(y/8-2)/3+3)-4)+1))
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
test=(|Tx|+|Ty|)
test>=bailout && test<=1e30}

MandelLattesGen(Origin){
bailout=real(p2)+100
z=c=pixel:
zz=sqr(z)
z=c*fn1(zz+1)/(z*(zz-1))
|z|<=bailout}

rsp_a309{;rsp 3/99
c=z=pixel:
oz=z
z=z*z+c
test=fn1(z)/|oz|
|test|<p1 || |test|>p2}

rsp_a305{;rsp 3/99
c=z=pixel:
oz=z
z=z*z+c
test=c*|z|/|oz|
|test|<p1 || |test|>p2}

rsp_a304{;*rsp 3/99
c=z=pixel:
oz=z, z=z*z+c,test=|z|/|oz|
|test|<1 || |test|>2}

rsp_a301{;rsp 3/99
r=p1,c=z=pixel:
oz=z, z2=z*z,
z=r*(c/(z2*z2*z)+1/z2)
|z/oz|>p2}

MandNewt02 { ; Jim Muth
z=c=pixel:
a=z^p1+(c-1)*z-c
b=3*z^p2+c-1
z=z-p3*a/b
.000000000000000000000000000001 <= |a|
}

gfphsp01  {;r=-a/(t^2)
   z=fn1(pixel), a=real(p3), b=imag(p3):
   z=fn2(z^p1) + p2*fn3(-a/(z*z))
   |z|<=b
     ;SOURCE: gfpcur~1.frm
}

gfplob01 {;Lemniscate of Bernoulli
   z=fn1(pixel), x=real(z), y=imag(z):
   z=fn2(z^p1)+fn3(x*x-y*y-sqr(x*x+y*y))
   |z|<=4 + p2
     ;SOURCE: gfpcur~1.frm
}

Gallet-9-04 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
              ; Bailout: real part of p2 (must be > 0)
              ; Real and Imag parts of p1 must be > 0
              ; Imag part of p2 must be non-zero
              ; Use periodicity=0
   z1 = c = pixel , mz1 = cabs(fn2(z1)) , k = real(p1)*mz1
   bailout = real(p2) , z = imag(p1) :
   z1 = z1*z1 + c
   z1 = fn1(real(z1)) + flip(imag(z1)) , mz1 = cabs(z1)
   if (mz1 <= k)
      z1 = z1 + p3 , mz1 = cabs(z1)
   endif
   if (mz1 < imag(p1))
      z = z1^imag(p2)
   endif
   mz1 <= bailout
     ;SOURCE: gallet_9.frm
}

Carr3416(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b3=(1.224*cabs(pixel^5)-flip(conj(pixel)))
b5=(((conj(b3/2))*abs(b3)*(b3)^3-conj(0.01/b3))/(tanh(0.6/pixel)))+0.37
z=whitesq*b5^0.8456-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+(-0.7626073214,0.084796112)
iter=iter+1
imag(flip(z))<=bailout
}


rsp_a304 { ; 3/99     R Parracho
  c=z=pixel:
  oz=z, z=z*z+c,test=|z|/|oz|
  |test|<1 || |test|>2
}

rsp_may002{
    z=10*pixel
    a=z, an=1, n=i=0,
    :
    i=i+.5, n=a-i,
    an=an*n/(z^n), oz=z,
    z=1+z+an
    |z-oz|>.00001
    }

rsp_may005 {
    z=w=c=pixel, n=p1,
    :
    w=w*w+c, z=(w-floor(w))*n
    |w|<p2
    }

rsp_may007 {
    z=w=pixel, c=pixel, n=p1
    :
    z=z*z+c, w=(w-floor(w))*n
    |z|<p2  || |w|>n
    }

rsp_may008 {
    z=w=pixel, c=pixel, n=p1,
    :
    z=z*z+c, w=(z/n-floor(z/n))*n
    |z|<p2  || |w|>n
    }

rsp_may011(xaxis){
    n=a=b=c=d=e=f=g=f0=f1=0
    u=pixel, z=0, cc=pixel
    :
    n=n+1
    u=u*u+cc, a0=real(u), a1=imag(u),
    v=u*u+cc, b0=real(v), b1=imag(v),
    w=v*v+cc, c0=real(w), c1=imag(w),
    a=b0-a0, b=b1-a1, c=c0-a0, d=c1-a1
    e=a*(a0+b0) + b*(a1+b1),
    f=c*(a0+c0) + d*(a1+c1),
    g=2*(a*(c1-b1)-b*(c0-b0)),
    f0=(d*e-b*g)/f, f1=(a*g-c*e)/f,
    r2=sqrt((a0-f0)*(a0-f0)+(a1-f1)*(a1-f1)),
    z=ceil(cabs(v-u)+cabs(w-v)), count=n
    (|z|>=|r2*p1|)  || (count>257)
    }

rsp_may012{
    n=a=b=c=d=e=f=g=f0=f1=0
    u=pixel, z=0,
    cc=p2
    :
    n=n+1
    u=u*u+cc, a0=real(u), a1=imag(u),
    v=u*u+cc, b0=real(v), b1=imag(v),
    w=v*v+cc, c0=real(w), c1=imag(w),
    a=b0-a0, b=b1-a1, c=c0-a0, d=c1-a1
    e=a*(a0+b0) + b*(a1+b1),
    f=c*(a0+c0) + d*(a1+c1),
    g=2*(a*(c1-b1)-b*(c0-b0))
    f0=(d*e-b*g)/f, f1=(a*g-c*e)/f
    r2=sqrt((a0-f0)*(a0-f0)+(a1-f1)*(a1-f1)),
    z=ceil(cabs(v-u)+cabs(w-v)), count=n
    (|z|>=|r2*p1|)  || (count>257)
    }


MandNewt12 {; Jim Muth
z=g=pixel, a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), e=real(p3), f=imag(p3):
h=z^a+(g-1)*(z-b)
j=c*z^d+g
z=z-e*h/(f*j),
.0000000000000000000000000000005 <= |h|
}

rsp_a304 { ; 3/99     R Parracho
  c=z=pixel:
  oz=z, z=z*z+c,test=|z|/|oz|
  |test|<1 || |test|>2
}

JoWe55c36a { ; from a modified Carr-formula
            ; 6/1997 JoWeber CIS [100424,35]
c=z=p1/pixel:
z1=fn1(z) + c
z=fn2(z1) + p2
|z| <=p3
 }

JoWe55c36b { ; from a modified Carr-formula
            ; 6/1997 JoWeber CIS [100424,35]
c=z1=z2=p1/pixel:
z1=fn2(fn1(z1) + c) + p2
z2=fn4(fn3(z2) + c) + p2
z=z1*whitesq+z2*(whitesq==0)
|z| <=p3
 }

JoWe55d36a { ; from a modified Carr-formula
            ; 5/1999 JoWeber CIS [100424,35]
c=z=p1/pixel:
z1=fn1(z) + c
z=fn2(z1) + c/p2
|z| <=p3
 }

carr2821 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; Converted to if.else by Sylvie Gallet and George Martin 3/97
          ; passes=1 needs to be used with this PHC formula.
   pixinv = 0.1/pixel
   p9 = 0.9*pixinv
   imagp1 = imag(p1)
   imagp2 = imag(p2)
   IF (whitesq)
      z = zorig = pixel - conj(pixinv)
      c = pixel - flip(pixinv) - conj(0.01*pixinv) - p9
      mz = |z|
   ELSE
      c = flip(pixinv) + conj(0.01*pixinv) - pixel - p9
      z = zorig = conj(pixinv) - pixel
      mz = |z|
   ENDIF
   bailout = 16
   iter = 0
   :
   IF (iter==p1)
      z = mz = 0
      c = 1.5*zorig^1.2 - p9
   ELSEIF (iter==imagp1)
      z = mz = 0
      c = 2.25*conj(zorig) - p9
   ELSEIF (iter==p2)
      z = mz = 0
      c = 3.375*flip(zorig) - p9
   ELSEIF (iter==imagp2)
      z = mz = 0
      c = 5.0625*flip(zorig) - p9
   ENDIF
   z = mz*0.2 + z*z + c
   mz = |z|
   iter = iter + 1
   mz <= bailout
}

Carr3534(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b3a=(0.1+|0.018/pixel|)
b1=(|0.026/pixel|)-conj(|0.025/pixel|)-real(0.025/pixel)
b1a=flip(conj(0.1+pixel))*(pixel)-(conj(0.1/pixel))+sqr(flip(0.1/pixel))
b3=((b1a^1.5)/((|0.2/pixel|)))-conj(b3a)/pixel
b5=(|pixel/2|)*b3-flip(flip(0.046/pixel))^3.9+0.0015/pixel-0.066824
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
iter=iter+1
(conj(|z|))<=bailout
}

ObliqueManPlus {;Jim Muth
z=p1+pixel, c=p2+(p3*pixel):
z=sqr(z)+c,
|z| <=100
}

MandelbrotMiN {; Jim Muth
b=p1, z=p2, c=p3+pixel:
z=(-z)^(b)+c,
|z| <= 16
}

MandelbrotMix4 {; Jim Muth
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
g=1/f, h=1/d, j=1/(f-b), z=(-a*b*g*h)^j,
k=real(p3)+1, l=imag(p3)+100, c=fn1(pixel):
z=k*((a*(z^b))+(d*(z^f)))+c,
|z| < l
}

epanal{
        z=pixel :
        oldz=z
        z=fn1(oldz)
        real(p1)<=|z-oldz|
}

SimpleCurve {
        z = Pixel:
        z = 10^-sin(Pixel*z)
        |z| < 4
}

SimpleCurve1 {
        z = Pixel:
        if ( |z| < 2 )
         z = 10^-sin(Pixel*z)
        else
         z=0.2*z*Pixel/(Pixel+1)
        endif
        |z| < 4
}

equ{
  z=Pixel:
  z=tan(z)/sin(cos(z))
  real(z)/Imag(z) < real(p1)
  }


Carr2904{;Modified Sylvie Gallet frm. [101324,3444],1996
   ;passes=1 needs to be used with this PHC formula.
   b5=(pixel-conj(0.1/pixel-flip(0.01/pixel)))^5
   b4=pixel-conj(0.1/pixel-flip(0.01/pixel))
   c=whitesq*b4-(whitesq==0)*b4
   z=whitesq*b5-(whitesq==0)*b5
   c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
   l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
   bailout=16,iter=0:
   t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
   t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
   z=z*z+c,
   c=((z+c/2.125)-0.0125)
   iter=iter+1
   |z|<=bailout
   }

Carr2907(XYAXIS){ ; Halley PHC
   ;passes=1 needs to be used with this PHC formula.
   b5=1/pixel,
   z=b5*(whitesq+b5*(whitesq==0)):
   z5=z*z*z*z*z,
   z6=z5*z,
   z7=z6*z,
   z=(z-p1*((z7-z)/((14.0*z6-2)-(84.0*z5)*(z7-z)/(28.0*z6-4))))
   0.0001<=|z7-z|
   }

Carr2949 {; Modified Sylvie Gallet frm. [101324,3444],1996
  ; passes=1 needs to be used with this PHC formula.
  b4=(sqr(pixel))/(conj(2/pixel)*sin(2/pixel))
  b5=(b4/(cos(-0.7456,0.2)))-flip(0.1/pixel)+0.4
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.132)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
}

Carr2882{;Modified Sylvie Gallet frm. [101324,3444],1996
  ;passes=1 needs to be used with this PHC formula.
  b3=|sin(conj(conj(pixel^30.5)))|
  b4=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))
  b5=(-0.7564,0.21978)*((-1.099,-0.2249)/(-0.8606,-0.0959))-flip(0.001/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
  l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
  bailout=16,iter=0:
  t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
  t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
  z=(z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21)
  iter=iter+1
  |z|<=bailout
  }

Carr2926{; Modified-inandout04
  ;passes=1 needs to be used with this PHC formula.
  k=((1)*(|p1|<=0)+p1)
  test=(4*(real(p2)<=0)+real(p2)*(0<p2))
  b4=cabs(pixel*2)-log(conj(0.5/pixel)),
  b5=oldz=pixel-conj(pixel-1/log(tan(1/pixel))-1/log(2/pixel))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
  a=(|z|<=|oldz|)*(c)
  b=(|oldz|<|z|)*(c*k)
  c=(a+b)
  oldz=z
  z=z*z+c
  |z|<=test
  }

multirot05-XZ-YW {; Jim Muth
  ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
  e=exp(flip(real(p1*.01745329251994))),
  f=exp(flip(imag(p1*.01745329251994))),
  z=f*real(pixel)+p2, c=e*imag(pixel)+p3:
  z=z*(sqr(sqr(z)))+c,
  |z| <= 36
  }

multirot-XY-ZW {; draws 6 planes and many rotations
  ;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
  ;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
  z=sqr(z)+c,
  |z| <= 36
  }

MandNewt06 {; Jim Muth
z=c=(pixel*p1):
a=z^3+(c-p2)*z-c
b=p3*z^2+c-1
z=z-1*a/b
.000000000000000000000000000001 <= |a|
}

MandelbrotMix4 {; Jim Muth
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
g=1/f, h=1/d, j=1/(f-b), z=(-a*b*g*h)^j,
k=real(p3)+1, l=imag(p3)+100, c=fn1(pixel):
z=k*((a*(z^b))+(d*(z^f)))+c,
|z| < l
}

Carr2926 {; Modified-inandout04
          ; passes=1 needs to be used with this PHC formula.
  k=((1)*(|p1|<=0)+p1)
  test=(4*(real(p2)<=0)+real(p2)*(0<p2))
  b4=cabs(pixel*2)-log(conj(0.5/pixel))
  b5=oldz=pixel-conj(pixel-1/log(tan(1/pixel))-1/log(2/pixel))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
  a=(|z|<=|oldz|)*(c)
  b=(|oldz|<|z|)*(c*k)
  c=(a+b)
  oldz=z
  z=z*z+c
  |z|<=test
}

Carr2891 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel-conj(0.1/pixel)-flip(0.01/pixel)
  b3=|cos(conj(conj(pixel^30.5)))|
  b4=(conj(conj(0.15/log(exp(conj(conj(pixel^450))\
      -b3-0.4)-0.8))))+|flip(flip(2*b5^4))|
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}

Carr2939{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=flip(flip(pixel/2))^5-conj(0.13/pixel)-flip(0.1/pixel)+0.3,
b4=pixel^3-conj(0.13/pixel-cabs(0.1/pixel))
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=0.2*z^3+z^2+(-0.7656,-0.232)+c/10+c,
iter=iter+1
imag(flip(z))<=bailout
}

Twins (xaxis) { ;Two almost-connected 'Brots
                ;The authors left out the RECIP
                ;function outside of the fn
                ;choices, so the reciprocal formula
                ;  1/x  was used instead.
  z=0, c=pixel:
    z=z*z+c+(1/c)
    |z| < 4
}

Carr2939{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=flip(flip(pixel/2))^5-conj(0.13/pixel)-flip(0.1/pixel)+0.3,
b4=pixel^3-conj(0.13/pixel-cabs(0.1/pixel))
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=0.2*z^3+z^2+(-0.7656,-0.232)+c/10+c,
iter=iter+1
imag(flip(z))<=bailout
}

Carr2931{ ; Modified OK-42
;passes=1 needs to be used with this PHC formula.
b5=pixel,
p1x=real(p1)+1,p1y=imag(p1)+1,
p2x=real(p2)+1,p2y=imag(p2)+1
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
zx=real(z),zy=imag(z),
x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y),
y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x),
z=x+flip(y)+(-0.7456,-0.132)+(x+flip(y))/10,
|z|<=4
}

Carr2932{ ; Modified OK-42
;passes=1 needs to be used with this PHC formula.
b5=pixel,
p1x=real(p1)+1,p1y=imag(p1)+1,
p2x=real(p2)+1,p2y=imag(p2)+1
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
zx=real(z),zy=imag(z),
x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y),
y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x),
z=(|x+flip(y)|)+(x+flip(y))+(-0.7456,-0.132)+(x+flip(y))/10,
|z|<=4
}

Carr2929{ ; Modified OK-42
;passes=1 needs to be used with this PHC formula.
b5=1/pixel,
p1x=real(p1)+1,p1y=imag(p1)+1,
p2x=real(p2)+1,p2y=imag(p2)+1
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
zx=real(z),zy=imag(z),
x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y),
y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x),
z=x+flip(y),
|z|<=20
}

Carr2930{ ; Modified OK-42
;passes=1 needs to be used with this PHC formula.
b5=pixel,
p1x=real(p1)+1,p1y=imag(p1)+1,
p2x=real(p2)+1,p2y=imag(p2)+1
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
zx=real(z),zy=imag(z),
x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y),
y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x),
z=x+flip(y),
|z|<=4
}

Gallet-6-08 { ; Sylvie Gallet, 1996
z = pixel , x = real(z) , y = imag(z) :
x1 = x - p1*fn1(y + fn2(p2*x) / fn3(p3*y))
y1 = y - p1*fn1(x + fn2(p2*y) / fn3(p3*x))
x = x1 , y = y1
z = x + flip(y)
|z| <= 1024
}

Carr2931{ ; Modified OK-42
;passes=1 needs to be used with this PHC formula.
b5=pixel,
p1x=real(p1)+1,p1y=imag(p1)+1,
p2x=real(p2)+1,p2y=imag(p2)+1
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
zx=real(z),zy=imag(z),
x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y),
y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x),
z=x+flip(y)+(-0.7456,-0.132)+(x+flip(y))/10,
|z|<=4
}

Carr2932{ ; Modified OK-42
;passes=1 needs to be used with this PHC formula.
b5=pixel,
p1x=real(p1)+1,p1y=imag(p1)+1,
p2x=real(p2)+1,p2y=imag(p2)+1
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
zx=real(z),zy=imag(z),
x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y),
y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x),
z=(|x+flip(y)|)+(x+flip(y))+(-0.7456,-0.132)+(x+flip(y))/10,
|z|<=4
}

starnear_man { ; Kerry Mitchell 09oct98
        ;
        ; Mandelbrot, colors by nearest approach to 5 point star
        ; p1 = center of star
        ; cabs(real(p2)) = star size of star (try 1)
        ; sign(real(p2)) = pixel flag:
        ;   + = don't consider pixel--start after first iteration
        ;   - = consider pixel
        ; imag(p2) = star rotation angle, degrees
        ;   only use angles from 0 to 36 degrees
        ; use decomp=256, bailout hardcoded to 10^12
        ;
        ;  initialize iteration parameters
        ;
        zc=0, c=pixel, done=0, iter=1
        bailout=1e12, fmin=bailout
        ;
        ;  star parameters
        ;
        center=p1, xcen=real(center), ycen=imag(center)
        r=cabs(real(p2)), pixelflag=0
        if(real(p2)<0)
          pixelflag=1
        endif
        phi=imag(p2)/180*pi, twopi=2*pi, temp=twopi/10
        t0=phi, t1=t0+temp
        t2=t1+temp, t3=t2+temp, t4=t3+temp, t5=t4+temp
        t6=t5+temp, t7=t6+temp, t8=t7+temp, t9=t8+temp
        ;
        ;  set up control points
        ;
        x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
        x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
        x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
        x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
        x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        ;
        ;  if pixel flag =/= 0, then check pixel for how close
        ;    it is to star
        ;
        if(pixelflag!=0)
          x=real(zc), y=imag(zc), t=imag(log(zc-center))
          if(t<0)
            t=t+twopi
          endif
          if((t>t0)&&(t<=t1))
            f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
          elseif((t>t1)&&(t<=t2))
            f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
          elseif((t>t2)&&(t<=t3))
            f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
          elseif((t>t3)&&(t<=t4))
            f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
          elseif((t>t4)&&(t<=t5))
            f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
          elseif((t>t5)&&(t<=t6))
            f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
          elseif((t>t6)&&(t<=t7))
            f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          elseif((t>t7)&&(t<=t8))
            f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
          elseif((t>t8)&&(t<=t9))
            f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
          else
            f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          endif
          fmin=cabs(f)
        endif
        :
        ;  standard iteration, find polar angle of iterate
        ;
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc), t=imag(log(zc-center))
        if(t<0)
          t=t+twopi
        endif
        ;
        ;  compute how close iterate is to each side of star
        ;
        if((t>t0)&&(t<=t1))
          f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
        elseif((t>t1)&&(t<=t2))
          f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
        elseif((t>t2)&&(t<=t3))
          f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
        elseif((t>t3)&&(t<=t4))
          f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
        elseif((t>t4)&&(t<=t5))
          f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
        elseif((t>t5)&&(t<=t6))
          f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
        elseif((t>t6)&&(t<=t7))
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
        elseif((t>t7)&&(t<=t8))
          f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
        elseif((t>t8)&&(t<=t9))
          f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
        else
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
        endif
        f=cabs(f)
        ;
        ;  update minimum distance
        ;
        if(f<fmin)
          fmin=f
          zmin=zc
        endif
        ;
        ;  upon escape or maximum iterations:
        ;    set "done" flag
        ;    use minimum distance from star as polar angle of z
        ;      for use with decomp coloring
        ;
        if((|zc|>bailout)||(iter==maxit))
          done=1
          t=log(fmin)
          z=cos(t)+flip(sin(t))
        endif
        done==0
        }

MandelbrotMix4r { ;
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
g=1/f, h=1/d, j=1/(f-b), z=(-a*b*g*h)^j,
k=real(p3)+1, l=imag(p3)+100, c=fn1(pixel):
z=k*((a*(z^b))+(d*(z^f)))+c,
|z| < l
}

gravibrot { ; generalized r^(-2) by Mark "Bud" Christenson 3/13/98
; derived from gravijul, modified for v20.0 spacebar toggle 11/14/99
; defaults: p1 = (1,0) p2 = (0,0) p3 = (4,0)
if (ismand)
  z = p2, c = pixel
else
  z = pixel, c = p2
endif
:
   w = fn1(z)
   z = fn3(p1/fn2(w*w)) + c
   |z| < p3
  }

MandNewt11 {; Jim Muth
z=g=pixel, a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), e=real(p3), f=imag(p3):
h=z^a+(g-b)*z-f
j=c*z^d+g
z=z-e*h/j,
.0000000000000000000000000000005 <= |h|
}

MandelbrotMiN {; Jim Muth
b=p1, z=p2, c=p3+pixel:
z=(-z)^(b)+c,
|z| <= 16
}

MandNewt04 {; variation of Ikenaga function
z=c=pixel:
a=z^3+(c-1)*z-c
b=p1*z^2+c-1
z=z-p2*a/b
p3 <= |a|
}

RectPMnew {; Jim Muth
z=flip(real(pixel))+p2,
c=flip(imag(pixel))+p3,
a=real(p1)+1, b=imag(p1):
z=a*((-z)^b+z^b)+c,
|z| <= 250
}


Mandel_lake { ; Sylvie Gallet, Jan 16, 2000
;
; p1: Julia seed
; real part of p2: bailout value
; imag part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; This formula uses the new predefined variables:
; center  = (x  , y)
; magxmag = (mag, xmagfactor)
; rotskew = (rot, skew)

bailout = real(p2)

; Lake transformation
; -------------------

if (imag(p2) > 0 && imag(p2) <= 100)

  level = imag(p2) / 100         ; water level
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency

  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))

; The complex numbers u and v are defined as follow:
;   u = bottom_right_corner - bottom_left_corner
;   v = top_left_corner - bottom_left_corner

  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot

; Bottom_left_corner:
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot

  z = pixel - z3rd

; solves the equation z = a*u + b*v which is equivalent to the system:
;   re_z = a * re_u + b * re_v
;   im_z = a * im_u + b * im_v
; the solution (a,b) is:
;       | re_z   re_v |        | re_u   re_z |
;       | im_z   im_v |        | im_u   im_z |
;   a = ---------------    b = ---------------
;       | re_u   re_v |        | re_u   re_v |
;       | im_u   im_v |        | im_u   im_v |
;
; Only b is used and 0 <= b <= 1
;   b = 0  <==>  pixel at the bottom of the screen
;   b = 1  <==>  pixel at the top of the screen
;
; Since the formula parser uses complex numbers, I thought the
; easiest way to calculate b was:

  b = imag(conj(u)*z) / imag(conj(u)*v)

; the heart of the lake transform:
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
  endif

  z = z + z3rd

else
  z = pixel
endif

; Classic mandel/julia formula
if (ismand)
  c = z
else
  c = p1
endif
:
z = z*z + c
|z| <= bailout
}

JDG-7-01c {; Formula by Jim Deutch, Modified Sylvie Gallet frm
           ; image and 60 deg rotation w/ palette divided
  j = -0.5 + flip(0.5*sqrt(3)), j2 = conj(j)
  IF (whitesq)
    z = pixel
  ELSE
    z = -j2*pixel
  ENDIF
  :
  x = z*j , y = z*j2
  x1 = x - p1*fn1(y + fn2(p2*z))
  y1 = y - p1*fn1(z + fn2(p2*x))
  z1 = z - p1*fn1(x + fn2(p2*y))
  z = z1 + x1*j + y1*j2
  t1 = (|z| <= 32)
  t = t1 || (whitesq == (imag(z) >= 0))
  IF (t==0)
    z = conj(z)
  ENDIF
  t1
  ;SOURCE: sgjdg701.par
}

z3_newtbasin { ; Written by Sylvie Gallet for Kirsteen Duncan
               ; February 5, 2000
;
; Newtbasin for (z-p1) * (z-p2) * (z-p3)
; Use periodicity=0 and outside=real
;
  y = pixel , z = stop = 0
  iter = 0
  :
  num = (y-p1)*(y-p2)*(y-p3)
  den = 3*sqr(y) - 2*(p1+p2+p3)*y + (p1*p2 + p1*p3 + p2*p3)
  y = y - num / den
  if (cabs(y-p1) <= 0.001)
    z = 0 , stop = 1
  elseif (cabs(y-p2) <= 0.001)
    z = 1 , stop = 1
    elseif (cabs(y-p3) <= 0.001)
    z = 2 , stop = 1
  endif
  if (stop == 1)
    z = z - iter - 7
  endif
  iter = iter + 1
  stop == 0
}

Carr1313 {
  z=1/pixel, c=c1^2+c2^2, c2=pixel/z-(1.099,0)
  c1=conj(imag(pixel))+c2:
  z=z*z+c+sin(z)
  |real(z)|<=100
  ;SOURCE: 30carr.frm
}

Carr1313A {; Rearrangement of Carr1313, with no ghosting
  z=1/pixel, c2=pixel/z-(1.099,0), c1=conj(imag(pixel))+c2
  c=c1^2+c2^2:
  z=z*z+c+sin(z)
  |real(z)| <= 100
  ;SOURCE: form2.frm
}

GregsJuliaLB {; ©2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
z = Pixel, z = p2 * (log(fn1(z)) + log(fn2(z))) + p1:
z = p2 * (log(fn1(z)) + log(fn2(z))) + p1
ip = imag(p3)
rz = real(z)
iz = imag(z)
IF(ip<0.1)
ct = z
ELSEIF(ip<1.1)
ct = real(z)
ELSEIF(ip<2.1)
ct = imag(z)
ELSEIF((ip<3.1) && (|rz|>|iz|))
ct = real(z)
ELSEIF((ip<3.1) && (|rz|<=|iz|))
ct = imag(z)
ELSEIF((ip<4.1) && (|rz|<|iz|))
ct = real(z)
ELSEIF((ip<4.1) && (|rz|>=|iz|))
ct = imag(z)
ELSEIF(ip<5.1)
ct = (abs(rz) + abs(iz))
ELSEIF(ip<6.1)
ct = (rz + iz)
ELSE
ct = z
ENDIF,
|ct| <= |real(p3)|
  ;SOURCE: 150100.frm
}


GregsMandelP3 {; ©2000 Greg McClure
; p1 = offset, p2 = exponent, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/sqr = standard Mandelbrot
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Mandelbrot
z = p1 + Pixel:
z = fn1(z) + fn2(z)^p2 + Pixel
ip = imag(p3)
rz = real(z)
iz = imag(z)
IF(ip<0.1)
ct = z
ELSEIF(ip<1.1)
ct = real(z)
ELSEIF(ip<2.1)
ct = imag(z)
ELSEIF((ip<3.1) && (|rz|>|iz|))
ct = real(z)
ELSEIF((ip<3.1) && (|rz|<=|iz|))
ct = imag(z)
ELSEIF((ip<4.1) && (|rz|<|iz|))
ct = real(z)
ELSEIF((ip<4.1) && (|rz|>=|iz|))
ct = imag(z)
ELSEIF(ip<5.1)
ct = (abs(rz) + abs(iz))
ELSEIF(ip<6.1)
ct = (rz + iz)
ELSE
ct = z
ENDIF,
|ct| <= |real(p3)|
  ;SOURCE: 150100.frm
}

Mosaic {;  p1=Mandelbrot set coordinates
z=c=p1+.05*(fn1(fn2(real(pixel)))+\
flip(fn3(fn4(imag(pixel))))):
z=sqr(z)+c,
|z| <= 100
}

comment {
  Andrew Orphi Coppin, 10 May 2000AD
}

BrotBC { ; Z^2.5 + C
           ; real(p1) = phase shift.

  p = real(p1)
  Z = C = Pixel:
    Z = log(Z)
    IF(imag(Z) > p),Z = Z + flip(2*PI), ENDIF
    Z = exp(2.5*Z) + C
  |Z| < 4
}

MandelbrotBC { ; Z = Z^E + C
  e=p1
  p=real(p2)+PI
  q=2*PI*trunc(p/(2*PI))
  r=real(p2)-q
  Z=C=Pixel:
    Z=log(Z)
    IF(imag(Z)>r)
      Z=Z+flip(2*PI)
    ENDIF
    Z=exp(e*(Z+flip(q)))+C
  |Z|<4
}

JuliaBC { ; Z = Z^E + C
  e=p1
  p=real(p2)+PI
  q=2*PI*trunc(p/(2*PI))
  r=real(p2)-q
  C=p3
  Z=Pixel:
    Z=log(Z)
    IF(imag(Z)>r)
      Z=Z+flip(2*PI)
    ENDIF
    Z=exp(e*(Z+flip(q)))+C
  |Z|<4
}

Comment { Evolver
Plug these into the evolver, with real(p1) changing from 2 to 3 along the X
axis and real(p2) changine from -6 to +6 along the Y axis and you have a
real treat of an image (depending on the other parameters; I used p3=-1).
Now, if I can just remember how to do that IsMand() stuff...
}

perturbedCubic{
z=sqrt(-p1/3),c=pixel:
z=z^3+p1*z+c
|z|<=4
}

perturbedQuadratic{
z=-p1/2,c=pixel:
z=z^2+p1*z+c
|z|<=4
}

MandelbrotMix4 {; Jim Muth
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
g=1/f, h=1/d, j=1/(f-b), z=(-a*b*g*h)^j,
k=real(p3)+1, l=imag(p3)+100, c=fn1(pixel):
z=k*((a*(z^b))+(d*(z^f)))+c,
|z| < l
}

MMix4-lake-0257 { ; 6000401 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,100)
p_p2 = (-2,0.01)
p_p3 = (35,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j ,
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0270 { ; 6000417 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1.1)
p_p2 = (-1,-1.11)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j ,
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

ManLakefnfn  {  ; combines Mandel_lake  by Sylvie Gallet with Mandel(fn||fn)
                            ; function=fn1/fn2
                            ; p1 = Julia seed
                            ; real(p2) = bailout value
                            ; imag part of p2: 0 = lake transform disabled
                            ; any value between 0 and 100: water level in % of
                            ; screen height (0 = bottom, 100 = top)
                            ; real part of p3: amplitude of the wave (try 0.2)
                            ; imag part of p3: frequency (try 300)


bailout = real(p2),  shift = 0.5

; Lake transformation
; -------------------

if (imag(p2) > 0 && imag(p2) <= 100)

  level = imag(p2) / 100         ; water level
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency

  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))

; The complex numbers u and v are defined as follow:
;   u = bottom_right_corner - bottom_left_corner
;   v = top_left_corner - bottom_left_corner

  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot

; Bottom_left_corner:
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot

  z = pixel - z3rd

; solves the equation z = a*u + b*v which is equivalent to the system:
;   re_z = a * re_u + b * re_v
;   im_z = a * im_u + b * im_v
; the solution (a,b) is:
;       | re_z   re_v |        | re_u   re_z |
;       | im_z   im_v |        | im_u   im_z |
;   a = ---------------    b = ---------------
;       | re_u   re_v |        | re_u   re_v |
;       | im_u   im_v |        | im_u   im_v |
;
; Only b is used and 0 <= b <= 1
;   b = 0  <==>  pixel at the bottom of the screen
;   b = 1  <==>  pixel at the top of the screen
;
; Since the formula parser uses complex numbers, I thought the
; easiest way to calculate b was:

  b = imag(conj(u)*z) / imag(conj(u)*v)

; the heart of the lake transform:
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
  endif

  z = z + z3rd

else
  z = pixel
endif

; Classic mandel/julia formula
if (ismand)
  c = z
else
  c = p1
endif

:  ; (the all important colon - now iterate the following)

if (z*z <= shift)
  z = fn1(z) + c
else
  z = fn2(z) + c
endif
|z| <= bailout
}

