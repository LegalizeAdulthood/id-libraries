FB_Halley_M42 {; Copyright (c) Paul W. Carlson, 1998
    ; Always use float=y, outside=summ
    ; p1 = relaxation factor
    ; p2 = radius of center of ring (0.01 to 10)
    ; p3 = one half thickness of ring (0.01 to p2)
  c = pixel, c4 = c*c*c*c
  w = z = iter = bailout = 0
  d0 = p2 + p3
  d1 = 0.382683432365 * p2
  d2 = 0.923879532511 * p2
  dsqd = d0 * d0 + p2 * p2 - (d0 + d0) * d2
  :
  w2 = w * w, fnc = w2 * w2 - c*w - c4, der = 4 * w * w2 - c
  k = p1 * fnc / (der - 12 * w2 * fnc / (der + der))
  w = w - k
    ;
  IF ((abs(cabs(w) - p2) < p3) && iter > 0)
    bailout = 1
    wr = real(w), wi = imag(w)
    awr = abs(wr), awi = abs(wi)
    IF (awr >= awi)
      dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
      adjust = 1
    ELSE
      dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
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
  ELSEIF (|k| < 0.000001)
    bailout = 1
    z = 252
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0
  ;SOURCE: 98msg.frm
}
