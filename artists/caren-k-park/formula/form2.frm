210 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = (z+5/4) * (z-2/3) * (z*z+1)
  z < 5
  ;SOURCE: kg2.frm
}

Fractint {; Sylvie Gallet [101324,3444], 1996
          ; Modified for if..else logic 3/21/97 by Sylvie Gallet
          ; requires 'periodicity=0'
   z = pixel-0.025, x = real(z), y = imag(z), text = 0
   IF (y > -0.225 && y < 0.225)
      x1 = x*1.8, x3 = 3*x
      ty2 = y < 0.025 && y > -0.025 || y > 0.175
      IF ( x < -1.2 || ty2 && x > -1.25 && x < -1 )
         text = 1
      ELSEIF ( x < -0.9 || ty2 && x > -0.95 && x < -0.8                  \
               || (cabs(sqrt(|z+(0.8,-0.1)|)-0.1) < 0.025 && x > -0.8)   \
               || (y < -x1-1.44 && y > -x1-1.53 && y < 0.025) )
         text = 1
      ELSEIF ( y > x3+1.5 || y > -x3-1.2 || (y > -0.125 && y < -0.075)   \
               && y < x3+1.65 && y < -x3-1.05 )
         text = 1
      ELSEIF ( cabs(sqrt(|z+0.05|)-0.2) < 0.025 && x < 0.05 )
         text = 1
      ELSEIF ( (x > 0.225 && x < 0.275 || y > 0.175) && x > 0.1 && x < 0.4 )
         text = 1
      ELSEIF ( x > 0.45 && x < 0.5 )
         text = 1
      ELSEIF ( x < 0.6 || x > 0.8 || ((y > -x1+1.215) && (y < -x1+1.305))  \
               && x > 0.55 && x < 0.85 )
         text = 1
      ELSEIF ( x > 1.025 && x < 1.075 || y > 0.175 && x > 0.9 && x < 1.2 )
         text = 1
      ENDIF
   ENDIF
   z = 1 + (0.0,-0.65) / (pixel+(0.0,.75))
   :
   IF (text == 0)
      z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
      IF (|n| >= 0.0001)
         continue = 1
      ELSE
         continue = 0
      ENDIF
   ENDIF
   continue
  ;SOURCE: fract196.frm
}

Carr1795 {
  z=1/(pixel-real(1/pixel)-sinh(1/pixel-0.25))
  c=(1/(pixel-(0.124/z*(0.524/pixel/z)))):
  z=0.124/pixel/c*c*c*pixel/z^(1.23)
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}

davidsmask {
  c = pixel
  c2 = c*c, c75 = c2 + 0.75, c25 = c2 - 0.25
  c75p1 = c75 + p1
  z = pixel:
  z2 =z*z
  n = z*z2 - c75*z + c25
  d = 3*z2 - c75p1
  z = z- n/d
  0.000001 <= |n|
  ;SOURCE: davweird.frm
}

gallet-2-04 (XAXIS) {; Sylvie Gallet [101324,3444], 1995
  a=pixel, z=a, b=0, a2=3*a*a :
  z = z^3 - a2*z + b
  b = b+.01
  |z| <= 100
  ;SOURCE: gallet-2.frm
}

j_reel_1 {; copyright Sylvie Gallet
  z=pixel, x=real(z), y=imag(z) :
  x2=x*x, y2=y*y, x3=x2*x, y3= y2*y
  x=x3-y3+y, y=x2-y2, z=x+flip(y)
  |z|<=p1
  ;SOURCE: forummsg.frm
}

