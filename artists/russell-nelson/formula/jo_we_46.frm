;; Jo_We_46.frm


JoWe_06m_01 { ; Jo Weber [100424,35], 10/1996
               z = pixel:
               a1=1/fn1(z)
               z=a1+pixel
   }

JoWe_06m_02 { ; Jo Weber [100424,35], 10/1996
               z = pixel:
               z=fn1(z)*fn1(z)*p2-pixel
   }

JoWe_06m_03a { ; Jo Weber [100424,35], 10/1996
               ; bailout = p2
               z = pixel
               bailout=p2:
               a1=fn2(p1/fn1(z))
               z=a1+pixel
               |z|<=bailout
   }

JoWe_06m_03b { ; Jo Weber [100424,35], 10/1996
               ; bailout = p2
               z = pixel
               bailout=p2:
               a1=fn2(p1/fn1(z))
               z=a1+z
               |z|<=bailout
   }

JoWe_06m_05 { ; Jo Weber [100424,35], 10/1996
              ; bailout = p1
               z = pixel
               bailout=p1:
               z=fn1(z*z)*pixel+z
               |z|<=bailout
   }

JoWe_xy_09 { ; Jo Weber [100424,35], 10/1996
  ; bailout = p3
  z = c = pixel
  bailout=p3
  pa1=real(p1), pb1=imag(p1)
  pa2=real(p2), pb2=imag(p2):
  x1=real(z), y1=imag(z)
  x=(x1*pa1-x1*pa2)+c
  y=(y1*pb1-y1*pb2)+c
  z=fn1(x+y)/2
  |z|<=bailout
}

JoWe_xy_10 { ; Jo Weber [100424,35], 10/1996
  ; bailout = p3
  z = c = pixel
  bailout=p3
  pa1=real(p1), pb1=imag(p1)
  pa2=real(p2), pb2=imag(p2):
  x1=real(z), y1=imag(z)
  x=x1*pa1+fn1(z+pa2)
  y=y1*pb1+fn1(z+pb2)
  z=fn2(x+y)
  |z|<=bailout
}

JoWe_xy_11 { ; Jo Weber [100424,35], 10/1996
  ; bailout = p3
  z = c = pixel
  bailout=p3
  pa1=real(p1), pb1=imag(p1)
  pa2=real(p2), pb2=imag(p2):
  x1=real(z), y1=imag(z)
  x=x1*pa1+fn1(z+pa2)
  y=y1*pb1+fn2(z+pb2)
  z=x+y
  |z|<=bailout
}

JoWe_xy_12 { ; Jo Weber [100424,35], 10/1996
  ; bailout = p3
  z = c = pixel
  bailout=p3
  pa1=real(p1), pb1=imag(p1)
  pa2=real(p2), pb2=imag(p2):
  x1=real(z), y1=imag(z)
  x=x1*pa1+fn1(z+pa2)
  y=y1*pb1+fn2(z+pb2)
  z=fn3(x)+fn3(y)
  |z|<=bailout
}
