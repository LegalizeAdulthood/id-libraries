Zeppo {; Mutation of 'Liar4'.
    ; Original formula by Chuck Ebbert [76306,1226]
    ; Modified for if..else logic 3/19/97 by Sylvie Gallet
    ; For 'Liar4' set FN1 & FN2 =IDENT and P1 & P2 = default
    ; p1 & p2 = Parameters (default 1,0 and 0,0)
   z = pixel
    ; The next line sets p=default if p1=0, else p=p1
   IF (real(p1) || imag(p1))
      p = p1
   ELSE
      p = 1
   ENDIF
   :
   z = fn1(1-abs(imag(z)*p-real(z))) +          \
       flip(fn2(1-abs(1-real(z)-imag(z)))) - p2
   |z| <= 1
  ;SOURCE: fract196.frm
}
 
MyEqn_Julia-sg {; Copyright (c) Paul W. Carlson, 1998
    ; p1       = Julia set coordinates
    ; real(p2) = selects rendering method
    ; imag(p2) = a factor controlling the size of the elements
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
  z = k = iter = range_num = bailout = 0
  IF (p1 || flip(p1))
    c = p1
  ELSE
    c = pixel
  ENDIF
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
  ;SOURCE: sg_misc.frm
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
  ;SOURCE: 98msg.frm
}
 