mandel-julia {; Sylvie Gallet 1995
  z=pixel, c=z
  compt=0, limit=real(p1), bailout=4
  p=(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: mandj.frm
}

oof11  {
  z = y = pixel:
  z = fn1(z) * fn2(y)
  y = fn1(y) / fn2(z)
  |z| <= p1
  ;SOURCE: kgoof11.frm
}

Carr1540 {
  z=sqr(1/pixel)+sqr(pixel)
  c=sin(tan(exp(z-1))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}

Carr1561-A {; Julia,Faceted Glass
  z=z1, z1=conj(2/pixel*(2*pixel))/(flip(1-pixel))
  c=(cos(pixel))/(conj(3/pixel)^cosxx(pixel)):
  z=(z*z+c)
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}

Carr1575 {; Julia.
  z=((-0.7456,0.2)+1)/pixel
  c=1/cos(pixel*pixel)/(0.3,0.6)*(-0.3,0.3):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}

Carr1697 {; Mandel type.
  c=(pixel)/(flip(pixel)-conj(1/pixel))
  z=(1/pixel)/(pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}

Carr1591 {; Spider type.
  z=1/acos(pixel+pixel)
  c=1/asin(pixel):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}

glynnout3 {; Mutation of GLYNN, by Bradley Beacham  [74223,2745]
           ; Original formula by Jon Horner [100112,1700]
           ; in-and-out relative to fn1(pixel)
           ; p1 = Parameter (default 0), p2 = Parameter (default 0)
  z = pixel, tgt = fn1(pixel), rt=real(tgt), it=imag(tgt)
  olddist = 100:
  x = real(z) - rt
  y = imag(z) - it
  dist = x*x + y*y
  in  =  p2 * (dist <= olddist)
  out = -p2 * (olddist < dist)
  olddist = dist
  z = fn2(z^p1 + in + out)
  |z| <= 4
  ;SOURCE: zsazsa.frm
}

Larry {; Mutation of 'Michaelbrot' and 'Element'
    ; Original formulas by Michael Theroux [71673,2767]
    ; Modified for if..else logic 3/19/97 by Sylvie Gallet
    ; For 'Michaelbrot', set FN1 & FN2 =IDENT and P1 & P2 = default
    ; For 'Element', set FN1=IDENT & FN2=SQR and P1 & P2 = default
    ; p1 = Parameter (default 0.5,0), real(p2) = Bailout (default 4)
   z = pixel
    ; The next line sets c=default if p1=0, else c=p1
   IF (real(p1) || imag(p1))
      c = p1
   ELSE
      c = 0.5
   ENDIF
    ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
   IF (real(p2) <= 0)
      test = 4
   ELSE
      test = real(p2)
   ENDIF
   :
   z = fn1(fn2(z*z)) + c
   |z| <= test
  ;SOURCE: fract196.frm
}

OK-18 {
  z = v = pixel:
  z = fn1(v) + real(z)
  v = fn2(z) + imag(v)
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}

PopCornJulCplx {; Jon Horner & Bradley Beacham - May 1995
   ; p1 = step size (default 0.05), p2 = parameter (default 3)
   ; p3 = bailout value (default 4)
   ; set co-ords = -3/3/-2.25/2.25, fn1=sin, fn2=tan, fn3=ident, fn4=flip
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  test = (4.0 * ((p3)<=0) + (p3) * (0<p3))
  x = real(pixel), y = imag(pixel):
  newx = x - h*fn1((y) + fn2(k*y))
  newy = y - h*fn1((x) + fn2(k*x))
  x = newx, y = newy
  z = fn3(x) + fn4(y)
  |z| < test
  ;SOURCE: snazzy.frm
}

fnglynn {; Mutation of GLYNN, by Bradley Beacham  [74223,2745]
         ; Original formula by Jon Horner [100112,1700]
         ; Try p1=1.5, p2=-0.2, fn1=ident for 'standard' Glynn
  z = pixel:
  z = fn1(z^p1 + p2)
  |z| < 4
  ;SOURCE: zsazsa.frm
}

inandout02 {; Modified for if..else logic 3/19/97 by Sylvie Gallet
   ; p1 = Parameter (default 0), real(p2) = Bailout (default 4)
   ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  IF (p2 <= 0)
     test = 4
  ELSE
     test = real(p2)
  ENDIF
  z = oldz = pixel, moldz = mz = |z|:
  IF (mz <= moldz)
     oldz = z, moldz = mz, z = fn1(z) + p1, mz = |z|  ;IN
  ELSE
     oldz = z, moldz = mz, z = fn2(z) + p1, mz = |z|  ;OUT
  ENDIF
  mz <= test
  ;SOURCE: fract196.frm
}

inandout09 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 1), real(p2) = Bailout (default 4)
            ;The next line sets k=default if p1=0, else k=p1
  k = ((1) * (|p1|<=0) + p1)
            ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = c = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt)
  olddist = 100:
  x = real(z) - rt
  y = imag(z) - it
  dist = x*x + y*y
  in  = c * (dist <= olddist)
  out = (c*k) * (olddist < dist)
  c = in + out
  olddist = dist
  z = fn2(z*z) + c
  |z| <= test
  ;SOURCE: dons.frm
}

