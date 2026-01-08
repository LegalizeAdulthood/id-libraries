
JDG-7-01c { ; Modified Sylvie Gallet frm
            ;image and 60 deg rotation w/ palette divided
  j = -0.5 + flip(0.5*sqrt(3)) , j2 = conj(j)
  rot = whitesq - j2 * (whitesq == 0)
  z = pixel * rot :
   x = z*j , y = z*j2
   x1 = x - p1*fn1(y + fn2(p2*z))
   y1 = y - p1*fn1(z + fn2(p2*x))
   z1 = z - p1*fn1(x + fn2(p2*y))
   z = z1 + x1*j + y1*j2
   t1 = (|z| <= 32)
   t = t1 || (whitesq == (imag(z) >= 0))
   z = real(z) + flip(imag(z)) * (t - (t == 0))
    t1
  }

JoWe_04b (XYAXIS) {; Jo Weber [100424,35], 6/1996
  pixel=pixel*(-1)^(pixel>0)
  z = pixel:
  a1=fn1(z), a2=p1/a1, 
  z=a1+a2+pixel,
  ;SOURCE: jo_we_32.frm
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

Lesfrm13 { ; Les St Clair, 1996
 z = pixel 
 x = fn1(z) , y = fn2(z):
 x = x*p1*pi
 y = y*p2*pi 
 z = x/y
 |z| <= 4
}

Gallet-5-07 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = z*(0,1) , y = z*(0,-1) :
   hx = p1*fn1(x) , hy = p1*fn2(y)
   x = x + hy , y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) <= p2
  }

