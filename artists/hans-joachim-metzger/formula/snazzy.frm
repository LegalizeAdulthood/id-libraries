PopCornJulCplx {; Jon Horner & Bradley Beacham - May 1995
   ; p1 = step size (default 0.05), p2 = parameter (default 3)
   ; p3 = bailout value (default 4)
   ; set co-ords = -3/3/-2.25/2.25, fn1=sin, fn2=tan, fn3=ident, fn4=flip
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  test = (4.0 * ((p3)<=0) + (p3) * (0<p3))
  x = real(pixel), y = imag(pixel):
  newx = x - h*fn1((y) + fn2(k*y))
  newy = y - h*fn1((x) + fn2(k*x))
  x = newx, y = newy
  z = fn3(x) + fn4(y)
  |z| < test
  ;SOURCE: snazzy.frm
}
 
shifter01 {; After shift, switch from z*z to z*z*z
           ; Bradley Beacham  [74223,2745]
           ; Modified for if..else logic 3/18/97 by Sylvie Gallet
           ; P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2 :
  IF (iter <= shift)
     z = z*z + c
  ELSE
     z = z*z*z + c
  ENDIF
  iter = iter + 1
  |z| < test
  ;SOURCE: fract196.frm
}
 