OK-17 {
  z = c = pixel, r = real(pixel), i = imag(pixel):
  z = z^r + z^i + c
  z = z + real(fn1(z)) + imag(fn2(z))
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}

OK-21 {
  z = pixel, c = fn1(pixel):
  z = fn2(z) + c
  fn3(z) <= p1
  ;SOURCE: fractint.frm
}

OK-42 {; MUTATION OF FN + FN
  z = pixel, p1x = real(p1)+1, p1y = imag(p1)+1
  p2x = real(p2)+1, p2y = imag(p2)+1:
  zx = real(z), zy = imag(z)
  x = fn1(zx*p1x - zy*p1y) + fn2(zx*p2x - zy*p2y)
  y = fn3(zx*p1y + zy*p1x) + fn4(zx*p2y + zy*p2x)
  z = x + flip(y)
  |z| <= 20
  ;SOURCE: fractint.frm
}

Zeppo {; Mutation of 'Liar4'.
    ; Original formula by Chuck Ebbert [76306,1226]
    ; Modified for if..else logic 3/19/97 by Sylvie Gallet
    ; For 'Liar4' set FN1 & FN2 =IDENT and P1 & P2 = default
    ; p1 & p2 = Parameters (default 1,0 and 0,0)
   z = pixel
    ; The next line sets p=default if p1=0, else p=p1
   IF (real(p1) || imag(p1))
      p = p1
   ELSE
      p = 1
   ENDIF
   :
   z = fn1(1-abs(imag(z)*p-real(z))) +          \
       flip(fn2(1-abs(1-real(z)-imag(z)))) - p2
   |z| <= 1
  ;SOURCE: fract196.frm
}

Chico {; Mutation of 'M-SetInNewton'. Mutated by Bradley Beacham [74223,2745]
       ; Original formula by Jon Horner [100112,1700]
       ; For 'M-SetInNewton' set FN1 & FN2 =IDENT and P1 & P2 = default
       ; p1 & p2 = Parameters (default 3,0 and 0,0)
  z = 0, c = fn1(pixel), cminusone = c-1
   ; The next line sets k=default if p1=0, else k=p1
  k = (3 * (|p1|<=0) + p1)
  kminusone = k - 1:
  oldz = z
  nm = k*c-kminusone*z*cminusone
  dn = k*(k*z*z+cminusone)
  z = fn2(nm/dn)+kminusone*z/k + p2
  0.01 <= |(z-oldz)|
  ;SOURCE: dons.frm
}

REB005A {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1(const - 12*x)*x/(4*const)
  y1 = -fn2(const + 12*y)*y/(4*const)
  x2 = x1*x1 - y1*y1 + p1
  y2 = 2*x1*y1
  z = x2 + flip(y2)
  |z| <= 100
  ;SOURCE: fractint.frm
}

Carr1326 {
  z=4/pixel, c2=1.75*(z*pixel)
  c1=0.5/pixel+c2, c=pixel*2/z-c1/c2:
  z=z*1/c
  z=(z-(z+c+1/pixel))*(z+(z-c-1/pixel))
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}

Carr1342 {
  z=sqr(pixel), c=sqr(1/pixel):
  z=z-(pixel*pixel-z*z)/(pixel-(z*z+c))
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}

FlipLambdaJ {; Ron Barnett, 1993
  z = pixel:
  z = p1*z*(1-flip(z)*flip(z))
  |z| <= 100
  ;SOURCE: fractint.frm
}

