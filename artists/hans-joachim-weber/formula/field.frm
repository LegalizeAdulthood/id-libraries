field2_jul {; Kerry Mitchell
        ;
        ; Colors Julia sets by nearest approach to
        ;   period 2 field lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = number of field line to use: 0, 1, or 2
        ; 2 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
  zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
  fieldangle=tan(imag(p2)*2*pi/3):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
  iter=iter+2, zc=sqr(zc)+c, zc=sqr(zc)+c
  rzc=|zc|, tanangle=imag(zc)/real(zc)
  r=cabs(fieldangle-tanangle)
  IF (r<minr)
    minr=r
  ENDIF
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
  IF ((rzc>maxr)||(iter>=maxit))
    iter=-1
    angle=log(minr)
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
;
;*******Kerry Mitchell's explanation of his "field" formulas******
;   The following narrative is copyright Kerry Mitchell, 1998
;
; It relates to the following formulas:
;    field2_jul (above)
;    field3_jul
;    field4_jul
;    field2_man
;    field3_man
;    field4_man
;
;Field
;
;In the Mandelbrot set, field lines are roughly perpendicular to the
;dwell bands (bands of constant escape iteration number).  The lines
;are not directly related to the iteration level, nor to the
;decomposition rays, but are associated with the behavior of the orbits
;as the iterates approach infinity.  Field lines of period "n" separate
;the period n disks from the main cardioid of the Mandelbrot set.  The
;points that make up these lines have the characteristic that, as the
;magnitude of the orbit approaches infinity, the polar angle is
;
;fieldangle = 2 * pi * m / (2^n - 1),
;
;where n is the period of the line, and m = (1, 2, ... 2^n-1) is the
;order of the line.
;
;For example, there are 3 period 2 field lines, for m = 1, 2, and 3.
;(The m=3 case is simply the positive real axis, whose fieldangle is
;always 0.)  For m=1, the fieldangle = 2/3 pi radians, or 120 degrees.
;Each successive iteration squares the previous iterate (neglecting
;adding c, since c is very small relative to the iterate), which doubles
;the fieldangle.  Twice 120 degrees is 240 degrees, or 4/3 pi radians.
;Twice that is 8/3 pi radians, or 2/3 pi radians (since 6/3 pi radian
;or 2 pi is a full circle).  So, the field line has the same angle again
;in 2 iterations, or is periodic with period n=2.  The same thing happens
;with the m=2 line.
;
;Finding the field lines directly is not an easy task.  What this coloring
;method does is to show approximations to the field lines, and show some
;cases that aren't field lines at all.  It does this by computing the
;polar angle of the iterate at each step, and comparing it to the angle
;for the user-specified field line.  By coloring according to the smallest
;error in angles (current vs. field line), lines are drawn that come close
;to the specified field line.  (For the actual field line, the error would
;be zero.)  However, many other lines have polar angles equal to that of
;the specified field line, so they show up as well.  The result is not
;necessarily a mathematically accurate illustration of the Mandelbrot
;field lines, but it is another interesting way to render the set.
;
;**********************************************************************
  ;SOURCE: 98msg.frm
}

field2_man {; Kerry Mitchell
        ; See the end of field2_jul for Kerry Mitchell's explanation of
        ; the development of these "field" formulas.
        ;
        ; Colors Mandelbrot set by nearest approach to
        ;   period 2 field lines
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = number of field line to use: 0, 1, or 2
        ; 2 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
  zc=0, c=pixel, maxr=real(p1), minr=maxr, iter=1
  fieldangle=tan(imag(p1)*2*pi/3):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
  iter=iter+2, zc=sqr(zc)+c, zc=sqr(zc)+c
  rzc=|zc|, tanangle=imag(zc)/real(zc)
  r=cabs(fieldangle-tanangle)
  IF (r<minr)
    minr=r
  ENDIF
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
  IF ((rzc>maxr)||(iter>=maxit))
    iter=-1
    angle=log(minr)
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}