BirdOfPrey (XAXIS_NOPARM) {; Optimized by Sylvie Gallet
  z = p1 :
  z = cosxx(sqr(z) + pixel) + pixel
  |z| <= 4
  ;SOURCE: fract196.frm
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

Jm_20 {; generalized Jm Richard-Collard type
  z=pixel,t=p1+4:
   z=fn1(z^pixel),
	|z|<=t
  }

M_Laguerre2 {
   c = P1, z = Pixel:
   z = (z*(z - 4) +2 ) / 2 + c,
   |z| < 100

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

a0b0 { ; one version
  z=pixel :
  z=fn1(z^(e*(1/sqr(-1))-fn2((z+1)^e)))+c
  |z|<4
  ;SOURCE: ad1.frm
}

a0b0.2 { ; other version
  z=pixel , e=0 :
  z=fn1(z^(e*(1/sqr(-1))-fn2((z+1)^e)))+c
  |z|<4
  ;SOURCE: ad1.frm
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

Gallet-8-03 { ; Sylvie Gallet [101324,3444], Mar 1997
              ; Requires periodicity = 0
   z = c = zn = pixel :
   zn = zn*zn + c
   test = |zn| < |z|
   z = zn*0.6*test + z*(test==0)
   |zn| <= 4
   }

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

Gallet-8-13 { ; Sylvie Gallet [101324,3444], Mar 1997
              ; Requires periodicity = 0
   z = x = y  = pixel , a = p1 , b = p2 :
   z = z*z - a*z + b , x = z*z - a*y + b , y = z , z = x
   b = b + 0.00001
   |z| <= 16
   }

Lesfrm04 (xaxis) { 
  c=z=pixel:
  z=z+(fn1(c^2)/fn2(z^2))/c^4,
  |z| <=6
  ;SOURCE: les.frm
}

Lesfrm43    { ; Modified Sylvie Gallet formula
              ; Modified Gallet-8-12
              ; Les St Clair 1997
  h = fn1(pixel) , pinv = 1/p1
  bailout = 2*p1 , r = real(p2) , ir = imag(p2)
  beta = fn2(h/r) , alpha = fn2(h/(r*ir))
  z = pixel * (((h - fn3(r*r - h*h) * fn4(beta - alpha)) / h) * (h < r) \
      + (h >= r))
  center = round(p1*z) * pinv 
  test = cabs(z-center) < 0.45*pinv
  z = cabs(center) + p1 * (test == 0)
  :
  z = (z*z + pinv)/h
  z <= bailout
  }

tent_inside { ; Sylvie Gallet [101324,3444], Apr 1997
  r = 1 , z = 0 :
   l = r
   z = z*z + pixel
   UV = (5,5) - abs((5,5) - abs(z))
   r = cabs(UV)
    abs(l-r) >= 0.001 && r < 4
  }

acceleration_man {
   z2 = r = 0 :
   l = r , z = z2
   z1 = z*z + pixel
   vel1 = z1 - z
   z2 = z1*z1 + pixel
   vel2 = z2 - z1
   acc = vel2 - vel1
   r = cabs(acc)
   r < 4 && abs(l - r) >= 0.001
   }

comment {
   z2 = r = 0 :
   l = r , z = z2
; x1 = x * x - y * y + a
; vel1x = x1 - x
; y1 = 2 * x * y + b
; vel1y = y1 - y
   z1 = z*z + pixel
   vel1 = z1 - z
; x2 = x1 * x1 - y1 * y1 + a
; y2 = 2 * x1 * y1 + b
; vel2x = x2 - x1
; vel2y = y2 - y1
   z2 = z1*z1 + pixel
   vel2 = z2 - z1
; accx = vel2x - vel1x
; accy = vel2y - vel1y
   acc = vel2 - vel1
; r = SQR(accx * accx + accy * accy)
   r = cabs(acc)
; IF r >= 4 THEN EXIT FOR
; IF ABS(l - r) < .001 THEN EXIT FOR
; my comment:  EXIT FOR when r >= 4 or ABS(l - r) < .001
;              continue when r < 4 and ABS(l - r) >= 0.001
; 'resume at x2:y2-last of 3
; '2nd-1st and 3rd-2nd used in acceleration calculation
; x = x2: y = y2
   r < 4 && abs(l - r) >= 0.001
  }

Carr3184(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-conj(1/pixel))
b3=(((exp(0.0025/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b4=(abs(pixel)^5/(cosxx(0.1-0.1/pixel)))-b3,
b5=conj(pixel)*pixel^2-conj(conj(0.10/pixel))^(-3*pixel)-flip(flip(0.010/pixel))+0.3,
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*pixel|)),
iter=iter+1
|z|<=bailout
}

MandNewt03 {; Jim Muth
z=c=pixel:
a=z^3+(c-1)*z-c
b=p1*z^p2+c-1
z=z-p3*a/b
.0001 <= |a|
}

5_man{; Stephen C. Ferguson
      ; adapted for Fractint by Les St Clair, 1997
      ; use real p1 to set bailout. try p1=4
z=0, c=pixel:
z=(z*z)+(log(c^5)/5)
|z| <=p1
}

tri-mandel-2 { ; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
               ; real(p1) = bailout (1024 recommended)
               ; imag(p1) must be != 0
               ; use decomp = 256
   c = z1 = pixel , b = mz1 = cabs(z1) , summ = iter = 1
   b1 = abs(real(p1)) , f = b1^0.1
   b2 = b1*f , b3 = b2*f , b4 = b3*f , b5 = b4*f , b6 = b5*f
   b7 = b6*f , b8 = b7*f , b9 = b8*f , b10 = b9*f , b11 = b10*f
   iter1 = iter2 = iter3 = iter4 = iter5 = iter6 = iter7       \
         = iter8 = iter9 = iter10 = summ_tot = iter_tot = 0
   k = imag(p1) * (0.0,6.28319530718)
   :
   iter = iter + 1 , a = mz1 * mz1
   z1 = z1 * z1 + c , mz1 = cabs(z1) , a_b = abs(a - b)
   summ = summ + (mz1 - a_b) / (a+b - a_b)
   IF (mz1 > b1)
    IF (iter1==0)
     iter1 = iter
     iter_tot = iter_tot + iter1 , summ_tot = summ_tot + summ
    ENDIF
    IF (mz1 > b2)
     IF (iter2==0)
      iter2 = iter
      iter_tot = iter_tot + iter2 , summ_tot = summ_tot + summ
     ENDIF
     IF (mz1 > b3)
      IF (iter3==0)
       iter3 = iter
       iter_tot = iter_tot + iter3 , summ_tot = summ_tot + summ
      ENDIF
      IF (mz1 > b4)
       IF (iter4==0)
        iter4 = iter
        iter_tot = iter_tot + iter4 , summ_tot = summ_tot + summ
       ENDIF
       IF (mz1 > b5)
        IF (iter5==0)
         iter5 = iter
         iter_tot = iter_tot + iter5 , summ_tot = summ_tot + summ
        ENDIF
        IF (mz1 > b6)
         IF (iter6==0)
          iter6 = iter
          iter_tot = iter_tot + iter6 , summ_tot = summ_tot + summ
         ENDIF
         IF (mz1 > b7)
          IF (iter7==0)
           iter7 = iter
           iter_tot = iter_tot + iter7 , summ_tot = summ_tot + summ
          ENDIF
          IF (mz1 > b8)
           IF (iter8==0)
            iter8 = iter
            iter_tot = iter_tot + iter8 , summ_tot = summ_tot + summ
           ENDIF
           IF (mz1 > b9)
            IF (iter9==0)
             iter9 = iter
             iter_tot = iter_tot + iter9 , summ_tot = summ_tot + summ
            ENDIF
            IF (mz1 > b10)
             IF (iter10==0)
              iter10 = iter
              iter_tot = iter_tot + iter10 , summ_tot = summ_tot + summ
             ENDIF
             IF (mz1 > b11)
              iter_tot = iter_tot + iter , summ_tot = summ_tot + summ
              z = exp (summ_tot * k / iter_tot)
             ENDIF
            ENDIF
           ENDIF
          ENDIF
         ENDIF
        ENDIF
       ENDIF
      ENDIF
     ENDIF
    ENDIF
   ENDIF
   mz1 <= b11
   }

JoWe55c01 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
           ; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=fn1(z) + c
  z=fn2(z) + c
  |z| <=10
  ;SOURCE: jo_we_55.frm
}

JoWe55c02 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
           ; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + fn3(z) + p1/pixel:
  z=fn1(z) + c
  z=fn2(z) + c
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}

tri-fn+fn    { ; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
               ; real(p1) = bailout (1024 recommended)
               ; imag(p1) must be != 0
               ; z=fn1(z) + p2*fn2(z)
               ; use decomp = 256
   z1 = pixel , mz1 = cabs(z1) , summ = iter = 0
   b1 = abs(real(p1)) , f = b1^0.1
   b2 = b1*f , b3 = b2*f , b4 = b3*f , b5 = b4*f , b6 = b5*f
   b7 = b6*f , b8 = b7*f , b9 = b8*f , b10 = b9*f , b11 = b10*f
   iter1 = iter2 = iter3 = iter4 = iter5 = iter6 = iter7       \
         = iter8 = iter9 = iter10 = summ_tot = iter_tot = 0
   k = imag(p1) * (0.0,6.28319530718)
   :
   iter = iter + 1 , za = fn1(z1) , a = cabs(za)
   zb = p2*fn2(z1) , b = cabs(zb)
   z1 = za + zb , mz1 = cabs(z1) , a_b = abs(a - b)
   summ = summ + (mz1 - a_b) / (a+b - a_b)
   IF (mz1 > b1)
    IF (iter1==0)
     iter1 = iter
     iter_tot = iter_tot + iter1 , summ_tot = summ_tot + summ
    ENDIF
    IF (mz1 > b2)
     IF (iter2==0)
      iter2 = iter
      iter_tot = iter_tot + iter2 , summ_tot = summ_tot + summ
     ENDIF
     IF (mz1 > b3)
      IF (iter3==0)
       iter3 = iter
       iter_tot = iter_tot + iter3 , summ_tot = summ_tot + summ
      ENDIF
      IF (mz1 > b4)
       IF (iter4==0)
        iter4 = iter
        iter_tot = iter_tot + iter4 , summ_tot = summ_tot + summ
       ENDIF
       IF (mz1 > b5)
        IF (iter5==0)
         iter5 = iter
         iter_tot = iter_tot + iter5 , summ_tot = summ_tot + summ
        ENDIF
        IF (mz1 > b6)
         IF (iter6==0)
          iter6 = iter
          iter_tot = iter_tot + iter6 , summ_tot = summ_tot + summ
         ENDIF
         IF (mz1 > b7)
          IF (iter7==0)
           iter7 = iter
           iter_tot = iter_tot + iter7 , summ_tot = summ_tot + summ
          ENDIF
          IF (mz1 > b8)
           IF (iter8==0)
            iter8 = iter
            iter_tot = iter_tot + iter8 , summ_tot = summ_tot + summ
           ENDIF
           IF (mz1 > b9)
            IF (iter9==0)
             iter9 = iter
             iter_tot = iter_tot + iter9 , summ_tot = summ_tot + summ
            ENDIF
            IF (mz1 > b10)
             IF (iter10==0)
              iter10 = iter
              iter_tot = iter_tot + iter10 , summ_tot = summ_tot + summ
             ENDIF
             IF (mz1 > b11)
              iter_tot = iter_tot + iter , summ_tot = summ_tot + summ
              z = exp (summ_tot * k / iter_tot)
             ENDIF
            ENDIF
           ENDIF
          ENDIF
         ENDIF
        ENDIF
       ENDIF
      ENDIF
     ENDIF
    ENDIF
   ENDIF
   mz1 <= b11
   }

tri-julia-2  { ; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
               ; real(p1) = bailout (1024 recommended)
               ; imag(p1) must be != 0
               ; p2 = parameter for the Julia set
               ; use decomp = 256
   z1 = pixel , mz1 = cabs(z1) , b = cabs(p2) , summ = iter = 0
   b1 = abs(real(p1)) , f = b1^0.1
   b2 = b1*f , b3 = b2*f , b4 = b3*f , b5 = b4*f , b6 = b5*f
   b7 = b6*f , b8 = b7*f , b9 = b8*f , b10 = b9*f , b11 = b10*f
   iter1 = iter2 = iter3 = iter4 = iter5 = iter6 = iter7       \
         = iter8 = iter9 = iter10 = summ_tot = iter_tot = 0
   k = imag(p1) * (0.0,6.28319530718)
   :
   iter = iter + 1 , a = mz1 * mz1
   z1 = z1 * z1 + p2 , mz1 = cabs(z1) , a_b = abs(a - b)
   summ = summ + (mz1 - a_b) / (a+b - a_b)
   IF (mz1 > b1)
    IF (iter1==0)
     iter1 = iter
     iter_tot = iter_tot + iter1 , summ_tot = summ_tot + summ
    ENDIF
    IF (mz1 > b2)
     IF (iter2==0)
      iter2 = iter
      iter_tot = iter_tot + iter2 , summ_tot = summ_tot + summ
     ENDIF
     IF (mz1 > b3)
      IF (iter3==0)
       iter3 = iter
       iter_tot = iter_tot + iter3 , summ_tot = summ_tot + summ
      ENDIF
      IF (mz1 > b4)
       IF (iter4==0)
        iter4 = iter
        iter_tot = iter_tot + iter4 , summ_tot = summ_tot + summ
       ENDIF
       IF (mz1 > b5)
        IF (iter5==0)
         iter5 = iter
         iter_tot = iter_tot + iter5 , summ_tot = summ_tot + summ
        ENDIF
        IF (mz1 > b6)
         IF (iter6==0)
          iter6 = iter
          iter_tot = iter_tot + iter6 , summ_tot = summ_tot + summ
         ENDIF
         IF (mz1 > b7)
          IF (iter7==0)
           iter7 = iter
           iter_tot = iter_tot + iter7 , summ_tot = summ_tot + summ
          ENDIF
          IF (mz1 > b8)
           IF (iter8==0)
            iter8 = iter
            iter_tot = iter_tot + iter8 , summ_tot = summ_tot + summ
           ENDIF
           IF (mz1 > b9)
            IF (iter9==0)
             iter9 = iter
             iter_tot = iter_tot + iter9 , summ_tot = summ_tot + summ
            ENDIF
            IF (mz1 > b10)
             IF (iter10==0)
              iter10 = iter
              iter_tot = iter_tot + iter10 , summ_tot = summ_tot + summ
             ENDIF
             IF (mz1 > b11)
              iter_tot = iter_tot + iter , summ_tot = summ_tot + summ
              z = exp (summ_tot * k / iter_tot)
             ENDIF
            ENDIF
           ENDIF
          ENDIF
         ENDIF
        ENDIF
       ENDIF
      ENDIF
     ENDIF
    ENDIF
   ENDIF
   mz1 <= b11
   }

Carr-945{
z=abs(1/pixel*0.91/pixel),
c=fn2(pixel)/fn4(pixel):
z=(z*3/log(c*c-0.8))/(pixel-c*c),
|real(z)| <=100
}


kmoe-02 {; by Kirsten Moe. Rewritten for Orgform by G. Martin, 7/14/97
  x=cos(sqr(pixel))
  zx=real(p2)+64*fn1(64):
  z=(x-1)*(x-2)*zx
  x=sin(sqr(z))
  |z|<=4
}

kmoe-010 {; by Kirsten Moe. Rewritten for Orgform by G. Martin 7/14/97
  z=pixel
  x=cos(sqr(z)):
  z=z*z*z*z*(25+x)
  x=sin(sqr(z))
  |z|<=4
}

kmoe-03 {; by Kirsten Moe. Rewritten by G. Martin for Orgform 7/14/97
  z=pixel 
  x=cos(sqr(z))       
  z=3/(x-3)*imag(z)
  z<12 
}
        
tent_in_mod { ; Modified Sylvie Gallet formula
              ; Modified tent_inside.frm (generalized by Les St Clair)
              ; use fn1,fn2,fn4=abs & fn3=cabs for default behaviour
              ; set p1=0, p2=0.001 for default behaviour
  r = p1 , z = 0 :
   l = r+p1
   z = z*z + pixel
   UV = (5,5) - fn1((5,5) - fn2(z))
   r = fn3(UV)
    fn4(l-r) >= p2 && r < 4
  }

decomp-1 {
  z = pixel , iter = 0 :
  iter = iter + 1
  iter >= 2
}

decomp-2 { ; real(p1) = radius of the circle, default: 1
           ; use "inside=0" and the decomp= option
   IF (p1 != 0)
      r = abs(real(p1))
   ELSE
      r = 1
   ENDIF
   d = cabs(pixel)
   a = d * 2*pi / r
   z = e^((0,1) * d * 2*pi / r)
   IF (d > r)
      use_inside_color = 1
   ELSE
      use_inside_color = 0
   ENDIF
   :
   use_inside_color
   }

rand_generic { ; ****	PARAMETER 1 MUST BE > 0   ****
	       ; Thierry Boudet 101355.2112ompuserve.com
	       ; 19 Juillet 1997
	       z = srand(1) , z = rand:
	       z = fn1(z) + fn2(pixel);
	       |z| <= real(p1)
	       }


Carr3192-1(YAXIS)  {;Modified Sylvie Gallet frm. [101324,3444],1996 
                  ;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-cos(1/pixel))
b3=(((exp(0.0025/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b4=flip(pixel^3)-cabs(pixel)^6-conj(0.1/pixel-flip(0.01/pixel)),
b5=cabs(pixel^4)-pixel^7+conj(0.1/b3)-conj(0.1/pixel-flip(0.01/pixel))+0.15
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*(b5)
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*pixel|)),
iter=iter+1
cabs(|z|)<=bailout
}

Carr3192 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996 
		  ; passes=1 needs to be used with this PHC formula.
                  ; Rewritten for if..else by George Martin 8/1/97
                  ; Rerewritten by Sylvie
  pixel=-abs(real(pixel))+flip(imag(pixel)),
  imagp1 = imag(p1)
  imagp2 = imag(p2)
  d=log(1/pixel-cos(1/pixel))
  b3=(((exp(0.0025/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
  c = flip(pixel^3)-cabs(pixel)^6-conj(0.1/pixel-flip(0.01/pixel)),
  z = origz = cabs(pixel^4)-pixel^7+conj(0.1/b3)\
       -conj(0.1/pixel-flip(0.01/pixel))+0.15
  IF (whitesq == 0)
     z = origz = -z
     c = -c
  ENDIF
  d0 = flip(|d/80*pixel|) + (-0.7456,-0.132)
  c = |c/7.5| + d0
  bailout=16,iter=0:
  IF (iter == p1)
    z = 0
    c = |0.2*origz^1.2| + d0
  ELSEIF (iter == imagp1)
    z = 0
    c = |0.3*conj(origz)| + d0
  ELSEIF (iter == p2)
    z = 0
    c = |0.45*flip(origz)| + d0
  ELSEIF (iter == imagp2)
    z = 0
    c = |0.675*flip(origz)| + d0
  ENDIF
  z = z*z + c
  iter = iter+1
  |z| <= bailout
}

Gallet-9-05 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
   z1 = c = pixel , r1 = |real(p1)*z1|
   r2 = imag(p1)*imag(p1)
   bailout = real(p2) , z = 0 :
   z1 = fn1(z1) + c
   mz1 = |z1|
   if (mz1 <= r1)
      z1 = z1 + p3 , mz1 = cabs(z1)
   endif
   if (mz1 < r2)
      z = z1^imag(p2)
   endif
   mz1 <= bailout
   }

rand_generic { ; ****	PARAMETER 1 MUST BE > 0   ****
	       ; Thierry Boudet 101355.2112ompuserve.com
	       ; 19 Juillet 1997
	       z = srand(1):  ; TW changed this line
	       z = fn1(z) + fn2(pixel);
	       |z| <= real(p1)
	       }

rand_genericA { ; ****	PARAMETER 1 MUST BE > 0   ****
	       ; Thierry Boudet 101355.2112ompuserve.com
	       ; 19 Juillet 1997
	       z = rand , c = fn2(pixel) :  ; S. Gallet optimised
	       z = fn1(z) + c;
	       |z| <= p1
	       }

trmoe-01 {
  z=c=pixel,c=c+5:
  IF(c<=10)
    z=z*cos(z+c)+1/c
  ELSEIF(c<=20)
    z=(cos(z)*tan(z)*atanh(z))+cosxx(c)
  ELSE
    z=(sqrt(z)*z)+cosh(c)
  ENDIF
  |z|<=256
  ;SOURCE: trmoe2.frm
}

acc_man_mod {; Modified Sylvie Gallet formula
             ; Modified acceleration_man.frm (generalized by Les St Clair)
             ; use fn1=cabs, fn2=abs for default behaviour
             ; set p1=0 and p2=0 for default behaviour
  z2 = r = 0:
  l = r, z = z2
  z1 = z*z + pixel +p1
  vel1 = z1 - z
  z2 = z1*z1 + pixel +p2
  vel2 = z2 - z1
  acc = vel2 - vel1
  r = fn1(acc)
  r < 4 && fn2(l - r) >= 0.001
}

Carr3195 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Rewritten for if..else by Sylvie Gallet 8/18/97
   pixel = - abs(real(pixel)) + flip(imag(pixel))
   pinv = 0.1/pixel
   imagp1 = imag(p1) , imagp2 = imag(p2)
   d = log(10*pinv-cos(10*pinv))
   c = cabs(0.5*pixel) - pixel*((0.3,0.6)+pixel) - conj(pinv)
   z = origz = c^5 - conj(0.1/c-flip(0.01/c)) - conj(pinv-flip(0.1*pinv))
   IF (whitesq == 0)
      z = origz = -z
      c = -c
   ENDIF
   d0 = flip(|d/80*pixel|) + (-0.7456,-0.132)
   c = |c/7.5| + d0
   bailout = 16 , iter = 0 :
   IF (iter == p1)
      z = 0
      c = |0.2*origz^1.2| + d0
   ELSEIF (iter == imagp1)
      z = 0
      c = |0.3*conj(origz)| + d0
   ELSEIF (iter == p2)
      z = 0
      c = |0.45*flip(origz)| + d0
   ELSEIF (iter == imagp2)
      z = 0
      c = |0.675*flip(origz)| + d0
   ENDIF
   z = z*z + c
   iter = iter + 1
   |z| <= bailout
   }


Carr3199(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-cosxx(1/pixel))
b5=imag(flip(pixel))-((abs(pixel/4))/(conj(pixel/2)))^3
b4=flip(pixel^2)*cabs(pixel)-(|flip(0.01/pixel-conj(0.1/pixel))|)+0.1
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*pixel|)),
iter=iter+1
(|z|)<=bailout
}

Carr3202(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-cosxx(1/pixel))
b4=pixel^3-conj(0.1/pixel-flip(0.01/pixel))
b5=abs(conj(conj(pixel^12)))-flip(0.01/pixel)-conj(0.1/pixel)+0.3
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*pixel|)),
iter=iter+1
(|z|)<=bailout
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

