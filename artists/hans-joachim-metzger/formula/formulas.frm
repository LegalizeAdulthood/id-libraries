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
 
Incdbail { 
  z = c = pixel, m = fn3(z), n = fn4(z):
  t = fn1(z) + fn2(z)                                                 
  d = z-t
  z=((d<=p1)*(z+(m/z)))+((d>p1)*(d<=(2*p1))*(t))+((d>(2*p1))*(z-(n/z))) 
  d <= p2
  ;SOURCE: ron1.frm
}
 
shifter01 {; After shift, switch from z*z to z*z*z
           ; Bradley Beacham  [74223,2745]
           ; Modified for if..else logic 3/18/97 by Sylvie Gallet
           ; P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2 :
  IF (iter <= shift)
     z = z*z + c
  ELSE
     z = z*z*z + c
  ENDIF
  iter = iter + 1
  |z| < test
  ;SOURCE: fract196.frm
}
 
Whatever_the_name (XAXIS) {
  z = pixel:
  z=z*z+(1/z*z)+pixel
  ;SOURCE: whatever.frm
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
Gopalsamy4 {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = -x*y + p1
  y = 2*y*y - 3*x*x
  z = x1 + flip(y) 
  |z| <= 4
  ;SOURCE: reb003.frm
}
 
inandout07 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
            ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt)
  olddist = 100:
  x = real(z) - rt
  y = imag(z) - it
  dist = x*x + y*y
  in  = fn2(z) * (dist <= olddist)
  out = fn3(z) * (olddist < dist)
  olddist = dist
  z = in + out + p1
  |z| <= test
  ;SOURCE: zsazsa.frm
}
 
inandout13 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 0), p2 = parameter (default 1,0)
            ;The next line sets k=1 if real(p2)==0, else k=p2
  k = (1 * (real(p2)==0) + p2 * (0 != p2))
  z = c = pixel, rt = real(p1), it = imag(p1), olddist = 100:
  x = real(z) - rt
  y = imag(z) - it
  dist = x*x + y*y
  in  = c * (dist <= olddist)
  out = (z*k) * (olddist < dist)
  c = fn1(in + out)
  olddist = dist
  z = fn2(z*z) + c
  |z| <= 4
  ;SOURCE: dons.frm
}
 
Mask {; Ron Barnett, 1993
      ; try fn1 = log, fn2 = sinh, fn3 = cosh
      ; P1 = (0,1), P2 = (0,1)
      ; Use floating point
  z = fn1(pixel):
  z = P1*fn2(z)^2 + P2*fn3(z)^2 + pixel
  |z| <= 4
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
 
SGG014 {
  z=y=pixel+sqr(pixel)
  z=exp(z)*sin(y)/cos(z)
  y=sin(z)*exp(y)*cos(y)
  |z|<=3
  ;SOURCE: guenzel.frm
}
 
402 {
  z = x = pixel:
  x = fn1 (z) / fn2 (x)
  z = fn1 (x) * fn2 (z)
  |z| < 11
  ;SOURCE: kg4.frm
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
 
CGNewtonSinExp (XAXIS) {
  z=pixel:
  z1=exp(z)
  z2=sin(z)+z1-z
  z=z-p1*z2/(cos(z)+z1)
  .0001 < |z2|
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
Groucho {; Mutation of 'Fish2'.
    ; Original formula by Dave Oliver via Tim Wegner
    ; Modified for if..else logic 3/19/97 by Sylvie Gallet
    ; For 'Fish2', set FN1 & FN2 =IDENT and P1 & P2 = default
    ; p1 = Parameter (default 1,0), real(p2) = Bailout (default 4)
   z = c = pixel
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
   :
   z1 = c^(fn1(z)-k)
   z = fn2(((c*z1)-k)*(z1))
   |z| <= test
  ;SOURCE: fract196.frm
}
 
OK-21 {
  z = pixel, c = fn1(pixel):
  z = fn2(z) + c
  fn3(z) <= p1
  ;SOURCE: fractint.frm
}
 
