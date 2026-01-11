M-SetInNewton(XAXIS) {; use float=yes
                      ; jon horner 100112,1700, 12 feb 93
  z = 0,  c = pixel,  cminusone = c-1:
  oldz = z,  nm = 3*c-2*z*cminusone, dn = 3*(3*z*z+cminusone),
  z = nm/dn+2*z/3,   |(z-oldz)|>=|0.01|
 }

F'M-SetInNewtonA(XAXIS) {; use float=yes
                      ; jon horner 100112,1700, 12 feb 93
  z = 0,  c = fn1(pixel),  cminusone = c-1:
  oldz = z, nm = p1*c-2*z*cminusone, dn = p1*(3*z*z+cminusone),
  z = nm/dn+2*z/p1, |(z-oldz)|>=|0.01|
 }

; #: 14384 S4/Fractal Sources
;    16-Feb-93 15:55:32
;Sb: #14099-Newtons Mandelbrot
;Fm: Chuck Ebbert 76306,1226
;To: Jon Horner 100112,1700 (X)

;Jon, your formula led to these:

F'M-SetInNewtonB(XAXIS) { ; use float=yes, periodicity=no
  ; set p1 >= 3, 1e-30 < p2 < .01
  z=0, c=fn1(pixel), cm1=c-1, cm1x2=cm1*2, twoop1=2/p1, p1xc=c*real(p1):
   oldz = z,
   z= (p1xc - z*cm1x2 )/( (sqr(z)*3 + cm1 ) * real(p1) ) + z*real(twoop1),
    |z - oldz| >= p2
 }

 F'M-SetInNewtonC(XAXIS) { ; same as F'M-SetInNewtonB except for bailout
  ; use float=yes, periodicity=no
  ; (3 <= p1 <= ?) and (1e-30 < p2 < .01)
  z=0, c=fn1(pixel), cm1=c-1, cm1x2=cm1*2, twoop1=2/p1, p1xc=c*real(p1):
   z = (p1xc - z*cm1x2 )/( (sqr(z)*3 + cm1 ) * real(p1) ) + z*real(twoop1),
    abs(|z| - real(lastsqr) ) >= p2
 }


MandNewt04 {; Jim Muth
  z=c=pixel:
  a=z^3+(c-1)*z-c
  b=p1*z^2+c-1
  z=z-p2*a/b
  p3 <= |a|
  ;SOURCE: 98msg.frm
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
