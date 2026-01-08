

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
    ELSEIF (wr * wr + (wi + .5) * (wi + .5) < ball_size)
      bailout = 1
      delta = ball_size - (wr * wr + (wi + .5) * (wi + .5))
    ELSEIF ((wr - .5) * (wr - .5) + wi * wi < ball_size)
      bailout = 1
      delta = ball_size - ((wr - .5) * (wr - .5) + wi * wi)
    ELSEIF ((wr + .5) * (wr + .5) + wi * wi < ball_size)
      bailout = 1
      delta = ball_size - ((wr + .5) * (wr + .5) + wi * wi)
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
  ;SOURCE: 97msg.frm
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
  w = pixel, y = 0
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
    ELSEIF (|w + (0,0.5)| < ball_size)
      bailout = 1
      delta = ball_size - |w + (0,0.5)|
    ELSEIF (|w - 0.5| < ball_size)
      bailout = 1
      delta = ball_size - |w - 0.5|
    ELSEIF (|w + 0.5| < ball_size)
      bailout = 1
      delta = ball_size - |w + 0.5|
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
  ;SOURCE: 97msg.frm
}


bshng84 {;by Kovari Janos
 a = pixel,b = pixel,z = pixel:
 a = real(fn1(a))
 b = real(fn2(b))
 z = fn3(z) + a + flip(b)
 |z| <= p1
  ;SOURCE: bshng.frm
}


bshng86 {;by Kovari Janos
 c = abs(cabs(pixel)),k = abs(cabs(fn1(pixel))),z = pixel,i = 0:
 z = z^(c*k)/(i+1) + c*i + k*i
 c = abs(cabs(fn2(c)))
 k = abs(cabs(fn2(k)))
 i = i + 1
 |z| <= p1
  ;SOURCE: bshng.frm
}


bshng95 {;by Kovari Janos
 i = 0,z = pixel,z1 = flip(pixel):
 z1 = z
 z = 2*fn1(z^2/z1) + p1
 if (z > z1)
  i = i + 1
 endif
 i <= real(p2)
  ;SOURCE: bshng.frm
}


candy {
  z = iter = 0 , c = pixel , esc = 10000 , continue = 1
  :
  iter = iter + 1
  if (continue == 1)
    z = z*z + c
    if (|z| > esc)
      if (imag(z) >= 0)
        color = 1 + 5*iter
      else
        color = 4 + 5*iter
      endif
      continue = 0
    endif
  endif
  if (continue == 0)
    z = exp(2*pi*flip(color)/256)
  endif
  continue
  ;SOURCE: candy.frm
}


Cdp_Jul_Mand {; Copyright (c) Paul W. Carlson, 1998
    ; Always use float=y, outside=summ
    ; real(p1) = 0 if Mset, otherwise Julia set
    ; imag(p1) = maximum value of ratio (try 0.01 to 0.3)
    ; p2       = Julia set coordinates (not used if Mset)
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    z = iter = range_num = bailout = 0
    IF (real(p1) == 0)
	prev_w = 0
	c = pixel
    ELSE
	prev_w = pixel
	c = p2
    ENDIF
    max_r = imag(p1)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    colors_in_range_1 = colors_in_range - 1
    :
    w = prev_w * prev_w + c
    ;
    r = |prev_w| / |w|
    prev_w = w
    IF (r < max_r && iter > 0)
	bailout = 1
	z = colors_in_range_1 * r / max_r + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
	range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 4
  ;SOURCE: carlson.frm
}


dmj-Mand-Pnt-Ang-I { ; outside = decomp: angle of closest z[n] to point at p1
	; outside = atan will give a slightly different coloring.
	; This is the angle relative to p1.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + imag(p3)		; Substitute a default value.
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
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = |z2|			; Compute distance to p1 (squared).
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3) || done >= maxit)   ; Point exceeds bailout / inside.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF

	done >= 0			; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


Gallet-5-05 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = z , y = conj(z) :
   hx = p1*fn1(x) , hy = p1*fn2(y)
   x = x + hy , y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) >= p2
  ;SOURCE: gallet-5.frm
}


