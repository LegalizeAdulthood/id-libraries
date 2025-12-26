03-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sin(z) + c-0.14
  z=sin(z) + c-0.14
  |z| <=10
  ;SOURCE: carr.frm
}
 
Bjax {
  z=c=2/pixel:
  z =(1/((z^(real(p1)))*(c^(real(p2))))*c) + c
  ;SOURCE: fractint.frm
}
 
CGNewtonSinExp (XAXIS) {
  z=pixel:
  z1=exp(z)
  z2=sin(z)+z1-z
  z=z-p1*z2/(cos(z)+z1)
  .0001 < |z2|
  ;SOURCE: fractint.frm
}
 
dafrm21 {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = -fn1((x*x*x + y*y*y - 1) - 6*x)*x/(2*x*x*x + y*y*y - 1)
  y1 = -fn2((x*x*x + y*y*y - 1) + 6*x)*y/(2*x*x*x + y*y*y - 1)
  x2 = x1*x1*x1 - y1*y1*y1 + p1 + 5
  y2 = 4*x*y - 18
  z = x2 + flip(y2)
  |z| <= 100
  ;SOURCE: fractint.frm
}
 
FractalFenderC (XAXIS_NOPARM) {; Spectacular!
    ; Modified for if..else logic 3/18/97 by Sylvie Gallet
   z = p1, x = |z| :
   IF (1 < x)
      z = cosh(z) + pixel
   ENDIF
   z = sqr(z) + pixel, x = |z|
   x <= 4
  ;SOURCE: fract196.frm
}
 
Fzppfnpo {; Lee Skinner
  z = pixel, f = (pixel)^(pixel):
  z = fn1(z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}
 
GopalsamyFn {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = fn1(x)*fn2(y)
  y1 = fn3(x)*fn4(y)
  x2 = -2*x1*y1 + p1
  y = y1*y1 - x1*x1
  z = x2 + flip(y)
  |z| <= 100
  ;SOURCE: fractint.frm
}
 
Halley (xyaxis) {; Chris Green. Halley's formula applied to x^7-x=0.
   ; P1 real usually 1 to 1.5, P1 imag usually zero. Use floating point.
   ; Setting P1 to 1 creates the picture on page 277 of Pickover's book
  z=pixel:
  z5=z*z*z*z*z
  z6=z*z5
  z7=z*z6
  z=z-p1*((z7-z)/ ((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2)))
  0.0001 <= |z7-z|
  ;SOURCE: fractint.frm
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
 
inandout04 {; Modified for if..else logic 3/21/97 by Sylvie Gallet
    ; p1 = Parameter (default 1), real(p2) = Bailout (default 4)
    ; The next line sets k=default if p1=0, else k=p1
   IF (real(p1) || imag(p1))
      k = p1
   ELSE
      k = 1
   ENDIF
    ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
   IF (real(p2) <= 0)
      test = 4
   ELSE
      test = real(p2)
   ENDIF
   z = oldz = c = pixel, mz = moldz = |z|
   :
   IF (mz > moldz)
      c = c*k
   ENDIF
   oldz = z, moldz = mz, z = fn1(z*z) + c, mz = |z|
   mz <= test
  ;SOURCE: fract196.frm
}
 
Jm_19 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(z)*pixel*fn2(fn3(z)+pixel)
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_21 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(z^pixel)*pixel
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Liar4 {; by Chuck Ebbert.
       ; X: X is as true as (p1+1) times Y
       ; Y: Y is as true as X is false
       ; Calculate new x and y values simultaneously.
       ; Real part of p1 changes probability.  Use floating point.
       ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = pixel, p = p1 + 1:
  z = 1-abs(imag(z)*p-real(z))+flip(1-abs(1-real(z)-imag(z)))
  |z| <= 1
  ;SOURCE: fractint.frm
}
 
OK-04 {; TRY FN2 = SQR, DIFFERENT FUNCTIONS FOR FN1
  z = 0, c = fn1(pixel):
  z = fn2(z) + c
  |z| <= (5 + p1)
  ;SOURCE: fractint.frm
}
 
OK-35 {; Modified for if..else logic 3/19/97 by Sylvie Gallet
   z = pixel, k = 1 + p1, test = 10 + p2 :
   v = fn1(z), x = z*v, y = z/v
   IF (|x| <= |y|)
      z = fn2((z + y) * k * v) + v
   ELSE
      z = fn2((z + x) * k * v) + v
   ENDIF
   |z| <= test
  ;SOURCE: fract196.frm
}
 
OK-40 {; DISECTED OK-39
       ; (ASSUMING YOU USE OK-39 WITH FN1= IDENT & FN2 = SQR...)
  z = pixel, cx = fn1(real(pixel)), cy = fn2(imag(pixel)), k = 2 + p1:
  zx = real(z), zy = imag(z)
  a = zx*cx - zy*cy
  b = cx*zy + zx*cy
  x = fn3(a*a - b*b) + cx
  y = fn4(k*a*b) + cy
  z = x + flip(y)
  |z| <= (10 + p2)
  ;SOURCE: overkill.frm
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
 
OK-43 {; DISSECTED SPIDER
   ; TO GENERATE "STANDARD" SPIDER, SET P1 = 0,0 & ALL FN = IDENT
  z = c = pixel, k = 2 + p1:
  zx = real(z), zy = imag(z)
  cx = real(c), cy = imag(c)
  x = fn1(zx*zx - zy*zy) + cx
  y = fn2(k*zx*zy) + cy
  z = x + flip(y)
  c = fn3((cx + flip(cy))/k) + z
  |z| <  (10 + p2)
  ;SOURCE: fractint.frm
}
 
phoenix_m {; Mandelbrot style map of the Phoenix curves
  z=x=y=nx=ny=x1=y1=x2=y2=0:
  x2 = sqr(x), y2 = sqr(y)
  x1 = x2 - y2 + real(pixel) + imag(pixel) * nx
  y1 = 2 * x * y + imag(pixel) * ny
  nx=x, ny=y, x=x1, y=y1, z=x + flip(y)
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
REB004M {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1(const - 12*x)*x/(4*const)
  y1 = -fn2(const + 12*x)*y/(4*const)
  x2 = x1*x1 - y1*y1 + p1
  y2 = 2*x*y
  z = x2 + flip(y2)
  |z| <= 100
  ;SOURCE: fractint.frm
}
 
REB005G {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1(const + p1*x)*y/const
  y1 = -fn2(const + y)*x/const
  x2 = x1*x1 - y1*y1 + p2
  y2 = 2*x1*y1
  z = x2 + flip(y2)
  |z| <= 100
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
 
F'M-SetInNewtonA (XAXIS) {; use float=yes
                          ; jon horner 100112,1700, 12 feb 93
  z = 0,  c = fn1(pixel),  cminusone = c-1:
  oldz = z, nm = p1*c-2*z*cminusone, dn = p1*(3*z*z+cminusone)
  z = nm/dn+2*z/p1
  |(z-oldz)|>=|0.01|
  ;SOURCE: fractint.frm
}
F'M-SetInNewtonC (XAXIS) {; same as F'M-SetInNewtonB except for bailout
                          ; use float=yes, periodicity=no
                          ; (3 <= p1 <= ?) and (1e-30 < p2 < .01)
  z=0, c=fn1(pixel), cm1=c-1, cm1x2=cm1*2, twoop1=2/p1, p1xc=c*real(p1):
  z = (p1xc - z*cm1x2 )/( (sqr(z)*3 + cm1 ) * real(p1) ) + z*real(twoop1)
  abs(|z| - real(lastsqr) ) >= p2
  ;SOURCE: fractint.frm
}
