Gallet-8-01 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; real(p2) = bailout value
   z = c = pixel, zc = 0 :
   IF (zc < 0)
      z = z - p1
   ELSE
      z = z - zc - p1
   ENDIF
   zc = z*c
   |z| <= p2
  ;SOURCE: gallet_8.frm
}
Gallet-8-17 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0 and decomp = 256
             ; p1 = parameter for a Julia set (0 for the Mandelbrot set)
             ; 0 < p2
   IF (p1 || imag(p1))
      c = p1
   ELSE
      c = pixel
   ENDIF
   z = -1, zn = pixel, zmin = abs(real(p2))
   k = flip(pi/zmin), odd = 0 :
   zn = zn*zn + c, znc = abs(real(zn)) + abs(imag(zn))
   IF (znc < zmin)
      zmin = znc
      IF (odd)
         z = exp(zmin*k)
      ELSE
         z = exp(-zmin*k)
      ENDIF
   ENDIF
   odd = odd==0
   znc <= 4
  ;SOURCE: gallet_8.frm
}
Gallet-8-07 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0
             ; 0 < p1 <= 1 (default = 1)
   z = c = zn = pixel
   IF (p1 || imag(p1))
      k = p1
   ELSE
      k = 1
   ENDIF
   :
   zn = zn*zn + c
   IF (abs(zn) < abs(z))
      z = k*real(zn) + flip(imag(z))
   ENDIF
   IF (flip(abs(zn)) < flip(abs(z)))
      z = real(z) + k*flip(imag(zn))
   ENDIF
   |zn| <= 4
  ;SOURCE: gallet_8.frm
}
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

many_man_phc {; Modified Stephen C. Ferguson formula
              ; adapted for Fractint by Les St Clair, 1997
              ; phc variation by P. DiGiorgi
              ; use imag(p1) to set bailout
  z=0, c1=fn3(pixel), c0=fn4(pixel)
  IF (whitesq)
    v = (c1^p2)/p2
  ELSE
    v = (c0^p2)/p2
  ENDIF
  n = p3*fn1(fn2(v)):
  z = z^(real(p1)) + n
  |z| <= imag(p1)
  ;SOURCE: 97msg.frm
}