heart_man {; Kerry Mitchell
        ; See end of formula xlty_jul for Kerry Mitchell's explanation
        ;  of his "fraction" formulas
        ;
        ; colors by how often r < t, where r & t are the
        ; magnitude & polar angle of the fractional part of
        ; the iterate of the Mandelbrot set
        ; fills fractal with little hearts
        ;
        ; real(p1) = bailout (try 4)
        ; imag(p1) = color speed (try 1)
        ; p2 = rounding factor (try 1)
        ; fn1 = rounding function, either round() or trunc()
        ; fn2 = arbitrary function of iterate (try log())
        ; calculation uses variable zc, z used for coloring
        ; use decomp=256
        ;
  zc=0, c=pixel, iter=2, twopi=2*pi, count=0
  maxr=real(p1), speed=imag(p1)*twopi*255/256
  roundfac=p2
  :
        ;
        ; adjust iterate through arbitrary function and find
        ;   fractional part
        ;
  temp=fn2(zc)/roundfac, frac=temp-fn1(temp)
  r=cabs(frac)
  t=cabs(imag(log(frac))/twopi)
        ;
        ; update counter if conditions are right
        ;
  IF (r<t)
    count=count+1
  ENDIF
        ;
        ; bailout
        ;   scale counter into decomposition angle
        ;   set "iteration done" flag (iter = -1)
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    angle=speed*count/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ELSE
    iter=iter+1
    zc=sqr(zc)+c
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


lambdafroth4m(XYAxis){
bailout=(4*(|p2|<=0)+p2)
z=lambda=pixel:
z=lambda*z-lambda/z
z=lambda*z-lambda*fn1(fn2(z))
|z|<=bailout
  ;SOURCE: sg_11.frm
}


Mandel_Squares {; Copyright (c) Paul W. Carlson, 1998
    ; Parameters:
    ;   real(p1) = controls the size of the squares (0.1 to 0.8)
    ;   imag(p1) = 0 if Mset, else Julia set
    ;   p2       = Julia set coordinates
    ;   real(p3) = number of iterations to skip
    ;
    IF (imag(p1) == 0)
	c = pixel
	w = 0
    ELSE
	c = p2
	w = pixel
    ENDIF
    z = bailout = iter = range_num = 0
    shield_size = real(p1)
    skip_iters = real(p3)
    num_ranges = 8
    colors_in_range = 30
    k = 0.5 + shield_size
    j = 0.5 - shield_size
    index_factor = 29 / shield_size:
    ;****************************************************
    w = w * w + c
    ;****************************************************
    awr = abs(real(w)), awi = abs(imag(w))
    IF ((awr < k) && (awr > j) && (awi < k) && (awi > j))
	awr5 = abs(awr - 0.5), awi5 = abs(awi - 0.5)
	IF (awr5 <= awi5)
	    min_dist = awr5
	ELSE
	    min_dist = awi5
	ENDIF
	IF (min_dist < shield_size && iter > skip_iters)
	    z = index_factor * min_dist + range_num * colors_in_range + 1
	    bailout = 1
	ENDIF
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0  && |w| < 1.0e20
  ;SOURCE: carlson.frm
}


MyEqn_Julia-sg {; Copyright (c) Paul W. Carlson, 1998
    ; p1       = Julia set coordinates
    ; real(p2) = selects rendering method
    ; imag(p2) = a factor controlling the size of the elements
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    z = k = iter = range_num = bailout = 0
    if (p1 || flip(p1))
      c = p1
    else
      c = pixel
    endif
    w = pixel
    dist = 1.0e20
    size = imag(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    index_factor = (colors_in_range - 1) / size
    :
    w = 1 / (w * w + c)
    ;
    a = 2 * atan(imag(w) / real(w))                        ;;
    a = a * a + c                                          ;;
    a = exp(1 - a) / a                                     ;;
    dist = abs(|w| - |a|)                                  ;;
    IF (dist < size && iter > 0)
      bailout = 1
      z = index_factor * dist + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
    range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1.0e20
  ;SOURCE: new.frm
}


Newt7_Fang_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = controls element size try 0.01 to 2.0
    ; imag(p1)   not used
    ; p2       = factor, try (1,0)
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    width = real(p1)
    c = pixel
    c2 = c * c, c1 = 1 / c
    root1 = c1
    root2 = -c1
    root3 = c
    root4 = -c
    c41 = c2 * c2+1
    w = sqrt(c41 / (6 * c2))
    z = iter = range_num = bailout = 0
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    colors_in_range_1 = colors_in_range - 1
    :
    w2 = w * w
    w = w - (c2*w2*w2 - c41*w2 + c2) / (4*c2*w2*w - 2*c41*w)
    angle = atan(imag(w) / real(w))
    v = p2 * (fn1(angle)^2 + fn2(angle)^2)
    dist = abs(|w| - |v|)
    IF (dist < width && iter > 0)
        bailout = 1
        index = colors_in_range_1 * dist / width
	z = index + range_num * colors_in_range + 1
    ELSEIF (|w - root1| < 0.00001)
	bailout = 1
	z = 252
    ELSEIF (|w - root2| < 0.00001)
	bailout = 1
	z = 252
    ELSEIF (|w - root3| < 0.00001)
	bailout = 1
	z = 252
    ELSEIF (|w - root4| < 0.00001)
	bailout = 1
	z = 252
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 10000000
  ;SOURCE: carlson.frm
}


Petals_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = radius of the circles
    ;   p2       = circle offset factor
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = 0
    c = pixel
    r = p1
    ro = r + r * p2
    r2 = r * r
    f = 1 - 2 * p2 - p2 * p2
    k = p2 * r + r * sqrt(f)  ;abs val of petal center (k,k)
    plsqd = 2 * r2 * f        ;petal length squared
    z = 0
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    range_num = 0
    iter = 0:
    ;****************************************************
    ; The Carlson Series (I had to name it something)  :)
    ;****************************************************
    w2 = w * w
    w4 = 0.01 * w2 * w2
    w8  = w4 * w4
    w12 = w4 * w8
    w16 = w4 * w12
    w = w2 - w4 - w8 - w12 - w16 + c
    ;****************************************************
    ; Determine which pair of overlapping circles the
    ; orbit point falls in, if any.
    ;****************************************************
    wr = real(w), wi = imag(w)
    c1 = (((wr-ro) * (wr-ro) + wi * wi) < r2)
    c2 = ((wr * wr + (wi+ro) * (wi+ro)) < r2)
    c3 = (((wr+ro) * (wr+ro) + wi * wi) < r2)
    c4 = ((wr * wr + (wi-ro) * (wi-ro)) < r2)
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
    ;
    IF (d > 0)
    ;************************************************
    ; Set z equal to the index into the colormap.
    ;************************************************
    index = colors_in_range * d / plsqd
    z = index + range_num * colors_in_range + 1
    ENDIF
    ;
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    d == 0 && |w| < 1000
  ;SOURCE: carlson.frm
}


