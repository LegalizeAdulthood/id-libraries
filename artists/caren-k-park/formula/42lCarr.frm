Carr2559 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-log(conj(newpixel))-log(cosh(newpixel)))
  c=1/(newpixel-sqrt(conj(newpixel))-log(newpixel))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
  z=(|z|/5)+z*z+c+0.59/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
Carr2587 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel*(3*sinh(newpixel)-flip(0.01/newpixel)-conj(0.1/newpixel)))
  c=0.83/(newpixel*(cabs(2.15*newpixel-flip(0.10/newpixel)-conj(0.010/newpixel))))-0.1
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.10/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