BJ-SG8-1403     { ; Modified Sylvie Gallet frm by Brian E. Jones
	          ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
                  ; Requires periodicity = 0 and decomp = 256
                  ; 0 < p1 <= 1
   z = 0 , c = zn = pixel , zmin = p1 , k = flip(2*pi/zmin) :
   zn = zn*zn + c , znc = cabs(zn)
   IF (znc < zmin)
      zmin = (znc/p2)*fn1(zn) , z = exp(zmin*k)
   ENDIF
   znc <= 4
   }


Carr3208(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b4=(pixel^4/(tanh(0.3/pixel)))+(0.1/pixel),
b5=conj(b4^6)-conj(0.1/pixel-flip(0.01/pixel))-0.25
c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(z+conj(|0.1/pixel|))^2+(c-flip(|0.01/pixel|))+flip(real(|d/80*pixel|))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3216(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b5=(pixel^6)+0.15
b4=cabs(b5/2.5)-conj(0.1/pixel-flip(0.01/pixel))-0.05
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2))+flip(real(|d/80*pixel|)),
iter=iter+1
(conj(|z|))<=bailout
}

dragon_J{
a0=0.82407,b0=0.28148,c0=-0.21235,d0=0.86420,
a1=0.08827,b1=0.52099,c1=-0.46389,d1=-0.37778,
al0=0.77193,k0=1.59554,l0=0.49085,
al1=0.20833,k1=4.51450,l1=-1.07895,
z=pixel:
x=real(z)
y=imag(z)
o0=(d0*x-b0*y+k0)/al0+flip((-c0*x+a0*y+l0)/al0)
op0=|o0-p2|
o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
op1=|o1-p2|
IF (op0<=op1)
z=o0
ELSE
z=o1
ENDIF
|z|<=p1
}

