BEJ-N188a {; Double "conj" elimated by G. Martin
  z=pixel, c=pixel, zc=pixel*sin(pixel):
  c=sin(imag(zc))/p1
  z=fn1(z/1)*z+c
  |real(z)|<4
  ;SOURCE: bj-phc02.frm
}
 
BEJ-N205 {
  z=c=pixel, zc=pixel/sqr(pixel*.5):
  c=(zc/p1)/(zc*sqrt(fn1(real(z))+zc))
  z=z*z+c
  |imag(z)|<4
  ;SOURCE: bj-phc02.frm
}
 
BEJ-N219 {; Revised by G. Martin to eliminate assignment to "pixel"
  newpixel=fn2(sqrt(pixel/.5)*pixel)
  z=c=newpixel, zc=newpixel/sqr(newpixel*.5):
  c=((zc/p1)/newpixel)/(zc*sqrt(fn1(real(z))))
  z=z*z+c
  |imag(z)|<4
  ;SOURCE: bj-phc02.frm
}
 
BEJ-N219 {; Revised by G. Martin to eliminate assignment to "pixel"
  newpixel=fn2(sqrt(pixel/.5)*pixel)
  z=c=newpixel, zc=newpixel/sqr(newpixel*.5):
  c=((zc/p1)/newpixel)/(zc*sqrt(fn1(real(z))))
  z=z*z+c
  |imag(z)|<4
  ;SOURCE: bj-phc02.frm
}
 
BEJ-N221 {; Revised by G. Martin to eliminate assignment to "pixel" 
  newpixel=sqr(pixel)*-abs(cosxx(pixel))
  z=c=newpixel/p1:
  z=fn1(z)*z+c
  |real(z)|<4
  ;SOURCE: bj-phc02.frm
}
 
BEJ-N223a {; Revised by G. Martin to eliminate assignment to "pixel" 
  newpixel=sqr(pixel)
  z=newpixel, c=newpixel^z:
  z=fn1(z)*z+((c+newpixel)^c)
  |real(z)/(newpixel*p1)|<4
  ;SOURCE: bj-phc02.frm
}
 
BEJ-N224 {; Revised by G. Martin to eliminate assignment to "pixel" 
  newpixel=flip(-abs(pixel*(pixel*1)))
  z=newpixel, c=fn1(newpixel^z)*.05:
  z=sinh(z*z)*fn2((c*c)*(z*c))+(z*pi)
  z=z*z+c
  |z|<4
  ;SOURCE: bej0015.frm
}
 
BEJ-N227 {; Revised by G. Martin to eliminate assignment to "pixel" 
  newpixel=pixel*(fn1(pixel*pi))
  z = newpixel, c = fn1(flip(newpixel^fn3(z))):
  z = fn2(z * z) + c 
  |z| < 16
  ;SOURCE: bej0015.frm
}
 
BEJ-N229l {; Revised by G. Martin to eliminate assignment to "pixel" 
  newpixel=flip(-abs(pixel*sqrt(pixel*1)))
  z=sqr(atan(sqrt(newpixel))), c=cotan(newpixel^fn1(z)):
  z=fn3(sqr(sin(z*z)))+(acos(c+newpixel)/fn2(c))
  |z|<4
  ;SOURCE: bej0015.frm
}
 
BEJ0002 {
  z=c=pixel, x=y=cos(pixel*0.05):
  z=fn1(z*x+y)
  x=fn2(c*y+z)
  |z|<8
  ;SOURCE: bej0015.frm
}
 
Gallet-4-04 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = pixel * whitesq + (whitesq == 0 ) / pixel :
   x = real(z), y = imag(z)
   x1 = x - p1 * fn1(y + p2*fn2(y))
   y1 = y - p1 * fn1(x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
  ;SOURCE: gallet-4.frm
}
 
