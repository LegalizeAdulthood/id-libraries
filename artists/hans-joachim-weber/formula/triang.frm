triang_jul {; Kerry Mitchell 11feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
        ; use decomp=256
  zc=pixel, c=p1, rc=cabs(c), iter=1
  r2zc=|zc|, maxr=real(p2)
  inspeed=real(p3)*pi*255/128
  outspeed=imag(p3)*pi*255/128:
  iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2)
  fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
  zc=z2, r2zc=|zc|
  IF (iter==maxit)
    angle=inspeed*q
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  IF (r2zc>maxr)
    angle=outspeed*q
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
        ;
        ; Colors Julia set by magnitude of last iterate
        ; within a range determined by the triangle inequality.
        ; Take location in range and scale into an angle for
        ; decomp coloring.  Decouple inside from outside by
        ; setting appropriate coloring speed to 0.
        ;
;*******Kerry Mitchell's explanation of his "triangle" formulas
;            narrative copyright Kerry Mitchell 11feb98
;
; Applies to formulas:
;     triang_jul (above)
;     triang_man
;     triangcount_jul
;     triangcount_man
;
; Triangle
;
; The triangle method is based on a simple characteristic of complex
; numbers:  the magnitude of the sum of two complex numbers, |a+b|,
; is strictly limited to a range determined by a and b:
;
; |a+b| >= ||a| - |b||, and
; |a+b| <= |a| + |b|,
;
; where |z| is the square root of the sum of the squares of the
; components, not the sum of the squares, as in Fractint.  The
; extremes of this inequality are easily seen with a few examples.
; If a=1 and b=2, then:
;
; |a| = 1, |b| = 2;
; ||a| - |b|| = |1-2| = |-1| = 1;
; |a| + |b| = 1+2 = 3;
; |a+b| = |3| = 3;
; 1 <= 3 <= 3.
;
; The upper bound occurs when both addends have the same polar angle.
; The geometric interpretation of this is that the complex numbers add
; up, and the length of the sum is simply the sum of the individual
; lengths.
;
; The lower bound occurs when the polar angles of the complex numbers
; differ by 180 degrees; the two numbers are diametrically opposed.
; Then, the length of the sum is the difference of the lengths.  For
; example, if a=3i and b=-5i, then:
;
; |a| = 3, |b| = 5;
; ||a| - |b|| = |3-5| = |-2| = 2;
; |a| + |b| = 3 + 5 = 8;
; |a+b| = |-2i| = 2;
; 2 <= 2 <= 8.
;
; In general, the length of the sum is somewhere inbetween, and can be
; thought of in terms of a triangle, which is how the inequality gets
; its name.  If |a| is the length of one side of a triangle, and |b|
; is the length of the second side, then |a+b| is the length of the
; third side, and lies somewhere within the range shown above.
;
; Back to fractals.  The two numbers of interest are z^2 and c.  Given
; z (the previous iterate) and c (the Mandelbrot or Julia parameter),
; the range for the magnitude of the new iterate can then be determined.
; With this range, the magnitude of the new iterate can be rescaled to
; a fraction between 0 and 1 inclusive:
;
; min = ||z_old^2| - |c||, max = |z_old^2| + |c|,
; z_new = z_old * z_old + c
; fraction = (|z_new| - min) / (max - min).
;
; This fraction is then scaled into an angle for coloring with the
; decomposition method.
;
; In the triang formulas (_man and _jul variations), this operation
; is performed on the last iterate.  The triangcount formulas compute
; the fraction at every iteration, and color the image based on the
; average fraction (over all iterations).
;
;**********************************************************************
  ;SOURCE: 98msg.frm
}

triangcount_jul {; Kerry Mitchell 11feb98
                 ; See the end of formula triang_jul for Kerry Mitchell's
                 ; explanation of his "triangle" formulas
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
        ; use decomp=256
  zc=pixel, c=p1, rc=cabs(c), iter=1
  r2zc=|zc|, maxr=real(p2), count=0
  inspeed=real(p3)*pi*255/128
  outspeed=imag(p3)*pi*255/128:
  iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2)
  fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
  count=count+q, zc=z2, r2zc=|zc|
  IF (iter==maxit)
    angle=inspeed*count/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  IF (r2zc>maxr)
    angle=outspeed*count/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
        ;
        ; Colors Julia set by average value of magnitude
        ; within a range determined by the triangle inequality.
        ; Scale average into an angle for decomp coloring.
        ; Decouple inside from outside by setting appropriate
        ; coloring speed to 0.
        ;
  ;SOURCE: 98msg.frm
}

