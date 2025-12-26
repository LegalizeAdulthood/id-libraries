05-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + tanh(z) + 0.33/pixel:
  z=sqr(z) + c-0.14
  z=sqr(z) + c-0.14
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-02A {
  c=z=1/pixel:
  z=sqr(z) + .33
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-02B {
  c=z=1/pixel:
  z=sqr(z^z) + .33
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-02C {
  c=z=1/pixel:
  z=sqr(conj(z^z^z^z^z)) + .33
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-02D {
  c=z=(1/pixel)/pixel-0.25:
  z=sqr(z) + 0.33
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-02E {; Try using Distance Estimator function on this formula
  c=z=1/pixel:
  z=sqr(z) + c
  z1=sqr(z) + 0.33
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-03 {
  c = z = 1 / pixel:
  z = sin((z*z) - (aa3*z)) +b
  |z| <= (p2 + 3)
  ;SOURCE: carr.frm
}
 
Carr-05 {
  a=(0,0), b=(0,0): 
  z=z+1
  anew=sqr(a)-sqr(b)+pixel
  b=2.0*a*b+p1
  a=anew
  |a|+|b| <= 4
  c = z = 1 / pixel
  z = sqr(z) + c
  |z| <= 4
  ;SOURCE: carr.frm
}
 
Carr-06 {; was OK-03 and was modified
  z = c = pixel:
  z = cosxx(z)/c
  z = sin(z)
  |z| <= (5 + p1)
  ;SOURCE: carr.frm
}
 
Carr-09 {; was OK-04 and was modified
  z = 0, c = cosxx(pixel):
  z = sqr(z) + c
  |z| <= (5 + p1)
  ;SOURCE: carr.frm
}
 
Carr-10 {
  c=z= 1/pixel:
  z=(tanh(z)*tanh(1/z)*z) + c
  |z| <=(5 + p1)
  ;SOURCE: carr.frm
}
 
Carr-11 {
  c=z=1/pixel:
  z=sqr(z*(z+1.918)) + c
  z=sin(z*z) + c
  |z| <= 4
  ;SOURCE: carr.frm
}
 
Carr-12 {
  c=z=sqr(pixel):
  z=sqr(z) + 2*c
  z=sqr(z) + c
  |z| <= 4
  ;SOURCE: carr.frm
}
 
Carr-74 {
  c=z=1/pixel:
  z=(3.334/sin(z*z)) + (c/pixel)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-83 {
  z=c=1/pixel:
  z=sin(z*z) + (conj(1/pixel))/(0.33/c)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-84 {
  z=c=1/pixel:
  z=sin(z*z) + ((tanh(1/pixel))/(0.33/c))
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-85 {
  z=c=1/pixel:
  z=sqr(z) + c
  z=sqr(z) + conj(c)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-87 {
  z=c=1/pixel:
  z=sqr(z) + c
  z=sin(z) + c
  z=sqr(z) + conj(c)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-90 {
  z=c=1/pixel:
  z=sqr(z) + sqr(c-5)
  z=sin(z*z) + sqr(c-2)
  z=sqr(z) + sqr(c-0.67)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-900 {
  z=cotanh(pixel+1)/imag(1/pixel-0.334)
  c=sqr(sqr(sqr(pixel*1/pixel))):
  z=(z^real(2.124)+c)/1.7
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-902 {
  z=sinh(pixel+1)/imag(1/pixel-0.334)
  c=sqr(sqr(sqr(pixel*1/pixel))):
  z=cotanh(z^exp(2.424)+c)/1.7
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-903 {
  z=1/(pixel*pixel)
  c=imag(1/pixel*0.91/pixel):
  z=(sqr(conj(z))*conj(z)+conj(2.124))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-905 {; Modified Richard frm
  z=1/pixel, c=pixel-sqr(z):
  c=pixel +c/z
  z=c-z*pixel
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
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
 
Primal {; Rollo Silver
        ; Select p1 such that 0. <= p1 <= 1.
  z = c = Pixel, t = real(p1), test = (p2+10)*(p2+10):
  zsq = z*z
  zcu = zsq*z
  z = (1.-t)*zsq + t*zcu + c
  |z| <= test
  ;SOURCE: primal.frm
}
 