BJ-SG8-1403 { ; Modified Sylvie Gallet frm by Brian E. Jones
                  ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
                  ; Requires periodicity = 0 and decomp = 256
                  ; 0 < p1 <= 1
   z = 0 , c = zn = pixel , zmin = p1 , k = flip(2*pi/zmin) :
   zn = zn*zn + c , znc = cabs(zn)
   IF (znc < zmin)
      zmin = (znc/p2)*fn1(zn) , z = exp(zmin*k)
   ENDIF
   znc <= 4
}

JoWe55c30 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
z=(z*z*z)+fn1(z-0.3)/fn2(pixel-0.1)
|z| <=p2
}

JoWe55c34 { ; from a modified Carr-formula
            ; 6/1997 JoWeber CIS [100424,35]
c=z=p1/pixel:
z=fn1(fn2(z^z^z^z^z)) + p2
|z| <=p3
}

ep20x{
z=pixel,a=cotan(z)^p2,b=z*(p1-tan(z/p3)):
IF (fn1(a)<fn2(z/p2))
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
else
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
endif
z=(fn3(fn1(z+(a)+whitesq)+fn2(b+(z^p3/a)))/fn4(z))+whitesq
|z|<4
}

Carr3227(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b5=(pixel^6)+0.15-conj(0.01/pixel-flip(0.001/pixel))
b4=abs(conj(abs(conj(b5/2.5))))-conj(0.1/pixel-flip(0.01/pixel))-0.05
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+c*z))-(flip(real(|d/60*pixel|)))^3,
iter=iter+1
(conj(|z|))<=bailout
}


