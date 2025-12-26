kg1402 {
  z = y = pixel+p2:
  z = fn1(z) / fn2(y) 
  y = fn1(y) / fn2(z)   
  |z| <= p1
  ;SOURCE: kg14.frm
}
 
kg1403 {
  z = y = pixel*p2:
  z = fn1(z) * fn2(y) 
  y = fn1(y) * fn2(z)   
  |z| <= p1
  ;SOURCE: kg14.frm
}
 
limerick {; Bradley Beacham  [74223,2745]
          ; Just an experiment -- nothing earth-shaking...
  z = c = pixel, test = p1 + 4:
  z = fn1(z)
  z = fn1(z)
  z = fn2(z)
  z = fn2(z)
  z = fn1(z) + c
  |z| < test
  ;SOURCE: zsazsa.frm
}
 
wiltetrate {; by me
  z = pixel :
  z=z^(cotanh(z^.5))+pixel
  |z|<=4
  ;SOURCE: wilson.frm
}
 
kquat_Celtic {; adapted from Paul Carlson by Kathy Roth
              ; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the width of the stalks
    ;   imag(p2) = maximum iterations for stalks
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a color range
    ;****************************************************
  w = pixel
  c = p1
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  stalk_width = real(p2)
  max_iter = imag(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  ratio = (colors_in_range - 1) / stalk_width
  :
    ;
  w = w * w * w * w, wr = real(w)
  w = w - wr + abs(wr) - c
    ;
  IF (abs(real(w)) <= abs(imag(w)))
    min_dist_to_axis = abs(real(w))
  ELSE
    min_dist_to_axis = abs(imag(w))
  ENDIF
  IF (min_dist_to_axis < stalk_width && iter > 1 && iter <= max_iter)
    z = ratio * min_dist_to_axis + range_num * colors_in_range + 1
    bailout = 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < 4
  ;SOURCE: 98msg.frm
}
 
