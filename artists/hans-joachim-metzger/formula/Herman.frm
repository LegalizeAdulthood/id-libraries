herman_alpha {; Kerry Mitchell 15feb98
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = coloring speed (try 4)
        ; p2 = c
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
  alpha=pixel, iter=1, n=real(p1), m=n-1, nfac=2*n-1
  maxr=1e6, minr=1/maxr, speed=imag(p1)*pi/128
  oln=1/log(n), fac=log(0.5*log(maxr)), c=p2
  c2=sqr(c), hypfac=sqr(n)+sqr(m), pn=1
  IF (real(p3)<0)
    pn=-1
  ENDIF
  IF (real(c2)>hypfac)
    pn=-pn
  ENDIF
  IF (imag(c)<0)
    pn=-pn
  ENDIF
  d=sqrt((c2-1)*(c2-sqr(nfac)))
  z=(nfac+c2+pn*d)/(2*n*c)
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
;*******Kerry Mitchell's explanation of his "Herman" formulas***********
;            narrative copyright Kerry Mitchell 15feb98
;
; Applicable to these formulas:
;           herman_alpha (above)
;           herman_man-polar
;           herman_man-cart
;           herman_jul-polar
;           herman_jul-cart
;
; Higher order Herman Rings
;
; In Paul Derbyshire's posting about Herman Rings, he gave a formula
; that was known to generate the rings:
;
; H(z) = alpha * z^2 * (z-c) / (1-c*z).
;
; Paul's examples tended to resemble, in overall shape, Julia sets
; from the standard quadratic, f(z) = z^2 + c.  I surmised that this
; was due to the z^2 factor in H(z), and conjectured that higher
; order Herman Rings could be made by increasing the z exponent.
; Just going from z^2 to z^3 was interesting, but didn't result in
; the same sort of dynamics that H(z) had.  So, I generalized H(z)
; into F(z):
;
; F(z) = alpha * z^n * g(z)^m, where
; g(z) = (z-c)/(1-c*z).
;
; The formula that Paul used had n=2 and m=1.  I tried n=3 and m=1
; and determined it to be unsuccessful.  So, I tried n=3 and m=2,
; and decided that, in general, m should be equal to n-1 for higher
; order rings.
;
; Finding the critical points for F is not as hard as it may seem.
; Using the derivative rules from calculus,
;
; F' = alpha * nz^(n-1) * g^m + alpha * z^n * mg'g^(m-1).
;
; Setting F' = 0 to find the critical points means that alpha,
; z^(n-1) and g^(m-1) can all be divided out as common factors.
; (The critical points associated with those factors are:  z=0,
; z=c, and z=1/c.  None of these has interesting dynamics.)  The
; result is:
;
; 0 = ng + mg'z, or
; z = -ng / (mg').
;
; Differentiating g(z),
;
; g' = (1-c^2) / (1-c*z)^2.
;
; Using this in the above equation for z results in a quadratic
; for z which is easily solved using the quadratic equation.  In
; fact, when m = n-1, the discriminant of the solution can be
; factored.  The result is:
;
; z = [c^2 + (2n-1)] +/- sqrt([c^2 - 1]*[c^2 - (2n-1)^2])] / (2nc).
;
; Using this directly as the starting point for Mandelbrot-type
; images leads to discontinuities, where one root should be used
; instead of the other.  These discontinuities occur when real(c^2)
; = n^2 + m^2, and at the imaginary axis.  In the formulas below
; (herman_man and herman-alpha), they are automatically handled
; in the initialization.  Since Julia sets are not initialized
; using critical points, the herman_jul formulas lack this logic.
;
; The rotation parameter, alpha, is what seems to determine whether
; or not Herman rings actually show up.  Two methods can be used to
; set alpha--cartesian and polar coordinates.  For the cartesian
; method (-cart formulas), the real and imaginary parts of alpha are
; input directly.  With the polar method (-polar formulas), the
; magnitude and polar angle of alpha are input.  This makes it very
; easy to specify rotation by an irrational angle.  Simply specify a
; *rational* number for the polar angle.  The irrationality of the
; rotation angle is expressed as an irrational number of turns, not
; radians.  Since the difference between turns and radians involves
; a factor of pi, which is irrational, using a rational number of
; radians insures that the number of turns is irrational.  The effect
; of alpha can be show through the special Mandelbrot-type formula,
; herman_alpha.  Here, c is input through parameters and z is
; initialized accordingly.  The parameter alpha is varied by being
; set to the pixel value.
;
; The following formulas all use the renormalization method to
; reduce banding.  In this implementation, the actual coloring is
; performed using the decomposition method.  This allows separate
; rendering of the orbits that get attracted to infinity and those
; that get attracted to 0.  After forming the decomposition angle
; based on the iteration count, those pixels that escape to infinity
; have their angle increased by pi.  This means that for the same
; iteration count, two pixels with different basins of attraction
; will be separarated by half of the color palette.  Those pixels
; whose orbits are not attracted by either 0 or infinity are treated
; as inside pixels.
;
;***********************************************************************
  ;SOURCE: 98msg.frm
}

