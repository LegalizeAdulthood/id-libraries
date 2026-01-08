; 96_MSG_2.FRM [compiled by Les St Clair 101461.2032@compuserve.com 1996]
; This file contains the Fractint "FRMs" required by the .pars in the
; 96_MSG_2.PAR compilation


2 { ; Sylvie Gallet [101324,3444]
  z0 = p1 , h = real(p2) , w = imag(p2) , b = real(p3)
  x0 = real(z0) , y0 = imag(z0) , w2 = w/2
  z1 = z0 + flip(b) , r1 = w2 - b , zc = z0 + w2 + flip(h-w2)
  z1c = z1 - zc
  theta = acos (r1/cabs(z1c)) + atan (imag(z1c) / real(z1c))
  xc = real(zc) , yc = imag(zc) , tanth = tan(theta)
  z = pixel , x = real(z) , y = imag(z)
  exp1 = (x0-x)/tanth + y0 + b , exp2 = (x-xc)*tanth + yc
  chr21 = ( abs(cabs(z-zc)-(w-b)/2) < b/2 ) &&  \
          ( y > y0+h-w2 || y > exp2 ) \
       || ( y < exp1 && y > exp1 - b/sin(theta) && y < exp2 ) \
       || ( y < y0 + b )
  test = chr21 && x > x0 && x < x0+w && y > y0 && y < y0+h :
  z = z*z + pixel
   |z| <= 16 && test==0
  }

2-2 { ; Sylvie Gallet [101324,3444]
  ; screen width: 2,  screen height: 1.5, lower left corner: (0,0)
  z0 = p1 , h = real(p2) , w = imag(p2) , b = real(p3)
  x0 = real(z0) , y0 = imag(z0) , w2 = w/2
  z1 = z0 + flip(b) , r1 = w2 - b , zc = z0 + w2 + flip(h-w2)
  z1c = z1 - zc
  theta = acos (r1/cabs(z1c)) + atan (imag(z1c) / real(z1c))
  xc = real(zc) , yc = imag(zc) , tanth = tan(theta)
  x = 2 * real(scrnpix) / real(scrnmax)
  y = 1.5 * (imag(scrnmax)-imag(scrnpix)-1) / imag(scrnmax)
  z = x + flip(y)
  exp1 = (x0-x)/tanth + y0 + b , exp2 = (x-xc)*tanth + yc
  chr21 = ( abs(cabs(z-zc)-(w-b)/2) < b/2 ) &&  \
          ( y > y0+h-w2 || y > exp2 ) \
       || ( y < exp1 && y > exp1 - b/sin(theta) && y < exp2 ) \
       || ( y < y0 + b )
  test = chr21 && x > x0 && x < x0+w && y > y0 && y < y0+h
  z = pixel :
  z = z*z + pixel
   |z| <= 16 && test==0
  }

BEJ-0041-a{; Brian E. Jones 102702,2213@Compuserve.com
z=c=pixel*.05:
z=sinh((z*z)+(c*c*((c*z)*pixel)))*pi
z=z*z+c
|z|<4
}

BEJ-N141{;
z=pixel/1.1357,c=sqr(abs(pixel)):
z=fn2(z)*pixel+fn1(c)
z=z*z-c
|0.0001|<z
}

BJ-Lesfrm13-002 { ;Modified Les St Clair formula "Lesfrm13"
 z = pixel
 x = fn1(z) , y = fn2(z):
 x = x*p1*pi
 y = y*p2*pi
 z = fn4(x/fn3(y))
 |z| <= 4
}

BJ-Lesfrm13-004 { ; Modified Les St Clair formula, 1996
                  ; modified by Brian E. Jones
 z = pixel
 x = fn1(z*z) , y = fn2(z*z):
 x = fn3(x)*p1*pi
 y = fn4(y)*p2*pi
 z = x/y
 |z| <= 4
}

BJ-SG-3-03-gb { ;Brian E. Jones [102702,2213]
                          ;Modified Sylvie Gallet [101324,3444], 1996
z = pixel , c = sin(conj(-0.81256,-0.1295)) :
 x = real(z) , y = imag(z)
 x1 = x - p1*fn1(x*x+p2*fn2(y)) * (whitesq == 0)+c* whitesq
 y1 = y - p1*fn1(y*y+p2*fn2(x))
 z = x1+flip(y1)
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

Carr2110{;Modified Sylvie Gallet frm. [101324,3444],1996
c=(-0.8006,-0.149) , p01 = 0.10/pixel
z=pixel-1/log(p01)-cos(p01+1.25)+conj(p01)
z1=1.5*z , z2=2.25*z , z3=3.375*z , z4=5.0625*z,
l1=(real(p1)),l2=(imag(p1)),l3=(real(p2)),l4=(imag(p2)),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
z = z*t + ct , c = c*t + ct
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2330(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)), m=tan(pixel)-tanh(pixel),
z=2*m+flip(pixel),c=(-0.7,0.2), d1=conj(conj(0.0003545/-pixel))+(tanh(0.00010/pixel)),
z1=c1=(1*z+d1),z2=c2=(1.5*z+d1),z3=c3=(2.25*z+d1),z4=c4=(3.375*z+d1),
z5=c5=(5.0625*z+d1), l1=(real(p1)),l2=(imag(p1)),l3=(real(p2)),l4=(imag(p2)),l5=(300)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5)
z=z*(1-(t1||t2||t3||t4))+(z1*t1-d1)+(z2*t2+d1)+(z3*t3+d1)+(z4*t4+d1)+(z5*t5+d1)
c=c*(1-(t1||t2||t3||t4))+(c1*t1+d1)+(c2*t2+d1)+(c3*t3+d1)+(c4*t4+d1)+(c5*t5+d1)
z=z^2.45+c+sinh(z/6), iter=iter+1, (|real(z)|) <=bailout
}

