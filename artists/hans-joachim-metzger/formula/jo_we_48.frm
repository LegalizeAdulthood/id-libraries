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
 
JoWe_04b_XY {; Jo Weber [100424,35], 10/1996
             ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=pixel*(-1)^(pixel>0)
  z = newpixel:
  x1=real(z),  y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y2))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_04b_XY {; Jo Weber [100424,35], 10/1996
             ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=pixel*(-1)^(pixel>0)
  z = newpixel:
  x1=real(z),  y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y2))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_06m_04 {; Jo Weber [100424,35], 10/1996
             ; bailout = p3
  z = pixel
  bailout = p3 :
  temp=p1/(fn2(z)*fn3(z))
  a1=1/temp
  a2=pixel^2
  z=a1+a2
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_06m_05 {; Jo Weber [100424,35], 10/1996
             ; bailout = p3
  z = pixel*pixel-(1-pixel)
  bailout = p3 :
  temp=p1/(fn1(z)*fn2(z))
  a1=1/temp
  a2=pixel^2
  z=a1+a2
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_XY_13 {; Jo Weber [100424,35], 10/1996
            ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3(1-pixel):
  x1=real(z),  y1= imag(z)
  x1=p1*x1-fn1(x1-fn2(x1))
  y1=p2*y1-fn1(y1-fn2(y1))
  z=x1+y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_XY_13a {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = sin(pixel)-fn3(1-pixel):
  x1=real(z), y1= imag(z)
  x1=p1*x1+fn1(x1+fn2(x1))
  y1=p2*y1-fn1(y1-fn2(y1))
  z=x1+y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_XY_14a {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3((1-pixel)*(1-pixel)):
  x1=real(z), y1= imag(z)
  x1=p1*x1-fn1(x1-fn2(x1))
  y1=p2*y1-fn1(y1-fn2(y1))
  z=x1+y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_XY_14b {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3((1-pixel)*(1+pixel)):
  x1=real(z), y1= imag(z)
  x1=p1*x1-fn1(x1-fn2(x1))
  y1=p2*y1-fn1(y1-fn2(y1))
  z=x1+y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_XY_14c {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = fn3((1+pixel)*(1+pixel))-conj(pixel)-fn3(flip(1-pixel)):
  x1=real(z), y1= imag(z)
  x1=p1*x1-fn1(x1-fn2(x1))
  y1=p2*y1-fn1(y1-fn2(y1))
  z=x1+y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_XY_16 {; Jo Weber [100424,35], 10/1996
            ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3(1-pixel):
  x1=real(z), y1= imag(z)
  x1=x1-p1*fn1(x1-fn2(x1))
  y1=y1-p2*fn1(y1-fn2(y1))
  z=x1+y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_XY_17 {; Jo Weber [100424,35], 10/1996
            ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3(1-pixel):
  x1=real(z), y1= imag(z)
  x1=x1-p1*fn1(x1-fn2(y1))
  y1=y1-p2*fn1(y1-fn2(x1))
  z=x1*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_XY_17a {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
             ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=abs(real(pixel))+flip(imag(pixel))
  z = newpixel:
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_XY_17a0 {; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3(1-pixel):
  x1=real(z), y1= imag(z)
  x1=x1-p1*fn1(x1-fn2(y1))
  y1=y1-p2*fn1(y1-fn2(x1))
  z=x1/y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_XY_17a2 {; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
              ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=abs(real(pixel))+flip(imag(pixel))
  z = newpixel:
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(y1))
  y1=y1-fn1(y1-fn2(x1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_XY_17a3 {; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
              ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=abs(real(pixel))+flip(imag(pixel))
  z = newpixel:
  x1=real(z), y1= imag(z)
  x1=x1-fn1(y1-fn2(y1))
  y1=y1-fn1(x1-fn2(x1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_XY_17c {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
             ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel-1/(tanh(0.10/newpixel)-sqr(sinh(0.0250/newpixel)))^6:
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_XY_17d {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
             ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=cabs(2*newpixel)-1/(tanh(0.10/newpixel)-sqr(sinh(0.0250/newpixel)))^6:
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_XY_17e {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z=(pixel-conj(0.10/pixel))-0.4, c=2*pixel-1/log(cos(1/pixel)):
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_XY_PHC_14 {; Jo Weber [100424,35], 10/1996
                ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3(1-pixel):
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y2))
  z=p1*x1*whitesq+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_XY_PHC_14c {; Jo Weber [100424,35], 10/1996
                 ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = fn3((1+pixel)*(1+pixel))-conj(pixel)-fn3(flip(1-pixel)):
  x1=real(z), y1= imag(z)
  x1=p1*x1-fn1(x1-fn2(x1))
  y1=p2*y1-fn1(y1-fn2(y1))
  z=x1*whitesq+y1*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_XY_14 {; Jo Weber [100424,35], 10/1996
            ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3(1-pixel):
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y2))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
