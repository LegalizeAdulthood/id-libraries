13m (YAXIS) {; Modified Sylvie Gallet frm.
             ; Added variable "newpixel". G. Martin, 6/27/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=newpixel/pi
  d1=(0.00099475/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=(z*(1-test))+flip(imag(0.03750/newpixel)) * (z^2+c-0.1/newpixel)
  c=c*(1-test)+d1+test*(-flip(abs(p2*c+p3)))
  z=z^2+c-0.1/newpixel
  iter=iter+1
  |z|<=16
  ;SOURCE: bej0015.frm
}

BJ-SG-5-07-c {; Modified Gallet 5-07
              ; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = fn3(z*(0,1)), y = fn4(z*(0,-1)) :
  hx = p1*fn1(x), hy = p1*fn2(y)
  x = x + hy, y = y + hx
  z = x + flip(y)
  (|hx|+|hy|) <= p2
  ;SOURCE: 96msg.frm
}

Gallet-4-02 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, h = p1, a = p2 :
   x = real(z), y = imag(z)
   y1 = y + fn2(x + a*fn1(x+h))
   x1 = x - fn2(y + a*fn1(y+h))
   z = x1 + flip(y1)
    |z| <= 16
  ;SOURCE: gallet-4.frm
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

Gallet-5-08 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) + fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) + fn3(p3*x))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-5.frm
}

Gallet-5-09 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = pixel * (whitesq - 0.5*(whitesq == 0 )) :
   x = real(z), y = imag(z)
   x1 = x - p1 * fn1(y + p2*fn2(y))
   y1 = y - p1 * fn1(x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 64
  ;SOURCE: gallet-5.frm
}

