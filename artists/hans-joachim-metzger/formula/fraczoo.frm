403 {
  z = x = pixel:
  x = fn1 (z) * fn2 (x)
  z = fn1 (x) + fn2 (z)
  |z| < 11
  ;SOURCE: kg4.frm
}
 
BJ-Lesfrm13-006 {; Les St Clair, 1996
  z = pixel 
  x = fn1(z), y = fn2(z):
  x = fn3(z*x)*p1*pi
  y = fn4(z*y)*p2*pi 
  z = x/y
  |z| <= 4
  ;SOURCE: modles13.frm
}
 
Carr-63 {
  c=z=1/pixel:
  c=tanh(z^c)/z, c=(z*z*z*z*z) + (c/0.9), z=sqr(c*1/pixel)
  |z| <= 4
  ;SOURCE: carr-1.frm
}
 
Celtic_Julia {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the width of the stalks
    ;   imag(p2) = maximum iterations for stalks
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a color range
    ;****************************************************
  w = pixel
  c = p1
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  stalk_width = real(p2)
  max_iter = imag(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  ratio = (colors_in_range - 1) / stalk_width:
    ;
  w = w * w, wr = real(w)
  w = w - wr + abs(wr) - c
    ;
  IF (abs(real(w)) <= abs(imag(w)))
    min_dist_to_axis = abs(real(w))
  ELSE
    min_dist_to_axis = abs(imag(w))
  ENDIF
  IF (min_dist_to_axis < stalk_width && iter > 1 && iter <= max_iter)
    z = ratio * min_dist_to_axis + range_num * colors_in_range + 1
    bailout = 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < 4
  ;SOURCE: 98msg.frm
}
 
gfpcau03 {; Formula by Gedeon Peteri
  z=flip(1/pixel):
  c=asin(imag(z)/cabs(z))
  x=.75*cos(c)-.25*cos(3*c)
  y=.75*sin(c)-.25*sin(3*c)
  z=fn1(z^p1)+p2*fn2(x-flip(y))
  |z|<=p3
  ;SOURCE: fraczoo.frm
}
 
gfpngl01 {; Formula by Gedeon Peteri
  z=fn1(pixel):
  c=asin(imag(z)/cabs(z))
  z=fn2(z^p1) - p2*1/fn3(sqrt(abs(sin(c+pi/3)))+sqrt(abs(sin(c+2*pi/3))))
  |z|<=p3
  ;SOURCE: fraczoo.frm
}
 
gtc08 {; Modified J_Laguerre3
  z = c = pixel:
  z = fn1((z*(z*(-z + 9) -18) + 6 ) / 6 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
 
Jm_07 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3((z^z)*pixel)))*pixel
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Lesfrm01 (xaxis) { 
  c=z=pixel:
  z=z+(fn1(c)/fn2(z))/c^3
  |z| <=4
  ;SOURCE: les.frm
}
 
