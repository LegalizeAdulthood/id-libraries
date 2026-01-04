
JoWe55c45 { ; from a modified Carr-formula
                 ; 6/1997 JoWeber CIS [100424,35]
c=z=1/pixel:
z=sqr(z*(z+1.918)) + c;
z=sin(z*z) + c,
|z| <= 4
}

3DStalks_Julia (ORIGIN) {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1 = the value of complex constant c in the equation
    ;   real(p2) = a factor controlling the width of the stalks
    ;              (this is actually 1/2 the width of the "trap")
    ;   imag(p2) = bailout value for |w|
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    ;****************************************************
    ; In the accompanying par file, mnkyface.par,
    ; we have 2 color ranges with 98 colors in each range
    ; for a total of 196 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < bailout.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    ;****************************************************
    ; Real(p2) controls the width of the stalks.
    ; These values will usually be in the range 0.001 to 0.5
    ;****************************************************
    stalk_width = real(p2)
    index_factor = (colors_in_range - 1) / stalk_width:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This line in the formula is the only one that needs
    ; to be changed for other equations.
    ; This example uses the "magnet2j" equation.
    ;****************************************************
    w=((w^3+3*w*(c-1)+(c-1)*(c-2))/(3*w*w+3*w*(c-2)+(c-1)*(c-2)+1))^2
    ;****************************************************
    ; Find which axis the orbit point is closest to.
    ;****************************************************
    IF (abs(real(w)) <= abs(imag(w)))
        min_dist_to_axis = abs(real(w))
    ELSE
        min_dist_to_axis = abs(imag(w))
    ENDIF
    ;****************************************************
    ; If the orbit point is within stalk_width of an axis,
    ; set z to the index into the colormap and set the bailout flag.
    ; Also, prevent bailout on the first two iterations.
    ;****************************************************
    IF (min_dist_to_axis < stalk_width && iter > 1)
      z = index_factor * min_dist_to_axis + range_num * colors_in_range + 1
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
    bailout == 0  && |w| < imag(p2)
}

JoWe55c01if { ; from a modified Carr-formula
              ; JoWeber 12/1997
c=z=1/pixel + (z=c=cosxx(z) + 1/pixel):
if (odd)
  z=fn2(fn1(z) + c)+c
else
  z=fn1(fn2(z) + c)+c
endif
|z| <=10
 }

JoWe55c02if { ; from a modified Carr-formula
              ; JoWeber 12/1997
c=z=1/pixel + (z=c=fn3(z) + p1/pixel):
if (odd)
  z=fn1(z) + c
else
  z=fn2(z) + c
endif
|z| <=p2
 }

JoWe55c01 { ; from a modified Carr-formula
              ; JoWeber 12/1997
z = cosxx(z)
c = z = 1/pixel + (z + 1/pixel):
z = fn1(fn2(z) + c) + c
|z| <= 10
}

JoWe55c02 { ; from a modified Carr-formula
              ; JoWeber 12/1997
z = fn3(z)
c = z = 1/pixel + (z + p1/pixel):
z = fn2(z) + c
|z| <= p2
}

3D_C_Stalks_Mset (ORIGIN) {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the width of the stalks
    ;   imag(p1) = bailout value for |w|
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = 0
    c = pixel
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    ;****************************************************
    ; In both the accompanying par files, xmasbrot1 and 2,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < bailout.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    ;****************************************************
    ; Real(p1) controls the width of the stalks.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
    stalk_factor = real(p1)
    index_factor = (colors_in_range - 1) / stalk_factor:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be express in terms of a complex variable
    ; and a complex constant will work with this method.
    ;****************************************************
    w=(w*w*w-2*w*w-1)/(c-1)+c
    ;****************************************************
    ; If the orbit point is within the specified distance of the circle,
    ; set z to the index into the colormap and set the bailout flag.
    ; Also, prevent bailout on the first two iterations.
    ;****************************************************
    dist_to_circle = abs(|w|-0.25)
    IF (dist_to_circle < stalk_factor && iter > 1)
    z = index_factor * dist_to_circle + range_num * colors_in_range + 1
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
    bailout == 0  && |w| < imag(p1)
}

Carr3313(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.015/pixel),b7=flip(0.025/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
b10=flip(pixel^8)*2/cotanh(pixel^4)-conj(0.01/pixel-flip(0.125/pixel))
m4=(0.3,0.6)
b4=m4/pi
b5=tanh(pixel^4)*flip(b10)^3*conj(0.25-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/pixel;-0.1951
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.75-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+conj(sinh((pixel-c))-0.25)+c/12
iter=iter+1
(conj(|z|))<=bailout
}

3D_Balls_Mset (ORIGIN) {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the size of the balls
    ;   imag(p1) = number of iterations to skip
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = 0
    c = pixel
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    skip = imag(p1)
    ;****************************************************
    ; In the accompanying par file, mndballs.par,
    ; we have 8 color ranges with 30 colors in each range
    ; for a total of 240 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| >= 1000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    ;****************************************************
    ; Real(p1) controls the size of the balls.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
    ball_size = real(p1)
    index_factor = (colors_in_range - 1) / ball_size:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be express in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
    w = w * w + c
    ;****************************************************
    ; If the orbit point is within the specified distance of a circle,
    ; set z to the index into the colormap and set the bailout flag.
    ;****************************************************
    IF (iter > skip)
    wr = real(w), wi = imag(w)
    d = wr * wr + (wi - .5) * (wi - .5)
    IF (d < ball_size)
        bailout = 1
        delta = ball_size - d
    ELSEIF ((d = wr * wr + (wi + .5) * (wi + .5)) < ball_size)
        bailout = 1
        delta = ball_size - d
    ELSEIF ((d = (wr - .5) * (wr - .5) + wi * wi) < ball_size)
        bailout = 1
        delta = ball_size - d
    ELSEIF ((d = (wr + .5) * (wr + .5) + wi * wi) < ball_size)
        bailout = 1
        delta = ball_size - d
    ENDIF
    ENDIF
    IF (bailout)
    z = index_factor * delta + range_num * colors_in_range + 1
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
}

3D_Phoenix_Spirals {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    prev_w = y = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    ;****************************************************
    ; In the accompanying par file, phxspirs.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 255 when w < 1.0.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2):
    ;****************************************************
    ; The equations being iterated.
    ;****************************************************
    w = prev_w * prev_w - 0.5 * prev_w + c
    b = w * w - 0.5 * y + c
    y = w
    w = b
    ;****************************************************
    ; If w exceeds a value of 1.0, set z to the index
    ; into the colormap and set the bailout flag.
    ;****************************************************
    IF (w > 1)
	;***************************************************
	; Compute the angle between the last 2 orbit points
	;***************************************************
	delta_i = imag(w) - imag(prev_w)
	delta_r = real(w) - real(prev_w)
	angle = abs(atan(delta_i / delta_r))
	IF (delta_r < 0)
	    angle = pi - angle
	ENDIF
	bailout = 1
	range_index = 2 * colors_in_range * angle / pi
	z = range_index + range_num * colors_in_range + 1
    ENDIF
    ;***************************************************
    ; Update previous value of w
    ;***************************************************
    prev_w = w
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
    bailout == 0
}


