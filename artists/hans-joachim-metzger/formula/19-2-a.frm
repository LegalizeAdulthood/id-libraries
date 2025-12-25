Gallet-6-01 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y + p2*fn2(x - p3*fn3(y)))
   y1 = y - p1*fn1(x + p2*fn2(y - p3*fn3(x)))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}
 
PD_412 {
  bailout = 4 + imag(p3)
  k = real(p3), z = z1 = pixel
  c = p1*fn3(z):
  z1 = fn1(z1^k) + p2*fn2(z1*c)
  x1 = real(z1), y1 = imag(z1)
  z2 = -x1 + flip(y1)
  z = log(z1)*whitesq + log(z2)*(whitesq==0)
  (|real(z)| <= bailout) && (|imag(z)| <= bailout)
  ;SOURCE: pdg04.frm
}
 
PD_413 {
  bailout = 4 + imag(p3)
  k = real(p3), z = z1 = pixel
  c = p1*fn3(z):
  z1 = fn1(z1^k)/fn2(p2 + z1*c)
  x1 = real(z1), y1 = imag(z1)
  z2 = -x1 + flip(y1)
  z = log(z1)*whitesq + log(z2)*(whitesq==0)
  (|real(z)| <= bailout) && (|imag(z)| <= bailout)
  ;SOURCE: pdg04.frm
}
 
Gallet-6-04 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) * fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) * fn3(p3*x))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}
 
Barnsley_PHC_3 {; formula adapted by Vincent Damion Presogna
  z = c = pixel
  c1 = p1*whitesq + c*(whitesq==0) , c2 = p2*(whitesq==0) :
   z1 = z - (z>=0) + (z<0)
   z = z1*c1 + c2
    |z| < 4
  ;SOURCE: 96msg.frm
}
 
BJ-SG-3-03-gb {; Brian E. Jones [102702,2213]
   ; Modified Sylvie Gallet [101324,3444], 1996
  z = pixel, c = sin(conj(-0.81256,-0.1295)) :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(x*x+p2*fn2(y)) * (whitesq == 0)+c* whitesq 
  y1 = y - p1*fn1(y*y+p2*fn2(x)) 
  z = x1+flip(y1)  
  |z| <= 4
  ;SOURCE: 96msg.frm
}
 
Carr2182 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel
  c=flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/10)*t+ct, c = c*t+ct
  z=(z^2+(-0.7856,0.10)+(c/7*pixel))
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: 42dcarr.frm
}
 
Carr2433 {; Sylvie Gallet [101324,3444], Mod. BEJ
          ; Revised for Fractint v20 by G. Martin 
  z=conj(conj(pixel/3-conj(0.10/pixel)))
  c=conj(pixel^3)-conj(0.10/pixel)
  x=real(z), y=imag(z)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)), iter=1 
  rad=fn1(3.1*fn3(x1+flip(y1))), center=(1.0,0.1) 
  pix=fn2(10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn=center+fn4(rad)/(pix-center)
  limit=real(p1), b1=16, b2=0.0001:
  test1=(iter<limit), test2=(iter!=limit)
  z=(z-zn)*test2+zn  
  z2=z*z, z4=z2*z2, z1=(z4*z-1)/(4*z4)
  z=(z2+c)*test1+(z-z1)*(1-test1)  
  iter=iter+1
  ((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
  ;SOURCE: 42jcarr.frm
}
 
Carr2458 (YAXIS) {; modified Jo Weber frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=abs(real(pixel))+flip(imag(pixel)) 
  pm1=p1-1
  m3=cabs(newpixel+0.5)*conj(conj(newpixel^7))
  z=(m3-conj(0.10/newpixel)-sqr(flip(0.00510/newpixel)))-0.25:
  oldz=z
  z=(pm1*(z^p1)+1)/((p1*z^pm1))
  |real(z-oldz)|>=|0.001|
  ;SOURCE: 42jcarr.frm
}
 
Carr2559 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-log(conj(newpixel))-log(cosh(newpixel)))
  c=1/(newpixel-sqrt(conj(newpixel))-log(newpixel))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
  z=(|z|/5)+z*z+c+0.59/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Gallet-5-08 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) + fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) + fn3(p3*x))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-5.frm
}
 
Gallet-4-06 {; Sylvie Gallet [101324,3444], 1996
             ; PTC formula
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = -0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z = c * pixel :
   x = real(z), y = imag(z)
   x1 = x - p1 * fn1(y*y + p2*fn2(y))
   y1 = y - p1 * fn1(x*x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
  ;SOURCE: gallet-4.frm
}
 
PD_207 {
  z = pixel
  x = real(pixel), y = imag(pixel)
  c = fn1(x^p1) + fn1(y^p1):
  z = fn2(fn3(z^p2)) + fn4(c)
  |z| <= p3
  ;SOURCE: pdg02.frm
}
 
Carr2088 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=(-0.8006,-0.149)
  z=flip(conj(1-pixel))*sqr(pixel)\
       -(conj(0.0005/pixel))-sqr(flip(0.03/pixel))
  z1 = 2.25*z, z2 = 3.25*z, z3 = 5.375*z, z4 = 10.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}
 
Carr2735 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
   ; passes 1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=flip(newpixel)+0.25/log(cos(1/newpixel))*(tan(0.1/newpixel))
  b5=cabs(newpixel)+0.15/log(cosxx(1/newpixel))*(tan(0.1/newpixel))
  c=whitesq*b4-(whitesq==0)*b4-0.3
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 96msg.frm
}
 