1(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b3=conj(0.1/pixel-flip(0.01/pixel))
b5=conj(abs(pixel/2)*log(abs(pixel/3)))*conj(pixel^8)-b3+conj(0.01/pixel)-0.025
b6=pixel/2-conj(0.1/pixel-flip(0.01/pixel))
b4=b6-(conj(flip(pixel/2)*sin(abs(pixel/3)))*flip(pixel^6)-conj(0.1/pixel+b3)-0.15)
c=whitesq*b4-(whitesq==0)*conj(b4)
z=whitesq*b5-(whitesq==0)*b5^3
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/70*pixel))),
iter=iter+1
(conj(|z|))<=bailout
}

Test1 {;Rolf Freericks
  z1=z=pixel, z2=sqr(z), out=4*(p2<=0)+p2*(p2>0):
 z1=z1*z1+p1+(-1.1,0.25)
z2=z2*z2+p1+(-1.1,0.25)
z=z1*z2
|z|<out
}


Gallet-10-01 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Oct 1997
   z1 = c = pixel , mz1 = cabs(fn2(z1)) , k = real(p1)*mz1
   bailout = real(p2) , z = imag(p1) :
   z1 = sqr(sqr(z1) + c) + c
   z1 = fn1(real(z1)) + flip(imag(z1)) , mz1 = cabs(z1)
   if (mz1 <= k)
      z1 = z1 + p3 , mz1 = cabs(z1)
   endif
   if (mz1 < imag(p1))
      z = z1^imag(p2)
   endif
   mz1 <= bailout
   }

rfr0a71 {;Rolf Freericks, rfreericks@compuserve.com
    ;requires floating point
    ;try integer for "nice erros"
    ;z=f(z)/f´(z) with f(z)=z^4-z^2-c
z=pixel:
z2=z*z
z3=z*z2
z4=z*z3
z=(z4-z2-p1)/(4*z3-2*z)
|z|>=p2
}


Carr3245(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b3=cabs(pixel^2)-cosxx(pixel)-conj(0.1/pixel)
b5=abs(pixel^7)-conj(0.075/b3-flip(0.01/b3))-conj(0.065/pixel-flip(0.01/pixel))-0.23
b4=cabs(pixel^7)-conj(0.1/b3-flip(0.01/b3))-conj(0.1/pixel-flip(0.01/pixel))-0.075
c=whitesq*b4^3-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*pixel))),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3250(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))
b5=conj(conj(pixel^3))*cabs(pixel^4)-flip(0.01/pixel)-conj(0.01/pixel)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.75-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+c+flip(real(|d/70*pixel|))
iter=iter+1
(conj(|z|))<=bailout
}

SpiderJulcplx {; by Jon Horner - 100112,1700 - FRAC'Cetera
               ; Complex-form of SPIDERJUL
               ; float=yes
  z = pixel, c = p1:
  z = z * z + c,
  c = c * p2 + z,
  |z| <= 4
}

Carr3258(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b3=(|0.0175/pixel|)
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))
b5=conj(conj(pixel^3))*cabs(pixel^4)-flip(0.01/pixel)-conj(0.01/pixel)-conj(b3)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*(b5^0.75)-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+c+flip(real(|d/70*pixel|))+0.105
iter=iter+1
(conj(|z|))<=bailout
}

Whatzit1 {; Dan Farmer  -  from thread in General Information.
  z = pixel:
  z = ((real(p1)*z^3) - (imag(p1)*z^2)+1) ^ p2
  |z| <=4
}

Whatzit2 {; Dan Farmer  -  from thread in General Information.
  z = pixel:
  z = ((real(p1)*z^3) - (imag(p1)*z^2)+1) ^ p2
  |real(z)| <=100  ||  |imag(z)| <=100
}

Whatzit4 {; Dan Farmer  -  from thread in General Information.
  z = fn1(pixel):
  z = ((real(p1)*z^3) - (imag(p1)*z^2)+1) ^ p2
  |real(z)| <=100  ||  |imag(z)| <=100
}

Whatzit5 {; Dan Farmer  -  from thread in General Information.
  z = pixel:
  z = fn1((real(p1)*z^3) - fn2(imag(p1)*z^2)+1) ^ fn3(p2)
  |real(z)| <=10  ||  |imag(z)| <=10
}

rfr0ak1 {;(c) Rolf Freericks 
               ;rfreericks@compuserve.com
c = pixel
h=z=p1
:
h=fn1(h)
z=1-z*z*c-h
|fn2(z)| >p2
}