Carr2579(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(pixel-conj(conj(0.10/pixel))-cotan(cotan(1/pixel)))
c=1/(pixel+cosxx(1.5/(sqr(cos(pixel+conj(pixel))))))
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c-0.49/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2599(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=exp(conj(conj(pixel^20))-flip(flip(pixel)^4)-0.4)-0.5
c=z-0.0625-conj(0.10/pixel),
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.10/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
z=(|z|/5)+z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2664(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(exp(conj(conj(pixel^450))-cosh(conj(conj(pixel^20.5)))-0.4)-0.5)
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)),
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
z=z*z+c+0.19/pixel,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2669(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-cos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=(sinh(tanh(0.63-cos(pixel)))/(cosxx(6*pixel+0.6)))-0.1
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.013/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
z=z*z+c+0.125/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2694(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
m3=conj(0.10/pixel),
z=pixel/2-flip(m3)^4,
b3=|cos(conj(conj(pixel^30.5)))|
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))+|flip(flip(2*z^4))|
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+0.30-0.03/pixel;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0048095
z=z*z+c+0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2709(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=conj(conj(flip(abs(pixel/2)))/(flip(cabs(pixel))))+0.1,
b3=|cos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*c^4))|
z=(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3-0.4)-1.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.03/pixel
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002095
z=z*z+c+0.15/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2735(YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
;passes 1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=flip(pixel)+0.25/log(cos(1/pixel))*(tan(0.1/pixel))
b5=cabs(pixel)+0.15/log(cosxx(1/pixel))*(tan(0.1/pixel))
c=whitesq*b4-(whitesq==0)*b4-0.3
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2763(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=(pixel*(abs(1.15*pixel-flip(0.0010/pixel)-conj(0.30/pixel))))-0.1
b4=pixel-(1/log(pixel-1/cos(0.010/pixel))^5),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2763_hm  {;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
;modified Carr2763 using "FracText" (alpha-3) by Jan Maarten van der Valk
;places the text "BOB CARR 1996" in bottom right corner
x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnpix))/imag(scrnma\
x), z=x+flip(y)
chrB1 = y<0.01195||(y<0.01848&&y>0.01652)||y>0.02305||x<0.80195&&(x>0.8&&x\
<0.80495)||(abs(cabs(z+(-0.80495,-0.01424))-0.00326)<0.00097&&x>0.80495)||\
(abs(cabs(z+(-0.80495,-0.02076))-0.00326)<0.00097&&x>0.80495)
chrO2 = abs(cabs(z+(-0.81744,-0.0175))-0.00652)<0.00097&&x<0.82494
chrB3 = y<0.01195||(y<0.01848&&y>0.01652)||y>0.02305||x<0.82764&&(x>0.8256\
9&&x<0.83064)||(abs(cabs(z+(-0.83064,-0.01424))-0.00326)<0.00097&&x>0.8306\
4)||(abs(cabs(z+(-0.83064,-0.02076))-0.00326)<0.00097&&x>0.83064)
xc=1*x
chrC5 = abs(cabs(z+(-0.85062,-0.0175))-0.00652)<0.00097&&(x<0.85062||y>xc-\
0.83313||y<-xc+0.86812)
xa=3*x
chrA6 = y>xa-2.5662||y>-xa+2.61004||(y<0.016&&y>0.01405)&&y<xa-2.56004&&y<\
-xa+2.6162
xr=2*x
chrR7 = y<0.01848&&y>0.01652||y>0.02305||x<0.87143&&x>0.86948&&x<0.87443||\
(abs(cabs(z+(-0.87443,-0.02076))-0.00326)<0.00097&&x>0.87443)||(y<0.0175&&\
y<-xr+1.76734&&y>-xr+1.76298)
chrR8 = y<0.01848&&y>0.01652||y>0.02305||x<0.88137&&x>0.87942&&x<0.88437||\
(abs(cabs(z+(-0.88437,-0.02076))-0.00326)<0.00097&&x>0.88437)||(y<0.0175&&\
y<-xr+1.78722&&y>-xr+1.78286)
x1=1.5*x
chr110 = y<x1-1.32529&&y>x1-1.3288&&y>-x/1.5+0.61791||(x>0.90059&&x<0.9025\
4)
chr911 = abs(cabs(z+(-0.90752,-0.01424))-0.00326)<0.00097&&y<0.01424||abs(\
cabs(z+(-0.90752,-0.02076))-0.00326)<0.00097||(x>0.90981&&x<0.91176&&y>0.0\
1424&&y<0.02076)
chr912 = abs(cabs(z+(-0.91675,-0.01424))-0.00326)<0.00097&&y<0.01424||abs(\
cabs(z+(-0.91675,-0.02076))-0.00326)<0.00097||(x>0.91904&&x<0.92099&&y>0.0\
1424&&y<0.02076)
chr613 = abs(cabs(z+(-0.92597,-0.02076))-0.00326)<0.00097&&y>0.02076||abs(\
cabs(z+(-0.92597,-0.01424))-0.00326)<0.00097||(x>0.92174&&x<0.92369&&y>0.0\
1424&&y<0.02076)
test = chrB1||chrO2||chrB3||chrC5||chrA6||chrR7||chrR8||chr110||chr911||ch\
r912||chr613&&y>0.01&&y<0.025
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=(pixel*(abs(1.15*pixel-flip(0.0010/pixel)-conj(0.30/pixel))))-0.1
b4=pixel-(1/log(pixel-1/cos(0.010/pixel))^5),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c,
iter=iter+1
|real(z)|<=bailout&&test==0
}

Carr2793(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=b5=conj(conj(pixel^5))+flip(flip(0.1/pixel))-0.3-conj(0.1/pixel)^12,
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^4-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0095
z=z^2+c-conj(0.1/pixel),
iter=iter+1
(|real(z)|)<=bailout
}

;CN_02_phc_r(XAXIS){; Jo Weber, 8/1996
;See modified, resolution independent, version "JoWe_CN_02_PHC", below
  ; p2 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
;   count = (count + 1) * (count != (p2-1))
;   evenodd = (evenodd == (count == 1))
;   oddeven = (evenodd == 0)
;   pm1 = p1-1.51,  z = pixel :
;   oldz = z,
;   z = (pm1*(z^p1)*oddeven +1)/(p1 * z^pm1)+z*evenodd
;   |(z-oldz)|>=|0.001|
; }

JoWe_CN_02_PHC(XAXIS){ ; Jo Weber [100424,35], 1996  Requires passes=1
  pm1 = p1-1.51,  z = pixel :
  oldz = z,
  z = (pm1*(z^p1)*(whitesq==0) +1)/(p1 * z^pm1)+z*whitesq
  |(z-oldz)|>=|0.001|
}

Cubic (XYAXIS) {; Lee Skinner
  p = pixel, test = p1 + 3
  t3 = 3*p, t2 = p*p
  a = (t2 + 1)/t3, b = 2*a*a*a + (t2 - 2)/t3
  aa3 = a*a*3, z = 0 - a :
   z = z*z*z - aa3*z + b
    |z| < test
 }

Don't_do_that! {
 c = pixel :
 c = e^c
 z = fn1(c)
  |z| <= 16
 }

