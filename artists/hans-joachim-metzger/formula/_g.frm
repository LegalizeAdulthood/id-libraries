Gallet-5-08 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) + fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) + fn3(p3*x))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-5.frm
}
 
Gallet-4-06 {; Sylvie Gallet [101324,3444], 1996
             ; PTC formula
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = -0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z = c * pixel :
   x = real(z), y = imag(z)
   x1 = x - p1 * fn1(y*y + p2*fn2(y))
   y1 = y - p1 * fn1(x*x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
  ;SOURCE: gallet-4.frm
}
 
Carr2587 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel*(3*sinh(newpixel)-flip(0.01/newpixel)-conj(0.1/newpixel)))
  c=0.83/(newpixel*(cabs(2.15*newpixel-flip(0.10/newpixel)-conj(0.010/newpixel))))-0.1
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.10/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Gallet-5-03 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x*x + p1*fn1((y) + fn2(p2*y))
   y1 = y*y + p1*fn1((x) + fn2(p2*x))
   x = x1, y = y1
   z = fn3(x * y)
    |z| <= p3
  ;SOURCE: gallet-5.frm
}
 
PD_207 {
  z = pixel
  x = real(pixel), y = imag(pixel)
  c = fn1(x^p1) + fn1(y^p1):
  z = fn2(fn3(z^p2)) + fn4(c)
  |z| <= p3
  ;SOURCE: pdg02.frm
}
 
Gallet-4-07 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = 10 * pixel, bailout = real(p3)
   c = p1 * (whitesq + (0,1) * (whitesq == 0)) :
   test = flip(c*z) >= 0
   z = (z - p2 * (test - (test == 0))) * c
    abs(real(z)) < bailout || abs(imag(z)) < bailout
  ;SOURCE: gallet-4.frm
}
 
