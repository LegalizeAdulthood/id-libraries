MandNewt01 {; Jim Muth
  z=c=pixel:
  a=z^3+(c-1)*z-(p1*c)
  b=3*z^2+(p2*c-1)
  z=z-p3*a/b
  .00005 <= |a|
  ;SOURCE: 98msg.frm
}
 
MandNewt03 {; Jim Muth
  z=c=pixel:
  a=z^3+(c-1)*z-c
  b=p1*z^p2+c-1
  z=z-p3*a/b
  .0001 <= |a|
  ;SOURCE: 97msg.frm
}
 
MandNewt05 {; Jim Muth
  z=c=fn1(pixel):
  a=z^2+(c-p1)*z-c
  b=p2*z^2+c-1
  z=z-1*a/b
  p3 <= |a|
  ;SOURCE: 97msg.frm
}
 
MandNewt06 {; Jim Muth
  z=c=(pixel*p1):
  a=z^3+(c-p2)*z-c
  b=p3*z^2+c-1
  z=z-1*a/b
  .000000000000000000000000000001 <= |a|
  ;SOURCE: 97msg.frm
}
 
MandNewt10 {; Jim Muth
            ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  z=g=pixel, a=real(p1), b=imag(p1), c=real(p2)
  d=imag(p2), ee=real(p3), f=imag(p3):
  h=z^a+(g-b)*z-g
  j=c*z^d+g
  z=z-ee*h/j
  f <= |h|
  ;SOURCE: 98msg.frm
}
 
MandNewt12 {; Jim Muth
            ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  z=g=pixel, a=real(p1), b=imag(p1), c=real(p2)
  d=imag(p2), ee=real(p3), f=imag(p3):
  h=z^a+(g-1)*(z-b)
  j=c*z^d+g
  z=z-ee*h/(f*j)
  .0000000000000000000000000000005 <= |h|
  ;SOURCE: 98msg.frm
}
 
