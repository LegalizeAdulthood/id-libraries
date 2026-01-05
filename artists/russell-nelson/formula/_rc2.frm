Carr2949 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(sqr(pixel))/(conj(2/pixel)*sin(2/pixel))
  b5=(b4/(cos(-0.7456,0.2)))-flip(0.1/pixel)+0.4
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.132)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42vcarr.frm
}
Carr2907 (XYAXIS) {; Halley PHC
                   ; passes=1 needs to be used with this PHC formula.
  b5=1/pixel
  z=b5*(whitesq+b5*(whitesq==0)):
  z5=z*z*z*z*z
  z6=z5*z
  z7=z6*z
  z=(z-p1*((z7-z)/((14.0*z6-2)-(84.0*z5)*(z7-z)/(28.0*z6-4))))
  0.0001<=|z7-z|
  ;SOURCE: 42ucarr.frm
}
Carr2926 {; Modified-inandout04
          ; passes=1 needs to be used with this PHC formula.
  k=((1)*(|p1|<=0)+p1)
  test=(4*(real(p2)<=0)+real(p2)*(0<p2))
  b4=cabs(pixel*2)-log(conj(0.5/pixel))
  b5=oldz=pixel-conj(pixel-1/log(tan(1/pixel))-1/log(2/pixel))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
  a=(|z|<=|oldz|)*(c)
  b=(|oldz|<|z|)*(c*k)
  c=(a+b)
  oldz=z
  z=z*z+c
  |z|<=test
  ;SOURCE: 42vcarr.frm
}
Carr2882 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b3=|sin(conj(conj(pixel^30.5)))|
  b4=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))
  b5=(-0.7564,0.21978)*((-1.099,-0.2249)/(-0.8606,-0.0959))\
      -flip(0.001/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}
Carr2904 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(pixel-conj(0.1/pixel-flip(0.01/pixel)))^5
  b4=pixel-conj(0.1/pixel-flip(0.01/pixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  c=((z+c/2.125)-0.0125)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}