3D_Balls_Phoenix {; Algorithm and comments shamelessly borrowed to
                  ; Paul W. Carlson by Sylvie Gallet
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the size of the balls
    ;   imag(p1) = number of iterations to skip
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;   p3 = param for phoenix

    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = pixel , y = 0
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    skip = imag(p1)
    ;****************************************************
    ; In the accompanying par file, mndballs.par,
    ; we have 8 color ranges with 30 colors in each range
    ; for a total of 240 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| >= 1000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    ;****************************************************
    ; Real(p1) controls the size of the balls.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
    ball_size = real(p1)
    index_factor = (colors_in_range - 1) / ball_size:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be express in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
    w = w*w - .5*w + p3, X = w*w - .5*y + p3, Y = w, w = X
    ;****************************************************
    ; If the orbit point is within the specified distance of a circle,
    ; set z to the index into the colormap and set the bailout flag.
    ;****************************************************
    IF (iter > skip)
	   wr = real(w), wi = imag(w)
	   d = |w - (0,0.5)|
	   IF (d < ball_size)
	     bailout = 1
	     delta = ball_size - d
	   ELSEIF ((d = |w + (0,0.5)|) < ball_size)
	     bailout = 1
	     delta = ball_size - d
	   ELSEIF ((d = |w - 0.5|) < ball_size)
	     bailout = 1
	     delta = ball_size - d
	   ELSEIF ((d = |w + 0.5|) < ball_size)
	     bailout = 1
	     delta = ball_size - d
	   ENDIF
    ENDIF
    IF (bailout)
	   z = index_factor * delta + range_num * colors_in_range + 1
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
}


3D_Balls_Julia {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the size of the balls
    ;   imag(p2) = number of iterations to skip
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    skip = imag(p2)
    ;****************************************************
    ; In the accompanying par file, balloops.par,
    ; we will set the number of ranges to 2, with
    ; 125 colors in each range, but the colormap will
    ; be modified to 4 ranges to give the desired effect.
    ;****************************************************
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    ;****************************************************
    ; Real(p2) controls the size of the balls.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
    ball_size = real(p2)
    index_factor = (colors_in_range - 1) / ball_size:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses a modified Pokorny equation.
    ;****************************************************
    w = 1 / (w * w + c) + c
    ;****************************************************
    ; If the orbit point is within the specified distance of a circle,
    ; set z to the index into the colormap and set the bailout flag.
    ;****************************************************
    IF (iter > skip)
	wr = real(w), wi = imag(w)
	d = wr * wr + (wi - .5) * (wi - .5)
	IF (d < ball_size)
	    bailout = 1
	    delta = ball_size - d
	ELSEIF ((d = wr * wr + (wi + .5) * (wi + .5)) < ball_size)
	    bailout = 1
	    delta = ball_size - d
	ELSEIF ((d = (wr - .5) * (wr - .5) + wi * wi) < ball_size)
	    bailout = 1
	    delta = ball_size - d
	ELSEIF ((d = (wr + .5) * (wr + .5) + wi * wi) < ball_size)
	    bailout = 1
	    delta = ball_size - d
	ENDIF
    ENDIF
    IF (bailout)
	z = index_factor * delta + range_num * colors_in_range + 1
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
}


PokornyConesJulia {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    prev_w = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    ;****************************************************
    ; In the accompanying par files, pkcones1 & 2.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 255 when w < 1.0.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2):
    ;****************************************************
    ; The equation being iterated.  This is the
    ; Pokorny equation.
    ;****************************************************
    w = 1 / (prev_w * prev_w + c)
    ;****************************************************
    ; If |w| exceeds a value of 4.0, set z to the index
    ; into the colormap and set the bailout flag.
    ;****************************************************
    IF (|w| > 4)
	;***************************************************
	; Compute the angle between the last 2 orbit points
	;***************************************************
	delta_i = imag(w) - imag(prev_w)
	delta_r = real(w) - real(prev_w)
	angle = abs(atan(delta_i / delta_r))
	IF (delta_r < 0)
	    angle = pi - angle
	ENDIF
	bailout = 1
	range_index = colors_in_range * angle / pi
	z = range_index + range_num * colors_in_range + 1
    ENDIF
    prev_w = w
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
    bailout == 0
}

 
Astroid_Mset  {; Copyright (c) Paul W. Carlson, 1997
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
    c = pixel
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
    index_factor = (colors_in_range - 1) / width:
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
}

Tan_Spirals {; Copyright (c) Paul W. Carlson, 1997
    width = real(p2), ratio = 124 / width, w = pixel, z = 0
    iter = 0, toggle = -1:
    ;
    w = p1 * tan(w)
    awr = abs(real(w))
    awi = abs(imag(w))
    IF (awr < awi)
	minw = awr
    ELSE
	minw = awi
    ENDIF
    bailout = (minw < width && |w| <= p3)
    toggle = -1 * toggle
    iter = iter + 1
    IF (bailout)
	z = ratio * minw + (toggle > 0) * 125 + 1
    ENDIF
    z = z - iter
    bailout == 0
}

Cosh_Atan_Mset {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = maximum value of abs(real(w))
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    prev_w = 0
    c = pixel
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    max_real = real(p1)
    ;****************************************************
    ; In the accompanying par file coshatan.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 253 for no bailout.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2):
    ;****************************************************
    ; The equation being iterated.
    ;****************************************************
    w = cosh(prev_w) + c
    ;****************************************************
    ; If abs(real(w)) exceeds the value of max_real, set z to
    ; the index into the colormap and set the bailout flag.
    ;****************************************************
    IF (abs(real(w)) > max_real)
	;***************************************************
	; Compute the angle between the last 2 orbit points
	;***************************************************
	delta_i = imag(w) - imag(prev_w)
	delta_r = real(w) - real(prev_w)
	angle = abs(atan(delta_i / delta_r))
	bailout = 1
	range_index = 2 * colors_in_range * angle / pi
	z = range_index + range_num * colors_in_range + 1
    ENDIF
    prev_w = w
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
    bailout == 0
}