herman_jul-cart {; Kerry Mitchell 15feb98
        ; See the end of the formula herman_alpha for Kerry Mitchell's
        ;  explanation of his "herman" formulas.
        ; p1 = Julia parameter
        ; real(p2) = z exponent (use integer >= 2; m=n-1)
        ; imag(p2) = coloring speed (try 4)
        ; p3 = alpha (go nuts)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
  z=pixel, c=p1, iter=1, n=real(p2), m=n-1
  maxr=1e6, minr=1/maxr, speed=imag(p2)*pi/128
  oln=1/log(n), fac=log(0.5*log(maxr)), alpha=p3
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

herman_jul-polar {; Kerry Mitchell 15feb98
        ; See the end of the formula herman_alpha for Kerry Mitchell's
        ;  explanation of his "herman" formulas.
        ; p1 = Julia parameter
        ; real(p2) = z exponent (use integer >= 2; m=n-1)
        ; imag(p2) = coloring speed (try 4)
        ; real(p3) = alpha magnitude (try 1)
        ; imag(p3) = alpha polar angle (try integers)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
  z=pixel, c=p1, iter=1, n=real(p2), m=n-1
  maxr=1e6, minr=1/maxr, speed=imag(p2)*pi/128
  r=real(p3), t=imag(p3), alpha=r*(cos(t)+flip(sin(t)))
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

herman_man-cart {; Kerry Mitchell 15feb98
        ; See the end of the formula herman_alpha for Kerry Mitchell's
        ;  explanation of his "herman" formulas.
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = coloring speed (try 4)
        ; p2 = alpha (go wild)
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
  c=pixel, iter=1, n=real(p1), m=n-1, nfac=2*n-1
  maxr=1e6, minr=1/maxr, speed=imag(p1)*pi/128
  oln=1/log(n), fac=log(0.5*log(maxr)), alpha=p2
  c2=sqr(c), hypfac=sqr(n)+sqr(m), pn=1
  IF (real(p3)<0)
    pn=-1
  ENDIF
  IF (real(c2)>hypfac)
    pn=-pn
  ENDIF
  IF (imag(c)<0)
    pn=-pn
  ENDIF
  d=sqrt((c2-1)*(c2-sqr(nfac)))
  z=(nfac+c2+pn*d)/(2*n*c)
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

herman_man-polar {; Kerry Mitchell 15feb98
        ; See the end of the formula herman_alpha for Kerry Mitchell's
        ;  explanation of his "herman" formulas.
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = coloring speed (try 4)
        ; real(p2) = alpha magnitude (try 1)
        ; imag(p2) = alpha polar angle (try integers)
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
  c=pixel, iter=1, n=real(p1), m=n-1, nfac=2*n-1
  maxr=1e6, minr=1/maxr, speed=imag(p1)*pi/128
  r=real(p2), t=imag(p2), alpha=r*(cos(t)+flip(sin(t)))
  oln=1/log(n), fac=log(0.5*log(maxr))
  c2=sqr(c), hypfac=sqr(n)+sqr(m), pn=1
  IF (real(p3)<0)
    pn=-1
  ENDIF
  IF (real(c2)>hypfac)
    pn=-pn
  ENDIF
  IF (imag(c)<0)
    pn=-pn
  ENDIF
  d=sqrt((c2-1)*(c2-sqr(nfac)))
  z=(nfac+c2+pn*d)/(2*n*c)
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

