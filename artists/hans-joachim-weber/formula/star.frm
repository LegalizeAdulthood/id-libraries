starbail_jul {; Kerry Mitchell 09oct98
        ;
        ; See the end of formula starbail_man for Kerry Mitchell's
        ;   explanation of his "Star" formulas.
        ;
        ; Julia set, bails out when orbit enters/leaves 5 point star
        ; p1 = Julia parameter
        ; p2 = center of star
        ; cabs(real(p3)) = star size of star (try 1)
        ; sign(real(p3)) = in/out flag:
        ;   + = bailout when orbit leaves star
        ;   - = bailout when orbit enters star
        ; imag(p3) = star rotation angle, degrees
        ;   only use angles from 0 to 36 degrees
        ;
        ;  initialize iteration parameters
        ;
  c=p1, zc=pixel, done=0, iter=1, bailout=1e12
  pixelflag=1  ; set by hand
        ;
        ;  star parameters
        ;
  center=p2, xcen=real(center), ycen=imag(center)
  r=cabs(real(p3)), inout=1
  IF (real(p3)<0)
    inout=0
  ENDIF
  phi=imag(p3)/180*pi, twopi=2*pi, temp=twopi/10
  t0=phi, t1=t0+temp
  t2=t1+temp, t3=t2+temp, t4=t3+temp, t5=t4+temp
  t6=t5+temp, t7=t6+temp, t8=t7+temp, t9=t8+temp
        ;
        ;  set up control points
        ;
  x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
  x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
  x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
  x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
  x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        ;
        ;  check pixel to see if it bailed
        ;
  IF (pixelflag!=0)
    x=real(zc), y=imag(zc), t=imag(log(zc-center))
    IF (t<0)
      t=t+twopi
    ENDIF
    flag=0
    IF ((t>t0)&&(t<=t1))
      f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t1)&&(t<=t2))
      f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t2)&&(t<=t3))
      f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t3)&&(t<=t4))
      f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t4)&&(t<=t5))
      f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t5)&&(t<=t6))
      f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t6)&&(t<=t7))
      f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t7)&&(t<=t8))
      f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t8)&&(t<=t9))
      f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
      IF (f<0)
        flag=1
      ENDIF
    ELSE
      f=x*(y0-y3)+y*(x3-x0)-x3*y0+x0*y3
      IF (f>0)
        flag=1
      ENDIF
    ENDIF
    IF (flag==inout)
      done=1
      z=zc-center
    ENDIF
  ENDIF
  :
        ;  standard iteration if pixel didn't bail
        ;
  IF (done==0)
    iter=iter+1, zc=sqr(zc)+c
    x=real(zc), y=imag(zc), t=imag(log(zc-center))
    IF (t<0)
      t=t+twopi
    ENDIF
        ;
        ;  see if orbit is inside or outside of star
        ;    by checking each side one at a time
        ;
    flag=0
    IF ((t>t0)&&(t<=t1))
      f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t1)&&(t<=t2))
      f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t2)&&(t<=t3))
      f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t3)&&(t<=t4))
      f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t4)&&(t<=t5))
      f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t5)&&(t<=t6))
      f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t6)&&(t<=t7))
      f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t7)&&(t<=t8))
      f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t8)&&(t<=t9))
      f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
      IF (f<0)
        flag=1
      ENDIF
    ELSE
      f=x*(y0-y3)+y*(x3-x0)-x3*y0+x0*y3
      IF (f>0)
        flag=1
      ENDIF
    ENDIF
        ;
        ;  if the orbit was on the appropriate side,
        ;    set "done" flag
        ;    set z to iteration variable for coloring
        ;
    IF (flag==inout)
      done=1
      z=zc-center
        ;
        ;  safety valve in case star doesn't catch orbit
        ;  if orbit goes to infinity or max iterations reached:
        ;     set "done" flag
        ;     set z to 1 to differentiate it from star trap
        ;
    ELSEIF ((|zc|>bailout)||(iter==maxit))
      done=1
      z=1
    ENDIF
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}