Petals_Julia {; Paul Carlson
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = radius of the circles - this controls
    ;              the size of the petals
    ;   imag(p2)   Not Used
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = pixel
    c = p1
    z = 0
    r = real(p2)
    r2 = r * r
    k = 0.35355339 * r    ; Don't mess with this constant
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    range_num = 0
    iter = 0:
    ;
    w = w * w + c
    ;
    wr = real(w), wi = imag(w)
    c1 = (((wr-r) * (wr-r) + wi * wi) < r2)
    c2 = ((wr * wr + (wi+r) * (wi+r)) < r2)
    c3 = (((wr+r) * (wr+r) + wi * wi) < r2)
    c4 = ((wr * wr + (wi-r) * (wi-r)) < r2)
    IF (c1 && c4)
      d = (wr-k) * (wr-k) + (wi-k) * (wi-k)
    ELSEIF (c1 && c2)
      d = (wr-k) * (wr-k) + (wi+k) * (wi+k)
    ELSEIF (c2 && c3)
      d = (wr+k) * (wr+k) + (wi+k) * (wi+k)
    ELSEIF (c3 && c4)
      d = (wr+k) * (wr+k) + (wi-k) * (wi-k)
    ELSE
      d = 0
    ENDIF
    IF (d > 0)
	index = colors_in_range * d / r2
	z = index + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    d == 0 && |w| < 1000
}


Carr2998a {;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=pixel-conj(0.01/pixel)
b4=pixel-flip(0.01/pixel)-conj(0.001/pixel),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+flip(conj(c/10)),
iter=iter+1
imag(flip(z))<=bailout
}

Carr2998 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; Converted to IF..RLSE logic by Sylvie Gallet, 13/02/98
  ; passes=1 needs to be used with this PHC formula.
  pixinv = .01/pixel
  c = pixel - flip(pixinv) - conj(0.1*pixinv)
  if (whitesq)
    c = flip(conj(0.1*c)) + (-0.7456,-0.132)
    z = zorig = pixel - conj(pixinv)
  else
    c = flip(conj(-0.1*c)) + (-0.7456,-0.132)
    z = zorig = - pixel + conj(pixinv)
  endif
  imagp1 = imag(p1) , imagp2 = imag(p2) , bailout = 16 , iter = 0
  :
  if (iter == p1)
    z = 0 , c = 0.15 * flip(conj(zorig)) + (-0.7456,-0.132)
  elseif (iter == imagp1)
    z = 0 , c = 0.225 * flip(conj(zorig)) + (-0.7456,-0.132)
  elseif (iter == p2)
    z = 0 , c = 0.3375 * flip(conj(zorig)) + (-0.7456,-0.132)
  elseif (iter == imagp2)
    z = 0 , c = 0.50625 * flip(conj(zorig)) + (-0.7456,-0.132)
  endif
  iter = iter + 1
  z = z*z + c
  z <= bailout
  }


Carr3102a {;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=abs(pixel)^3-0.65
b5=pixel^3
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(c/9)^2-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75|),
|z|<=bailout
}

Carr3102 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; Converted to IF..ELSE logic by Sylvie Gallet, 02/15/98
  ; passes=1 needs to be used with this PHC formula.
  pixel = -abs(real(pixel)) + flip(imag(pixel))
  if (whitesq)
    c = sqr(abs(pixel))*abs(pixel) - 0.65
    c1 = sqr(c/9) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + c/1.5
    z = zorig = sqr(pixel)*pixel
  else
    c = - sqr(abs(pixel))*abs(pixel) + 0.65
    c1 = sqr(c/9) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + c/1.5
    z = zorig = - sqr(pixel)*pixel
  endif
  imagp1 = imag(p1) , imagp2 = imag(p2) , bailout = 16 , iter = 0
  :
  if (iter == p1)
    z = 0 , c1 = sqr(zorig/6) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + zorig
  elseif (iter == imagp1)
    z = 0 , c1 = sqr(0.25*zorig) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + 1.5 * zorig
  elseif (iter == p2)
    z = 0 , c1 = sqr(0.375*zorig) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + 2.25 * zorig
  elseif (iter == imagp2)
    z = 0 , c1 = sqr(5.0625*zorig) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + 3.375 * zorig
  endif
  z2 = z*z , z = z2 - 0.0025 * |0.2*z2*z + z2 + c2| + c1
  |z| <= bailout
}

gravijul { ; r^(-2) Mark Christenson 1/25/98
   ; defaults: p1 = (1,0) p2 = (0,0) p3 = (4,0)
   z = pixel:
   w = fn1(z)
   z = fn3(p1/fn2(w*w)) + p2
    |z| < p3
  }

gravijul-v1 { ; Variation on Mark Christenson's gravijul by Sylvie Gallet
   z = pixel^imag(p3) :
   w = fn1(z)
   z = fn3(p1/fn2(w*w)) + p2
    |z| < p3
  }

Carr2958 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
          ; Converted to IF..ELSE logic by Sylvie Gallet, 02/21/98
  b4 = abs(sinh(0.5+pixel/2))^3 - conj(0.1/pixel) - flip(0.1/pixel) + 0.5
  if (whitesq)
    c = conj(b4)/10 + (-0.7456,-0.132) , z = zorig = sqr(b4)
  else
    c = - sqr(b4)/10 + (-0.7456,-0.132) , z = zorig = - conj(b4)
  endif
  imagp1 = imag(p1) , imagp2 = imag(p2) , bailout = 16 , iter = 0
  :
  if (iter == p1)
    z = 0 , c = 0.15 * zorig + (-0.7456,-0.132)
  elseif (iter == imagp1)
    z = 0 , c = 0.225 * zorig + (-0.7456,-0.132)
  elseif (iter == p2)
    z = 0 , c = 0.3375 * zorig + (-0.7456,-0.132)
  elseif (iter == imagp2)
    z = 0 , c = 0.50625 * zorig + (-0.7456,-0.132)
  endif
  iter = iter + 1
  z = z*z + c
  z <= bailout
  }

rand_generic_floata {  ; ****   PARAMETER 1 MUST BE > 0	 ****
		; modified by Sylvie Gallet
                ; Thierry Boudet 101355.2112ompuserve.com
                ; 19 Juillet 1997
                z = srand(z):
                z = fn1(z) + fn2(pixel);
                |z| <= real(p1)
                }

rand_generic_floatb {  ; ****   PARAMETER 1 MUST BE > 0	 ****
		; modified by Sylvie Gallet
                ; Thierry Boudet 101355.2112ompuserve.com
                ; 19 Juillet 1997
                if (p1 > 0)
                  pp1 = p1
                else
                  pp1 = 0.5
                endif
                z = srand(z):
                z = fn1(z) + fn2(pixel);
                |z| <= real(pp1)
                } <


