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
 
F'M-SetInNewtonA (XAXIS) {; use float=yes
                          ; jon horner 100112,1700, 12 feb 93
  z = 0,  c = fn1(pixel),  cminusone = c-1:
  oldz = z, nm = p1*c-2*z*cminusone, dn = p1*(3*z*z+cminusone)
  z = nm/dn+2*z/p1
  |(z-oldz)|>=|0.01|
  ;SOURCE: fractint.frm
}
F'M-SetInNewtonC (XAXIS) {; same as F'M-SetInNewtonB except for bailout
                          ; use float=yes, periodicity=no
                          ; (3 <= p1 <= ?) and (1e-30 < p2 < .01)
  z=0, c=fn1(pixel), cm1=c-1, cm1x2=cm1*2, twoop1=2/p1, p1xc=c*real(p1):
  z = (p1xc - z*cm1x2 )/( (sqr(z)*3 + cm1 ) * real(p1) ) + z*real(twoop1)
  abs(|z| - real(lastsqr) ) >= p2
  ;SOURCE: fractint.frm
}