Carr1180 {; Modified Noel Giffin formula
  z=sqr(pixel*pixel+pixel), zp1=zp2=zp3=cotanh(1/-pixel):
  temp=z
  z=z*1/zp3
  zp3=zp2
  zp2=zp1
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}

Carr1187 {; Modified Noel Giffin formula
  z=zp1=pixel, zp2=(1.099,0):
  temp=z
  z=z-(z*zp2-zp1)
  zp2=zp1^.5
  zp1=temp
  |zp1| <=100
  ;SOURCE: 27carr.frm
}

Carr1194 {; Creates VERY nice images
  z=conj(1/pixel*0.91/pixel), z2=z+conj(cosxx(1/pixel)), z3=z*z2
  c=1/cosxx(sqr(pixel)):
  z=z-(z*z+c)
  z2=z2*1/c
  z3=z3*1/c
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}

Carr1206 {
  z=cosxx(1/pixel), z2=flip(real(z)), z3=conj(imag(z))
  c=cotanh(1/pixel), z4=conj(sqr(pixel))/cosxx(sqr(pixel)):
  z=(z*1/c)+z4
  z2=conj(z2^z3)/z
  z3=conj(z3^z4)/z
  z4=(1/z*z+z4)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}

Carr1238 {
  z=conj(1/sqr(pixel*pixel+pixel)), c=cosxx(1.6*pixel-0.5):
  c=pixel+z/c
  z=c-z*pixel
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}

inandout03 {; Modified for if..else logic 3/19/97 by Sylvie Gallet
   ; p1 = Parameter (default 0), real(p2) = Bailout (default 4)
   ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  IF (p2 <= 0)
     test = 4
  ELSE
     test = real(p2)
  ENDIF
  z = oldz = c = pixel, moldz = mz = |z| :
  IF (mz <= moldz)
     c = fn1(c)       ;IN
  ELSE
     c = fn1(z * p1)  ;OUT
  ENDIF
  oldz = z, moldz = mz
  z = fn2(z*z) + c, mz = |z|
  mz <= test
  ;SOURCE: fract196.frm
}

OK-26 {
  z = c = pixel, k = 2 + p1, test = k/(2 + p2):
  a = fn1(z)
  b = (|z| > test)  * (a - c)
  d = (|z| <= test) * (a + c)
  z = b + d
  |z| <= k
  ;SOURCE: overkill.frm
}

tC1273 {; generalized CARR1273, by Caren Park
        ; where fn1, fn2, and fn3 = sqr
        ;  p1 = 2.5, p2 = 1.5
  z = fn1( fn2( fn3( p1 - pixel)))
  c = z - (pixel - p2):
  z = z * 1 / ( c * c - 1 / pixel)
  |real(z)| <=100
  ;SOURCE: forummsg.frm
}

1001 {
  z = pixel:
  z = z^(z+p1) + c
  |z| <= p2
  ;SOURCE: kg10.frm
}

tC1197 {; generalized CARR1197, by Caren Park
    ; where fn1 = conj, fn2 = exp, fn3 = cosxx, fn4 = sqr
    ;
  z  = fn1(1 / pixel * 0.91 / pixel)
  z2 = z + fn2( fn3(1 / pixel))
  z3 = z * z2
  c  = ( 1 / fn3( fn4( pixel))) / (1.099, 0):
  z = (z * 1 / c)
  z2 = z3 - (z2 + z / c)
  z3 = z2 - (z3 + z2)
  |real(z)| <= 100
  ;SOURCE: forummsg.frm
}

Carr1298 {
  z=real(pixel)+flip(imag(pixel))
  c=real(pixel)+conj(imag(pixel)):
  z=(z*z+pixel)/(pixel*pixel+z)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}