Carr2958 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
          ; Converted to IF..ELSE logic by Sylvie Gallet, 02/21/98
  b4 = abs(sinh(0.5+pixel/2))^3 - conj(0.1/pixel) - flip(0.1/pixel) + 0.5
  if (whitesq)
    c = conj(b4)/10 + (-0.7456,-0.132) , z = zorig = sqr(b4)
  else
    c = - sqr(b4)/10 + (-0.7456,-0.132) , z = zorig = - conj(b4)
  endif
  imagp1 = imag(p1) , imagp2 = imag(p2) , bailout = 16 , iter = 0
  :
  if (iter == p1)
    z = 0 , c = 0.15 * zorig + (-0.7456,-0.132)
  elseif (iter == imagp1)
    z = 0 , c = 0.225 * zorig + (-0.7456,-0.132)
  elseif (iter == p2)
    z = 0 , c = 0.3375 * zorig + (-0.7456,-0.132)
  elseif (iter == imagp2)
    z = 0 , c = 0.50625 * zorig + (-0.7456,-0.132)
  endif
  iter = iter + 1
  z = z*z + c
  z <= bailout
  }

wiltetrate_original {; by me
  z = pixel :
  z=z^(cotanh(z^.5))+pixel,
  |z|<=4
  ;SOURCE: wilson.frm
}

wiltetrate_generalised {; 
  z = pixel :
  z=z^(fn1(z^real(p1)))+pixel,
  |z|<=4
}

punkt-2a { ; using FRACTEXT (10'1996) by Jan Maarten van der Valk
              ; 'periodicity=0' and 'passes=1' recommended
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnpix))/(rea\
  l(scrnmax)*0.75), z=x+flip(y)
  chrDT1 = y<0.9999&&x>-0.14935&&x<-0.04945
  chrDT2 = y<0.9999&&x>0.05045&&x<0.15035
  chrDT3 = y<0.9999&&x>0.25025&&x<0.35015
  chrDT4 = y<0.9999&&x>0.45005&&x<0.54995
  chrDT5 = y<0.9999&&x>0.64985&&x<0.74975
  chrDT6 = y<0.9999&&x>0.84965&&x<0.94955
  chrDT7 = y<0.9999&&x>1.04945&&x<1.14935
  test1 = chrDT1||chrDT2||chrDT3||chrDT4||chrDT5||chrDT6||chrDT7&&y>0\
  .9&&y<1.233
  chrDT8 = y<0.8999&&x>-0.04945&&x<0.05045
  chrDT9 = y<0.8999&&x>0.15035&&x<0.25025
  chrDT10 = y<0.8999&&x>0.35015&&x<0.45005
  chrDT11 = y<0.8999&&x>0.54995&&x<0.64985
  chrDT12 = y<0.8999&&x>0.74975&&x<0.84965
  chrDT13 = y<0.8999&&x>0.94955&&x<1.04945
  test2 = chrDT8||chrDT9||chrDT10||chrDT11||chrDT12||chrDT13&&y>0.8&&\
  y<1.133
  chrDT14 = y<0.7999&&x>-0.14935&&x<-0.04945
  chrDT15 = y<0.7999&&x>0.05045&&x<0.15035
  chrDT16 = y<0.7999&&x>0.25025&&x<0.35015
  chrDT17 = y<0.7999&&x>0.45005&&x<0.54995
  chrDT18 = y<0.7999&&x>0.64985&&x<0.74975
  chrDT19 = y<0.7999&&x>0.84965&&x<0.94955
  chrDT20 = y<0.7999&&x>1.04945&&x<1.14935
  test3 = chrDT14||chrDT15||chrDT16||chrDT17||chrDT18||chrDT19||chrDT\
  20&&y>0.7&&y<1.033
  chrDT21 = y<0.6999&&x>-0.04945&&x<0.05045
  chrDT22 = y<0.6999&&x>0.15035&&x<0.25025
  chrDT23 = y<0.6999&&x>0.35015&&x<0.45005
  chrDT24 = y<0.6999&&x>0.54995&&x<0.64985
  chrDT25 = y<0.6999&&x>0.74975&&x<0.84965
  chrDT26 = y<0.6999&&x>0.94955&&x<1.04945
  test4 = chrDT21||chrDT22||chrDT23||chrDT24||chrDT25||chrDT26&&y>0.6\
  &&y<0.933
  chrDT27 = y<0.5999&&x>-0.14935&&x<-0.04945
  chrDT28 = y<0.5999&&x>0.05045&&x<0.15035
  chrDT29 = y<0.5999&&x>0.25025&&x<0.35015
  chrDT30 = y<0.5999&&x>0.45005&&x<0.54995
  chrDT31 = y<0.5999&&x>0.64985&&x<0.74975
  chrDT32 = y<0.5999&&x>0.84965&&x<0.94955
  chrDT33 = y<0.5999&&x>1.04945&&x<1.14935
  test5 = chrDT27||chrDT28||chrDT29||chrDT30||chrDT31||chrDT32||chrDT\
  33&&y>0.5&&y<0.833
  chrDT34 = y<0.4999&&x>-0.04945&&x<0.05045
  chrDT35 = y<0.4999&&x>0.15035&&x<0.25025
  chrDT36 = y<0.4999&&x>0.35015&&x<0.45005
  chrDT37 = y<0.4999&&x>0.54995&&x<0.64985
  chrDT38 = y<0.4999&&x>0.74975&&x<0.84965
  chrDT39 = y<0.4999&&x>0.94955&&x<1.04945
  test6 = chrDT34||chrDT35||chrDT36||chrDT37||chrDT38||chrDT39&&y>0.4\
  &&y<0.733
  chrDT40 = y<0.3999&&x>-0.14935&&x<-0.04945
  chrDT41 = y<0.3999&&x>0.05045&&x<0.15035
  chrDT42 = y<0.3999&&x>0.25025&&x<0.35015
  chrDT43 = y<0.3999&&x>0.45005&&x<0.54995
  chrDT44 = y<0.3999&&x>0.64985&&x<0.74975
  chrDT45 = y<0.3999&&x>0.84965&&x<0.94955
  chrDT46 = y<0.3999&&x>1.04945&&x<1.14935
  test7 = chrDT40||chrDT41||chrDT42||chrDT43||chrDT44||chrDT45||chrDT\
  46&&y>0.3&&y<0.633
  chrDT47 = y<0.2999&&x>-0.04945&&x<0.05045
  chrDT48 = y<0.2999&&x>0.15035&&x<0.25025
  chrDT49 = y<0.2999&&x>0.35015&&x<0.45005
  chrDT50 = y<0.2999&&x>0.54995&&x<0.64985
  chrDT51 = y<0.2999&&x>0.74975&&x<0.84965
  chrDT52 = y<0.2999&&x>0.94955&&x<1.04945
  test8 = chrDT47||chrDT48||chrDT49||chrDT50||chrDT51||chrDT52&&y>0.2\
  &&y<0.533
  chrDT53 = y<0.1999&&x>-0.14935&&x<-0.04945
  chrDT54 = y<0.1999&&x>0.05045&&x<0.15035
  chrDT55 = y<0.1999&&x>0.25025&&x<0.35015
  chrDT56 = y<0.1999&&x>0.45005&&x<0.54995
  chrDT57 = y<0.1999&&x>0.64985&&x<0.74975
  chrDT58 = y<0.1999&&x>0.84965&&x<0.94955
  chrDT59 = y<0.1999&&x>1.04945&&x<1.14935
  test9 = chrDT53||chrDT54||chrDT55||chrDT56||chrDT57||chrDT58||chrDT\
  59&&y>0.1&&y<0.433
  chrDT60 = y<0.0999&&x>-0.04945&&x<0.05045
  chrDT61 = y<0.0999&&x>0.15035&&x<0.25025
  chrDT62 = y<0.0999&&x>0.35015&&x<0.45005
  chrDT63 = y<0.0999&&x>0.54995&&x<0.64985
  chrDT64 = y<0.0999&&x>0.74975&&x<0.84965
  chrDT65 = y<0.0999&&x>0.94955&&x<1.04945
  test10 = chrDT60||chrDT61||chrDT62||chrDT63||chrDT64||chrDT65&&y>0&\
  &y<0.333
  test=test1||test2||test3||test4||test5||test6||test7||test8||test9|\
  |test10
  test0=test0&&whitesq
  test0=((test0||test)==0)
  f1=sin(.5*pixel)
  f2=1/(32*pixel)
  pixel=(test==0)*f2+test*f1
  ; Import of formula 'Nwtbumps3' from file _N.FRM
  z = pixel + fn1( fn2( fn3( (pixel/|pixel|) * exp( p2 * |pixel|))))
  Root = 1 :
  z = ((p1-1)*z^p1+Root)/(p1*z^(p1-1))
  .001 <= |z^p1-Root|
  ;SOURCE: crazynwt.frm
  }

