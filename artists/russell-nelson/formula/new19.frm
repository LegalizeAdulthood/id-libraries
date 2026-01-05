Euler2_3Way {; Copyright (c) Paul W. Carlson, 1998
    ; real(p3) = escape circle radius squared
    ; imag(p3) = number of iterations to skip
    z = iter = k = range_num = bailout = 0
    w = fn1(pixel)
    prev_modw2 = 1.0e20
    rad2 = real(p3)
    skip_iters = imag(p3)
    num_ranges = 8
    colors_in_range = 30
    colors_in_range_1 = colors_in_range - 1:
    ;
    ;;;;;;;;;; Gedeon's Euler2 equation ;;;;;;;;;;;;;
    w=fn2(w^p1) + p2 * fn3(exp(imag(w) * pi) - 1)
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    IF ((prev_modw2 < rad2) && (|w| > rad2))
	bailout = 1
	IF (iter > skip_iters)
	    k = 1
	ENDIF
	index = colors_in_range_1 * (rad2 - prev_modw2) / rad2
	z = (index + range_num * colors_in_range + 1) * k
    ENDIF
    prev_modw2 = |w|
    range_num = range_num + 1
    IF (range_num == num_ranges)
	range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| <= rad2
}