F'Liar1 {; Generalization by Jon Horner of Chuck Ebbert formula.
         ; X: X is as true as Y
         ; Y: Y is as true as X is false
         ; Calculate new x and y values simultaneously.
         ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = pixel:
  z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) )
  fn1(abs(z))<p1
  ;SOURCE: fractint.frm
}
a1 {
  z=pixel, x=log(z), y=cos(z)*(cos(z+sqrz)*z)
  v=(z*(z+1)/exp(z))^cosh(x):
  z=(z*fn3(y)/fn1(z)^fn4(v))^fn2(x)+c
  |z|<=4
  ;SOURCE: ad1.frm
}

a3 {
  z=pixel, x=fn4(i-pixel), y=1/(i-pixel):
  z=cosxx(fn1(z*x)*fn2(z^(fn3(z*y))))/|z+p1|*(x*y)+c
  |z|<25
  ;SOURCE: ad1.frm
}

Carr-801 {
  z=sqr(sqr(sqr(1/pixel-0.006)))-0.01, c=sqr(sqr(1/pixel-0.009)):
  z=((pixel-z*z)/(pixel-(c+0.624)*(c+0.624)))
  |z| <=10
  ;SOURCE: carr.frm
}

Carr-880 {
  z=real((1/pixel)/1.91)/(5.7,-1.3)
  c=(1/pixel*0.91/pixel):
  z=(pixel+z*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-889 {
  z=((1/pixel)/0.71)/(0.85/pixel+1.324)
  c=((1/pixel)/2)/z-2.5^fn4(pixel-1.324)/(1/pixel):
  z=((1/z^1/pixel*z*z)/((pixel-1)-(c*c)))/1.6
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-904 {
  z=((1-pixel)/3)^0.5, c=(1-1/pixel)^0.5:
  z=z*z+c
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-910 {
  z=(1/pixel)/1.91, c=((1/pixel)/2)/z-2.5^tanh(pixel-1.124):
  z=c-z*pixel
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-915 {
  z=1/pixel+0.91/pixel
  c=((2.124*(|3.324|<=0)+1.324)*cotanh(pixel)):
  z=c-z*pixel+1
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-991 {
  z=2.234*(real(pixel))+conj(imag(pixel)*(-5.742,-0.009))
  c=fn3(1/pixel)^(-1.7621,-0.0141)*sqr(conj(pixel)):
  z=(pixel-(1.0,0.4)*(z*1/c))/(pixel-(-1.099,0)*c*4/c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}

Carr-992 {
  z=((1/pixel)/0.71)/(0.85/pixel+1.324)
  c=((1/pixel)/2)/z-2.5^fn4(pixel+1.324)/(4/pixel):
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}

Carr1120 {
  z=(0.3,0)/(4/pixel), c=1/(pixel-0.87):
  z=(z/c)/(pixel-c*c)
  z=(sqr(conj(z-1/pixel))+conj((pixel-z/c)-1))/(pixel-z*1/c)
  |real(z)| <=100
  ;SOURCE: 26carr.frm
}

Carr1159 {
  z=1/pixel*0.91/pixel, c=pixel/(1.099,0):
  z=z-(c*sqr(z)+pixel)/(pixel-z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}

pop01 {
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel), y = imag(pixel):
  a = x - h*fn1((y) + fn2(k*y))
  b = y - h*fn1((x) + fn2(k*x))
  x = a, y = b
  z = fn3(x) * fn4(y)
  |z| <= 64
  ;SOURCE: pop.frm
}

pop04 {
  h = (0.10 * ((p1)<=0) + (p1) * (0<p1))
  k = (5.00 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel), y = imag(pixel):
  a = x - h*fn1((y) + fn2(k*y))
  b = y - h*fn1((x) + fn2(k*x))
  x = a, y = b
  z = fn3(x) * fn4(y) *  fn3(x) * fn4(y)
  |z| <= 64
  ;SOURCE: pop.frm
}

pop05 {
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.00 * ((p2)<=0) + (p2) * (0<p2))
  c = pixel
  x = real(pixel), y = imag(pixel):
  a = x - h*fn1((y) + fn2(k*y))
  b = y - h*fn1((x) + fn2(k*x))
  x = a, y = b
  z = fn3(x*x) + fn4(y*y) + c
  |z| <= 64
  ;SOURCE: pop.frm
}