F_TEXT_A2Z { ; Les St Clair 1996
          ; Created using "FracText" (alpha-1) by Jan Maarten van der Valk
          ; formulas "ABCDEFG","HIJKLMN","OPQRSTU" & "VWXYZ" were amalgamated
          ; suggested default values for fn1|fn2|fn3 are exp|ident|ident
z = fn1(log(pixel-.025))*2, x=real(z), y=imag(z), xa=3.00000*x, xc=1.00000*x, xk=1.50000*x, xm=2.50000*x, xn=2.50000*x, xq=1.40000*x, xr=2.00000*x,
xv=3.50000*x, xw=4.00000*x, xx=2.00000*x, xy=2.50000*x, xz=1.50000*x, xsl=4.00000*x
x1=1.50000*x
chra1 = (y>(xa+11.16754)||y>(-xa+-7.20000))||(y<1.70000&&y>1.50000)
chra1 = chra1&&(y<(xa+11.80000)&&y<(-xa+-6.56754))
chrb2 = y<1.50000||(y<1.90000&&y>1.70000)||y>2.10000||x<-2.22251
chrb2 = chrb2&&((x>-2.42251)&&(x<-2.02251))
chrb2 = chrb2 || ((cabs(sqrt(|z+(2.02251,-1.60000)|)-0.20000)<0.10000)&&(x>-2.02251))
chrb2 = chrb2 || ((cabs(sqrt(|z+(2.02251,-2.00000)|)-0.20000)<0.10000)&&(x>-2.02251))
chrc3 = (cabs(sqrt(|z+(1.02251,-1.80000)|)-0.40000)<0.10000)&&(y>xc+2.82251||y<-xc+0.77749)
chrd4 = (y<1.50000)||(y>2.10000)
chrd4 = ((x<-0.26896) || chrd4)&&((x>-0.46896)&&(x<-0.16896))
chrd4 = chrd4 || ((cabs(sqrt(|z+(0.16896,-1.80000)|)-0.40000)<0.10000)&&(x>-0.16896))
chre5 = (y<1.50000)||((y<1.90000)&&(y>1.70000))||(y>2.10000)
chre5 = ((x<0.73104)||chre5)&&((x>0.53104)&&(x<1.13104))
chrf6 = (y<1.90000&&y>1.70000)||(y>2.10000)
chrf6 = ((x<1.53104)||chrf6)&&((x>1.33104)&&(x<1.93104))
chrg7 = (cabs(sqrt(|z+(-2.63104,-1.80000)|)-0.40000)<0.10000)&&(x<2.63104)
chrg7 = chrg7||((cabs(sqrt(|z+(-2.63104,-1.80000)|)-0.40000)<0.10000)&&(x>2.63104)&&(y<1.90000||y>2.00000))
chrg7 = chrg7||(x>2.63104&&x<3.13104&&y<1.90000&&y>1.70000)
chrh1 = ( (y<0.70000) && (y>0.50000))
chrh1 = (x<-3.30000 || x>-2.90000 || chrh1) && (x>-3.50000 && x<-2.70000)
chri2 = x>-2.50000 && x<-2.30000
chrj3 = (cabs(sqrt(|z+(1.80000,-0.40000)|)-0.20000)<0.10000) && (y<0.35000)
chrj3 = chrj3||(x>-1.70000&&y>0.35000)&&x<-1.50000
chrk4 = (x<-1.10000)
chrk4 = chrk4 || (y<(xk+2.38333)&&y>(xk+2.02278))
chrk4 = chrk4 || (y>(-xk+-1.18333)&&y<(-xk+-0.82278) && y<(xk+2.38333))&&x>-1.30000
chrl5 = (x<-0.21519||y<0.30000)&&x>-0.41519&&x<0.18481
chrm6 = (y>-xm+2.06204&&y<-xm+2.60055)
chrm6 = chrm6||(y<xm+-1.19537&&y>xm+-1.73389)&&y>0.43333
chrm6 = chrm6||(x>0.38481&&x<0.58481)||(x>0.93355&&x<1.13355)
chrn7 = (x>1.33355&&x<1.53355)||(x>1.73355&&x<1.94896)
chrn7 = chrn7 || (y>-xn+4.43389&&y<-xn+4.97240)
chro1 = (cabs(sqrt(|z+(3.00000,0.60000)|)-0.40000)<0.10000) && (x<-2.50000)
chrp2 = (y<-0.50000&&y>-0.70000)||y>-0.30000||x<-2.10000
chrp2 = chrp2&&((x>-2.30000) && (x<-1.90000))
chrp2 = chrp2 || ((cabs(sqrt(|z+(1.90000,0.40000)|)-0.20000)<0.10000) && (x>-1.90000))
chrq3 = (cabs(sqrt(|z+(0.90000,0.60000)|)-0.40000)<0.10000) && (x<-0.40000)
chrq3 = chrq3||(y>-xq+-2.00409&&y<-xq+-1.66000&&y<-0.74409)
chrr4 = (y<-0.50000&&y>-0.70000)||y>-0.30000||x<0.00000
chrr4 = chrr4&&((x>-0.20000) && (x<0.20000))
chrr4 = chrr4 || ((cabs(sqrt(|z+(-0.20000,0.40000)|)-0.20000)<0.10000) && (x>0.20000))
chrr4 = chrr4||(y<-0.60000&&y<-xr+-0.10000&&y>-xr+-0.54721)
chrs5 = (cabs(sqrt(|z+(-1.00000,0.40000)|)-0.20000)<0.10000)&&(x<1.00000||y>-0.40000)
chrs5 = chrs5||((cabs(sqrt(|z+(-1.00000,0.80000)|)-0.20000)<0.10000)&&(x>1.00000||y<-0.80000))
chrt6 = y>-0.30000&&x>1.50000&&x<2.10000
chrt6 = chrt6||(x>1.70000&&x<1.90000)
chru7 = (cabs(sqrt(|z+(-2.60000,0.80000)|)-0.20000)<0.10000)&&(y<-0.85000)
chru7 = chru7||(x>2.30000&&y>-0.85000&&x<2.50000)
chru7 = chru7||(x>2.70000&&x<2.90000)
chrv1 = y>-xv+-13.55000&&y<-xv+-12.82199
chrv1 = chrv1||y<xv+8.95000&&y>xv+8.22199
chrw2 = y<xw+6.78227&&y>xw+5.95765
chrw2 = chrw2||(y>-xw+-10.04894&&y<-xw+-9.22432)&&y<-1.63333
chrw2 = chrw2||(y>-xw+-11.38227&&y<-xw+-10.55765)
chrw2 = chrw2||(y<xw+5.44894&&y>xw+4.62432)
chrx3 = (y<xx+0.26216&&y>xx+-0.18505)||(y>-xx+-3.86216&&y<-xx+-3.41495)
chry4 = (y<xy+-1.40632&&y>xy+-1.94483)||(y>-xy+-2.19368&&y<-xy+-1.65516)&&y>xy+-1.94483
chrz5 = (y<xz+-2.78690&&y>xz+-3.14746)||y>-1.50000||y<-2.10000&&x>0.45793&&x<1.09830
test1 = 1 - fn2(real(chra1||chrb2||chrc3||chrd4||chre5||chrf6||chrg7)*real(y>1.30000)*real(y<2.30000))
test2 = 1 - fn2(real(chrh1||chri2||chrj3||chrk4||chrl5||chrm6||chrn7)*real(y>0.10000)*real(y<1.10000))
test3 = 1 - fn2(real(chro1||chrp2||chrq3||chrr4||chrs5||chrt6||chru7)*real(y>-1.10000)*real(y<-0.10000))
test4 = 1 - fn2(real(chrv1||chrw2||chrx3||chry4||chrz5)*real(y>-2.30000)*real(y<-1.30000))
z = 1+(0,-.65)/fn3(pixel+(0.0,.75)) :
z2 = z*z , z4 = z2*z2 , n = z4*z2-1 , z = z-n/(6*z4*z)
(|n|>=.0001) && test1 && test2 && test3 && test4
}

FractalText { ; assembled by Jan Maarten van der Valk [100256,3721]
              ; original by Les St Clair
              ; requires 'periodicity=0'
  x=real(scrnpix)/real(scrnmax)
  y=(imag(scrnmax)-imag(scrnpix))/imag(scrnmax)
  z=x+flip(y)
  chrF1 = x<0.0675||(y<0.74375&&y>0.70625)||y>0.7625&&x>0.03&&x<0.1275
  xr=2*x
  chrR2 = y<0.74375&&y>0.70625||y>0.7625||x<0.1725&&x>0.135 \
    &&x<0.2025||(abs(cabs(z+(-0.2025,-0.75312))-0.02812)<0.01875 \
    &&x>0.2025)||(y<0.725&&y<-xr+1.14875&&y>-xr+1.0649)
  xa=3*x
  chrA3 = y>xa-0.23921||y>-xa+1.72063||(y<0.71&&y>0.6725) \
    &&y<xa-0.12063&&y<-xa+1.83921
  xc=1*x
  chrC4 = abs(cabs(z+(-0.4639,-0.725))-0.05625)<0.01875 \
    &&(x<0.4639||y>xc+0.2611||y<-xc+1.1889)
  chrT5 = y>0.7625&&x>0.52444&&x<0.63694||(x>0.56194&&x<0.59944)
  chrA6 = y>xa-1.35689||y>-xa+2.83831||(y<0.71&&y>0.6725) \
    &&y<xa-1.23831&&y<-xa+2.95689
  chrL7 = x<0.81396||y<0.6875&&x>0.77646&&x<0.87396
  test1 = chrF1||chrR2||chrA3||chrC4||chrT5||chrA6||chrL7&&y>0.65&&y<0.8
  chrT1 = y>0.3495&&x>0.028&&x<0.256||(x>0.09925&&x<0.18475)
  chrE2 = x<0.35575||y<0.2355||(y<0.33525&&y>0.24975) \
    ||y>0.3495&&x>0.27025&&x<0.46975
  xx=2*x
  chrX3 = y<xx-0.818&&y>xx-1.00918||(y>-xx+1.403&&y<-xx+1.59418)
  chrT4 = y>0.3495&&x>0.73634&&x<0.96434||(x>0.80759&&x<0.89309)
  test2 = chrT1||chrE2||chrX3||chrT4&&y>0.15&&y<0.435
  test = test1||test2
  f1=sin(.5*pixel)
  f2=1/(32*pixel)
  pixel=(test==0)*f1+(test!=0)*f2
  z=1+(0,-0.65)/fn3(pixel+(0,0.75)):
  z2=z*z, z4=z2*z2, n=z4*z2-1, z=z-n/(6*z4*z)
  |n|>=.0001
  }