punkt-2 { ; Original formula by Guy Marson
              ; Optimized by Sylvie Gallet
              ; 'periodicity=0' and 'passes=1' recommended
  width = real(scrnmax/10)
  x = trunc(real(scrnpix)/width + 0.5)
  y = trunc(imag(scrnmax - scrnpix)/width/0.75)
  if ( x+y == 2*trunc((x+y)/2) )
    pix = sin(.5*pixel)
  else
    pix = 1/(32*pixel)
  endif
  ; Import of formula 'Nwtbumps3' from file _N.FRM
  z = pix + fn1( fn2( fn3( (pix/|pix|) * exp( p2 * |pix|))))
  Root = 1 , p1_1 = p1 - 1 , zp1_1 = z^p1_1
  a = 1 - 1/p1 , b = root/p1 :
  z = a*z + b/zp1_1
  zp1_1 = z^p1_1
  .001 <= |zp1_1*z - Root|
  }

dmj-Mand-TC001 {
;
; This formula places three traps on the complex
; plane, each a wide straight line. Each trap is
; a different color; as the orbit falls into the
; trap, it is "blended" towards the color of the
; trap. Colors accumulate until the point bails
; out.
;
; p1r	Trap 1 width
; p1i	Trap 2 width
; p2r	Trap 3 width
;
; To modify the trap centers, rotations, or
; colors, clone this formula, add your initials
; and a number onto the end of the formula name,
; and make your changes.
;
; initialization:
  r = 0
  g = 0
  b = 0
  done = 0
  i = 0
  t1 = (1.0, 0.5)               ; trap centers
  t2 = (0.0, 1.0)
  t3 = (-0.5, -1.0)
  t1r = 255, t1g = 0, t1b = 64	; trap colors
  t2r = 255, t2g = 192, t2b = 0
  t3r = 0, t3g = 192, t3b = 255
  r1 = (0,1)^(0/90)		; trap rotations
  r2 = (0,1)^(45/90)
  r3 = (0,1)^(60/90)
  IF (real(p1) == 0)		; default thresholds
    p1 = 0.5 + flip(imag(p1))
  ENDIF
  IF (imag(p1) == 0)
    p1 = real(p1) + (0,0.5)
  ENDIF
  IF (real(p2) == 0)
    p2 = 0.5 + flip(imag(p2))
  ENDIF
  tt1 = 1 / real(p1)		; reciprocals of trap thresholds
  tt2 = 1 / imag(p1)
  tt3 = 1 / real(p2)
  z = pixel, c = pixel
  :
; iteration:
  z = sqr(z) + c
  d1 = abs(real((t1-z)*r1))
  d2 = abs(real((t2-z)*r2))
  d3 = abs(real((t3-z)*r3))
  IF (d1 < real(p1))
    r = r + (t1r-r)*sqr(d1*tt1)
    g = g + (t1g-g)*sqr(d1*tt1)
    b = b + (t1b-b)*sqr(d1*tt1)
  ENDIF
  IF (d2 < imag(p1))
    r = r + (t2r-r)*sqr(d2*tt2)
    g = g + (t2g-g)*sqr(d2*tt2)
    b = b + (t2b-b)*sqr(d2*tt2)
  ENDIF
  IF (d3 < real(p2))
    r = r + (t3r-r)*sqr(d3*tt3)
    g = g + (t3g-g)*sqr(d3*tt3)
    b = b + (t3b-b)*sqr(d3*tt3)
  ENDIF
; bailout test:
  IF (|z| > 128 ); || i == maxit-2)	; include last part for inside
    done = 1
  ENDIF
  i = i + 1