many_man{; Modified Stephen C. Ferguson formula
      ; adapted for Fractint by Les St Clair, 1997
      ; use real p1 to set bailout (try p1=4)
      ; use real p2 to set number of mandels
      ; set fn1=ident, fn2=log for "default" formula
z=0, c=pixel:
z=(z*z)+fn1(fn2(c^p2)/p2)
|z| <=p1
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
tri-julia-2 {; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
             ; Thanks to Kerry Mitchell for the idea!
             ; real(p1) = bailout (1024 recommended)
             ; imag(p1) must be different from 0 (>=1 recommended)
             ; p2 = parameter for the Julia set
   ; This formula must be used with decomp = 256 and periodicity = 0
   ;
  z1 = pixel, mz1 = cabs(z1), b = cabs(p2), summ = iter = 0
  b1 = abs(real(p1)), f = b1^0.1
  b2 = b1*f, b3 = b2*f, b4 = b3*f, b5 = b4*f, b6 = b5*f
  b7 = b6*f, b8 = b7*f, b9 = b8*f, b10 = b9*f, b11 = b10*f
  iter1 = iter2 = iter3 = iter4 = iter5 = iter6 = iter7 \
        = iter8 = iter9 = iter10 = summ_tot = iter_tot = 0
  k = imag(p1) * (0.0,6.28319530718)
  :
  iter = iter + 1, a = mz1 * mz1
  z1 = z1 * z1 + p2, mz1 = cabs(z1), a_b = abs(a - b)
  summ = summ + (mz1 - a_b) / (a+b - a_b)
  IF (mz1 > b1)
    IF (iter1==0)
      iter1 = iter
      iter_tot = iter_tot + iter1
      summ_tot = summ_tot + summ
    ENDIF
    IF (mz1 > b2)
      IF (iter2==0)
        iter2 = iter
        iter_tot = iter_tot + iter2
        summ_tot = summ_tot + summ
      ENDIF
      IF (mz1 > b3)
        IF (iter3==0)
          iter3 = iter
          iter_tot = iter_tot + iter3
          summ_tot = summ_tot + summ
        ENDIF
        IF (mz1 > b4)
          IF (iter4==0)
            iter4 = iter
            iter_tot = iter_tot + iter4
            summ_tot = summ_tot + summ
          ENDIF
          IF (mz1 > b5)
            IF (iter5==0)
              iter5 = iter
              iter_tot = iter_tot + iter5
              summ_tot = summ_tot + summ
            ENDIF
            IF (mz1 > b6)
              IF (iter6==0)
                iter6 = iter
                iter_tot = iter_tot + iter6
                summ_tot = summ_tot + summ
              ENDIF
              IF (mz1 > b7)
                IF (iter7==0)
                  iter7 = iter
                  iter_tot = iter_tot + iter7
                  summ_tot = summ_tot + summ
                ENDIF
                IF (mz1 > b8)
                  IF (iter8==0)
                    iter8 = iter
                    iter_tot = iter_tot + iter8
                    summ_tot = summ_tot + summ
                  ENDIF
                  IF (mz1 > b9)
                    IF (iter9==0)
                      iter9 = iter
                      iter_tot = iter_tot + iter9
                      summ_tot = summ_tot + summ
                    ENDIF
                    IF (mz1 > b10)
                      IF (iter10==0)
                        iter10 = iter
                        iter_tot = iter_tot + iter10
                        summ_tot = summ_tot + summ
                      ENDIF
                      IF (mz1 > b11)
                        iter_tot = iter_tot + iter
                        summ_tot = summ_tot + summ
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
  ;SOURCE: triangl.frm
}
tri-fn+fn    { ; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
               ; Thanks to Kerry Mitchell for the idea!
               ; real(p1) = bailout
               ; imag(p1) must be different from 0 (>=1 recommended)
               ; z=fn1(z) + p2*fn2(z)
   ; This formula must be used with decomp = 256 and periodicity = 0
   ;
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

JoWe55c02 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
           ; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + fn3(z) + p1/pixel:
  z=fn1(z) + c
  z=fn2(z) + c
  |z| <=p2
  ;SOURCE: jo_we_55.frm
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

tri-mandel-2 { ; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
               ; Thanks to Kerry Mitchell for the idea!
               ; real(p1) = bailout (1024 recommended)
               ; imag(p1) must be different from 0 (>=1 recommended)
   ; This formula must be used with decomp = 256 and periodicity = 0
   ;
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
5_man{; Stephen C. Ferguson
      ; adapted for Fractint by Les St Clair, 1997
      ; use real p1 to set bailout. try p1=4
z=0, c=pixel:
z=(z*z)+(log(c^5)/5)
|z| <=p1
}
MandNewt03 {; Jim Muth
z=c=pixel:
a=z^3+(c-1)*z-c
b=p1*z^p2+c-1
z=z-p3*a/b
.0001 <= |a|
}
Carr3184 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b4=(abs(newpixel)^5/(cosxx(0.1-0.1/newpixel)))-b3
  b5=conj(newpixel)*newpixel^2-conj(conj(0.10/newpixel))^(-3*newpixel)\
      -flip(flip(0.010/newpixel))+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
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
tent_inside { ; Sylvie Gallet [101324,3444], Apr 1997
  r = 1 , z = 0 :
   l = r
   z = z*z + pixel
   UV = (5,5) - abs((5,5) - abs(z))
   r = cabs(UV)
    abs(l-r) >= 0.001 && r < 4
  }
Lesfrm04 (xaxis) {
c=z=pixel:
z=z+(fn1(c^2)/fn2(z^2))/c^4,|z| <=6
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