FRACTEST { ; TEST formula by Les St Clair 1996
          ; Created using "FracText" by Jan Maarten van der Valk
          ; Two formulas "FRAC" and "TEXT" have been amalgamated
          ; There is an error in the way the program handles the letter "C"
z = fn1(log(pixel-.025))*2, x=real(z), y=imag(z), xa=3.00000*x, xc=1.00000*x, xk=1.50000*x, xm=2.50000*x,
xn=2.50000*x, xq=1.40000*x, xr=2.00000*x,
xv=3.50000*x, xw=4.00000*x, xx=2.00000*x, xy=2.50000*x, xz=1.50000*x, xsl=4.00000*x
x1=1.50000*x
chrf1 = (y<1.25000&&y>1.15000)||(y>1.60000)
chrf1 = ((x<-1.15000)||chrf1)&&((x>-1.25000)&&(x<-0.75000))
chrr2 = (y<1.25000&&y>1.15000)||y>1.60000||x<-0.60000
chrr2 = chrr2&&((x>-0.70000) && (x<-0.40000))
chrr2 = chrr2 || ((cabs(sqrt(|z+(0.40000,-1.42500)|)-0.22500)<0.05000) && (x>-0.40000))
chrr2 = chrr2||(y<1.20000&&y<-xr+0.45000&&y>-xr+0.22639)
chra3 = (y>(xa+0.60877)||y>(-xa+2.47500))||(y<1.10000&&y>1.00000)
chra3 = chra3&&(y<(xa+0.92500)&&y<(-xa+2.79123))
chrc4 = (cabs(sqrt(|z+(-1.24708,-1.20000)|)-0.45000)<0.05000)&&(y>xc+-0.04708||y<-xc+2.44708)
chrt1 = y>0.20000&&x>-1.25000&&x<-0.65000
chrt1 = chrt1||(x>-1.00000&&x<-0.90000)
chre2 = (y<-0.60000)||((y<-0.15000)&&(y>-0.25000))||(y>0.20000)
chre2 = ((x<-0.50000)||chre2)&&((x>-0.60000)&&(x<-0.10000))
chrx3 = (y<xx+-0.60000&&y>xx+-0.82361)||(y>-xx+0.20000&&y<-xx+0.42361)
chrt4 = y>0.20000&&x>0.61180&&x<1.21180
chrt4 = chrt4||(x>0.86180&&x<0.96180)
test = 1 - fn2(real(chrf1||chrr2||chra3||chrc4)*real(y>0.70000)*real(y<1.70000))
test2 = 1 - fn2(real(chrt1||chre2||chrx3||chrt4)*real(y>-0.70000)*real(y<0.30000))
z = 1+(0,-.65)/fn3(pixel+(0.0,.75)) :
z2 = z*z , z4 = z2*z2 , n = z4*z2-1 , z = z-n/(6*z4*z)
(|n|>=.0001) && test && test2
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

FractMask08  { ;requires Fractint 19.5
row=imag(scrnpix)
col=real(scrnpix)
rows=imag(scrnmax)
cols=real(scrnmax)
y=row/(rows-1)
x=col/(cols-1)
in=0
in=in+(x>.06&&x<.92&&y<.693&&y>.68)
in=in+(x>.07&&x<.13&&y<.626&&y>.613)
in=in+(x>.19&&x<.25&&y<.626&&y>.613)
in=in+(x>.32&&x<.41&&y<.626&&y>.6)
in=in+(x>.45&&x<.5&&y<.626&&y>.613)
in=in+(x>.56&&x<.6&&y<.626&&y>.6)
in=in+(x>.63&&x<.69&&y<.626&&y>.613)
in=in+(x>.7&&x<.75&&y<.626&&y>.613)
in=in+(x>.76&&x<.81&&y<.626&&y>.613)
in=in+(x>.85&&x<.89&&y<.626&&y>.6)
in=in+(x>.08&&x<.12&&y<.613&&y>.266)
in=in+(x>.2&&x<.24&&y<.613&&y>.36)
in=in+(x>.31&&x<.32&&y<.613&&y>.48)
in=in+(x>.44&&x<.47&&y<.613&&y>.373)
in=in+(x>.49&&x<.51&&y<.613&&y>.586)
in=in+(x>.55&&x<.56&&y<.613&&y>.346)
in=in+(x>.6&&x<.61&&y<.613&&y>.52)
in=in+(x>.64&&x<.68&&y<.613&&y>.36)
in=in+(x>.71&&x<.75&&y<.613&&y>.36)
in=in+(x>.76&&x<.8&&y<.613&&y>.373)
in=in+(x>.84&&x<.85&&y<.613&&y>.346)
in=in+(x>.89&&x<.9&&y<.613&&y>.52)
in=in+(x>.32&&x<.35&&y<.6&&y>.573)
in=in+(x>.36&&x<.42&&y<.6&&y>.586)
in=in+(x>.56&&x<.59&&y<.6&&y>.306)
in=in+(x>.61&&x<.62&&y<.6&&y>.52)
in=in+(x>.85&&x<.88&&y<.6&&y>.306)
in=in+(x>.9&&x<.91&&y<.6&&y>.52)
in=in+(x>.36&&x<.4&&y<.586&&y>.373)
in=in+(x>.5&&x<.52&&y<.586&&y>.506)
in=in+(x>.32&&x<.34&&y<.573&&y>.466)
in=in+(x>.43&&x<.44&&y<.573&&y>.413)
in=in+(x>.14&&x<.15&&y<.52&&y>.373)
in=in+(x>.34&&x<.35&&y<.52&&y>.466)
in=in+(x>.13&&x<.14&&y<.493&&y>.4)
in=in+(x>.35&&x<.36&&y<.48&&y>.453)
in=in+(x>.12&&x<.13&&y<.466&&y>.426)
in=in+(x>.5&&x<.52&&y<.466&&y>.36)
in=in+(x>.25&&x<.28&&y<.44&&y>.36)
in=in+(x>.31&&x<.35&&y<.44&&y>.386)
in=in+(x>.28&&x<.29&&y<.426&&y>.373)
in=in+(x>.24&&x<.25&&y<.413&&y>.36)
in=in+(x>.49&&x<.5&&y<.413&&y>.373)
in=in+(x>.16&&x<.18&&y<.4&&y>.266)
in=in+(x>.32&&x<.34&&y<.386&&y>.373)
in=in+(x>.48&&x<.49&&y<.386&&y>.36)
in=in+(x>.75&&x<.76&&y<.386&&y>.36)
in=in+(x>.19&&x<.2&&y<.373&&y>.36)
in=in+(x>.33&&x<.39&&y<.373&&y>.36)
in=in+(x>.45&&x<.48&&y<.373&&y>.36)
in=in+(x>.54&&x<.55&&y<.373&&y>.36)
in=in+(x>.59&&x<.62&&y<.373&&y>.36)
in=in+(x>.63&&x<.64&&y<.373&&y>.36)
in=in+(x>.7&&x<.71&&y<.373&&y>.36)
in=in+(x>.76&&x<.79&&y<.373&&y>.36)
in=in+(x>.83&&x<.84&&y<.373&&y>.36)
in=in+(x>.88&&x<.91&&y<.373&&y>.36)
in=in+(x>.15&&x<.16&&y<.346&&y>.266)
in=in+(x>.14&&x<.15&&y<.306&&y>.266)
in=in+(x>.57&&x<.59&&y<.306&&y>.266)
in=in+(x>.64&&x<.68&&y<.306&&y>.266)
in=in+(x>.86&&x<.88&&y<.306&&y>.266)
in=in+(x>.07&&x<.08&&y<.28&&y>.266)
in=in+(x>.12&&x<.14&&y<.28&&y>.266)
out=in==0
test=in+out*4
c=pixel
z=in*(x+y/8)*689:
z=(z-1)*in+(z*z+c)*out
out*|z|+in<test*out+z*in
  }

FraKtint {; Modified Sylvie Gallet formula
          ; An exercise in changing the letters in Sylvie's original
          ; c= is replaced by k1/k2/k3=, test c replaced by k3
          ; Les St Clair [101461,2032] 1996
  z = pixel-0.025 , x=real(z) , y=imag(z) , x1=x*1.8 , x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  k1 = ( (y>-x-0.2195) && (y<-x-0.1427) && y<0 )
  k2 = ( (y<x+0.2195) && (y>x+0.1427) && y>0 )
  k3 = (x<-0.2 && x>-0.25 || k1 || k2)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2))
  test = 1 - (real(f||r||a||k3||t1||i||n||t2)*real(y>-0.225)*real(y<0.225))
  z = 1+(0.0,-0.65)/(pixel+(0.0,.75)) :
   z2 = z*z , z4 = z2*z2 , n = z4*z2-1 , z = z-n/(6*z4*z)
    (|n|>=0.0001) && test
  }

