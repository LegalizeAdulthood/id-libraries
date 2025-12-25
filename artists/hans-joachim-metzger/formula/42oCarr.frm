Carr2658 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=0.3*(newpixel)/cotanh(1/cotanh(newpixel/2))\
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
  ;SOURCE: 42ocarr.frm
}
 
Carr2659 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=0.3*(newpixel)/cos(1/cotanh(newpixel))\
    -0.5/log(newpixel-0.7/sqrt(0.50/newpixel))^2.5-conj(0.05/newpixel)+0.2
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
  ;SOURCE: 42ocarr.frm
}
 
Carr2660 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=0.3*1/log(newpixel)/cotanh(1/cotanh(newpixel))\
    -0.5/log(newpixel-0.7/sqrt(0.50/newpixel))^2.5-conj(0.05/newpixel)+0.2
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0032995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2661 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(3*newpixel)+conj(newpixel-flip(0.010/newpixel))+0.3
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0032995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2662 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=((newpixel^5)+0.2)/flip(2.5*newpixel)+conj(newpixel-conj(0.30/newpixel))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2663 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=newpixel/2-(conj(0.03/newpixel)-flip(0.0030/newpixel)+0.055/newpixel)+0.15
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2664 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=((newpixel^10)+0.1)/flip(2.5*newpixel)\
     +conj(conj(newpixel-conj(0.30/newpixel)))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2665 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=conj(conj(0.2+newpixel/2+conj(newpixel/3+0.2)+flip(newpixel/2+0.2)))-0.3
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2666 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=newpixel/(tanh(0.3/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2667 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(newpixel+0.2)/(cosh(0.3/newpixel-0.2))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2668 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))+exp(0.1/pixel)
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(sinh(tanh(0.63-cos(newpixel)))/(cosxx(2*newpixel+0.6)))-0.3
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2669 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996 YES
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
        -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(sinh(tanh(0.63-cos(newpixel)))/(cosxx(6*newpixel+0.6)))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 96msg.frm
}
 
Carr2670 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(sinh(tanh(0.63-cos(newpixel*3)))/(cosxx(6*newpixel+0.6)))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2671 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(sinh(tanh(0.63-cos(newpixel*3))\
     -exp(0.01/newpixel))/(cosxx(6*newpixel+0.6)))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2672 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))+0.3
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(sinh(tanh(0.63-cos(newpixel*3))\
     -cotan(exp(0.05/newpixel)))/(cosxx(6*newpixel+0.6)))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+flip(flip(0.009/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2673 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  m1=1/newpixel, m=conj(m1), m2=0.125*newpixel+cabs(newpixel^4.9)
  z=m2-tanh(newpixel/3)^2-conj(sinh(newpixel^2.3))+sqr(m/(1.5*m1))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+flip(flip(0.009/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0038995
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2674 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  m1=1/newpixel, m=conj(m1), m2=sqr(sqr(0.125*newpixel+cabs(newpixel^4.9)))
  z=m2-tanh(newpixel/3)^2-conj(tan(newpixel^4.3))+sqr(m/(1.5*m1))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+flip(flip(0.009/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0028995
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2675 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  m=tan(newpixel)-tanh(newpixel)
  z=2*m+flip(newpixel/2)+0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+conj(conj(0.009/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0028995
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2676 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  m=tan(newpixel)-tanh(newpixel)
  z=15*m+flip(newpixel/2)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+conj(conj(0.009/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0028995
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2677 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(cosh(newpixel^4)-cos(newpixel^2))+conj(0.1/newpixel)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.25
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0034995
  z=z*z+c+0.2/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2678 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=flip(conj(abs((newpixel/3))))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.25
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0035995
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2679 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=flip(conj(abs((newpixel/3))))-conj(0.1/newpixel)+0.075
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.25
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0035995
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2680 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=newpixel/c*c-(conj(0.1/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.25
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0035995
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2681 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=flip(flip(newpixel/2^1.75))-conj(conj(0.1/newpixel))^4
  b3=cosh(conj(conj(newpixel^30.5)))
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.25
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0035995
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2682 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=flip(flip(pixel/2^1.75))-conj(conj(0.1/pixel))^4
  b3=cosh(conj(conj(pixel^30.5)))
  c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.25
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0035995
  z=(pixel-(z*z+c)/(pixel-(0.4/c)))-0.35
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2683 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=cos(newpixel)-exp(0.09/newpixel)-|conj(0.1/newpixel)|-flip(0.1/newpixel)-0.3
  b3=cos(conj(conj(newpixel^30.5)))
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0033995
  z=z*z+c+0.08/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2684 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=newpixel/2-conj(asin(newpixel+newpixel+0.32))
  b3=cos(conj(conj(newpixel^30.5)))
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))+z
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029995
  z=z*z+c+0.08/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2685 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=newpixel/2-1/cos(asin(3*newpixel+0.52))+flip(0.1/newpixel)
  b3=cos(conj(conj(newpixel^30.5)))
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))+z
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020095
  z=(|z|/5)+z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2686 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=newpixel/2-|1/cos(asin(3*newpixel+0.52))|+flip(0.1/newpixel)
  b3=cos(conj(conj(newpixel^30.5)))
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))+z
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020095
  z=(|z|/5)+z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2687 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=|newpixel/2|-1/cos(asin(3*newpixel+0.52))+flip(0.1/newpixel)
  b3=cos(conj(conj(newpixel^30.5)))
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))+z
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029095
  z=(|z|/5)+z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2688 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=newpixel/2-1/cos(asin(3*newpixel+0.52))+flip(0.1/newpixel)
  b3=|cos(conj(conj(newpixel^30.5)))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))+z
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029095
  z=(|z|/5)+z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2689 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  m3=cabs(newpixel+0.5)*conj(conj(newpixel^7))
  z=(m3-conj(0.10/newpixel)-sqr(flip(0.00510/newpixel)))
  b3=|cos(conj(conj(newpixel^30.5)))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))+conj(z)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029095
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2690 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=(flip(flip(newpixel))^6-1/(atan(1/newpixel)-cabs(acos(2/newpixel)))^6)-0.3
  b3=|cos(conj(conj(newpixel^30.5)))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))\
     +conj(conj(z))-0.3
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029095
  z=z*z+c-0.185/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2691 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=(flip(abs(newpixel))^4/(flip(asinh(newpixel))))-0.2
  b3=|cos(conj(conj(newpixel^30.5)))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))\
     +|flip(flip(2*z^4))|
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029095
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2692 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -|cos(conj(conj(newpixel^30.5)))|-0.4)-0.8)))
  z=(sinh(tanh(0.63-cos(newpixel)))/(cosxx(6*newpixel+0.6)))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
Carr2693 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=((flip(abs(newpixel))^8/(flip(asinh(newpixel)))))-flip(0.1/newpixel)-0.2
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^4))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0047095
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}
 
