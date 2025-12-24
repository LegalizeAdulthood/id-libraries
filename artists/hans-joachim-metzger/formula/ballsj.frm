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
}