; color processing:
;  
; True Color Engine 1.0
; Copyright 1999 Damien M. Jones
; http://www.fractalus.com/
;
; This block of formula code provides simulated true color
; in FractInt by dithering. Simply feed red, green, and blue
; values into the variables r, g, and b, set done=1 when your
; values are ready, and store the iteration count in i. To
; view the results, use the associated true color palette,
; use outside=real, and use passes=1 or passes=2; don't use
; guessing.
;
; You can re-use this code in your own formulas, but please
; give credit. Thanks!
;
  IF (done > 0)
    ; 1. Clip to valid ranges
    IF (r > 255)		; You can remove these lines
      r = 255			; if you are absolutely sure
    ENDIF			; your RGB values will never
    IF (g > 255)		; be out of range. That will
      g = 255			; make your formula run a bit
    ENDIF			; faster.
    IF (b > 255)
      b = 255
    ENDIF
    IF (r < 0)
      r = 0
    ENDIF
    IF (g < 0)
      g = 0
    ENDIF
    IF (b < 0)
      b = 0
    ENDIF

    ; 2. Figure out which spot in the dither pattern to use
    ; The dither pattern is a 4x4 matrix; since there are
    ; only six shades of each color, in-between shades must
    ; be "mixed".
    xdither = real(scrnpix) - floor(real(scrnpix)*0.25)*4
    ydither = imag(scrnpix) - floor(imag(scrnpix)*0.25)*4

    ; 3. Calculate the dither threshold for each channel
    ; a. Determine quadrant in dither pattern
    IF (ydither > 1.5)		; bottom half
      ydither = ydither - 2	; move to top half
      IF (xdither < 1.5)	; left half (lower left quadrant)
        rdither = 3
	gdither = 3
	bdither = 3
      ELSE			; right half (lower right quadrant)
        xdither = xdither - 2	; move to left half
        rdither = 1
	gdither = 1
	bdither = 1
      ENDIF
    ELSE			; top half
      IF (xdither > 1.5)	; right half (upper right quadrant)
        xdither = xdither - 2	; move to left half
        rdither = 2
        gdither = 2
        bdither = 2
      ELSE			; left half (upper left quadrant)
        rdither = 0
        gdither = 0
        bdither = 0
      ENDIF
    ENDIF
    ; b. Determine precise cell in quadrant
    IF (ydither > 0.5)		; bottom half
      IF (xdither < 0.5)	; left half (bottom left cell)
        rdither = rdither + 12
        gdither = gdither + 12
        bdither = bdither + 12
      ELSE			; right half (bottom right cell)
        rdither = rdither + 4
        gdither = gdither + 4
        bdither = bdither + 4
      ENDIF
    ELSE			; top half
      IF (xdither > 0.5)	; right half (upper right cell)
        rdither = rdither + 8
        gdither = gdither + 8
        bdither = bdither + 8
      ENDIF
    ENDIF

    ; 4. Scale r, g, b with dither weight added
    r = (r*80/255 + rdither) * 0.0625
    g = (g*80/255 + rdither) * 0.0625
    b = (b*80/255 + rdither) * 0.0625
    
    ; 5. Compute final color and fudge z
    r = floor(r) + floor(g)*6 + floor(b)*36
    z = r - i - 6
  ENDIF
  
; FractInt bailout:
  done == 0
}

dmj-Mand-TC002 {
;
; This formula places three traps on the complex
; plane, each a circle. Each trap is
; a different color; as the orbit falls into the
; trap, it is "blended" towards the color of the
; trap. Colors accumulate until the point bails
; out.
;
; p1r	Trap 1 width
; p1i	Trap 2 width
; p2r	Trap 3 width
;
; To modify the trap centers, rotations, or
; colors, clone this formula, add your initials
; and a number onto the end of the formula name,
; and make your changes.
;
; initialization:
  r = 0
  g = 0
  b = 0
  done = 0
  i = 0

  t1 = (0.75, 0.75)		; trap centers
  t2 = (-0.25, 0.0)
  t3 = (-2.0, -0.25)
  t1r = 255, t1g = 0, t1b = 128	; trap colors
  t2r = 0, t2g = 255, t2b = 128
  t3r = 0, t3g = 64, t3b = 255
  r1 = (0,1)^(0/90)		; trap rotations
  r2 = (0,1)^(45/90)
  r3 = (0,1)^(60/90)
  IF (real(p1) == 0)		; default thresholds
    p1 = 0.5 + flip(imag(p1))
  ENDIF
  IF (imag(p1) == 0)
    p1 = real(p1) + (0,0.5)
  ENDIF
  IF (real(p2) == 0)
    p2 = 0.5 + flip(imag(p2))
  ENDIF
  tt1 = 1 / real(p1)		; reciprocals of trap thresholds
  tt2 = 1 / imag(p1)
  tt3 = 1 / real(p2)
  
  z = pixel, c = pixel
  
  :

; iteration:
  z = sqr(z) + c

  d1 = |t1-z|
  d2 = |t2-z|
  d3 = |t3-z|
  
  IF (d1 < real(p1))
    r = r + (t1r-r)*(1-sqrt(d1*tt1))
    g = g + (t1g-g)*(1-sqrt(d1*tt1))
    b = b + (t1b-b)*(1-sqrt(d1*tt1))
  ENDIF
  IF (d2 < imag(p1))
    r = r + (t2r-r)*(1-sqrt(d2*tt2))
    g = g + (t2g-g)*(1-sqrt(d2*tt2))
    b = b + (t2b-b)*(1-sqrt(d2*tt2))
  ENDIF
  IF (d3 < real(p2))
    r = r + (t3r-r)*(1-sqrt(d3*tt3))
    g = g + (t3g-g)*(1-sqrt(d3*tt3))
    b = b + (t3b-b)*(1-sqrt(d3*tt3))
  ENDIF

; bailout test:
  IF (|z| > 128 ); || i == maxit-2)	; include last part for inside
    done = 1
  ENDIF
  i = i + 1

; color processing:
;  
; True Color Engine 1.0
; Copyright 1999 Damien M. Jones
; http://www.fractalus.com/
;
; This block of formula code provides simulated true color
; in FractInt by dithering. Simply feed red, green, and blue
; values into the variables r, g, and b, set done=1 when your
; values are ready, and store the iteration count in i. To
; view the results, use the associated true color palette,
; use outside=real, and use passes=1 or passes=2; don't use
; guessing.
;
; You can re-use this code in your own formulas, but please
; give credit. Thanks!
;
  IF (done > 0)
    ; 1. Clip to valid ranges
    IF (r > 255)		; You can remove these lines
      r = 255			; if you are absolutely sure
    ENDIF			; your RGB values will never
    IF (g > 255)		; be out of range. That will
      g = 255			; make your formula run a bit
    ENDIF			; faster.
    IF (b > 255)
      b = 255
    ENDIF
    IF (r < 0)
      r = 0
    ENDIF
    IF (g < 0)
      g = 0
    ENDIF
    IF (b < 0)
      b = 0
    ENDIF

    ; 2. Figure out which spot in the dither pattern to use
    ; The dither pattern is a 4x4 matrix; since there are
    ; only six shades of each color, in-between shades must
    ; be "mixed".
    xdither = real(scrnpix) - floor(real(scrnpix)*0.25)*4
    ydither = imag(scrnpix) - floor(imag(scrnpix)*0.25)*4

    ; 3. Calculate the dither threshold for each channel
    ; a. Determine quadrant in dither pattern
    IF (ydither > 1.5)		; bottom half
      ydither = ydither - 2	; move to top half
      IF (xdither < 1.5)	; left half (lower left quadrant)
        rdither = 3
	gdither = 3
	bdither = 3
      ELSE			; right half (lower right quadrant)
        xdither = xdither - 2	; move to left half
        rdither = 1
	gdither = 1
	bdither = 1
      ENDIF
    ELSE			; top half
      IF (xdither > 1.5)	; right half (upper right quadrant)
        xdither = xdither - 2	; move to left half
        rdither = 2
        gdither = 2
        bdither = 2
      ELSE			; left half (upper left quadrant)
        rdither = 0
        gdither = 0
        bdither = 0
      ENDIF
    ENDIF
    ; b. Determine precise cell in quadrant
    IF (ydither > 0.5)		; bottom half
      IF (xdither < 0.5)	; left half (bottom left cell)
        rdither = rdither + 12
        gdither = gdither + 12
        bdither = bdither + 12
      ELSE			; right half (bottom right cell)
        rdither = rdither + 4
        gdither = gdither + 4
        bdither = bdither + 4
      ENDIF
    ELSE			; top half
      IF (xdither > 0.5)	; right half (upper right cell)
        rdither = rdither + 8
        gdither = gdither + 8
        bdither = bdither + 8
      ENDIF
    ENDIF
    ; 4. Scale r, g, b with dither weight added
    r = (r*80/255 + rdither) * 0.0625
    g = (g*80/255 + rdither) * 0.0625
    b = (b*80/255 + rdither) * 0.0625
    ; 5. Compute final color and fudge z
    r = floor(r) + floor(g)*6 + floor(b)*36
    z = r - i - 6
  ENDIF
