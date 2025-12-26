CoszzcM {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = controls size of elements
    ; imag(p1)   not used
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    ;
  pw = z = iter = range_num = bailout = 0
  c = pixel
  max_ratio = real(p1)
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  factor = (colors_in_range - 1) / max_ratio
  :
  w = cos(pw * pw) + c
    ;
  ratio = |pw| / |w|
  pw = w
  IF (ratio < max_ratio && iter > 0)
    bailout = 1
    z = factor * ratio + range_num * colors_in_range + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 1.0e20
  ;SOURCE: 98msg.frm
}
 
