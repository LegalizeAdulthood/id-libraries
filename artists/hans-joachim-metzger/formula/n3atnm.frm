Newt3_Atan_Mset {; Original formula by Paul Carlson
                 ; with optimizations by Sylvie Gallet
    ; F(w)   = w^3 + (c - 1) * w - c
    ; F'(w)  = 3 * w^2 + c - 1
    ; F''(w) = 6 * w,  so initialize w to zero
    ;
    ; p1 contols the "layering"
    ;
  c = pixel, c1 = c - 1
  z = iter = bailout = prev_w = w = 0
  colors_in_range = 80
  colors_in_range_1 = 79
  k = 0.5 * sqrt(1 - 4 * c)
  root1 = (1,0)
  root2 = -0.5 + k
  root3 = -0.5 - k
  :
    ;
  w2 = w * w
  w = w - (w * (w2 + c1) - c) / (3 * w2 + c1)
    ;
  delta_w = w - prev_w
  IF (|delta_w| < p1)
    angle = atan(imag(delta_w) / real(delta_w))
    IF (delta_w >= 0)
      IF (imag(delta_w) < 0)
        angle = pi + angle
      ELSE
        angle = pi - angle
      ENDIF
    ELSEIF (imag(delta_w) > 0)
      angle = -angle
    ENDIF
    IF (|w - root1| < p1)
      range_num = 0
    ELSEIF (|w - root2| < p1)
      range_num = 1
    ELSEIF (|w - root3| < p1)
      range_num = 2
    ENDIF
    bailout = 1
    z = colors_in_range_1*angle/pi+range_num*colors_in_range+1
  ENDIF
  prev_w = w
  iter = iter + 1
  z = z - iter
  bailout == 0
  ;SOURCE: 98msg.frm
}