starbail_man {; Kerry Mitchell 09oct98
        ;
        ; Kerry Mitchell's explanation of his "Star" formulas is at
        ;   the end of this formula
        ;
        ; Mandelbrot, bails out when orbit enters/leaves 5 point star
        ; p1 = center of star
        ; cabs(real(p2)) = star size of star (try 1)
        ; sign(real(p2)) = in/out flag:
        ;   + = bailout when orbit leaves star
        ;   - = bailout when orbit enters star
        ; imag(p2) = star rotation angle, degrees
        ;   only use angles from 0 to 36 degrees
        ;
        ;  initialize iteration parameters
        ;
  zc=0, c=pixel, done=0, iter=1, bailout=1e12
  pixelflag=0  ; set by hand
        ;
        ;  star parameters
        ;
  center=p1, xcen=real(center), ycen=imag(center)
  r=cabs(real(p2)), inout=1
  IF (real(p2)<0)
    inout=0
  ENDIF
  phi=imag(p2)/180*pi, twopi=2*pi, temp=twopi/10
  t0=phi, t1=t0+temp
  t2=t1+temp, t3=t2+temp, t4=t3+temp, t5=t4+temp
  t6=t5+temp, t7=t6+temp, t8=t7+temp, t9=t8+temp
        ;
        ;  set up control points
        ;
  x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
  x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
  x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
  x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
  x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        ;
        ;  check pixel to see if it bailed
        ;
  IF (pixelflag!=0)
    x=real(zc), y=imag(zc), t=imag(log(zc-center))
    IF (t<0)
      t=t+twopi
    ENDIF
    flag=0
    IF ((t>t0)&&(t<=t1))
      f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t1)&&(t<=t2))
      f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t2)&&(t<=t3))
      f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t3)&&(t<=t4))
      f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t4)&&(t<=t5))
      f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t5)&&(t<=t6))
      f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t6)&&(t<=t7))
      f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t7)&&(t<=t8))
      f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t8)&&(t<=t9))
      f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
      IF (f<0)
        flag=1
      ENDIF
    ELSE
      f=x*(y0-y3)+y*(x3-x0)-x3*y0+x0*y3
      IF (f>0)
        flag=1
      ENDIF
    ENDIF
    IF (flag==inout)
      done=1
      z=zc-center
    ENDIF
  ENDIF
  :
        ;  standard iteration if pixel didn't bail
        ;
  IF (done==0)
    iter=iter+1, zc=sqr(zc)+c
    x=real(zc), y=imag(zc), t=imag(log(zc-center))
    IF (t<0)
      t=t+twopi
    ENDIF
        ;
        ;  see if orbit is inside or outside of star
        ;    by checking each side one at a time
        ;
    flag=0
    IF ((t>t0)&&(t<=t1))
      f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t1)&&(t<=t2))
      f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t2)&&(t<=t3))
      f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t3)&&(t<=t4))
      f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t4)&&(t<=t5))
      f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t5)&&(t<=t6))
      f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t6)&&(t<=t7))
      f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t7)&&(t<=t8))
      f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t8)&&(t<=t9))
      f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
      IF (f<0)
        flag=1
      ENDIF
    ELSE
      f=x*(y0-y3)+y*(x3-x0)-x3*y0+x0*y3
      IF (f>0)
        flag=1
      ENDIF
    ENDIF
        ;
        ;  if the orbit was on the appropriate side,
        ;    set "done" flag
        ;    set z to iteration variable for coloring
        ;
    IF (flag==inout)
      done=1
      z=zc-center
        ;
        ;  safety valve in case star doesn't catch orbit
        ;  if orbit goes to infinity or max iterations reached:
        ;     set "done" flag
        ;     set z to 1 to differentiate it from star trap
        ;
    ELSEIF ((|zc|>bailout)||(iter==maxit))
      done=1
      z=1
    ENDIF
  ENDIF
  done==0