Carr3264(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b3=conj((0.0175/pixel)-imag(0.00725/pixel)+cabs(0.01/pixel))
b4=abs(conj(conj(pixel^5)))*conj(flip(pixel^3))-(-b3)
b5=abs(conj(conj(pixel^3)))*cabs(pixel^4)-flip(0.01/pixel)-conj(0.01/pixel)-conj(b3)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*(b5^0.75)-(whitesq==0)*abs(b5)
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*pixel)))+0.08
iter=iter+1
(conj(|z|))<=bailout
}

Carr3264a (YAXIS){; Modified Sylvie Gallet frm.1996
	 	 ; passes=1 needs to be used with this PHC formula.
		 ; Revised for if/else by George Martin 11/20/97
  imagp1=imag(p1), imagp2=imag(p2)
  pixel=-abs(real(pixel))+flip(imag(pixel))
  invpixel=1/pixel
  centinvpixel=.01*invpixel
  cubepixel = pixel^3
  d=flip(abs((sqrt(invpixel-cosxx(invpixel)))/30*pixel))-0.08
  b3=conj((0.0175*invpixel)-imag(0.00725*invpixel)+cabs(centinvpixel))
  c=abs(cubepixel*pixel^2)*conj(flip(cubepixel))+b3
  b5=abs(cubepixel)*cabs(pixel*cubepixel)\
      -flip(centinvpixel)-conj(centinvpixel)-conj(b3)-0.2
  IF (whitesq)
    z = origz = b5^0.75
  ELSE
    z = origz = -abs(b5)
    c = -c
  ENDIF
  const= c*(imag(c)+2) - d
  bailout=16,iter=0
  :
  IF (iter == p1)
    z = 0
    c=1.5*origz^1.2
    const= c*(imag(c)+2) - d
  ELSEIF (iter == imagp1)
    z = 0
    c=2.25*origz
    const= c*(imag(c)+2) - d
  ELSEIF (iter == p2)
    z = 0
    c=3.375*origz
    const= c*(imag(c)+2) - d
  ELSEIF (iter == imagp2)
    z = 0
    c=5.0625*origz
    const= c*(imag(c)+2) - d
  ENDIF
  z=c*z*z*(z*z-3.5) + const
  iter=iter+1
  |z|<=bailout
}


IkenagaJUL {; formula from a letter from Joyce Haslam Mar 1993.
            ; Asymmetric.   try p1 = (0.56667, 0.36)
            ; Next line, from Haslam article Fractal Report 24 p5
            ; z=z*z*z+ (c-1)*z-c produces same results.
            ; Same as Julike in REB001.FRM
  z = pixel, c = p1 :
  z = z * z * z + z * (c-1) - c ,
  |z| <= 4
  ;SOURCE: ikenaga.frm
}

IkenagaJUL1+ (ORIGIN) {; formula from an article by Joyce Haslam
                       ; in Fractal Report 24 (w/+pixel stead of +c)
                       ; symmetric
  z = pixel, c = p1 :
  z = z * z * z + (c-1) * z + pixel ,
  |z|<=4
  ;SOURCE: ikenaga.frm
}

dmj-Mand-Hyp-Dec { ; outside = decomp: angle of closest z[n] to hyperbola at p1
	; This is the angle relative to the origin.

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2) * real(z2))	; Compute hyperbolic distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Cir-Dec { ; outside = decomp: angle of closest z[n] to ring at p1
	; This is the angle relative to the origin.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for ring radius.
	  p3 = (0,1) + real(p3)		; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = abs(cabs(z2) - imag(p3))	; Compute ring distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > 128)			; Point exceeds bailout.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Hyp-Ang { ; outside = decomp: angle of closest z[n] to hyperbola at p1
	; This is the angle relative to p1.

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2) * real(z2))	; Compute hyperbolic distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

Carr3284(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b6=conj(0.01/pixel),b7=flip(0.01/pixel),b8=sin(0.003/pixel-flip(0.003/pixel))
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))-conj(0.01/pixel-flip(0.001/pixel))
b9=conj(0.007/b4-flip(0.007/b4))
b5=conj(conj(pixel^3))*cabs(pixel+0.125)^4-b7-b6+1.75*b8-0.2
c=whitesq*b4-(whitesq==0)*b4+0.2
z=whitesq*b5^0.75-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c+flip(real(|d/70*pixel|))-(|b6|)-b7-flip(b9/5)
iter=iter+1
(conj(|z|))<=bailout
}

Carr3290(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b6=conj(0.01/pixel),b7=flip(0.005/pixel),b8=sin(0.003/pixel-flip(0.003/pixel))
b4=(pixel^4/(tanh(0.3/pixel)))+(0.1/pixel)
b9=conj(0.0033/b4*b8^2-flip(0.0033/b4*b8)),b10=(conj(cosxx(b4+b9)))
b5=(b4+pixel)*(flip(pixel-b9^2)^2*conj(pixel^2)*flip(b4)^2-b6-b7-0.1597)/b10
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*conj(b5)^0.75-(whitesq==0)*(b5+2/b4)
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+conj(c+0.25*b6)+flip(real(|d/70*pixel|))-(c/8)
iter=iter+1
(conj(|z|))<=bailout
}


Carr3296(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b10=(conj(pixel^3)*pixel^4)/(tanh(0.3/pixel))
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))-0.01/pixel
b5=b10-flip(0.0125/pixel)-conj(0.0125/pixel)-0.19
c=whitesq*b4-(whitesq==0)*b4-b7-b6
z=whitesq*b5^0.73-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=(|z|/5)+z*z+c-0.09/pixel
iter=iter+1
(conj(|z|))<=bailout
}

January { ; Sylvie Gallet, Dec 1997
          ; Based on Scott Burns equation solver applied to z^3-1 = 0
          ; Use decomp = 256
z1 = pixel , iter = 0
a = 23*(0,0.0245436)       ; 23 * 2i pi / 256
mz = abs(cabs(z1)-1) :
if (mz >= 0.1)
 z2 = z1*z1
 z1 = ((1,-1)*z2*z2 + (7,1)*z1) / (2*z1*z2 + 6)
 mz = abs(cabs(z1)-1) , cont = 1
 iter = iter + 1
else
 z = exp((iter + 10*mz)*a)
 cont = 0
endif
cont
}

