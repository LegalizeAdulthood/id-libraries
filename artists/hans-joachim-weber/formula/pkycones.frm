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
