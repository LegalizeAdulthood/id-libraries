SpecC (XAXIS_NOPARM) {
     ; modified for if..else by George Martin 3/18/97
   z = p1
   x = |z| :
   IF (x>1)
      z = fn1(z)+pixel
   ENDIF
   z = fn2(z)+pixel
   x = |z|
   x <= 4
  ;SOURCE: skinner.frm
}
 
starAstroid_Mset {; adapted from Paul Carlson by Kathy Roth
                  ; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the width of the curves
    ;   imag(p1) = radius of the astroid
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = 0
  c=log(sqr(sqr(pixel))*pixel)*0.2
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  i = (0,1)
  r = imag(p1)
    ;****************************************************
    ; In the accompanying par file, astmset.par,
    ; we have 8 color ranges with 30 colors in each range
    ; for a total of 240 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < 10000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
  num_ranges = real(p2)
  colors_in_range = imag(p2)
    ;****************************************************
    ; Real(p1) controls the width of the curves.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
  width = real(p1)
  index_factor = (colors_in_range - 1) / width
  :
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
  w = w * w + c
    ;****************************************************
    ; The orbit trap curve.  This example uses an "astroid"
    ; curve (which has absolutely nothing to do with huge
    ; rocks in outer space).  Any two-dimensional curve can
    ; be used which can be expressed in parametric form in
    ; terms of the angle from the origin.
    ;****************************************************
  ang = atan(imag(w) / real(w))
  astroid = r * (cos(ang)^3 + i * sin(ang)^3)
    ;****************************************************
    ; If the orbit point is within some distance of the curve,
    ; set z to the index into the colormap and set the bailout
    ; flag.  Note: the way we use the "distance" here has
    ; the effect of turning the curves inside-out in the image.
    ;****************************************************
  distance = abs(|w| - |astroid|)
  IF (distance < width && iter > 1)
    z = index_factor * distance + range_num * colors_in_range + 1
    bailout = 1
  ENDIF
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
  iter = iter + 1
  z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
  bailout == 0  && |w| < 1000
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
 
SimplePendulumG {
  bailout=real(p2)+4
  dt=real(p1)
  z=pixel
  pi2=Pi+Pi:
  x=real(z)
  y=imag(z)
  z=x+y*dt+flip(y+fn1(pi2*x)*dt)
  |z|<=bailout
  ;SOURCE: 99msg.frm
}
 