February { ; Sylvie Gallet, Dec 1997
           ; Newton's method applied to z^3 - 1 = 0
           ; Coloring algorithm by Scott Burns
           ; Use decomp = 256 and periodicity = 0
 z1 = pixel , iter = 0 , limit = 0.05 , c = 1/limit
 sqr2 = sqrt(2) , j = -0.5 + flip(sqrt(0.75)) , k = conj(j)
 a = 85*(0,0.0245436)    ; real(p1) * 2i pi / 256
 :
 m1 = abs(cabs(z1-1)-sqr2)
 if (m1 <= limit)
   mk = abs(cabs(z1-k)-sqr2)
   if (mk <= limit)
     z = exp((2 + c*mk)*a) , cont = 0
   else
     z = exp(c*m1*a) , cont = 0
   endif
 else
   mj = abs(cabs(z1-j)-sqr2)
   if (mj <= limit)
     z = exp((1 + c*mj)*a) , cont = 0
   else
     mk = abs(cabs(z1-k)-sqr2)
     if (mk <= limit)
       z = exp((2 + c*mk)*a) , cont = 0
     else
       z2 = z1*z1
       z1 = (2*z1*z2 + 1) / (3*z2)
       iter = iter + 1 , cont = 1
     endif
   endif
 endif
 cont
 }

May      { ; Sylvie Gallet, Dec 1997
           ; Newton's method applied to z^3 - 1 = 0
           ; Coloring algorithm by Scott Burns
           ; Use decomp = 256 and periodicity = 0
 z1 = pixel , iter = 0
 a = p1*(0,0.0245436)    ; real(p1) * 2i pi / 256
 :
 mz = cabs(z1)
 z2 = z1*z1
 z1 = ((2.5,-0.7)*z1*z2 + (0.5,0.7)) / (3*z2)
 dz = abs(abs(real(z1)-0.25)-0.75)
 if (dz <= 0.1)
   z = exp((iter + 10*dz)*a) , cont = 0
 elseif (mz <= 0.25)
   z = exp((256/p1-1 + 4*mz)*a) , cont = 0
 else
   iter = iter + 1 , cont = 1
 endif
 cont
 }

August { ; Sylvie Gallet, Dec 1997
         ; Newton's method applied to z^4 - 4 = 0
         ; Coloring algorithm by Scott Burns
         ; Use decomp = 256 and periodicity = 0
 z1 = pixel , iter = 0 , sq2 = sqrt(2)
 a = real(p1)*(0,0.0245436)    ; real(p1) * 2i pi / 256
 mz = abs(cabs(z1)-sq2) :
 if (mz > 0.1)
   z2 = z1*z1
   z1 = (3*z2*z2 - 4) / (4*z1*z2)
   mz = abs(cabs(z1)-sq2) , cont = 1
   iter = iter + 1
 else
   if (iter < 13)
     z = exp((iter + 0.001 + 9.99*mz)*a)
   else
     z = exp((13 + (iter-13)/18)*a)
   endif
   cont = 0
 endif
 cont
 }

January_gen  { ; Modified Sylvie Gallet "january" formula
          ; Based on Scott Burns equation solver applied to z^3-1 = 0
          ; Use decomp = 256
          ; generalized by Les St Clair, Dec 1997
          ; use p1(real)=6, p2(real)=10, fn1=abs, fn2=cabs & fn3=exp for default behaviour
z1 = pixel , iter = 0
a = 23*(0,0.0245436)       ; 23 * 2i pi / 256
mz = fn1(fn2(z1)-1) :
if (mz >= 0.1)
 z2 = z1*z1
 z1 = ((1,-1)*z2*z2 + (7,1)*z1) / (2*z1*z2 + p1)
 mz = fn1(fn2(z1)-1) , cont = 1
 iter = iter + 1
else
 z = fn3((iter + p2*mz)*a)
 cont = 0
endif
cont
}

January-2 { ; Sylvie Gallet, Dec 1997
            ; Based on Scott Burns equation solver applied to z^3 - 1 = 0
            ; Use decomp = 256 and periodicity = 0
 z1 = pixel , iter = 0
 a = real(p1)*(0,0.0245436)    ; real(p1) * 2i pi / 256
 mz = abs(cabs(z1)-1) :
 if (mz >= 0.1)
   z2 = z1*z1
   z1 = (p2*z2*z2 + p3*z1) / (2*z1*z2 + imag(p1))
   mz = abs(cabs(z1)-1) , cont = 1
   iter = iter + 1
 else
   z = exp((iter + 10*mz)*a)
   cont = 0
 endif
 cont
 }

January-3 { ; Sylvie Gallet, Dec 1997
            ; Based on Scott Burns equation solver applied to z^4 - 1 = 0
            ; Use decomp = 256 and periodicity = 0
 z1 = pixel , iter = 0
 a = real(p1)*(0,0.0245436)    ; real(p1) * 2i pi / 256
 mz = abs(cabs(z1)-1) :
 if (mz >= 0.1)
   z2 = z1*z1
   z1 = (p2*z2*z2 + p3)*z1 / (3*z2*z2 + imag(p1))
   mz = abs(cabs(z1)-1) , cont = 1
   iter = iter + 1
 else
   z = exp((iter + 10*mz)*a)
   cont = 0
 endif
 cont
 }

pd301_cd    {; Formula by P. DiGiorgi - December 97
		 ; Uses coloring algorithm [Cir-Dst]
		 ; from DMJ-PUB.FRM by Damion M. Jones
		 ; outside = real: closest z[n] to ring at p1

IF (imag(p2) == 0)			; Invalid value for aspect ratio.
  p2 = (0,1) + real(p2)			; Substitute a default value.
ENDIF
IF (real(p3) == 0)			; Invalid value for color scale.
  p3 = 75 + flip(imag(p3))		; Substitute a default value.
ENDIF
IF (imag(p3) == 0)			; Invalid value for ring radius.
  p3 = (0,1) + real(p3)			; Substitute a default value.
ENDIF
closest = 1e+38				; Closest approach so far.
point = 0				; Point of that closest approach.
done = 2				; Iteration counter.
r = (0,1) ^ (real(p2)/90)		; Compute rotation vector.
z = pixel:				; fractal calculation.
c = .15*(fn1(z) + fn2(z) + 1.5)
z = fn3(z*z) + fn4(c)
done = done + 1				; Done one more iteration.
z2 = (z-p1) * r				; Offset to p1 and rotate.
z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
d = abs(cabs(z2) - imag(p3))    	; Compute ring distance.
IF (d < closest)			; Closer than previous value.
  point = z				; Save that point.
  closest = d				; Save the closest approach.
ENDIF
IF (|z| > 128)				; Point exceeds bailout.
  z = closest * real(p3)		; Apply color scale.
  z = z - 255*trunc(z/real(255))        ; Wrap at 255.
  z = z - done				; Return value.
  done = -1				; Set flag to force an exit.
ENDIF
done >= 0				; Continue if the flag is clear.
}