Frantic_2 {
z = c = pixel + p1:
r = z * (1/fn1(z)) + p2
z = fn2(r) * z + c
round(|Z|) <= 4
}

FT_195_SOLID { ; Creates "Fractint 19.5" solid text fixed to screen
     ; Les St Clair 101461.2032@compuserve.com - 1996
     ; Created using "FracText" (alpha-4) by Jan Maarten van der Valk
     ; "periodicity=0" and "passes=1" recommended
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnpix))/real(scrn\
  max), z=x+flip(y)
  chrF1 = x<0.18||(y<0.525&&y>0.495)||y>0.54&&x>0.15&&x<0.228
  xr=2*x
  chrR2 = y<0.525&&y>0.495||y>0.54||x<0.264&&x>0.234&&x<0.288||(abs(cabs(z\
  +(-0.288,-0.5325))-0.0225)<0.015&&x>0.288)||(y<0.51&&y<-xr+1.101&&y>-xr+\
  1.03392)
  xa=3*x
  chrA3 = y>xa-0.63937||y>-xa+1.6845||(y<0.498&&y>0.468)&&y<xa-0.5445&&y<-\
  xa+1.77937
  xc=1*x
  chrC4 = abs(cabs(z+(-0.49712,-0.51))-0.045)<0.015&&(x<0.49712||y>xc+0.01\
  288||y<-xc+1.00712)
  chrT5 = y>0.54&&x>0.54555&&x<0.63555||(x>0.57555&&x<0.60555)
  chrI6 = x>0.64155&&x<0.67155
  xn=2.5*x
  chrN7 = x>0.67755&&x<0.70755||(x>0.72555&&x<0.75786)||(y>-xn+2.26387&&y<\
  -xn+2.34465)
  chrT8 = y>0.54&&x>0.76386&&x<0.85386||(x>0.79386&&x<0.82386)
  test1 = chrF1||chrR2||chrA3||chrC4||chrT5||chrI6||chrN7||chrT8&&y>0.45&&\
  y<0.57
  x1=1.5*x
  chr19 = y<x1-0.15167&&y>x1-0.20719&&y>-x/1.5+0.60667||(x>0.38733&&x<0.41\
  813)
  chr910 = abs(cabs(z+(-0.46783,-0.3227))-0.0273)<0.0154&&y<0.3227||abs(ca\
  bs(z+(-0.46783,-0.3773))-0.0273)<0.0154||(x>0.47973&&x<0.51053&&y>0.3227\
  &&y<0.3773)
  chrDT11 = y<0.3108&&x>0.51753&&x<0.54833
  chr512 = abs(cabs(z+(-0.60573,-0.3304))-0.035)<0.0154&&(y<0.3304||x>0.60\
  573)||(x>0.55533&&y>0.35&&x<0.65613&&(x<0.58613||y>0.3892||(y<0.3808&&x<\
  0.60573)))
  test2 = chr19||chr910||chrDT11||chr512&&y>0.28&&y<0.42
  test = test1||test2
  f1=sin(.5*pixel)
  f2=1/(32*pixel)
  pixel=(test==0)*f1+(test!=0)*f2
  z=1+(0,-0.65)/fn3(pixel+(0,0.75)):
  z2=z*z, z4=z2*z2, n=z4*z2-1, z=z-n/(6*z4*z)
  |n|>=.0001&&test==0
  }

FT_195_INVERSE { ; Creates "Fractint 19.5" inverse text fixed to screen
     ; Les St Clair 101461.2032@compuserve.com - 1996
     ; Created using "FracText" (alpha-4) by Jan Maarten van der Valk
     ; "periodicity=0" and "passes=1" recommended
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnpix))/real(scrn\
  max), z=x+flip(y)
  chrF1 = x<0.18||(y<0.525&&y>0.495)||y>0.54&&x>0.15&&x<0.228
  xr=2*x
  chrR2 = y<0.525&&y>0.495||y>0.54||x<0.264&&x>0.234&&x<0.288||(abs(cabs(z\
  +(-0.288,-0.5325))-0.0225)<0.015&&x>0.288)||(y<0.51&&y<-xr+1.101&&y>-xr+\
  1.03392)
  xa=3*x
  chrA3 = y>xa-0.63937||y>-xa+1.6845||(y<0.498&&y>0.468)&&y<xa-0.5445&&y<-\
  xa+1.77937
  xc=1*x
  chrC4 = abs(cabs(z+(-0.49712,-0.51))-0.045)<0.015&&(x<0.49712||y>xc+0.01\
  288||y<-xc+1.00712)
  chrT5 = y>0.54&&x>0.54555&&x<0.63555||(x>0.57555&&x<0.60555)
  chrI6 = x>0.64155&&x<0.67155
  xn=2.5*x
  chrN7 = x>0.67755&&x<0.70755||(x>0.72555&&x<0.75786)||(y>-xn+2.26387&&y<\
  -xn+2.34465)
  chrT8 = y>0.54&&x>0.76386&&x<0.85386||(x>0.79386&&x<0.82386)
  test1 = chrF1||chrR2||chrA3||chrC4||chrT5||chrI6||chrN7||chrT8&&y>0.45&&\
  y<0.57
  x1=1.5*x
  chr19 = y<x1-0.15167&&y>x1-0.20719&&y>-x/1.5+0.60667||(x>0.38733&&x<0.41\
  813)
  chr910 = abs(cabs(z+(-0.46783,-0.3227))-0.0273)<0.0154&&y<0.3227||abs(ca\
  bs(z+(-0.46783,-0.3773))-0.0273)<0.0154||(x>0.47973&&x<0.51053&&y>0.3227\
  &&y<0.3773)
  chrDT11 = y<0.3108&&x>0.51753&&x<0.54833
  chr512 = abs(cabs(z+(-0.60573,-0.3304))-0.035)<0.0154&&(y<0.3304||x>0.60\
  573)||(x>0.55533&&y>0.35&&x<0.65613&&(x<0.58613||y>0.3892||(y<0.3808&&x<\
  0.60573)))
  test2 = chr19||chr910||chrDT11||chr512&&y>0.28&&y<0.42
  test = test1||test2
  test=(test==0)
  f1=sin(.5*pixel)
  f2=1/(32*pixel)
  pixel=(test==0)*f1+(test!=0)*f2
  z=1+(0,-0.65)/fn3(pixel+(0,0.75)):
  z2=z*z, z4=z2*z2, n=z4*z2-1, z=z-n/(6*z4*z)
  |n|>=.0001&&test==0
  }