; FractInt bailout:
  done == 0
}

dmj-Mand-TC003 {
;
; This formula places a single rainbow-colored
; ring trap on the complex plane. As the orbit falls
; into the trap, it is "blended" towards the
; color of the trap at the point it lands.
; Colors accumulate until the point bails out.
;
; p1r	Trap 1 width
; p1i	Trap 1 diameter
; p2r	Trap rotation
; p2i	Trap aspect
; p3	Trap center
;
; To modify the trap centers, rotations, or
; colors, clone this formula, add your initials
; and a number onto the end of the formula name,
; and make your changes.
;
; initialization:
  r = 0
  g = 0
  b = 0
  done = 0
  i = 0

  t1 = p3 ;(0.75, 0.75)		; trap centers
  r1 = (0,1)^(0/90)		; trap rotations
  IF (real(p1) == 0)		; default thresholds
    p1 = 0.5 + flip(imag(p1))
  ENDIF
  IF (imag(p1) == 0)
    p1 = real(p1) + (0,0.25)
  ENDIF
  IF (imag(p2) == 0)
    p2 = real(p2) + (0,1.0)
  ENDIF
  r1 = (0,1)^(real(p2)/90)	; trap rotations
  a1 = imag(p2)			; aspect ratio
  tt1 = 1 / real(p1)		; reciprocals of trap thresholds
  
  z = pixel, c = pixel
  
  :

; iteration:
  z = sqr(z) + c

  z1 = (z-t1) * r1
  z1 = real(z1) + flip(imag(z1)*a1)
  d1 = abs(cabs(z1)-imag(p1))
  
  IF (d1 < real(p1))
    d1 = 1 - (d1*tt1)
    h = (atan(imag(z1)/real(z1)) + pi/2) * 127.5/pi
    IF (real(z1) < 0)
      h = h + 127.5
    ENDIF
    s = 255
    l = 255 * sqr(d1)
    
    ; HSL -> RGB conversion code
    IF (s == 0)			; zero saturation (grey shade)
      t1r = l, t1g = l, t1b = l	; take the easy way out
    ELSE			; non-zero saturation
      IF (l < 128)		; lightness in the low half
        ls2 = l * (255+s) / 255	; compute lightest value
      ELSE			; lightness in the high half
        ls2 = l+s - (l*s) / 255	; compute lightest value
      ENDIF
      ls1 = 2*l - ls2		; compute darkest value
      IF (h < 42.6666667)	; first sixth: red to yellow
        t1r = 255
        t1g = h * 6
	t1b = 0
      ELSEIF (h < 87.3333333)	; second sixth: yellow to green
        t1r = (87.3333333 - h) * 6
        t1g = 255
	t1b = 0
      ELSEIF (h < 128)		; third sixth: green to cyan
        t1r = 0
        t1g = 255
        t1b = (h-87.3333333) * 6
      ELSEIF (h < 170.6666667)	; fourth sixth: cyan to blue
        t1r = 0
        t1g = (170.6666667 - h) * 6
	t1b = 255
      ELSEIF (h < 214.3333333)	; fifth sixth: blue to magenta
        t1r = (h-170.6666667) * 6
        t1g = 0
	t1b = 255
      ELSE			; last sixth: magenta to red
        t1r = 255
        t1g = 0
        t1b = (255 - h) * 6
      ENDIF
      ls2 = (ls2 - ls1) / 255	; brightness range
      t1r = ls1 + t1r*ls2	; scale RGB accordingly
      t1g = ls1 + t1g*ls2
      t1b = ls1 + t1b*ls2
    ENDIF
    r = r + (t1r-r)*(d1)
    g = g + (t1g-g)*(d1)
    b = b + (t1b-b)*(d1)
  ENDIF

; bailout test:
  IF (|z| > 128 ); || i == maxit-2)	; include last part for inside
    done = 1
  ENDIF
  i = i + 1

; color processing:
;  
; True Color Engine 1.0
; Copyright 1999 Damien M. Jones
; http://www.fractalus.com/
;
; This block of formula code provides simulated true color
; in FractInt by dithering. Simply feed red, green, and blue
; values into the variables r, g, and b, set done=1 when your
; values are ready, and store the iteration count in i. To
; view the results, use the associated true color palette,
; use outside=real, and use passes=1 or passes=2; don't use
; guessing.
;
; You can re-use this code in your own formulas, but please
; give credit. Thanks!
;
  IF (done > 0)
    ; 1. Clip to valid ranges
    IF (r > 255)		; You can remove these lines
      r = 255			; if you are absolutely sure
    ENDIF			; your RGB values will never
    IF (g > 255)		; be out of range. That will
      g = 255			; make your formula run a bit
    ENDIF			; faster.
    IF (b > 255)
      b = 255
    ENDIF
    IF (r < 0)
      r = 0
    ENDIF
    IF (g < 0)
      g = 0
    ENDIF
    IF (b < 0)
      b = 0
    ENDIF

    ; 2. Figure out which spot in the dither pattern to use
    ; The dither pattern is a 4x4 matrix; since there are
    ; only six shades of each color, in-between shades must
    ; be "mixed".
    xdither = real(scrnpix) - floor(real(scrnpix)*0.25)*4
    ydither = imag(scrnpix) - floor(imag(scrnpix)*0.25)*4

    ; 3. Calculate the dither threshold for each channel
    ; a. Determine quadrant in dither pattern
    IF (ydither > 1.5)		; bottom half
      ydither = ydither - 2	; move to top half
      IF (xdither < 1.5)	; left half (lower left quadrant)
        rdither = 3
	gdither = 3
	bdither = 3
      ELSE			; right half (lower right quadrant)
        xdither = xdither - 2	; move to left half
        rdither = 1
	gdither = 1
	bdither = 1
      ENDIF
    ELSE			; top half
      IF (xdither > 1.5)	; right half (upper right quadrant)
        xdither = xdither - 2	; move to left half
        rdither = 2
        gdither = 2
        bdither = 2
      ELSE			; left half (upper left quadrant)
        rdither = 0
        gdither = 0
        bdither = 0
      ENDIF
    ENDIF
    ; b. Determine precise cell in quadrant
    IF (ydither > 0.5)		; bottom half
      IF (xdither < 0.5)	; left half (bottom left cell)
        rdither = rdither + 12
        gdither = gdither + 12
        bdither = bdither + 12
      ELSE			; right half (bottom right cell)
        rdither = rdither + 4
        gdither = gdither + 4
        bdither = bdither + 4
      ENDIF
    ELSE			; top half
      IF (xdither > 0.5)	; right half (upper right cell)
        rdither = rdither + 8
        gdither = gdither + 8
        bdither = bdither + 8
      ENDIF
    ENDIF

    ; 4. Scale r, g, b with dither weight added
    r = (r*80/255 + rdither) * 0.0625
    g = (g*80/255 + rdither) * 0.0625
    b = (b*80/255 + rdither) * 0.0625
    
    ; 5. Compute final color and fudge z
    r = floor(r) + floor(g)*6 + floor(b)*36
    z = r - i - 6
  ENDIF
  
