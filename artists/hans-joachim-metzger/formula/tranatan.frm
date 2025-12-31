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
  ;SOURCE: 98msg.frm
}

