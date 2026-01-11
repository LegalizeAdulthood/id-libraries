JoWe_xy_01 {; Jo Weber [100424,35] 9/1996
            ; p1 is bailout
  z = pixel, bailout=p1:
  x=real(z), y=imag(z)
  x=p2*x+conj(z), y=p3*y+flip(z)
  z=x+y
  z=sqr(z)
  z=fn1(z)+fn2(z)
  |z|<=bailout
  ;SOURCE: jowe_44.frm
}

JoWe_xy_02 {; Jo Weber [100424,35] 9/1996
            ; p1 is bailout
  z = pixel, bailout=p1:
  x=real(z), y=imag(z)
  x=p2*x+conj(z), y=p3*y+flip(z)
  z=x+y
  z=sqr(z)*z
  z=fn1(z)+fn2(z)
  |z|<=bailout
  ;SOURCE: jowe_44.frm
}

JoWe_xy_03 {; Jo Weber [100424,35] 9/1996
            ; p1 is bailout
  z = c = pixel, bailout=p1:
  x=real(z), y=imag(z)
  x=p2*x+conj(z), y=p3*y+flip(z)
  z=x+y
  z=sqr(z)*z+c
  z=fn1(z)+fn2(z)
  |z|<=bailout
  ;SOURCE: jowe_44.frm
}

JoWe_xy_04 {; Jo Weber [100424,35] 9/1996
            ; p1 is bailout
  z = c = pixel, bailout=p1:
  x=real(z), y=imag(z)
  x=p2*x+conj(z), y=p3*y+flip(z)
  z=x+y
  a1=sqr(z)
  a2=a1*z+c
  z=fn1(z)+fn2(z)
  |z|<=bailout
  ;SOURCE: jowe_44.frm
}

JoWe_xy_05 {; Jo Weber [100424,35] 9/1996
            ; p1 is bailout
  z = c = pixel, bailout=p1:
  x=real(z), y=imag(z)
  x=p2*x+conj(z), y=p3*y+flip(z)
  z=x+y
  a1=flip(z)+c
  a2=a1*z
  z=fn1(z)+fn2(z)/p1
  |z|<=bailout
  ;SOURCE: jowe_44.frm
}

JoWe_xy_06 {; Jo Weber, 9/1996
  z = pixel:
  x=real(z), y=imag(z)
  x=x+fn1(z)^p1, y=y-fn2(z)^p2
  z=x+y
  |z|<=4
  ;SOURCE: 96msg.frm
}

JoWe_xy_07 {; Jo Weber [100424,35] 9/1996
  z = pixel:
  a=real(z), b=imag(z)
  x2=a*fn1(z)/p1, y2=b-fn2(z)*p2
  z=x2+y2
  |z|<=4
  ;SOURCE: jowe_44.frm
}

JoWe_xy_08 {; Jo Weber [100424,35] 9/1996
  z = c = pixel, bailout=p3:
  a=real(z), b=imag(z)
  x2=a+fn1(z)*0.231
  y2=b-fn2(z)*0.531
  z=x2^p1+y2^p2
  z=conj(z)*z
  |z|<=bailout
  ;SOURCE: jowe_44.frm
}