Fzpcophs  {z = pixel, f = pixel ^ (1. / sinh(pixel) ):
           z = cosxx (z)  + f, |z| <= 50
}

Gallet-4-01 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , h = p1 , a = p2 :
   x = real(z) , y = imag(z)
   x1 = x - fn2(x + a*fn1(x+h))
   y1 = y + fn2(y + a*fn1(y+h))
   z = x1 + flip(y1)
    |z| <= 4
  }

Gallet-4-06 { ; Sylvie Gallet [101324,3444], 1996
              ; PTC formula
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

Gallet-4-07 { ; Sylvie Gallet [101324,3444], 1996
              ; PHC formula
  z = 10 * pixel , bailout = real(p3)
   c = p1 * (whitesq + (0,1) * (whitesq == 0)) :
   test = flip(c*z) >= 0
   z = (z - p2 * (test - (test == 0))) * c
    abs(real(z)) < bailout || abs(imag(z)) < bailout
  }

Gallet-4-11 { ; Sylvie Gallet [101324,3444], 1996
  p = (0,1) * p1 , bailout = p2
  a = pixel + p , b = pixel - p :
  a = fn1(a) + flip(fn2(a))
  b = fn1(b) + flip(fn2(b))
  z = (a + b) / 2
   |a| <= bailout || |b| <= bailout
  }

Gallet-5-01 { ; Sylvie Gallet [101324,3444], 1996
  sq3 = sqrt(3) , sq32 = 0.5*sq3 , l = real(p1) , h = l*sq32 , l3 = 3*l
  h2 = 2*h , h3 = 3*h , h4 = h2 + h2 , l15 = 0.5*l3
  c1 = 0.5*l + flip(h) , c2 = l , rot = -0.5 + flip(sq32)
  y = imag(pixel) , x = real(pixel) - y/sq3
  y = y - floor(y/h3)*h3 , x = x - floor(x/l3)*l3 + y/sq3
  d = 0.5*y + sq32*x - h3 , x = x - d*sq3*(d>0) , y = y - d*(d>0)
  y = y - h2*(y>h2)
  t = y < sq3*x-h4 , x = x - l15*t , y = y + h*t
  q1 = abs(floor(y / h))
  d2 = -sq32*x + 0.5*y , q2 = abs(floor(d2 / h))
  d3 = sq32*x + 0.5*y - h , q3 = abs(floor(d3 / h))
  q = q1 + q2 + q3 , odd = q != 2*floor(q/2)
  y = y*(odd==0) + (h2-y)*odd
  t = y > -sq3*x + h4 , x = x - l15*t , y = y - h*t
  z = x + flip(y) , z = z * (y<=h) + ((z-c1)*conj(rot) + c1) * (y>h)
  x = real(z) , z = z * (x<l) + ((z-c2)*rot + c2) * (x>=l)
  z = c = p2*z + p3 :
   z = z*z + c
    |z| <= 4
  }

Gallet-5-02 { ; Sylvie Gallet [101324,3444], 1996
  sq3 = sqrt(3) , sq32 = 0.5*sq3 , l = real(p1) , h = l*sq32 , l3 = 3*l
  h2 = 2*h , h3 = 3*h , h4 = h2 + h2 , l15 = 0.5*l3
  c1 = 0.5*l + flip(h) , c2 = l , rot = -0.5 + flip(sq32)
  y = imag(pixel) , x = real(pixel) - y/sq3
  y = y - floor(y/h3)*h3 , x = x - floor(x/l3)*l3 + y/sq3
  d = 0.5*y + sq32*x - h3 , x = x - d*sq3*(d>0) , y = y - d*(d>0)
  y = y - h2*(y>h2)
  t = y < sq3*x-h4 , x = x - l15*t , y = y + h*t
  q1 = abs(floor(y / h))
  d2 = -sq32*x + 0.5*y , q2 = abs(floor(d2 / h))
  d3 = sq32*x + 0.5*y - h , q3 = abs(floor(d3 / h))
  q = q1 + q2 + q3 , odd = q != 2*floor(q/2)
  y = y*(odd==0) + (h2-y)*odd
  t = y > -sq3*x + h4 , x = x - l15*t , y = y - h*t
  z = x + flip(y) , z = z * (y<=h) + ((z-c1)*conj(rot) + c1) * (y>h)
  x = real(z) , z = z * (x<l) + ((z-c2)*rot + c2) * (x>=l)
  z = p2*z + p3 :
   z2 = z*z , n = z2*z2 - 1 , d = 4*z2*z
   z = z - n / d
    |n| >= 0.000001
  }

Graph { ; Sylvie Gallet [101324,3444], 1996
  ; 2 parameters: curves thickness = real(p1)
  ;                 axes thickness = imag(p1)
  ; choose for example real(p1) = 0.002 and imag(p1) = 0.001
  epsilon = abs(real(p1)) , axes = abs(imag(p1))
  x = round(real(pixel)/epsilon) * epsilon
  z1 = x + flip(fn1(x)) , z2 = x + flip(fn2(x))
  z3 = x + flip(fn3(x)) , z4 = x + flip(fn4(x))
  testaxes = (|real(pixel)|<=axes) || (|imag(pixel)|<=axes)
  testfn1 = 2*(|z1-pixel|<=epsilon) , testfn2 = 4*(|z2-pixel|<=epsilon)
  testfn3 = 8*(|z3-pixel|<=epsilon) , testfn4 = 16*(|z4-pixel|<=epsilon)
  z = testaxes + testfn1 + testfn2 + testfn3 + testfn4
  z = z + 100*(z==0) :
   z = z - 1
    z > 0
  }

graph-2 { ; Sylvie Gallet
 ; choose for example real(p1) = 0.002  and  imag(p1) = 0.001
 epsilon = abs(real(p1)) , axes = abs(imag(p1))
 x = round(real(pixel)/epsilon) * epsilon
 z1 = x + flip(fn1(x)) , z2 = x + flip(fn2(x))
 z3 = x + flip(fn3(x)) , z4 = x + flip(fn4(x))
 testaxes = (|real(pixel)|<=axes) || (|imag(pixel)|<=axes)
 testfn1 = 2*(|z1-pixel|<=epsilon) , testfn2 = 4*(|z2-pixel|<=epsilon)
 testfn3 = 8*(|z3-pixel|<=epsilon) , testfn4 = 16*(|z4-pixel|<=epsilon)
 z = testaxes + testfn1 + testfn2 + testfn3 + testfn4
 z = z + 100*(z==0) :
  z = z - 1
   z > 0
}

graph-3 { ; Tim Wegner
          ; 3D graph
  value = fn1(pixel)
  min = real(p1)
  max = imag(p1)
  incr = (max - min)/256
  z = min:
  z = z + incr
  z < value }

Interferences { ; Sylvie Gallet [101324,3444], 1996
                ; formula based on Tim Wegner's Graph-3
 a = -1 , b = 1 , k = real(p2)
 da = cabs(pixel-a) , db = cabs(pixel-b)
 value = sin(k*da) + sin(k*db)
 min = real(p1) , max = imag(p1)
 incr = (max - min)/256 , z = min :
  z = z + incr
   z <= value
}

JDCarr2289b  {; Modified Carr/Gallet frm. Jim Deutch 1996
  ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
y=((imag(scrnpix)/(imag(scrnmax)-1)))*imag(scrnmax)/real(scrnmax)-.85
x=(real(scrnpix)/(real(scrnmax)-1))-.37
r=x*x+y*y
rain=(r<.42)*(r>.32)*whitesq
ind=(r-.32)/(.42-.32)*109
pixel = -abs(real(pixel))+flip(imag(pixel))
c = pixel+pixel-flip(0.0010/pixel)-conj(0.010/pixel)
z = (pixel-conj(asin(pixel+pixel+0.32)))*(rain==0)+ind*rain
d1 = flip(-0.00059350/pixel)
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 , d4 = 4*d1:
   t1 = (iter==l1) , t2 = (iter==l2) , t3 = (iter==l3) , t4 = (iter==l4)
   t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
   z = (z*t + ct)*(rain==0)+z*rain
   c = c*t + ct
   z = (z*z+c)*(rain==0)+(z-1)*rain
   iter = iter+1
   (rain==0)*(|real(z)|)+rain <= bailout*(rain==0)+rain*z
  }

jenn001 {; Arno Jennen
  z=|pixel|+pixel+cosxx(pixel):
  z=fn1(z-5.75),
  |(z)|<78
  }

jenn002{; Arno Jennen
  z=|pixel|-pixel+flip(pixel):
  z=fn1(z+14),
  |(z)|<78
  }

;JD-LS-JM { ; Jim Deutch/modified by Lee Skinner and Jan M. van der Valk - 1024x768 only
;See modified, resolution independent, version below
;   countreset = (count < 1024)
;   count = count * countreset
;   evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
;   oddeven = (evenodd < 1)
;   count = count + 1
;   f1 = sin(.5*pixel)
;   f2 = 1/pixel
;   pixel = evenodd * f1 + oddeven * f2
;   z = 0
;   c = pixel:
;   z = log(z)*z+c
;   |z| < 4 }

JD-LS-JM { ; Jan Maarten van der Valk [100256,3721], 1996  Requires passes=1
  f1 = sin(.5*pixel)
  f2 = 1/pixel
  pixel = whitesq * f1 + (whitesq==0) * f2
  z = 0
  c = pixel:
  z = log(z)*z+c
  |z| < 4
  }

;JD-LS01 { ; Jim Deutch/modified by Lee Skinner.  1600x1200 only
;See modified, resolution independent, version "JD-LS0", below
;   countreset = (count < 1600)
;   count = count * countreset
;   evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
;   oddeven = (evenodd < 1)
;   count = count + 1
;   f1 = sin(.5*pixel)
;   f2 = 1/pixel
;   pixel = evenodd * f1 + oddeven * f2
;   z = 0
;   c = pixel:
;   z = z*z + c
;   |z| < 4 }

;JD-LS07 { ; Jim Deutch/modified by Lee Skinner.  1024x768 only
;See modified, resolution independent, version "JD-LS0",below
;   countreset = (count < 1024)
;   count = count * countreset
;   evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
;   oddeven = (evenodd < 1)
;   count = count + 1
;   f1 = sin(.5*pixel)
;   f2 = 1/pixel
;   pixel = evenodd * f1 + oddeven * f2
;   z = 0
;   c = pixel:
;   z = z*z + c
;   |z| < 4 }

JD-LS0 { ; Lee Skinner [75450,3631], 1996  Requires passes=1
  f1 = sin(.5*pixel)
  f2 = 1/pixel
  pixel = whitesq * f1 + (whitesq==0) * f2
  z = 0
  c = pixel:
  z = z*z + c
  |z| < 4
}

;JD-SG-05 { ; Sylvie Gallet [101324,3444], 1996
;See modified, resolution independent, version below
;   ; use p1 and p2 to adjust the 2nd Mandel
;   ; p1 = -1 (default)
;   ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
;   p1 = p1 * (p1!=0) - (p1==0)
;   count = (count + 1) * (count != (p3-1))
;   evenodd = (evenodd == (count == 1))
;   oddeven = (evenodd == 0)
;   z = 0 , c = pixel * evenodd + (p1*pixel+p2) * oddeven :
;    z = z*z + c
;     |z| < 4
;  }

JD-SG-05 { ; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  ; use p1 and p2 to adjust the 2nd Mandel
  ; p1 = -1 (default)
  p1 = p1 * (p1!=0) - (p1==0)
  z = 0 , c = pixel * whitesq + (p1*pixel+p2) * (whitesq == 0) :
   z = z*z + c
    |z| < 4
 }

;JD-SG-06 { ; Sylvie Gallet [101324,3444], 1996
;See modified, resolution independent, version below
;   ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
;   count = (count + 1) * (count != (p3-1))
;   evenodd = (evenodd == (count == 1))
;   oddeven = (evenodd == 0)
;   z = flip(imag(p1)) * oddeven + real(p1) * evenodd
;   c = pixel :
;    z = z*z + c
;     |z| < 4
;  }

JD-SG-06 { ; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  z = flip(imag(p1)) * (whitesq == 0) + real(p1) * whitesq
  c = pixel :
   z = z*z + c
    |z| < 4
 }

;JDfrm010 { ; Jim Deutch. Overlay mandel + reversed mandel
;See modified, resolution independent, version below
;   countreset = (count < 320) ;interlace checkerboard 320x200
;   count = count + 1          ;but does good at 1024x768 too
;   count = count * countreset
;   evenodd = (evenodd < 1) * (count != 1)
;   oddeven = (evenodd < 1)
;   pixel = evenodd * pixel + oddeven * -pixel
;   z = 0
;   c = pixel:
;   z = z*z + c
;   |z| < 4
; }

JDfrm010 { ; Jim Deutch [104074,3171], 1996  Requires passes=1
           ; The Original PHC formula
  z = 0
  c = whitesq * pixel - (whitesq == 0) * pixel:
  z = z*z + c
  |z| < 4
}

;JDfrm010m7 { ; Jim Deutch/modified by Lee Skinner.
;See modified, resolution independent, version "JDfrm010", above
;   countreset = (count < 1024)
;   count = count * countreset
;   evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
;   oddeven = (evenodd < 1)
;   count = count + 1
;   pixel = evenodd * pixel + oddeven * -pixel
;   z = 0
;   c = pixel:
;   z = z*z + c
;   |z| < 4
; }

;JDfrm021a7 { ; Jim Deutch pseudo-Hicolor
;See modified, resolution independent, version "JDfrm021a", below
;   a = pixel
;   b = abs(a)
;   c = flip(a)
;   r = |a|
;   countreset = (count < 1024)
;   count = count * countreset
;   evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
;   oddeven = (evenodd < 1)
;   count = count + 1
;   z = a * evenodd:
;   z2 = z*z
;   rz2 = r*z2
;   sinzoz = sin(z) / (z+oddeven)
;   z=(b/c/a + z2)*oddeven + (sinzoz/(rz2+oddeven))*evenodd
;   |z| < 4 + 10000000*evenodd
; }

JDfrm021a { ; Jim Deutch [104074,3171], 1996  Requires passes=1
  a = pixel , r = |a| , b = abs(a)
  q = conj(flip(b)) / real(r)
  z = a * real(whitesq) :
  z2 = z*z
  rz2 = z2 * real(r)
  sinzoz = sin(z) / (z+(whitesq==0))
  z = sinzoz / (rz2+(whitesq==0)) * real(whitesq) + (q + z2) * real((whitesq==0))
  |z| - 4 < 10000000 * whitesq
}

;JDfrm031SF7 { ; Jim Deutch: generalized 2-Julia pseudo-HiColor
;See modified, resolution independent, version "JDfrm031", below
           ; p1 = 1st julia parameters
           ; p2 = 2nd julia parameters
           ; p3 slides 1st julia around the plane wrt the 2nd
;   countreset = (count < 1024)
;   count = count * countreset
;   evenodd=(evenodd<1)*(count!=0)*countreset+(countreset==0)*evenodd
;   oddeven = (evenodd < 1)
;   count = count + 1
;   z = pixel + p3*evenodd:
;   zsq = z*z
;   z = (zsq+p1)*evenodd + (zsq+p2)*oddeven
;   |z| < 4
; }

JDfrm031 { ; Jim Deutch [104074,3171], 1996  Requires passes=1
           ; generalized 2-Julia pseudo-HiColor
           ; p1 = 1st julia parameters
           ; p2 = 2nd julia parameters
           ; p3 slides 1st julia around the plane wrt the 2nd
  z = pixel + p3*whitesq
  p = p1*whitesq + p2*(whitesq==0) :
  z = z*z + p
  |z| < 4
}

;JDfrm038 { ; Jim Deutch
;See modified, resolution independent, version below
  ; p1 = Julia parameters
  ; p2 = bailout test
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
;   count = (count + 1) * (count != (p3-1))
;   evenodd = (evenodd == (count == 1))
;   oddeven = (evenodd == 0)
;   z = c = pixel
;   r = |c|:
;   rz2 = r * z * z
;   sinzoz = sin(z) / (z+oddeven)
;   z = (sinzoz / rz2)*evenodd+(z*z+p1)*oddeven
;   |z| < p2
; }

JDfrm038 { ; Jim Deutch [104074,3171], 1996  Requires passes=1
  ; p1 = Julia parameters
  ; p2 = bailout test
  z = c = pixel
  r = |c|:
  rz2 = r * z * z
  sinzoz = sin(z) / (z+(whitesq==0))
  z = (sinzoz / rz2)*whitesq + (z*z+p1)*(whitesq==0)
  |z| < p2
}

JoWe_06m_PHC { ; Jo Weber [100424,35], 6/1996
               z = pixel:
               a1=sqr(z), a2=1/fn2(z)
               z=(fn1(z)*z)*(whitesq==0)+a2*whitesq+pixel
   }

jowe_13 { ; Jo Weber, July 1996
  c=p1
  z=pixel:
  z=fn1(z)-c/fn2(z)
}

JoWe_xy_06 { ; Jo Weber, 9/1996
              z = pixel:
              x=real(z), y=imag(z),
              x=x+fn1(z)^p1, y=y-fn2(z)^p2
              z=x+y
              |z|<=4
}

kgexp2 {
   z = Pixel, c=fn1(z) :
   z = z ^ 2.71828182845905 - c + pixel,
   |z| <= 100
}

Lesfrm01r { ; Les St Clair, 1996
            ; modified Lesfrm01 to include rounding function
            ; requires Fractint 19.4 or later
            ; p1 sets degree of rounding
            ; smaller p1 = coarser rounding
c=z=pixel:
p=p1*((fn1(c)/fn2(z))/(c*c*c))
q=round(p)
r=q/p1
z=z+r,|z| <=4
}

Lesfrm13 { ; Les St Clair, 1996
 z = pixel
 x = fn1(z) , y = fn2(z):
 x = x*p1*pi
 y = y*p2*pi
 z = x/y
 |z| <= 4
}

m+j+n { ; Sylvie Gallet [101324,3444], 1996
  ; real(p1) = size of the Mandelbrot set
  ; imag(p1) = rotation angle (degrees): negative = clockwise
  ; p2 = parameter for the Julia set
  ; p3 = exponent for the Newton set
  p0 = p3 - 1 , iter = tj = tn = tw = 0 , odev = tm = 1
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

m+j+n_2 { ; Sylvie Gallet [101324,3444], 1996
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

;manjul_lace {; G. Martin [76440,1143], 1996
;See modified, resolution independent, version below
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
;   count = (count + 1) * (count != (p3-1))
;   evenodd = (evenodd == (count == 1))
;   oddeven = (evenodd == 0)
;   z = evenodd * 1.5*pixel + oddeven * pixel
;   c = evenodd * 1.5*pixel + oddeven * (-.75, .1234567):
;   ;begin iterations
;    z = z*z + c
;     |z| <= 4
;   ;SOURCE: phc_1.frm
;   }

manjul_lace { ; George Martin [76440,1143]  Requires passes=1
;
; var           white squares                   black squares
;
  z  =whitesq*    1.5*pixel  +(whitesq==0)*    pixel
  c  =whitesq*    1.5*pixel  +(whitesq==0)*    (-.75, .1234567):
;
;begin iterations
  z = z*z + c
  |z| <= 4
}

palette { ; Sylvie Gallet [101324,3444]
  z = trunc(pixel) , x = real(z) , y = imag(z)
  z = 16*abs(y) + x
  z = 257*(z==0) + z*(z!=0) :
   z = z - 1
    z > 0
  }

ptc+mjn { ; Sylvie Gallet [101324,3444], 1996  Requires passes=1
          ; 24-bit ptc
          ; Mandel: z^2 + c , Julia: z^2 + p1 , Newton: z^p2 - 1 = 0
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  z = pixel , b1 = 256 , b2 = 0.000001 , ex = p2 - 1
  c = pixel * (r == 0) + p1 * (r == 1) :
   zd = z^ex , zn = zd*z , n = zn - 1 , d = p2 * zd
   z = (z*z + c) * (r != 2) + (z - n/d) * (r == 2)
    (|z| <= b1 && r != 2) || (|n| >= b2 && r == 2)
  }

saddle        { ; Sylvie Gallet [101324,3444], 1996
                ; formula based on Tim Wegner's Graph-3
 x = real(pixel) , y = imag(pixel)
 value = (x^2-y^2)
 min = real(p1) , max = imag(p1)
 incr = (max - min)/256 , z = min :
  z = z + incr
   z <= value
}

Tims_Random_Formula {
   z=pixel:
   z = sin(z*z+floor(atan(z+4)))
   z = c + log(z) - sin(z)
   |z| < 10
}

Wave          { ; Sylvie Gallet [101324,3444], 1996
                ; formula based on Tim Wegner's Graph-3
 d = cabs(pixel) , k = real(p2)
 value = sin(k*d)/d
 min = real(p1) , max = imag(p1)
 incr = (max - min)/256 , z = min :
  z = z + incr
   z <= value
}