;******Kerry Mitchell's Explanation of his "Star" formulas*******
;
;          narrative copyright Kerry Mitchell 09oct98
;
;  Related formulas:
;    starbail_man  (above)
;    starbail_jul
;    starnear_man
;    starnear_jul
;    star-inout
;    star_km
;
; Seeing Stars
;
; Most fractal images involve circles in some respect:  either stopping
; the iteration when the orbit moves outside of a given circle, or
; coloring by how close the orbit comes to a certain circle, or some
; variation.  These formulas use a 5 point star instead of a circle.
; The "starnear" formulas color by how close the orbit comes to a star.
; The "starbail" formulas are set up to stop iterating either when the
; orbit comes into a star or when it leaves a star.
;
; The star is represented by the 5 outer points.  These are equally spaced
; on a circle.  The center and size of the circle are user-specified, as
; is the rotation angle of the star.
;
; How z at any iteration relates to the star (inside, outside, how close)
; is determined by looking at each of the 10 sides, one at a time.  Each
; side can be represented by a line A*x + B*y + C = 0, where A, B, and C
; come from the coordinates of the 2 outer points that are joined to make
; the side.  Given the numbers A, B, and C, the quantity
;
;         q = A*real(z) + B*imag(z) + C
;
; is computed.  If q is positive, then z is on one side of the line, and
; if q is negative, then z is on the other side of the line.  If |q| is
; very small, that means that z is very close to that side of the star.
; Taking the signs of q for all 10 sides will determine if z is inside or
; outside of the star.  Using the smallest value of |q| gives the distance
; from z to the star.
;
; To see this in action, use the formula "star".  It will draw the outline
; of a star, with the position, orientation and size that you choose.
; This formula, and the "starnear" formulas that are built on it, use a
; logarithmic transfer function from distance to angle (for decomposition
; coloring in Fractint).  This helps highlight the star without needing to
; find out if the point is exactly on the star or not.  The "star-inout"
; formula will draw a star in 2 colors.  Everything inside the star is one
; color, and everything outside of the star is the other color.  These 2
; formulas are simply to give an idea of how the method works.
;
; The fractal formulas need a bit of extra explanation.  In the
; "starnear_jul" formula, you have the option of whether or not to check
; the pixel (initial value of z) for its distance from the star.  If the
; star is centered at the origin (p2=0/0), this can make quite a difference.
; For example, use the "starnear2" parameter set.  As written, the real
; part of p3 is -0.28. The magnitude of real(p3) is the radius of the circle
; containing the 5 outer points.  If real(p3) is negative, that tells the
; formula to check the pixel for its distance before iterating.  In the
; image, this shows up as a star in the center.  Now, make real(p3) +0.28.
; You'll see that the outer portion of the image is unchanged, but the star
; in the middle has gone away.  In the "starbail" formulas, the flag to
; check the pixel before iterating (pixelflag) has been set in the formula,
; and is not interactively changeable (too many parameters).
;
; The "starnear" formulas use a standard bailout condition--stop when the
; iterate gets too big, or leaves a very large circle.  Conversely, in the
; "starbail" formulas, the bailout condition is built around a star.  If
; the star is centered at the origin and is big enough, then you can
; essentially use the star instead of the traditional bailout circle.  This
; is what has been done in parameter set "starbail1".  The magnification
; was decreased to show the bailout star, and the fractal can clearly be
; seen in the middle.  It is also possible to bailout when the orbit enters
; a star.  This is similar to the orbit trap methods that others have
; written, and works particularly well for Julia sets that are dusts.  An
; example of this is in parameter set "starbail2".  Some care must be taken
; if the star is not centered on the origin.  The "starbail" formulas set
; z to a default (1,0) if the orbit was not caught by a star.  If the star
; is too far away or too small to catch many orbits, the majority of the
; screen will be one color (color 0 when using decomposition coloring).  If
; you use stars off of the origin, you may want to increase the size and
; set "pixelflag=0" in the formula, to prevent the image from being taken
; over by one huge rogue star.
;
; One final note:  This method uses angles a lot to figure out which side
; belongs to whom.  Consequently, the ability to rotate the star is a bit
; limited.  If the rotations are kept to the range of 0 to 36 degrees, there
; shouldn't be any problems.  Rotations outside this range (try it with the
; "star" formula) will result in branch cuts as the formula gets its angles
; confused.  Fortunately, since the star is symmetric, there shouldn't be
; a need to rotate it beyond those bounds.
;
;************************************************************************
  ;SOURCE: 98msg.frm
}

