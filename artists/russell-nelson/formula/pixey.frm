Comment {
PIXEY.FRM by Don Archer, CIS 71544,657
October, 1995
These formulas are derivative. They largely draw Mandelbrot- or Julia-
style images of some complexity. Many of the formulas draw "discontinuous"
images in which faultlines break the image into discrete parts.
}

pixey00 (XAXIS_NOPARM) {
   z = pixel + p1:
   z = z*z + pixel
   z <= 4
 }

pixey01 {
   z = pixel + p1:
   z = z^2.71828182845905 + pixel
   z <= 4
 }

pixey02 {
   z = pixel + p1, c = pixel:
   temp = z
   z = z*z + pixel + c
   pixel = temp
   z <= 4
 }

pixey03 {
   z = pixel
   x = real(z + p1), y = imag(z + p2):
   x = fn1(x*x - fn2(y*y))
   y = fn3(y*y - fn4(x*x))
   z = x*x + y*y
   |z| <= 4
   }

pixey04  {
   z = pixel + p1
   c = pixel:
   z = fn1(z*2.71828182845905) + fn2(c)
   |z| <= 16
}

pixey05  {
   z = pixel + p1
   c = pixel:
   z = fn1(z^2.71828182845905) + fn2(c)
   |z| <= 16
}

pixey06  {
   z = pixel + p1
   c = pixel:
   z = fn1(z)^2.71828182845905 + fn2(c)
   |z| <= 16
}

pixey07  {
   z = pixel + p1
   c = pixel:
   z = fn1(z-1/pixel)^2.71828182845905 + fn2(c)
   |z| <= 16
}

pixey08 {
   z = pixel + p1
   c = pixel - fn1(z):
   c = pixel + c/z
   z = c - z*pixel
   |z| <=16
}

pixey09 {
   z = pixel + p1
   c = fn1(pixel - fn2(z)):
   z = c - z*pixel
   |z| <=16
}

pixey10 {
   z = fn1(pixel + p1)
   c = fn2(pixel - sqr(z)):
   z = c - z*pixel
   |z| <=16
}

pixey11 {
   z = fn1(pixel + p1)
   c = fn2(pixel - sqr(z)):
   z = (c - z*pixel)/(pixel - c*c)
   |z| <=16
}

pixey12  {
   z =fn1(pixel + p1)
   c =fn2(pixel - sqr(z)):
   z =c + z^2.71828182845905 - 1
   |z| <=16
}

pixey13 {
   z = fn1(pixel + p1)
   c = fn2(pixel - sqr(z)):
   z = z^2.71828182845905 + c
   |z| <=16
}