BJ-Lesfrm13-001 {; Modified Les St Clair formula "Lesfrm13" 
  z = pixel 
  x = fn1(z), y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi 
  z = fn4(fn3(x)/y)
  |z| <= 4
  ;SOURCE: 96msg.frm
}
 
BJ-Lesfrm13-005 {; Les St Clair, 1996
  z = pixel 
  x = fn1(z), y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi 
  z = fn3(x/y)/fn4(z)
  |z| <= 4
  ;SOURCE: modles13.frm
}
 
Carr1989 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel-conj(pixel/5), p10=10*pixel, th1=tanh(1), c=z-0.099/pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter+tan(z1)+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
 
Carr2025 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.7456,-0.13)
  z=(pixel)-conj(0.1/pixel)-flip(0.1/pixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}
 
mans-galore-027 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + fn3(x1)+flip(fn4(y1))
  c = c*(1 - test) + test*magnification*c
  z = z*z+c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}
 
Lesfrm13 {; Les St Clair, 1996
  z = pixel 
  x = fn1(z), y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi 
  z = x/y
  |z| <= 4
  ;SOURCE: lesfrm13.frm
}
 
a0a07 {; Revised 4/27/96 to eliminate superfluous "+c"
       ; Original version of this formula may be discarded
  z=pixel:
  z=(fn1(z)/7)^fn2((z)^22)
  |z|<4
  ;SOURCE: new.frm
}
 
BJ-SG-3-03-g {; Modified Sylvie Gallet [101324,3444], 1996
  z = pixel, c = sin(conj(-0.81256,-0.1295)) :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(x*x+p2*fn2(y)) 
  y1 = y - p1*fn1(y*y+p2*fn2(x)) 
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: sg-bc-bj.frm
}
 
cc3 {; Revised 4/27/96 to eliminate superfluous "+c"
     ; Original version of this formula may be discarded
  z=pixel, m=(z+1)+z, n=(z-1)+z
  x=srand(z), y=fn4(|z-1|^(x)):
  z=(fn1(m)*fn2(y^(n^z)))/fn3(x+1)+fn4(y)
  |z|<=4
  ;SOURCE: new.frm
}
 
Carr2330 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = tan(newpixel) - tanh(newpixel)
  z = 2*m + flip(newpixel), c = (-0.7,0.2)
  d1 = -0.0003545/newpixel + tanh(0.0001/newpixel), d5 = 5*d1, d2 = 2*d1
  z1 = z+d1, z2 = 1.5*z+d1, z3 = 2.25*z+d1 
  z4 = 3.375*z+d1, z5 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2) 
  l4 = imag(p2), l5 = 300
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3 
  t4 = iter==l4, t5 = iter==l5
  t = 1-(t1||t2||t3||t4) 
  ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + d5
  z = z*t + ct - d2, c = c*t + ct
  z = z^2.45 + c + sinh(z/6)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}
 
kg1402 {
  z = y = pixel+p2:
  z = fn1(z) / fn2(y) 
  y = fn1(y) / fn2(z)   
  |z| <= p1
  ;SOURCE: kg14.frm
}
 
Carr1976 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
   ; Revised for Fractint v20 by G. Martin
  z=sqr(pixel)
  c=pixel-(1.099,0.0)/3
  iter=1, rad=6, center=(1.0,0.1)
  pix=exp(10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1/(tan(1/pixel)))
  test0=1, b1=16, b2=0.0001, test3=0: 
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+zn
  z2=z*z, z4=z2*z2, z1=(z4*z-10*pixel)/(4*z4 + (z4==0))
  z=(z2+c)*test1+((z-z1)*(1-test1)) 
  test3=(test3 || (|z|>b1))
  z=(z*(1-(test3 && test0 && test1)))
  iter=iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}
 
Carr2178 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(pixel+pixel)-1/log(pixel-1/sin(0.010/pixel))^2.5
  c=sin(conj(-0.81256,-0.2495))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/6)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
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
 
Gallet-3-13 {; Sylvie Gallet [101324,3444], 1996 
  z = pixel/(pixel*pixel+1) :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(y+p2*fn2(y))
  y1 = y - p1*fn1(x+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: gallet-3.frm
}
 
BEJ_22 {
  z=pixel:
  z=z*z*z
  z1=z*z*z*z
  z=fn1(z1)+pixel
  |z|<4
  ;SOURCE: bej's.frm
}
 
Tim's_Newton_a {
  z = pixel, z2 = z*z, z3 = z*z2:
  num = (z3 + p1*z2 + 1)^.5      
  denom = (1.5*z2 + p1*z)/num    
  z = z - (num/denom)            
  z2 = z*z+c
  z3 = z*z2
  p2 <= |z3 + p1*z2 + 1| 
  ;SOURCE: bej's2.frm
}
Gallet-3-02 {; Sylvie Gallet [101324,3444], 1996
  z = pixel :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(y+p2*fn2(y))
  y1 = y - p1*fn1(x+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: gallet-3.frm
}
 
Gallet-3-11 {; Sylvie Gallet [101324,3444], 1996 
  z = pixel^p1/p2 + p2^pixel/(p1*pixel), p = p2/p1 :
  z = z*p
  z <= p1
  ;SOURCE: gallet-3.frm
}
 