starnear_jul {; Kerry Mitchell 09oct98
        ;
        ; See the end of formula starbail_man for Kerry Mitchell's
        ;   explanation of his "Star" formulas.
        ;
        ; Julia set, colors by nearest approach to 5 point star
        ; p1 = Julia parameter
        ; p2 = center of star
        ; cabs(real(p3)) = star size of star (try 1)
        ; sign(real(p3)) = pixel flag:
        ;   + = don't consider pixel--start after first iteration
        ;   - = consider pixel
        ; imag(p3) = star rotation angle, degrees
        ;   only use angles from 0 to 36 degrees
        ; use decomp=256, bailout hardcoded to 10^12
        ;
        ;  initialize iteration parameters
        ;
  c=p1, zc=pixel, done=0, iter=1
  bailout=1e12, fmin=bailout
        ;
        ;  star parameters
        ;
  center=p2, xcen=real(center), ycen=imag(center)
  r=cabs(real(p3)), pixelflag=0
  IF (real(p3)<0)
    pixelflag=1
  ENDIF
  phi=imag(p3)/180*pi, twopi=2*pi, temp=twopi/10
  t0=phi, t1=t0+temp
  t2=t1+temp, t3=t2+temp, t4=t3+temp, t5=t4+temp
  t6=t5+temp, t7=t6+temp, t8=t7+temp, t9=t8+temp
        ;
        ;  set up control points
        ;
  x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
  x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
  x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
  x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
  x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        ;
        ;  if pixel flag =/= 0, then check pixel for how close
        ;    it is to star
        ;
  IF (pixelflag!=0)
    x=real(zc), y=imag(zc), t=imag(log(zc-center))
    IF (t<0)
      t=t+twopi
    ENDIF
    IF ((t>t0)&&(t<=t1))
      f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
    ELSEIF ((t>t1)&&(t<=t2))
      f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
    ELSEIF ((t>t2)&&(t<=t3))
      f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
    ELSEIF ((t>t3)&&(t<=t4))
      f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
    ELSEIF ((t>t4)&&(t<=t5))
      f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
    ELSEIF ((t>t5)&&(t<=t6))
      f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
    ELSEIF ((t>t6)&&(t<=t7))
      f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
    ELSEIF ((t>t7)&&(t<=t8))
      f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
    ELSEIF ((t>t8)&&(t<=t9))
      f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
    ELSE
      f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
    ENDIF
    fmin=cabs(f)
  ENDIF
  :
        ;  standard iteration, find polar angle of iterate
        ;
  iter=iter+1, zc=sqr(zc)+c
  x=real(zc), y=imag(zc), t=imag(log(zc-center))
  IF (t<0)
    t=t+twopi
  ENDIF
        ;
        ;  compute how close iterate is to each side of star
        ;
  IF ((t>t0)&&(t<=t1))
    f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
  ELSEIF ((t>t1)&&(t<=t2))
    f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
  ELSEIF ((t>t2)&&(t<=t3))
    f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
  ELSEIF ((t>t3)&&(t<=t4))
    f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
  ELSEIF ((t>t4)&&(t<=t5))
    f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
  ELSEIF ((t>t5)&&(t<=t6))
    f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
  ELSEIF ((t>t6)&&(t<=t7))
    f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
  ELSEIF ((t>t7)&&(t<=t8))
    f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
  ELSEIF ((t>t8)&&(t<=t9))
    f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
  ELSE
    f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
  ENDIF
  f=cabs(f)
        ;
        ;  update minimum distance
        ;
  IF (f<fmin)
    fmin=f
    zmin=zc
  ENDIF
        ;
        ;  upon escape or maximum iterations:
        ;    set "done" flag
        ;    use minimum distance from star as polar angle of z
        ;      for use with decomp coloring
        ;
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    t=log(fmin)
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}