Phoenix_Atan {; Copyright (c) Paul W. Carlson, 1998
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = bailout value for real(w)
    ;   imag(p2)   not used
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    prev_w = y = pixel
    c = p1
    z = bailout = iter = range_num = 0
    num_ranges = real(p3)
    colors_in_range = imag(p3):
    ;****************************************************
    w = prev_w * prev_w - 0.5 * prev_w + c
    b = w * w - 0.5 * y + c
    y = w
    w = b
    ;****************************************************
    IF (abs(real(w)) > real(p2))
	delta_i = imag(w) - imag(prev_w)
	delta_r = real(w) - real(prev_w)
	angle = abs(atan(delta_i / delta_r))
	bailout = 1
	range_index = 2 * colors_in_range * angle / pi
	z = range_index + range_num * colors_in_range + 1
    ENDIF
    prev_w = w
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
     ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
  ;SOURCE: carlson.frm
}


quartc {
   ; This makes for an unusual combination of fractal characteristics
   ; Recognizable sin fractal filled with chaotic banding.
   ; Real part of P1 should be about 0.1 and Imag portion can be 0.0
   ; Oh yes! You will have to zoom out to +/- 2pi on the x axis
   ; for full view.
  z=pixel, zp = (0,0), huge = 1.0e32:
  temp = z
  z = sin(z) - zp
  zp = p1/conj(temp),(|zp| <= 4 && |z| <= huge)
  ;SOURCE: noel.frm
}


sfi-p160 { ; Sylvie Gallet, Mar 1998
  z = pixel :
  z = e^(z-1)                       ; z = 1/e * e^z
  if (z >= 50 && cos(imag(z)) >= 0)
    continue = 0
  else
    continue = 1
  endif
  continue
  ;SOURCE: test.frm
}


Trans_Atan_Mset {; Copyright (c) Paul W. Carlson, 1998
    z = prev_w = bailout = iter = range_num = 0
    c = pixel
    max_real = real(p1)
    num_ranges = real(p2)
    colors_in_range = imag(p2):
    ;****************************************************
    w = fn1(prev_w) + c
    ;****************************************************
    IF (abs(real(w)) > max_real)
	angle = abs(atan((imag(w)-imag(prev_w))/(real(w)-real(prev_w))))
	bailout = 1
	z = colors_in_range * (2 * angle / pi + range_num) + 1
    ENDIF
    prev_w = w
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
  ;SOURCE: coshm3.par
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
;   z = fn1(z1)
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
     ;SOURCE: triangl.frm
}


Uc03{; = 2z(2z-1)U02-U01
         ;Prerelease 16/04/1998
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
ax=4*x-2,ay=4*y-2
Tx=fn1(ax*(ax*ax-2))
Ty=fn1(ay*(ay*ay-2))
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout
  ;SOURCE: sg_11.frm
}


Zf_Ang {; Copyright (c) Paul W. Carlson, 1998
    ; p1       = Julia set coordinates
    ; real(p2) = controls size of the elements
    ; imag(p2) = number of iterations to skip
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    z = k = iter = range_num = bailout = 0
    w = pixel
    c = p1
    prev_modw2 = 1.0e20
    size = real(p2)
    skip_iters = imag(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    factor = (colors_in_range - 1) / size
    :
    w = c * (w - 1 / w)
    a = 2 * atan(imag(w) / real(w))
    a = a * a + c
    a = fn1(1 - a) / a
    ;
    dist = abs(|w| - |a|)
    IF (dist < size)
	bailout = 1
	IF (iter > skip_iters)
	    k = 1
	ENDIF
        z = (factor * dist + range_num * colors_in_range + 1) * k
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
	range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1.0e20
  ;SOURCE: izpj.par
}