IkenagaJUL1+ (ORIGIN) {; formula from an article by Joyce Haslam
                       ; in Fractal Report 24 (w/+pixel stead of +c)
                       ; symmetric
  z = pixel, c = p1 :
  z = z * z * z + (c-1) * z + pixel ,
  |z|<=4
  ;SOURCE: ikenaga.frm
}

February { ; Sylvie Gallet, Dec 1997
           ; Newton's method applied to z^3 - 1 = 0
           ; Coloring algorithm by Scott Burns
           ; Use decomp = 256 and periodicity = 0
 z1 = pixel , iter = 0 , limit = 0.05 , c = 1/limit
 sqr2 = sqrt(2) , j = -0.5 + flip(sqrt(0.75)) , k = conj(j)
 a = 85*(0,0.0245436)    ; real(p1) * 2i pi / 256
 :
 m1 = abs(cabs(z1-1)-sqr2)
 if (m1 <= limit)
   mk = abs(cabs(z1-k)-sqr2)
   if (mk <= limit)
     z = exp((2 + c*mk)*a) , cont = 0
   else
     z = exp(c*m1*a) , cont = 0
   endif
 else
   mj = abs(cabs(z1-j)-sqr2)
   if (mj <= limit)
     z = exp((1 + c*mj)*a) , cont = 0
   else
     mk = abs(cabs(z1-k)-sqr2)
     if (mk <= limit)
       z = exp((2 + c*mk)*a) , cont = 0
     else
       z2 = z1*z1
       z1 = (2*z1*z2 + 1) / (3*z2)
       iter = iter + 1 , cont = 1
     endif
   endif
 endif
 cont
 }

May      { ; Sylvie Gallet, Dec 1997
           ; Newton's method applied to z^3 - 1 = 0
           ; Coloring algorithm by Scott Burns
           ; Use decomp = 256 and periodicity = 0
 z1 = pixel , iter = 0
 a = p1*(0,0.0245436)    ; real(p1) * 2i pi / 256
 :
 mz = cabs(z1)
 z2 = z1*z1
 z1 = ((2.5,-0.7)*z1*z2 + (0.5,0.7)) / (3*z2)
 dz = abs(abs(real(z1)-0.25)-0.75)
 if (dz <= 0.1)
   z = exp((iter + 10*dz)*a) , cont = 0
 elseif (mz <= 0.25)
   z = exp((256/p1-1 + 4*mz)*a) , cont = 0
 else
   iter = iter + 1 , cont = 1
 endif
 cont
 }

August { ; Sylvie Gallet, Dec 1997
         ; Newton's method applied to z^4 - 4 = 0
         ; Coloring algorithm by Scott Burns
         ; Use decomp = 256 and periodicity = 0
 z1 = pixel , iter = 0 , sq2 = sqrt(2)
 a = real(p1)*(0,0.0245436)    ; real(p1) * 2i pi / 256
 mz = abs(cabs(z1)-sq2) :
 if (mz > 0.1)
   z2 = z1*z1
   z1 = (3*z2*z2 - 4) / (4*z1*z2)
   mz = abs(cabs(z1)-sq2) , cont = 1
   iter = iter + 1
 else
   if (iter < 13)
     z = exp((iter + 0.001 + 9.99*mz)*a)
   else
     z = exp((13 + (iter-13)/18)*a)
   endif
   cont = 0
 endif
 cont
 }

January-3 { ; Sylvie Gallet, Dec 1997
            ; Based on Scott Burns equation solver applied to z^4 - 1 = 0
            ; Use decomp = 256 and periodicity = 0
 z1 = pixel , iter = 0
 a = real(p1)*(0,0.0245436)    ; real(p1) * 2i pi / 256
 mz = abs(cabs(z1)-1) :
 if (mz >= 0.1)
   z2 = z1*z1
   z1 = (p2*z2*z2 + p3)*z1 / (3*z2*z2 + imag(p1))
   mz = abs(cabs(z1)-1) , cont = 1
   iter = iter + 1
 else
   z = exp((iter + 10*mz)*a)
   cont = 0
 endif
 cont
 }

Mod-August4 { ;Modified Sylvie Gallet frm, Dec 1997
         ; Modified by Brian E. Jones
         ; Coloring algorithm by Scott Burns
         ; Use decomp = 256 and periodicity = 0
 z1 = pixel , iter = 0 , sq2 = sqrt(2)
 a = real(p1)*(0,0.0245436)    ; real(p1) * 2i pi / 256
 mz = abs(cabs(z1)-sq2) :
 if (mz > 0.1)
   z2 = fn1(z1/z1)*fn2(z1)
   z1 = (3*z2*z2 - 4) / (4*z1*z2)
   mz = abs(cabs(z1)-sq2) , cont = 1
   iter = iter + 1
 else
   if (iter < 13)
     z = exp((iter + 0.001 + 9.99*mz)*a)
   else
     z = exp((13 + (iter-13)/18)*a)
   endif
   cont = 0
 endif
 cont
 }

F'Icon-Odd (XYAXIS) { ; Generalization by Jon Horner - 100112,1700
                      ; of formula by Ramiro Perez (rperez@ns.pa)
                      ; ODD degrees produce an EVEN no. of features
                      ; real(p3) varies the degree 
                      ; for originals set fn1=conj, fn2=ident
  z1=fn2(pixel), z=0, l=real(p1), a=imag(p1), b=real(p2), g=imag(p2):
  zm = z1 ^ real(p3)
  fac= l + a * |z1| + b * real(z1*zm)
  z1 = fac * z1 + g * fn1(zm)
  z = z + (z1-pixel)
  |z1| <= 200
}

May      { ; Sylvie Gallet, Dec 1997
           ; Newton's method applied to z^3 - 1 = 0
           ; Coloring algorithm by Scott Burns
           ; Use decomp = 256 and periodicity = 0
 z1 = pixel , iter = 0
 a = p1*(0,0.0245436)    ; real(p1) * 2i pi / 256
 :
 mz = cabs(z1)
 z2 = z1*z1
 z1 = ((2.5,-0.7)*z1*z2 + (0.5,0.7)) / (3*z2)
 dz = abs(abs(real(z1)-0.25)-0.75)
 if (dz <= 0.1)
   z = exp((iter + 10*dz)*a) , cont = 0
 elseif (mz <= 0.25)
   z = exp((256/p1-1 + 4*mz)*a) , cont = 0
 else
   iter = iter + 1 , cont = 1
 endif
 cont
 }