starnear_man {; Kerry Mitchell 09oct98
        ;
        ; See the end of formula starbail_man for Kerry Mitchell's
        ;   explanation of his "Star" formulas.
        ;
        ;
        ; Mandelbrot, colors by nearest approach to 5 point star
        ; p1 = center of star
        ; cabs(real(p2)) = star size of star (try 1)
        ; sign(real(p2)) = pixel flag:
        ;   + = don't consider pixel--start after first iteration
        ;   - = consider pixel
        ; imag(p2) = star rotation angle, degrees
        ;   only use angles from 0 to 36 degrees
        ; use decomp=256, bailout hardcoded to 10^12
        ;
        ;  initialize iteration parameters
        ;
  zc=0, c=pixel, done=0, iter=1
  bailout=1e12, fmin=bailout
        ;
        ;  star parameters
        ;
  center=p1, xcen=real(center), ycen=imag(center)
  r=cabs(real(p2)), pixelflag=0
  IF (real(p2)<0)
    pixelflag=1
  ENDIF
  phi=imag(p2)/180*pi, twopi=2*pi, temp=twopi/10
  t0=phi, t1=t0+temp
  t2=t1+temp, t3=t2+temp, t4=t3+temp, t5=t4+temp
  t6=t5+temp, t7=t6+temp, t8=t7+temp, t9=t8+temp
        ;
        ;  set up control points
        ;
  x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
  x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
  x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
  x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
  x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        ;
        ;  if pixel flag =/= 0, then check pixel for how close
        ;    it is to star
        ;
  IF (pixelflag!=0)
    x=real(zc), y=imag(zc), t=imag(log(zc-center))
    IF (t<0)
      t=t+twopi
    ENDIF
    IF ((t>t0)&&(t<=t1))
      f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
    ELSEIF ((t>t1)&&(t<=t2))
      f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
    ELSEIF ((t>t2)&&(t<=t3))
      f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
    ELSEIF ((t>t3)&&(t<=t4))
      f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
    ELSEIF ((t>t4)&&(t<=t5))
      f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
    ELSEIF ((t>t5)&&(t<=t6))
      f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
    ELSEIF ((t>t6)&&(t<=t7))
      f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
    ELSEIF ((t>t7)&&(t<=t8))
      f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
    ELSEIF ((t>t8)&&(t<=t9))
      f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
    ELSE
      f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
    ENDIF
    fmin=cabs(f)
  ENDIF
  :
        ;  standard iteration, find polar angle of iterate
        ;
  iter=iter+1, zc=sqr(zc)+c
  x=real(zc), y=imag(zc), t=imag(log(zc-center))
  IF (t<0)
    t=t+twopi
  ENDIF
        ;
        ;  compute how close iterate is to each side of star
        ;
  IF ((t>t0)&&(t<=t1))
    f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
  ELSEIF ((t>t1)&&(t<=t2))
    f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
  ELSEIF ((t>t2)&&(t<=t3))
    f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
  ELSEIF ((t>t3)&&(t<=t4))
    f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
  ELSEIF ((t>t4)&&(t<=t5))
    f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
  ELSEIF ((t>t5)&&(t<=t6))
    f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
  ELSEIF ((t>t6)&&(t<=t7))
    f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
  ELSEIF ((t>t7)&&(t<=t8))
    f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
  ELSEIF ((t>t8)&&(t<=t9))
    f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
  ELSE
    f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
  ENDIF
  f=cabs(f)
        ;
        ;  update minimum distance
        ;
  IF (f<fmin)
    fmin=f
    zmin=zc
  ENDIF
        ;
        ;  upon escape or maximum iterations:
        ;    set "done" flag
        ;    use minimum distance from star as polar angle of z
        ;      for use with decomp coloring
        ;
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    t=log(fmin)
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}

