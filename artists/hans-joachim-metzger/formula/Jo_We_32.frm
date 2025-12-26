JoWe_02 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<=0)+p1, q=1*(|p2|<=0)+p2:
  a1=sqr(z), a2=p/a1, a3=q/(sqr(a1)) 
  z=(fn1(a1)+fn2(a2)*fn1(a3))*pixel
  ;SOURCE: jo_we_32.frm
}
 
JoWe_03 (XAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<=0)+p1, q=1*(|p2|<=0)+p2:
  a1=sqr(z), a2=p/a1, a3=q/(sqr(a1)) 
  z=(fn1(a1)+fn2(a2)+fn1(a3))*z
  ;SOURCE: jo_we_32.frm
}
 
JoWe_04 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=fn1(z), a2=p1/a1 
  z=a1+a2+pixel
  ;SOURCE: jo_we_32.frm
}
 
JoWe_04a (XYAXIS) {; Jo Weber [100424,35], 6/1996
                   ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=abs(real(pixel)) + flip(imag(pixel))
  newpixel=real(newpixel) + flip(abs(imag(newpixel)))
  z = newpixel:
  a1=fn1(z), a2=p1/a1 
  z=a1+a2+newpixel
  ;SOURCE: jo_we_32.frm
}
 
JoWe_04b (XYAXIS) {; Jo Weber [100424,35], 6/1996
                   ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=pixel*(-1)^(pixel>0)
  z = newpixel:
  a1=fn1(z), a2=p1/a1 
  z=a1+a2+newpixel
  ;SOURCE: jo_we_32.frm
}
 
JoWe_04c (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=fn1(z), a2=p1/a1 
  z=fn2(a1)+fn3(a2)+pixel
  ;SOURCE: jo_we_32.frm
}
 
JoWe_10 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p = 1*(|p1|<0)+p1:
  a1 = fn1(z), a2=p/a1 
  z = (a1+a2)^pixel
  |z|>=0.1
  ;SOURCE: jo_we_32.frm
}
 
Whatever_01m (XYAXIS) {; Original formula Whatever_the_name
                       ; corrected and modified by 
                       ; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=sqr(z), a2=1/a1 
  z=a1+a2+pixel
  ;SOURCE: jo_we_32.frm
}
 
