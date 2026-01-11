hermanm_man-polar {; Kerry Mitchell 16feb98
        ; See the end of formula hermanm_alpha for Kerry Mitchell's
        ;  explanation of his hermanm formulas
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = g exponent (integers)
        ; real(p2) = alpha magnitude (try 1)
        ; imag(p2) = alpha polar angle (try integers)
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
  c=pixel, iter=1, n=real(p1), m=imag(p1), nfac=2*n-1
  maxr=1e6, minr=1/maxr, speed=4*pi/128
  r=real(p2), t=imag(p2), alpha=r*(cos(t)+flip(sin(t)))
  oln=1/log(n), fac=log(0.5*log(maxr))
  c2=sqr(c), hypnum=sqr(n)+sqr(m), pn=1
  hypden=sqr(n-m), hypfac=hypnum/hypden
  IF (real(p3)<0)
    pn=-1
  ENDIF
  IF (real(c2)>hypfac)
    pn=-pn
  ENDIF
  IF (imag(c)<0)
    pn=-pn
  ENDIF
  afac=c*n, bfac=c2*(n-m)+(n+m), cfac=c*n
  d=sqrt(bfac*bfac-4*afac*cfac)
  z=(bfac+pn*d)/(2*afac)
  :
  g=(z-c)/(1-c*z), z=alpha*z^n*g^m
  iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r<minr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r>maxr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    angle=angle+pi
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
hermanm_alpha {; Kerry Mitchell 16feb98
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = g exponent (integers)
        ; p2 = c
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
  c=p2, iter=1, n=real(p1), m=imag(p1), nfac=2*n-1
  maxr=1e6, minr=1/maxr, speed=4*pi/128, alpha=pixel
  oln=1/log(n), fac=log(0.5*log(maxr))
  c2=sqr(c), hypnum=sqr(n)+sqr(m), pn=1
  hypden=sqr(n-m), hypfac=hypnum/hypden
  IF (real(p3)<0)
    pn=-1
  ENDIF
  IF (real(c2)>hypfac)
    pn=-pn
  ENDIF
  IF (imag(c)<0)
    pn=-pn
  ENDIF
  afac=c*n, bfac=c2*(n-m)+(n+m), cfac=c*n
  d=sqrt(bfac*bfac-4*afac*cfac)
  z=(bfac+pn*d)/(2*afac)
  :
  g=(z-c)/(1-c*z), z=alpha*z^n*g^m
  iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r<minr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r>maxr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    angle=angle+pi
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
;********Kerry Mitchell's exlanation of his "hermanm" formulas*********
;             narrative copyright Kerry Mitchell 16feb98
;
;  Applicable formulas are:
;      hermanm_alpha (above)
;      hermanm_jul-cart
;      hermanm_man-cart
;      hermanm_jul-polar
;      hermanm_man-polar
;
; Variations on Herman Rings
;
; The below formulas are based on the following formula, which is
; known to produce Herman rings:
;
; f(z) = alpha * z^2 * (z-c) / (1-c*z).
;
; This can be generalized to:
;
; F(z) = alpha * z^n * g(z)^m, where
; g(z) = (z-c) / (1-c*z).
;
; For the case of n >= 2 and m=n-1, it is believed that F(z) will
; generate higher order Herman rings.  The present formulas treat
; the general case, where m and n are independent.
;
; For the Mandelbrot-type formulas, the critical points of F(z)
; are readily determined by solving a quadratic equation.  To
; maintain continuity in the image, the selection of critical
; must be changed depending on the parameter c.  Otherwise, lines
; of discontinuity appear.  These lines are hyperbolic (plus the
; imaginary axis), according to (real(c))^2 - (imag(c))^2 = r^2.
; This value of r depends on the exponents n and m:
;
; r = (n^2 + m^2) / (n - m)^2.
;
; This adjustment of the critical point is made in the formula
; initialization.
;
; The parameter alpha can be selected in two ways, either using
; cartesian or polar coordinates.  The advantage to polar coordinates
; is that entering an irrational rotation angle is easy; enter a
; *rational* polar angle for alpha, and the rotation angle (which
; involves a factor of pi) will be irrational.
;
; Five formulas are included:  2 Mandelbrot types (cartesian and
; polar), 2 Julia types (cartesian and polar), and 1 Mandelbrot
; type where c is explicitly specified and alpha takes on the
; pixel value.  For the Mandelbrot types, the choice of critical
; point (using either the positive or negative root of the
; discriminant) is governed by the sign of real(p3).
;
;***********************************************************************
  ;SOURCE: 98msg.frm
}
hermanm_jul-cart {; Kerry Mitchell 16feb98
        ; See the end of formula hermanm_alpha for Kerry Mitchell's
        ;  explanation of his hermanm formulas
        ; p1 = Julia parameter
        ; real(p2) = z exponent (use integer >= 2; m=n-1)
        ; imag(p2) = g exponent (integers)
        ; p3 = alpha (go nuts)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
  z=pixel, c=p1, iter=1, n=real(p2), m=imag(p2), nfac=2*n-1
  maxr=1e6, minr=1/maxr, speed=4*pi/128, alpha=p3
  oln=1/log(n), fac=log(0.5*log(maxr))
  :
  g=(z-c)/(1-c*z), z=alpha*z^n*g^m
  iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r<minr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r>maxr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    angle=angle+pi
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
