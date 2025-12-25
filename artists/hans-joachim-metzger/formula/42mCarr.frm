Carr2589 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=0.85/(newpixel*5*(exp(newpixel)-flip(0.01/newpixel)-conj(0.1/newpixel)))
  c=0.83/(newpixel*(abs(1.15*newpixel-flip(0.10/newpixel)\
    -conj(0.010/newpixel))))-0.1
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.40/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2590 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=0.85/(tan(newpixel)*(newpixel/2))/(newpixel-sqr(flip(1/newpixel)\
    -sqr(conj(1/newpixel))))
  z=0.83/(newpixel*(abs(1.15*newpixel-flip(0.10/newpixel)\
    -conj(0.010/newpixel))))-0.1
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2591 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=(conj(conj(newpixel^4))/(conj(newpixel^1.5)))-0.35
  z=(flip(flip(newpixel^5))/(flip(newpixel)))-0.5
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.115/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c+0.10/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2592 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(conj(conj(newpixel^4))/(conj(newpixel^1.5)))-0.25
  c=0.8*newpixel-1/log(newpixel-conj(conj(0.10/newpixel))\
    +flip(flip(imag(0.0010/newpixel))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.07/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c+0.120/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2593 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(sinh(sinh(newpixel^4))/(conj(newpixel^1.5)))-0.25
  c=0.5*newpixel-1/log(newpixel-conj(conj(0.10/newpixel))\
    +flip(flip(imag(0.0010/newpixel))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.07/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c+0.120/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2594 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(cos(cos(newpixel^4))/(cotanh(newpixel^1.5)))-0.25
  c=0.5*newpixel-1/log(newpixel-conj(conj(0.10/newpixel))\
    +flip(flip(imag(0.0010/newpixel))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.07/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c+0.130/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2595 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(cosxx(cosxx(newpixel^4))/(cotanh(newpixel^1.5)))-0.15
  c=0.5*newpixel-1/log(newpixel-conj(conj(0.10/newpixel))\
    +flip(flip(imag(0.0010/newpixel))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0005995
  z=(|z|/5)+z*z+c+0.130/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2596 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=0.5*newpixel-1/log(newpixel-conj(conj(0.10/newpixel))\
    +flip(flip(imag(0.0010/newpixel))))
  z=(c+0.0525)-conj(0.10/newpixel)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0005995
  z=(|z|/5)+z*z+c+0.130/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2597 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(conj(newpixel^5))-flip(flip(newpixel)^4)-0.4
  c=(conj(newpixel)^2.5)-(flip(0.010/newpixel))-(conj(0.10/newpixel))-0.5
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2598 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(conj(newpixel^5))-flip(flip(newpixel)^4)-0.4
  c=z-0.0625-conj(0.10/newpixel)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2599 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=exp(conj(conj(newpixel^20))-flip(flip(newpixel)^4)-0.4)-0.5
  c=z-0.0625-conj(0.10/newpixel)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 96msg.frm
}
 
Carr2600 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=exp(conj(conj(newpixel^20))-sin(flip(newpixel)^3)-0.4)-0.5
  c=(z-0.0625-conj(0.10/newpixel))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2601 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=exp(conj(conj(newpixel^20))-sin(flip(newpixel)^3)-0.4)-0.5
  c=newpixel-conj(0.10/newpixel)-flip(0.0010/newpixel)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c+0.05/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2602 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=flip(exp(conj(conj(newpixel^20))-sin(flip(newpixel)^3)-0.4)-0.5)
  c=conj(newpixel-conj(0.10/newpixel)-flip(0.0010/newpixel))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c+0.05/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2603 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(newpixel^20))-sin(flip(newpixel^3.5))-0.4)-0.5)
  c=(-0.7456,-0.132)/2
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2604 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(newpixel^20))-sin(flip(newpixel^3))-0.4)-0.5)
  c=(0.3,0.6)/3
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c          ; +0.05/pixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2605 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(flip(newpixel^20)))-tanh(flip(newpixel^3))-0.4)-0.5)
  c=newpixel-(1/log(newpixel-1/cos(0.010/newpixel))^2.5)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.07/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c+0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2606 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(flip(newpixel^20)))-tanh(flip(newpixel^3))-0.4)-0.5)
  c=(newpixel*(abs(1.15*newpixel-flip(0.0010/newpixel)-conj(0.30/newpixel))))-0.1
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.07/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c+0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2607 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(flip(newpixel^20)))-tanh(flip(newpixel^3))-0.4)-0.5)
  c=(newpixel*(cabs(1.15*newpixel-flip(0.0010/newpixel)-conj(0.30/newpixel))))-0.1
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.07/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2608 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.10/newpixel), b4=conj(1/newpixel)
  z=(exp(conj(conj(flip((newpixel/3-b4)^20)))\
    -cabs(cosxx((newpixel)^5))-0.3)-0.5)
  c=(newpixel*(cosxx(1.15*newpixel-flip(0.01/newpixel)-b3)))-0.15
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.07/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2609 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=flip(conj(0.10/newpixel)), b4=conj(1/newpixel)
  z=(exp(conj(conj(flip((newpixel/4-b4)^20)))\
    -cabs(cosxx((newpixel)^4))-0.3)-0.5)
  c=(newpixel*(cosxx(1.15*newpixel-flip(0.01/newpixel)-b3)))/4.15
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.02/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c+0.16/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2610 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=flip(conj(0.10/newpixel)), b4=conj(1/newpixel)
  b5=cabs(flip(acos(asinh(0.5*newpixel))))
  z=((exp(conj(conj(flip((newpixel/4-b4)^20)))\
    -cabs(cosxx((newpixel)^4))-0.3)-0.5))/(b5-exp(b3))
  c=(newpixel*(cosxx(1.15*newpixel-flip(1/newpixel)-(b3/newpixel))))/4.15
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0005995
  z=(|z|/5)+z*z+c+0.13/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2611 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=flip(conj(0.10/newpixel)), b4=conj(1/newpixel)
  b5=cabs(flip(acos(asin(0.5*newpixel))))
  z=((exp(conj(conj(flip((2*newpixel-b4)^20)))\
    -cabs(cosxx((newpixel)^6))-0.3)-0.5))/(b5-exp(b3))
  c=newpixel/4
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0005995
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2612 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=flip(conj(0.10/newpixel)), b4=conj(1/newpixel)
  b5=cabs(flip(acos(asin(0.5*newpixel))))
  z=((exp(conj(conj(flip((2*newpixel-b4)^20)))\
    -cabs(cosxx((newpixel)^6))-0.3)-0.5))/(b5-exp(b3))
  c=b5*newpixel/4
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0005995
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2613 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=flip(conj(0.10/newpixel)), b4=conj(1/newpixel)
  b5=cabs(flip(acos(asin(0.5*newpixel))))
  z=((exp(conj(conj(flip((2*newpixel-b4)^20)))\
    -cabs(cosxx((newpixel)^6))-0.3)-0.5))/(b5-exp(b3))
  c=(b5*cotanh(newpixel)/4)-0.4
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0005995
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2614 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=flip(conj(0.10/newpixel)), b4=conj(1/newpixel)
  b5=cabs(flip(acos(asin(0.5*newpixel))))
  z=((exp(conj(conj(flip((2*newpixel-b4)^20)))\
    -cabs(cosxx((newpixel)^6))-0.3)-0.5))/(b5-exp(b3))
  c=((b5*conj(conj(newpixel)/4))-0.4)^z*z
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0005995
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2615 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=flip(conj(0.10/newpixel)), b4=conj(1/newpixel)
  b5=cabs(flip(acos(asin(0.5*newpixel))))
  z=((exp(conj(conj(flip((2*newpixel-(b4)*2)^20)))\
    -cabs(cosxx((newpixel)^6))-0.3)-0.5))/(b5-exp(b3))
  c=0.85/(newpixel*5*(exp(newpixel)-flip(0.01/newpixel)-conj(0.1/newpixel)))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0009995
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2616 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(newpixel^20))-cosxx(conj(conj(newpixel^3.5)))-0.4)-0.5)
  c=(flip(imag(0.5-newpixel))*conj(tan(newpixel))\
    -conj(0.10/newpixel)-flip(0.010/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0009995
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2617 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(newpixel^20))-cosxx(conj(conj(newpixel^3.5)))-0.4)-0.5)
  c=(cos(cos(0.5-newpixel))*conj(conj(newpixel))\
    -conj(0.10/newpixel)-flip(0.010/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0009995
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2618 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(newpixel^100))-cosh(conj(conj(newpixel^2.5)))-0.4)-0.5)
  c=conj(acosh(1-newpixel+newpixel))^2-(conj(0.10/newpixel))-(flip(0.010/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0039995
  z=z*z+c+0.29/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2619 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(newpixel^100))-cosh(conj(conj(newpixel^2.5)))-0.4)-0.5)
  c=(newpixel)-0.5/((log(conj(newpixel))^12)+newpixel)+conj(0.0450/newpixel)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2620 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(newpixel^100))-cosh(conj(conj(newpixel^2.5)))-0.4)-0.5)
  c=((newpixel)-0.5/((log(conj(-newpixel))^12)+newpixel)+sqrt(0.0450/newpixel))/0.8
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2621 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=((newpixel)-0.5/((log(conj(-newpixel))^12)+newpixel)+sqrt(0.0450/newpixel))/0.8
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2622 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(newpixel^100))-cosh(conj(conj(newpixel^2.5)))-0.4)-0.5)
  c=(cabs(newpixel)*(sqr(newpixel))\
    -sinh(0.10/newpixel)-sqr(flip(0.00010/newpixel)))/4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2623 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(newpixel^100))-cosh(conj(conj(newpixel^2.5)))-0.4)-0.5)
  c=(newpixel)-1/log(newpixel-1/tan(0.0010/newpixel))^3.5
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
Carr2624 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(newpixel^450))-cosh(conj(conj(newpixel^20.5)))-0.4)-0.5)
  c=(flip(imag(0.33-newpixel))*sqr(newpixel)\
    -conj(0.10/newpixel)-flip(0.010/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}
 
