13h {; Modified Sylvie Gallet frm.
     ; Added variable "newpixel". G. Martin, 6/27/99
  newpixel=-flip(-abs(pixel*(fn1(sqrt(pixel*1)))))
  z = newpixel 
  c = fn2(sqrt(flip(pixel^z))) * (0.0803645521966,0.01745329252) 
  d1=(0.00099475/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=(z*(1-test))+flip(imag(0.03750/newpixel))* (whitesq == 0)\ 
      + (fn4(atanh(abs(sqr(newpixel))))) * whitesq 
  c=c*(1-test)+d1+test*(p2*c)
  z=fn3(z^2)+(c/p3)-0.1/newpixel
  iter=iter+1
  |z|<=16
  ;SOURCE: bej0015.frm
}
 
BEJ-N241 {
  z=c=sin(acos(tan(log(pixel*p1))))* whitesq + (pixel) * (whitesq == 0):
  z=sqr(z)+c
  |real(z)|<16
  ;SOURCE: bej0015.frm
}
 
BEJ-N262 {
  z=pixel, x=real(z), y=imag(z):
  x=fn1(z*x)
  z=fn2(y+z)
  |z|<16
  ;SOURCE: bej0015.frm
}
 
BJ-SG-5-07-a {; Modified Gallet 5-07
              ; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = z*(0,1), y = (whitesq == 0) + (z*(0,-1)) * whitesq:
  hx = p1 * fn1(x), hy = p1*fn2(y)
  x = x + hy, y = y + hx
  z = x + flip(y) 
  (|hx|+|hy|) <= p2
  ;SOURCE: 96msg.frm
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
 
Gallet-5-07 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = z*(0,1), y = z*(0,-1) :
   hx = p1*fn1(x), hy = p1*fn2(y)
   x = x + hy, y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) <= p2
  ;SOURCE: gallet-5.frm
}
 
NY002 { 
  z=pixel, c=fn1(z), zc=fn2(c+z):
  z=fn3(zc)-fn4((z*z)+c)
  |z|<16
  ;SOURCE: bej0015.frm
}
 