; FractInt bailout:
  done == 0
}

multifract1 = { ; Ron Barnett, January 1999
   ; Use decomp = 256 or outside = atan
   ; Use imag(p3) to change the color spread
   zc = z = c = pixel
   IF ((real(p1)) == 0 && (imag(p1) == 0))
      p1 = (0,-0.5)
   ENDIF
   IF ((real(p2)) == 0 && (imag(p2) == 0))
      p2 = 1
   ENDIF
   IF (real(p3) == 0)
      p3 = p3 + (10000,0)
   ENDIF
   IF (imag(p3) == 0)
      p3 = p3 + (0,10)
   ENDIF
   choice = iterexp = 0:
   choice = (choice == 0)
   IF (choice == 0)
      zc = p2*(zc*zc + c)
      iterexp = iterexp + exp(-cabs(zc))
   ELSE
      z1 = exp(zc)
      z2 = sin(zc) + z1 - 1
      zc = zc - p1*z2/(cos(zc) + z1)
   ENDIF
   IF (|zc| > real(p3))
      smooth = iterexp*imag(p3)*pi/128
      ang = cos(smooth)+flip(sin(smooth))
      z = 256*ang
   ENDIF
   |zc| <= real(p3)
}

bills-rotate3 {
  a = real(p1), b = imag(p1)
  c = real(p2), d = imag(p2)
  e = real(p3), f = imag(p3)
  w = pixel
  x = pixel
  y = pixel
  z = pixel
  :
  w = fn1(x+y)^a + w
  x = fn2(y+w)^b + x
  y = fn3(w+x)^c + y
  z = (w^2 - (x^2) * (y^2))*d + z*e
  |z| < f
}

mt_990128f { Mark Townsend, 28-01-99
  ; real p1 coloring speed of points captured by the Y axis
  ; imag p1 coloring speed of points captured by the X axis
  ; real p2  bailout point for orbits nearing the Y axis
  ; imag p2 bailout point for orbits nearing the X axis
  ; p3 Julia coordinates
  ; fn1 function for the fractal formula ('ident' for Julia)
  ; fn2 function for coloring points captured by the Y axis
  ; fn3 function for coloring points captured by the X axis
  ; fn4 function for the outside coloring
  ; use decomp=256
  ;
  ; This is an implementation of Pickover's 'epsilon cross'
  ; method on a generalised Julia fractal. The user can set
  ; how near the orbit has to get to the axes before bailing
  ; out. The larger the values given to p2 the wider the
  ; 'stalks'. The values should be positive or 0 to turn the
  ; stalks off. Points within the stalks are coloured by the
  ; angle of z at bailout, messed up by a function. The outside
  ; is coloured by the angle of z on it's closest  approach to the
  ; origin, again through a function.
  ;
  ; ***********************************
  z = pixel, c = p3, iter = 1, s = 1e9:
  ; ***********************************
  z = fn1(sqr(z)) + c
  ; find the closest z to to the origin
  if (|z| < |s|)
     s = z
  endif
  if (abs(real(z)) < real(p2)) ; caught by Y axis
     z = fn2(z)^real(p1)
     iter = 0
  elseif (abs(imag(z)) < imag(p2)) ; caught by X axis
     z = fn3(z)^imag(p1)
     iter = 0
  elseif (|z| > 4)
     z  = fn4(s)
     iter = 0
  endif
  iter > 0
  }

LL2-02  { ; overlay LL1-08 and LL1-11
	z = pixel,c = fn2(z^p1),b1 = p2+3,b2 = p2+1:
	IF (whitesq)
	  z = fn1(z)*z*z+c
	  PHC_bailout = |z| < b1
	ELSE
          z = p1*fn2(z*z*z*fn1(z)) + fn1(fn2(fn3(z)))
	  PHC_bailout = z < b2
	ENDIF
	PHC_bailout}	  

billsfn4  {
  z = p1, temp = pixel :
  z = fn1(temp^p2)
  IF (5 < z)
    temp = fn2(temp)
  ELSE
    temp = fn3(z)
  ENDIF
  z < 100
}

HalleyCubic {
init:
  Z = #Pixel
  Ca = @Co3
  Cb = @Co2
  Cc = @Co1
  Da = Ca*3
  Db = Cb*2
  Ea = Da*2
  Bailout = @Bailout * @Bailout
loop:
  F = Ca*Z*Z*Z + Cb*Z*Z + Cc*Z - @Root
  G = Da*Z*Z + Db*Z + Cc
  H = Ea*Z + Db
  Z = Z - @Relax * F / (G - (H * F / 2 * G))
bailout:
  |F| > Bailout
default:
  title = "Halley Cubic"
  param Bailout
    default = 0.001
  endparam
  param Root
    default = (1.0, 0.0)
  endparam
  param Relax
    caption = "Relaxation Coef"
    default = (1.0, 0.0)
  endparam
  param Co3
    caption = "Cubic Coef"
    default = (1.0, 0.0)
  endparam
  param Co2
    caption = "Quadratic Coef"
    default = (0.0, 0.0)
  endparam
  param Co1
    caption = "Linear Coef"
    default = (0.0, 0.0)
  endparam
}

