OK-26 {
  z = c = pixel, k = 2 + p1, test = k/(2 + p2):
  a = fn1(z)
  b = (|z| > test)  * (a - c)
  d = (|z| <= test) * (a + c)
  z = b + d
  |z| <= k
  ;SOURCE: overkill.frm
}
 
OK-42 {; MUTATION OF FN + FN
  z = pixel, p1x = real(p1)+1, p1y = imag(p1)+1
  p2x = real(p2)+1, p2y = imag(p2)+1:
  zx = real(z), zy = imag(z)
  x = fn1(zx*p1x - zy*p1y) + fn2(zx*p2x - zy*p2y)
  y = fn3(zx*p1y + zy*p1x) + fn4(zx*p2y + zy*p2x)
  z = x + flip(y)
  |z| <= 20
  ;SOURCE: fractint.frm
}
 
OK-04 {; TRY FN2 = SQR, DIFFERENT FUNCTIONS FOR FN1
  z = 0, c = fn1(pixel):
  z = fn2(z) + c
  |z| <= (5 + p1)
  ;SOURCE: fractint.frm
}
 
OK-21 {
  z = pixel, c = fn1(pixel):
  z = fn2(z) + c
  fn3(z) <= p1
  ;SOURCE: fractint.frm
}
 
OK-34 {; Modified for if..else logic 3/19/97 by Sylvie Gallet
   z = pixel, c = fn1(pixel) * p1, test = 10 + p2 :
   x = abs(real(z)), y = abs(imag(z))
   IF (x <= y)
      z = fn2(z) + y + c
   ELSE
      z = fn2(z) + x + c
   ENDIF
   |z| <= test
  ;SOURCE: fract196.frm
}
 
OK-43 {; DISSECTED SPIDER
   ; TO GENERATE "STANDARD" SPIDER, SET P1 = 0,0 & ALL FN = IDENT
  z = c = pixel, k = 2 + p1:
  zx = real(z), zy = imag(z)
  cx = real(c), cy = imag(c)
  x = fn1(zx*zx - zy*zy) + cx
  y = fn2(k*zx*zy) + cy
  z = x + flip(y)
  c = fn3((cx + flip(cy))/k) + z
  |z| <  (10 + p2)
  ;SOURCE: fractint.frm
}
 
OK-01 {; TRY P1 REAL = 10000, FN1 = SQR
  z = 0, c = pixel:
  z = (c^z) + c
  z = fn1(z)
  |z| <= (5 + p1)
  ;SOURCE: fractint.frm
}
 
OK-35 {; Modified for if..else logic 3/19/97 by Sylvie Gallet
   z = pixel, k = 1 + p1, test = 10 + p2 :
   v = fn1(z), x = z*v, y = z/v
   IF (|x| <= |y|)
      z = fn2((z + y) * k * v) + v
   ELSE
      z = fn2((z + x) * k * v) + v
   ENDIF
   |z| <= test
  ;SOURCE: fract196.frm
}
 
OK-08 {
  z = pixel, c = fn1(pixel):
  z = z^z / fn2(z)
  z = c / z
  |z| <= (5 + p1)
  ;SOURCE: fractint.frm
}
 
OK-22 {
  z = v = pixel:
  v = fn1(v) * fn2(z)
  z = fn1(z) / fn2(v)
  |z| <= (5 + p1)
  ;SOURCE: fractint.frm
}
 
OK-32 {; Modified for if..else logic 3/19/97 by Sylvie Gallet
   z = y = x = pixel, k = 1 + p1, test = 5 + p2 :
   a = fn1(z)
   IF (a <= y)
      b = y
   ELSE
      b = x
   ENDIF
   x = y, y = z, z = a*k + b
   |z| <= test
  ;SOURCE: fract196.frm
}
 
OK-36 {; DISSECTED MANDELBROT
   ; TO GENERATE "STANDARD" MANDELBROT, SET P1 = 0,0 & ALL FN = IDENT
  z = pixel, cx = fn1(real(z)), cy = fn2(imag(z)), k = 2 + p1:
  zx = real(z), zy = imag(z)
  x = fn3(zx*zx - zy*zy) + cx
  y = fn4(k * zx * zy) + cy
  z = x + flip(y)
  |z| <  (10 + p2)
  ;SOURCE: fractint.frm
}
 
OK-12 {; TRY FN1 = SQR, FN2 = SQR
  z = c = pixel:
  z = fn1(z) + c
  z = fn2(z) / c
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}
 
