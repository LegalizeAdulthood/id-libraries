Four_Mandels {; Copyright (c) Paul W. Carlson, 1998
              ; Zooming added by Sylvie Gallet, 6/7/98
    ; real(p1) = size factor, upper left  quadrant
    ; imag(p1) = size factor, upper right quadrant
    ; real(p2) = size factor, lower left  quadrant
    ; imag(p2) = size factor, lower right quadrant
    ;
  prev_w = z = bailout = iter = range_num = 0
  w1 = w2 = w3 = w4 = 0
  px = real(scrnpix), py = imag(scrnpix)
  hmx = 0.5 * real(scrnmax)
  hmy = 0.5 * imag(scrnmax)
  IF ((px < 2) || (px > (real(scrnmax) - 3)) || \
       (py < 2) || (py > (imag(scrnmax) - 3))  || \
       ((px > hmx - 2) && (px < hmx + 1))      || \
       ((py > hmy - 2) && (py < hmy + 1)))
    z = 252
    bailout = 1
    IF (px == 0 && py == 0)
      z0 = pixel
    ENDIF
    IF (px == 1 && py == 0)
      delta_x = real(scrnmax) * (pixel - z0)
    ENDIF
    IF (px == 0 && py == 1)
      delta_y = imag(scrnmax) * (pixel - z0)
    ENDIF
  ENDIF
  IF (bailout == 0)
    IF (px < hmx)
      IF (py > hmy)
        c = z0 + 2 * (pixel - z0) - delta_y
        size = real(p2)
        a1 = 0.6, b1 = 0.3, a2 = 0.2, b2 = 0.4
        quad = 3
      ELSE
        c = z0 + 2 * (pixel - z0)
        size = real(p1)
        rad = 0.5
        quad = 1
      ENDIF
    ELSEIF (py > hmy)
      c = z0 + 2 * (pixel - z0) - delta_x - delta_y
      size = imag(p2)
      k = 0.5 + size
      j = 0.5 - size
      quad = 4
    ELSE
      c = z0 + 2 * (pixel - z0) - delta_x
      size = imag(p1)
      quad = 2
    ENDIF
    index_factor = 29 / size
  ENDIF
  :
  IF (bailout == 0)
    IF (quad == 1)
      w1 = w1 * w1 + c
      w = w1
      ang = atan(imag(w1) / real(w1))
      astroid = rad * (cos(ang)^3 + (0,1) * sin(ang)^3)
      dist = abs(|w1| - |astroid|)
    ELSEIF (quad == 2)
      w2 = w2 * w2 + c
      w = w2
      dist = abs(|w2| - .25)
    ELSEIF (quad == 3)
      w3 = w3 * w3 + c
      w = w3
      ang = atan(imag(w3) / real(w3))
      ell1 = a1 * cos(ang) + (0,1) * b1 * sin(ang)
      dist1 = abs(cabs(w3) - cabs(ell1))
      ell2 = b2 * cos(ang) + (0,1) * a2 * sin(ang)
      dist2 = abs(cabs(w3) - cabs(ell2))
      IF (dist1 < dist2)
        dist = dist1
      ELSE
        dist = dist2
      ENDIF
    ELSEIF (quad == 4)
      w4 = w4 * w4 + c
      w = w4
      awr = abs(real(w4)), awi = abs(imag(w4))
      IF ((awr < k) && (awr > j) && \
          (awi < k) && (awi > j))
        awr5 = abs(awr - 0.5), awi5 = abs(awi - 0.5)
        IF (awr5 <= awi5)
          dist = awr5
        ELSE
          dist = awi5
        ENDIF
      ELSE
        dist = 1.0e30
      ENDIF
    ENDIF
  ENDIF
  IF (dist < size && iter > 0)
    bailout = 1
    z = index_factor * dist + range_num * 30 + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == 8)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 4
  ;SOURCE: 98msg.frm
}

