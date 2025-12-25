Carr2625 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=((exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^20.5)))-0.4)-0.5))^0.95
  c=newpixel
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
  ;SOURCE: 42ncarr.frm
}
 
Carr2626 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(1/log(exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^50.5)))-0.4)-0.5))
  c=flip(flip(newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2627 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(1/log(exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^50.5)))-0.4)-0.5))
  c=conj(conj(newpixel))-conj(conj(0.10/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2628 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(1/log(exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^50.5)))-0.4)-0.5))
  c=conj(conj(newpixel))-tan(tan(0.10/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2629 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(0.25/log(exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^50.5)))-0.4)-0.8))
  c=(-0.7456,-0.152)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c-0.29/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2630 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^50.5)))-0.4)-0.8)))
  c=acos(1-newpixel+newpixel/5-0.22/newpixel)^2-(conj(0.10/newpixel))\
    -(flip(0.0060/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0022995
  z=z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2631 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^50.5)))-0.4)-0.8)))
  c=cosxx(1-newpixel+newpixel/5-0.22/newpixel)^2-(conj(0.10/newpixel))\
    -(flip(0.0060/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0022995
  z=z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2632 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^50.5)))-0.4)-0.8)))
  c=cotan(1-newpixel+newpixel/5-0.22/newpixel)-(conj(0.10/newpixel))\
    -(flip(0.0060/newpixel))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0022995
  z=z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2633 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^50.5)))-0.4)-0.8)))
  c=cotan(1-newpixel+newpixel/5-0.22/newpixel)\
    -cabs(conj(0.10/newpixel))-abs(flip(0.0060/newpixel))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0022995
  z=z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2634 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^50.5)))-0.4)-0.8)))
  c=((newpixel+newpixel/5)\
    -0.45/log(sin(newpixel-log(1/log(0.005550/newpixel)))))+0.2
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
  z=z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2635 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^50.5)))-0.4)-0.8)))
  c=(0.67*(sinh(newpixel)+conj(newpixel/5))\
    -0.45/log(cabs(newpixel-log(1/log(0.005550/newpixel)))))+0.2
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2636 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^50.5)))-0.4)-0.8)))
  c=newpixel-tanh(newpixel)/log((tan(newpixel)+sin(newpixel-1)-2.75/newpixel))-0.3
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
  z=(|z|/5)+z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2637 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^40.5)))-0.4)-0.8)))
  c=(acos(1-newpixel+newpixel/1.5)-(conj(0.10/newpixel))\
    -(tanh(0.0025250/newpixel)))-0.3
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
  z=(|z|/5)+z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2638 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=newpixel-tanh(newpixel)/(sqrt(log((tan(newpixel)\
        +sin(newpixel-1)-2.75/newpixel))))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
  z=(|z|/5)+z*z+c-0.09/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2639 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(cabs(0.1/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  c=cabs(newpixel)/(1/log(log((tan(1-1/newpixel)\
    +sin(newpixel-1)-1.75/newpixel))))-0.4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
  z=(|z|/5)+z*z+c-0.09/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2640 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  c=(-0.3159,-0.63555)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2641 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=newpixel
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2642 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(newpixel/2)/(1/log(log((tan(1/newpixel)+sin(newpixel)-1.75/newpixel))))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2643 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(newpixel/2)-1/log(0.10/newpixel)-cos(0.010/newpixel)+conj(0.10/newpixel)+0.75
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2644 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=conj(newpixel/3)*(newpixel+1.25)-(flip(asin(0.010/newpixel))\
    -conj(asin(0.10/newpixel)))+0.25
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0021995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2645 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(newpixel/2-(conj(0.10/newpixel)+flip(conj(0.010/newpixel)))^4)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0021995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2646 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(abs(newpixel/2)-(conj(0.10/newpixel)+flip(conj(0.010/newpixel)))^4)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0021995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2647 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(sinh((newpixel-conj(0.10/newpixel-flip(0.010/newpixel)))))^cosxx(0.5*newpixel)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0021995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2648 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=cabs(newpixel)*sqr(0.33+newpixel)-tanh(0.10/newpixel)\
    -sqr(conj(0.00510/newpixel))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0021995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2649 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=0.75*((newpixel)*sqr(0.33+newpixel)-tanh(0.10/newpixel)\
    +conj(conj(0.002510/newpixel)))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0021995
  z=z*z+c-0.09/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2650 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=conj(conj(sqr(newpixel)))/acos(conj(conj(sqr(newpixel))))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0021995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2651 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(newpixel/2-0.5/log(0.0010/newpixel)-cos(0.010/newpixel+1.25)\
    -conj(0.10/newpixel))+0.07
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2652 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(imag(newpixel/2)-0.5/log(0.0010/newpixel)\
    -cos(0.010/newpixel+1.25)-conj(0.10/newpixel))+0.07
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2653 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(flip(imag(newpixel/1.75))-2/log(0.0010/newpixel)\
    -cos(0.050/newpixel+1.25)-conj(0.10/newpixel))+0.07
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2654 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=flip(imag(0.33-cabs(newpixel)))-conj(0.120/newpixel)-flip(0.010/newpixel)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0036995
  z=z*z+c+0.08/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2655 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
      -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(newpixel/2)-1/log(newpixel-1/tan(0.10/newpixel))^2.5
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0036995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2656 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(newpixel/2)-1/log(newpixel-1/sqrt(0.10/newpixel))^2.5-conj(0.05/newpixel)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0034995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
Carr2657 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=newpixel/cotanh(1/cotanh(newpixel/2))\
    -0.5/log(newpixel-0.7/sqrt(0.50/newpixel))^2.5-conj(0.05/newpixel)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0034995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}
 
