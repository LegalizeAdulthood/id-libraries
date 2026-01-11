JoWe_28_2 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=log(1-sqr(z))
  z=2*fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_31 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  qad=sqr(z)
  z=exp(2*z)*(sqr(qad)-3*qad+6*z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_32 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  qwurz=sqrt(z)
  su=p1^qwurz
  z=log((1+su)/(1-su))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_33 {; Jo Weber [100424,35] 11/1996
         ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=pixel*pixel-(1-pixel)
  z=c=newpixel
  bailout=p3 :
  z=sqrt(p1*exp(z)+c)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_34 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=(exp(z)+1)/(exp(z)-1)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_36 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=z/4-p1*sin(p2*z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_40 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=p1*log(sin(p2*z))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_46 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=p1/(p2*sqr(z)*z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_47 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=sqr(z)*z*sqrt(z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_51m {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=fn1(fn2((p1-z)/(p2+z)))
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_55 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=1+tan(z)+tan(z)^2
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_56 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=sin(z)^3+3*sin(z)^2*cos(z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_61 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z1=sqr(sin(z))
  z=fn1(sin(z)*(3*cos(z)*(sin(z)+2*cos(z))-z1))
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_C_28_5 {; Jo Weber [100424,35] 11/1996
  bailout=p3
  z=pixel
  z=log(1-z)
  z=fn3(p1/fn1(z)+p2/fn2(z))
  c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)):
  z=z*z+c+0.2*pixel
  (|real(z)|) <= bailout
  ;SOURCE: 96msg.frm
}

JoWe_XY_40 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=p1*log(sin(p2*pixel))
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1+fn1(x1+fn2(x1))
  y1=y1+fn1(y1+fn2(y1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

