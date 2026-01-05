Bubbles_Julia_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;
    ;   p1       = if both real(p1) and imag(p1) are zero
    ;              do Mset, otherwise do Julia set.
    ;   real(p2) = maximum contour of minimum sqrt(|w|)
    ;              (this is the outside edge of the bubbles).
    ;   imag(p2) = Value of |w| at bailout.
    ;   real(p3) = number of color ranges.
    ;   imag(p3) = number of colors in each color range.
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    IF (real(p1) == 0 && imag(p1) == 0)
        w = 0
        c = pixel
    ELSE
        w = pixel
        c = p1
    ENDIF
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    max_w = imag(p2)
    ;****************************************************
    ; In the accompanying par files, bubsjul1 and 2.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.
    ;****************************************************
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    ;****************************************************
    ; Real(p2) is the largest value of contours that will
    ; be plotted. Typical values are 0.05 to 0.25.
    ;****************************************************
    max_min_w = real(p2)
    min_w = 1.0e20:
    ;****************************************************
    ; The equation being iterated.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
    w = w * w + c
    ;****************************************************
    ; Save the smallest value of sqrt(|w|).
    ;****************************************************
    temp = sqrt(|w|)
    IF (temp < min_w)
       min_w = temp
       save_range = range_num
    ENDIF
    ;****************************************************
    ; If the orbit point exceeds the maximum value, set z to
    ; the index into the colormap and set the bailout flag.
    ;****************************************************
    IF (|w| > max_w)
        IF (min_w < max_min_w)
            range_index = (min_w / max_min_w) * (colors_in_range - 1)
            z = range_index + save_range * colors_in_range + 1
        ELSE
            z = 0
        ENDIF
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
    bailout == 0  && |w| < max_w
}
starbail_jul { ; Kerry Mitchell 09oct98
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
        if(real(p3)<0)
          inout=0
        endif
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
        if(pixelflag!=0)
        x=real(zc), y=imag(zc), t=imag(log(zc-center))
        if(t<0)
          t=t+twopi
        endif
        flag=0
        if((t>t0)&&(t<=t1))
          f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
          if(f<0)
            flag=1
          endif
        elseif((t>t1)&&(t<=t2))
          f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
          if(f>0)
            flag=1
          endif
        elseif((t>t2)&&(t<=t3))
          f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
          if(f<0)
            flag=1
          endif
        elseif((t>t3)&&(t<=t4))
          f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
          if(f>0)
            flag=1
          endif
        elseif((t>t4)&&(t<=t5))
          f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
          if(f<0)
            flag=1
          endif
        elseif((t>t5)&&(t<=t6))
          f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
          if(f>0)
            flag=1
          endif
        elseif((t>t6)&&(t<=t7))
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          if(f<0)
            flag=1
          endif
        elseif((t>t7)&&(t<=t8))
          f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
          if(f>0)
            flag=1
          endif
        elseif((t>t8)&&(t<=t9))
          f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
          if(f<0)
            flag=1
          endif
        else
          f=x*(y0-y3)+y*(x3-x0)-x3*y0+x0*y3
          if(f>0)
            flag=1
          endif
        endif
        if(flag==inout)
          done=1
          z=zc-center
        endif
        endif
        :
        ;  standard iteration if pixel didn't bail
        ;
        if(done==0)
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc), t=imag(log(zc-center))
        if(t<0)
          t=t+twopi
        endif
        ;
        ;  see if orbit is inside or outside of star
        ;    by checking each side one at a time
        ;
        flag=0
        if((t>t0)&&(t<=t1))
          f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
          if(f<0)
            flag=1
          endif
        elseif((t>t1)&&(t<=t2))
          f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
          if(f>0)
            flag=1
          endif
        elseif((t>t2)&&(t<=t3))
          f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
          if(f<0)
            flag=1
          endif
        elseif((t>t3)&&(t<=t4))
          f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
          if(f>0)
            flag=1
          endif
        elseif((t>t4)&&(t<=t5))
          f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
          if(f<0)
            flag=1
          endif
        elseif((t>t5)&&(t<=t6))
          f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
          if(f>0)
            flag=1
          endif
        elseif((t>t6)&&(t<=t7))
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          if(f<0)
            flag=1
          endif
        elseif((t>t7)&&(t<=t8))
          f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
          if(f>0)
            flag=1
          endif
        elseif((t>t8)&&(t<=t9))
          f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
          if(f<0)
            flag=1
          endif
        else
          f=x*(y0-y3)+y*(x3-x0)-x3*y0+x0*y3
          if(f>0)
            flag=1
          endif
        endif
        ;
        ;  if the orbit was on the appropriate side,
        ;    set "done" flag
        ;    set z to iteration variable for coloring
        ;
        if(flag==inout)
          done=1
          z=zc-center
        ;
        ;  safety valve in case star doesn't catch orbit
        ;  if orbit goes to infinity or max iterations reached:
        ;     set "done" flag
        ;     set z to 1 to differentiate it from star trap
        ;
        elseif((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
        endif
        endif
        done==0
        }
au0 {
  z=pixel,y=fn1(z-1)^fn1(z),x=(z-1)*fn1(z+1),t=(z/2)*fn1(z-1):
  z=fn1(fn2(t^y)/fn3(x^t))^fn4(t^z)
  |z|<4
}
