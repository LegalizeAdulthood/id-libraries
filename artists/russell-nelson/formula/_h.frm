ht1 {
   ; Ah! You can use a variable in the
   ; inversion but now check for overflow.
   ; Good results are found when the real part
   ; of p1 is in the range 0.1->1.0
   ; With some sort of special value aprox. 0.148148...
   ; Setting the imaginary part as well causes very strange fractals
  z = pixel, zp=temp=(0,0), huge=1.0e32:
  temp = z
  z = z*z + zp
  zp = p1/temp
  (|zp| <= 64) && (|z| <= huge)
  ;SOURCE: noel.frm
}
HC_Julstar {; a modified Paul W. Carlson formula
            ; cobbled together by P. DiGiorgi - 10/98
  z = w = iter = range_num = bailout = 0
  pts = real(p2)     ; order of radial symmetry
  colors = imag(p2)  ; use (0)2x125 or (1)4x63 or (2)8x30
  pa = abs(real(p3)), pb = imag(p3)
  IF (colors == 1)
    num_r = 4, num_c = 63
  ELSEIF (colors == 2)
    num_r = 8, num_c = 30
  ELSE
    num_r = 2, num_c = 125
  ENDIF
  w = fn3(abs(log(pixel^pts)/pts))
  c = p1
  i = (0,1)
  k = 1.2 - pb
  :
  c = fn1(fn2(c))
  w = w * w, wr = real(w)
  w = w - wr + abs(wr) - c
  angle = atan(imag(w)/wr)
  ka = k * angle / pb
  rw = k * cos(angle) + pb * cos(ka)
  iw = k * sin(angle) + pb * sin(ka)
  ww = rw + i * iw
  IF (real(p3) >= 0)
    ww = fn4(ww)
  ELSE
    ww = fn4(1 - ww)/ww
  ENDIF
  dist = abs(|w|-|ww|)
  IF (dist < pa && iter > 1)
    bailout = 1
    index = num_c * dist / pa
    z = index + range_num * num_c + 1
  ENDIF
  iter = iter + 1
  range_num = range_num + 1
  IF (range_num == num_r)
    range_num = 0
  ENDIF
  z = z - iter
  bailout == 0 && |w| < 10000
}
