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
IkenagaJUL {; formula from a letter from Joyce Haslam Mar 1993.
            ; Asymmetric.   try p1 = (0.56667, 0.36)
            ; Next line, from Haslam article Fractal Report 24 p5
            ; z=z*z*z+ (c-1)*z-c produces same results.
            ; Same as Julike in REB001.FRM
  z = pixel, c = p1:
  z = z * z * z + z * (c-1) - c
  |z| <= 4
  ;SOURCE: ikenaga.frm
}
IkenagaJUL1+ (ORIGIN) {; formula from an article by Joyce Haslam
                       ; in Fractal Report 24 (w/+pixel stead of +c)
                       ; symmetric
  z = pixel, c = p1:
  z = z * z * z + (c-1) * z + pixel
  |z|<=4
  ;SOURCE: ikenaga.frm
}
Whatzit2 {; Dan Farmer  -  from thread in General Information.
  z = pixel:
  z = ((real(p1)*z^3) - (imag(p1)*z^2)+1) ^ p2
  |real(z)| <=100  ||  |imag(z)| <=100
}
Carr3264 (YAXIS) {; Modified Sylvie Gallet frm.1996
		  ; passes=1 needs to be used with this PHC formula.
		  ; Converted to if/else by George Martin 11/20/97
                  ; Added variable "newpixel". G. Martin 6/13/99
  imagp1=imag(p1), imagp2=imag(p2)
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  invpixel=1/newpixel
  centinvpixel=.01*invpixel
  cubepixel = newpixel^3
  d=flip(abs((sqrt(invpixel-cosxx(invpixel)))/30*newpixel))-0.08
  b3=conj((0.0175*invpixel)-imag(0.00725*invpixel)+cabs(centinvpixel))
  c=abs(cubepixel*newpixel^2)*conj(flip(cubepixel))+b3
  b5=abs(cubepixel)*cabs(newpixel*cubepixel)\
      -flip(centinvpixel)-conj(centinvpixel)-conj(b3)-0.2
  IF (whitesq)
    z = origz = b5^0.75
  ELSE
    z = origz = -abs(b5)
    c = -c
  ENDIF
  const= c*(imag(c)+2) - d
  bailout=16, iter=0
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
  ;SOURCE: 97msg.frm
}
rfr0ak1 {; Rolf Freericks 
  c = pixel
  h=z=p1
  :
  h=fn1(h)
  z=1-z*z*c-h
  |fn2(z)| >p2
  ;SOURCE: gal2.par
}
Carr3258 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=(|0.0175/newpixel|)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)\
     -conj(0.01/newpixel)-conj(b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*(b5^0.75)-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+flip(real(|d/70*newpixel|))+0.105
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}
Whatzit6 {; Dan Farmer  -  from thread in General Information.
  z = pixel:
  z = fn1((real(p1)*z^3) - fn2(imag(p1)*z^2)+1) ^ fn3(p2)
  |real(z) * imag(z)| <= 4
  ;SOURCE: whatzit.frm
}
Whatzit1 {; Dan Farmer  -  from thread in General Information.
  z = pixel:
  z = ((real(p1)*z^3) - (imag(p1)*z^2)+1) ^ p2
  |z| <=4
  ;SOURCE: whatzit.frm
}
Whatzit4 {; Dan Farmer  -  from thread in General Information.
  z = fn1(pixel):
  z = ((real(p1)*z^3) - (imag(p1)*z^2)+1) ^ p2
  |real(z)| <=100  ||  |imag(z)| <=100
  ;SOURCE: whatzit.frm
}
Whatzit5 {; Dan Farmer  -  from thread in General Information.
  z = pixel:
  z = fn1((real(p1)*z^3) - fn2(imag(p1)*z^2)+1) ^ fn3(p2)
  |real(z)| <=10  ||  |imag(z)| <=10
  ;SOURCE: whatzit.frm
}
Spidercplx {; by Jon Horner - 100112,1700 - FRAC'Cetera
            ; Complex-form of SPIDER
            ; float=yes, p1=initial perturbation of z
  z = pixel + p1, c = pixel :
  z = z * z + c
  c = c * p2 + z
  |z| <= 64
  ;SOURCE: spidcplx.frm
}
SpiderJulcplx {; by Jon Horner - 100112,1700 - FRAC'Cetera
               ; Complex-form of SPIDERJUL
               ; float=yes
  z = pixel, c = p1:
  z = z * z + c
  c = c * p2 + z
  |z| <= 4
  ;SOURCE: spidcplx.frm
}
Carr3250 (YAXIS) {; Modified Sylvie Gallet frm.1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+c+flip(real(|d/70*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}
Carr3245 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=cabs(newpixel^2)-cosxx(newpixel)-conj(0.1/newpixel)
  b5=abs(newpixel^7)-conj(0.075/b3-flip(0.01/b3))\
   -conj(0.065/newpixel-flip(0.01/newpixel))-0.23
  b4=cabs(newpixel^7)-conj(0.1/b3-flip(0.01/b3))\
   -conj(0.1/newpixel-flip(0.01/newpixel))-0.075
  c=whitesq*b4^3-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
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
test1 {; Michael Theroux [71673,2767]
   ;fix and generalization by Ron Barnett [70153,1233]
   ;=phi
   ; try p1 = 2.236067977 for the golden mean
   c = pixel,
   z = ((p1 + 1)/2):
   z =  z*z + pixel*((p1 + 1)/2) + c,
   |z| <= 4;
   }
JoWe55c34 {; from a modified Carr-formula
           ; 6/1997 JoWeber CIS [100424,35]
  c=z=p1/pixel:
  z=fn1(fn2(z^z^z^z^z)) + p2
  |z| <=p3
  ;SOURCE: 97msg.frm
}
JoWe55c30 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  z=c=p1/pixel:
  z=(z*z*z)+fn1(z-0.3)/fn2(pixel-0.1)
  |z| <=p2
  ;SOURCE: 97msg.frm
}
Carr3227 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=(newpixel^6)+0.15-conj(0.01/newpixel-flip(0.001/newpixel))
  b4=abs(conj(abs(conj(b5/2.5))))-conj(0.1/newpixel-flip(0.01/newpixel))-0.05
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c*z))-(flip(real(|d/60*newpixel|)))^3
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}
Carr3216 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=(newpixel^6)+0.15
  b4=cabs(b5/2.5)-conj(0.1/newpixel-flip(0.01/newpixel))-0.05
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}
Carr3208 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=(newpixel^4/(tanh(0.3/newpixel)))+(0.1/newpixel)
  b5=conj(b4^6)-conj(0.1/newpixel-flip(0.01/newpixel))-0.25
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z+conj(|0.1/newpixel|))^2+(c-flip(|0.01/newpixel|))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}
Carr3202 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cosxx(1/newpixel))
  b4=newpixel^3-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=abs(conj(conj(newpixel^12)))-flip(0.01/newpixel)-conj(0.1/newpixel)+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  (|z|)<=bailout
  ;SOURCE: 97msg.frm
}
Carr3199 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cosxx(1/newpixel))
  b5=imag(flip(newpixel))-((abs(newpixel/4))/(conj(newpixel/2)))^3
  b4=flip(newpixel^2)*cabs(newpixel)-(|flip(0.01/newpixel-conj(0.1/newpixel))|)+0.1
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  (|z|)<=bailout
  ;SOURCE: 97msg.frm
}
Carr3195 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
		  ; Rewritten for if..else by Sylvie Gallet 8/18/97
                  ; Added variable "newpixel". G. Martin 6/13/99
   newpixel = - abs(real(pixel)) + flip(imag(pixel))
   pinv = 0.1/newpixel
   imagp1 = imag(p1), imagp2 = imag(p2)
   d = log(10*pinv-cos(10*pinv))
   c = cabs(0.5*newpixel) - newpixel*((0.3,0.6)+newpixel) - conj(pinv)
   z = origz = c^5 - conj(0.1/c-flip(0.01/c)) - conj(pinv-flip(0.1*pinv))
   IF (whitesq == 0)
      z = origz = -z
      c = -c
   ENDIF
   d0 = flip(|d/80*newpixel|) + (-0.7456,-0.132)
   c = |c/7.5| + d0
   bailout = 16, iter = 0 :
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
  ;SOURCE: 97msg.frm
}
Carr3192 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996 
		  ; passes=1 needs to be used with this PHC formula.
		  ; Rewritten for if..else by George Martin 
		  ; and Sylvie Gallet, 8/1/97
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  imagp1 = imag(p1)
  imagp2 = imag(p2)
  d=log(1/newpixel-cos(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  c = flip(newpixel^3)-cabs(newpixel)^6-conj(0.1/newpixel-flip(0.01/newpixel))
  z = origz = cabs(newpixel^4)-newpixel^7+conj(0.1/b3)\
       -conj(0.1/newpixel-flip(0.01/newpixel))+0.15
  IF (whitesq == 0)
     z = origz = -z
     c = -c
  ENDIF
  d0 = flip(|d/80*newpixel|) + (-0.7456,-0.132)
  c = |c/7.5| + d0
  bailout=16, iter=0:
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
  ;SOURCE: 97msg.frm
}
1 { 
  z=c=1/pixel, sinc=sin(c):
  z=sqr(z*z) + c
  z=sin(z*z)*(z+pixel) + sinc
  |z| <=4
  ;SOURCE: forummsg.frm
}
BJ-SG8-1403 {; Modified Sylvie Gallet frm by Brian E. Jones
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
trmoe-01 {
  z=c=pixel, c=c+5:
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
decomp-2 {; real(p1) = radius of the circle, default: 1
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
  ;SOURCE: test.frm
}
tri-mandel {; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
            ; Thanks to Kerry Mitchell for the idea!
            ; real(p1) = bailout (10^10 recommended)
            ; imag(p1) must be different from 0 (>=1 recommended)
   ; This formula must be used with decomp = 256 and periodicity = 0
   ;
  c = z1 = pixel, b = mz1 = cabs(z1), summ = 1
  iter = 1, bailout = real(p1), k = imag(p1)*(0.0,6.28319530718)
  :
  iter = iter + 1
  a = mz1 * mz1
  z1 = z1 * z1 + c
  mz1 = cabs(z1)
  IF (mz1 > bailout)
    z = exp (summ * k / iter)
  ELSE
    summ = summ + (mz1-abs(a-b)) / (a+b - abs(a-b))
  ENDIF
  mz1 <= bailout
  ;SOURCE: triangl.frm
}
tent_in_mod {; Modified Sylvie Gallet formula
             ; Modified tent_inside.frm (generalized by Les St Clair)
             ; use fn1,fn2,fn4=abs & fn3=cabs for default behaviour
             ; set p1=0, p2=0.001 for default behaviour
  IF (p1 || flip(p1))
    r = p1
  ELSE
    r = 1
  ENDIF
  z = 0 :
  l = r+p1
  z = z*z + pixel
  UV = (5,5) - fn1((5,5) - fn2(z))
  r = fn3(UV)
  fn4(l-r) >= p2 && r < 4
  ;SOURCE: tent_mod.par
}
