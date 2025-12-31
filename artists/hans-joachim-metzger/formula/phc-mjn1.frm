PHC-m+j+n-01 {; Sylvie Gallet [101324,3444], 1996
  ; real(p1) = size of the Mandelbrot set
  ; imag(p1) = rotation angle (degrees): negative = clockwise
  ; p2 = parameter for the Julia set
  ; p3 = exponent for the Newton set
  p0 = p3 - 1, iter = tj = tn = tw = 0, odev = tm = 1
  z = cm = pixel * (whitesq == 0) + (exp(-flip(imag(p1)) * 0.01745329252)) * whitesq  / abs(real(p1)) :
   tw = tw || (|z| >= 16) || (iter == 300)
   z = (z*z+cm) * (tw == 0) + z * tw
   z = z * (iter != 300) + pixel * (iter == 300)
   zp0 = z^p0, d = zp0 * p3, n = zp0 * z - 1
   z = (-n/d+z) * tn + z * tm + (z*z+p2) * tj
   iter = iter + 1, odev = (odev == tw)
   tj = (odev == 0) && (iter > 300)
   tn = odev && (iter > 300)
   tm = (iter <= 300)
    tm || ((|z| < 16) && tj) || ((|n| > 0.000001) && tn)
  ;SOURCE: bj-mjn-1.frm
}

