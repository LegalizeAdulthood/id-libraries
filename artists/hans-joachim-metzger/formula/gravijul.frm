pd-HC_Grav {; formula by P. DiGiorgi, May, 1998
            ; uses P. Carlson's Hi_Cycle method
            ; applied to the Gravijul formula
            ; by Mark Christenson
  z = w = iter = range_num = bailout = 0
  pa = real(p3), pb = imag(p3)
  w = fn4(pixel)
  c = p2
  i = (0,1)
  k = 1.2 - pb
  :
  u = fn1(w)
  w = fn3(p1/fn2(u*u))
  wr = real(w)
  w = w - wr + abs(wr) - c
  angle = atan(imag(w)/wr)
  ka = k * angle / pb
  rw = k * cos(angle) + pb * cos(ka)
  iw = k * sin(angle) + pb * sin(ka)
  ww = rw + i * iw
  dist = abs(|w|-|ww|)
  IF (dist < pa && iter > 1)
    bailout = 1
    index = 63 * dist / pa
    z = index + range_num * 63 + 1
  ENDIF
  iter = iter + 1
  range_num = range_num + 1
  IF (range_num == 4)
    range_num = 0
  ENDIF
  z = z - iter
  bailout == 0 && |w| < 100
  ;SOURCE: 98msg.frm
}
 
pd-HC_Grav2 {; formula by P. DiGiorgi, May, 1998
             ; P. Carlson's Hi_Cycle method (modified)
             ; applied to Mark Christenson's Gravijul formula
  z = w = iter = range_num = bailout = 0
  pa = real(p3), pb = imag(p3)
  w = pixel
  c = p2
  i = (0,1)
  k = 1.2 - pb
  :
  u = fn1(w)
  w = fn3(p1/fn2(u*u))
  wr = real(w)
  w = w - wr + abs(wr) - c
  angle = atan(imag(w)/wr)
  ka = k * angle / pb
  rw = k * cos(angle) + pb * cos(ka)
  iw = k * sin(angle) + pb * sin(ka)
  ww = rw + i * iw
  ww = fn4(1 - ww)/ww
  dist = abs(|w|-|ww|)
  IF (dist < pa && iter > 1)
    bailout = 1
    index = 63 * dist / pa
    z = index + range_num * 63 + 1
  ENDIF
  iter = iter + 1
  range_num = range_num + 1
  IF (range_num == 4)
    range_num = 0
  ENDIF
  z = z - iter
  bailout == 0 && |w| < 100
  ;SOURCE: 98msg.frm
}
 
