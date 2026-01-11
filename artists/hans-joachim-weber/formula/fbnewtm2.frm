Flex_Newt2_Mand {; Copyright (c) Paul Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ; p3 = max. |w - previous w| for early bailout
    ;
  c = pixel, c2 = c * c, c41 = c2 * c2 + 1
  w = sqrt(c41/(6*c2)), prev_w = w
  z = iter = bailout = 0
  d0 = p1 + p2
  d1 = 0.382683432365 * p1
  d2 = 0.923879532511 * p1
  dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
  :
  w2 = w * w, w3 = w2 * w, w4 = w2 * w2
  w = w - (c2*w4 - c41*w2 + c2) / (4*c2*w3 - 2*c41*w)
  wr=real(w), wi=imag(w)
  pr=real(prev_w), pm=imag(prev_w)
  IF ((abs(cabs(w) - p1) < p2) && iter > 0)
    bailout = 1
    wr = real(w), wi = imag(w)
    awr = abs(wr), awi = abs(wi)
    IF (awr >= awi)
      dist = (awr - d2)*(awr - d2) + (awi - d1)*(awi - d1)
      adjust = 1
    ELSE
      dist = (awr - d1)*(awr - d1) + (awi - d2)*(awi - d2)
      adjust = 0
    ENDIF
    IF (wr >= 0 && wi >= 0)
      range_num = 1 - adjust
    ELSEIF (wr < 0 && wi >= 0)
      range_num = 2 + adjust
    ELSEIF (wr < 0 && wi < 0)
      range_num = 5 - adjust
    ELSE
      range_num = 6 + adjust
    ENDIF
    ratio = sqrt(dist / dsqd)
    z = 29 * ratio + range_num * 30 + 1
  ELSEIF (|w - prev_w| < p3)
    bailout = 1
    z = 252
  ENDIF
  iter = iter + 1
  prev_w = w
  z = z - iter
  bailout == 0 && |w| < 1.0e20
  ;SOURCE: 98msg.frm
}

