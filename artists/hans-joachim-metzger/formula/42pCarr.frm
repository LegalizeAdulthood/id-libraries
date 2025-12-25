Carr2695 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  m3=conj(0.10/newpixel)
  z=tanh(newpixel/2)-2*conj(m3)^3-conj(0.1/newpixel)-flip(0.1/newpixel)
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^10))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -conj(b3)-0.4)-0.8))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0048095
  z=z*z+c-0.15    ; +0.1/pixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2696 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=(newpixel/(cabs(0.3/newpixel)))-flip(0.010/newpixel)
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^10))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -conj(b3)-0.4)-0.8))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0048095
  z=z*z+c+0.12/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2697 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel
  b3=|1/acos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^10))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-conj(b3)-0.4)-0.8))))+b4
  d1=(0.00099475/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=(z*(1-test))+flip(imag(0.03750/newpixel)) 
  c=c*(1-test)+d1+test*(p2*c+p3)
  z=z^2+c+0.08/newpixel
  iter=iter+1
  |z|<=16
  ;SOURCE: 42pcarr.frm
}
 
Carr2698 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel-1/log(newpixel-1/log(tan(1/newpixel))-1/log(2/newpixel))
  b3=|1/acos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^10))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-conj(b3)-0.4)-0.8))))+b4
  d1=(0.00099475/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=(z*(1-test))+flip(imag(0.03750/newpixel)) 
  c=c*(1-test)+d1+test*(p2*c+p3)
  z=z^2+c+0.1
  iter=iter+1
  |z|<=16
  ;SOURCE: 42pcarr.frm
}
 
Carr2699 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=conj(flip(newpixel/3))-|sinh(newpixel)^3|
  b3=(|1/acos(conj(conj(newpixel^30.5)))|), b4=|flip(flip(2*z^10))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-(b3)-0.4)-0.8))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0048095
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2700 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=conj(flip(newpixel/3))-|conj(newpixel)^3|
  b3=(|1/acos(conj(conj(newpixel^30.5)))|), b4=|flip(flip(2*z^10))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-(b3)-0.4)-0.8))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0048095
  z=z*z+c+0.17/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2701 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=flip(imag(newpixel/2.5))-conj(0.1/newpixel)-0.2
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^4))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))+b4*b3
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0048095
  z=z*z+c+0.28/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2702 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=flip(conj(newpixel/2.5))+0.01/exp(flip(imag(0.1/newpixel)))-0.2
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^4))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.03/newpixel+0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0038095
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2703 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=abs(flip(newpixel/2.5))+0.01/exp(flip(imag(0.1/newpixel)))-0.2
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^4))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.03/newpixel+0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0068095
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2704 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=(flip(flip(newpixel))^6-1/(atan(1/newpixel)-cabs(acos(2/newpixel)))^6)-0.09
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^4))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.03/newpixel+0.1
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0068095
  z=z*z+c+0.16/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2705 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=(conj(flip(newpixel))^6-1/(acos(1/newpixel)-abs(atan(2/newpixel)))^6)-0.1
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^4))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.03/newpixel+0.1
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0052095
  z=z*z+c+0.16/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2706 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=(conj(flip(newpixel))^2-1/(acos(1/newpixel)-abs(atan(2/newpixel)))^10)-0.1
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^4))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.03/newpixel+0.1
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0052095
  z=z*z+c+0.16/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2707 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=(conj(flip(newpixel))^2-0.5/(acos(1/newpixel)-abs(atan(0.2/newpixel)))^10)-0.1
  z=b5
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  b5=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030095
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2708 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=cotanh(0.3-newpixel)*newpixel/2-(1/log(conj(0.10/newpixel+0.25)))^12.5
  z=b5
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  b5=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030095
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2709 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(flip(abs(newpixel/2)))/(flip(cabs(newpixel))))+0.1
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002095
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 96msg.frm
}
 
Carr2710 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=newpixel/(cabs(0.3/newpixel))
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002095
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2711 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(newpixel^2)-1/log(newpixel-conj(0.10/newpixel)/flip(0.010/newpixel))+0.3
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002095
  z=z*z+c+0.18/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2712 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(|newpixel^2|)-1/log(newpixel-conj(0.10/newpixel)/flip(0.010/newpixel))+0.3
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0001095
  z=z*z+c+0.18/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2713 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(newpixel^2)-cos(|newpixel|)\
     -1/log(newpixel-conj(0.10/newpixel)/flip(0.010/newpixel))+0.7
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0001095
  z=z*z+c+0.18/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2714 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(newpixel^2)-cos(cos(|newpixel|))\
    -0.25/sqrt(newpixel*2-conj(0.10/newpixel)/flip(0.010/newpixel))+0.7
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0001095
  z=z*z+c+0.18/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2715 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  b6=conj(newpixel^2)-cos(1/acos(|newpixel|))
  c=b6-0.25/sqrt(newpixel*2-tanh(0.10/newpixel)/(conj(conj(1/newpixel))))+0.7
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0001095
  z=z*z+c+0.18/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2716 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(newpixel))-(flip(0.25+newpixel))
  b3=|1/acos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0000995
  z=z*z+c+0.11/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2717 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=(newpixel-(conj(0.050/newpixel)+flip(conj(0.0010/newpixel)))^4)\
     +0.1+flip(0.1/newpixel)
  b3=|1/acos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2718 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=(flip(imag(newpixel))-(conj(0.050/newpixel)\
    +flip(conj(0.0010/newpixel)))^4)+0.1+flip(0.1/newpixel)
  b3=|1/acos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2719 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=(5*flip(imag(newpixel))/(2*(sqrt(flip(tanh(newpixel)))))^5+0.25)/\
     |(conj(4/newpixel))|
  b3=|1/acos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2720 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=(((log(flip(tanh(|newpixel/2|))))))/(cosxx(4/newpixel))-0.4
  b3=|1/acos(flip(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-0.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2721 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=atan(newpixel)*2+conj(newpixel/3)
  b3=|1/acos(flip(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3/0.4)-0.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2722 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(newpixel)*sqr(newpixel)-sqr(flip(0.00510/newpixel))
  b3=|1/acos(flip(conj(newpixel^30.5)))|, b4=|flip(flip(|2*c^9|))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3/0.4)-0.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
  z=z*z+c+0.14/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2723 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=cosxx(newpixel/2)*cabs(abs(newpixel^2))-sqr(flip(|0.00510/newpixel|))
  b3=|1/acos(flip(conj(newpixel^30.5)))|, b4=|flip(flip(|2*c^9|))|
  z=flip(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3/0.4)-0.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
  z=z*z+c+0.14/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2724 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=cosxx(|newpixel/2|)*abs(cabs(newpixel^2))-sqr(flip(|0.00510/newpixel|))
  b3=|1/acos(flip(conj(newpixel^30.5)))|, b4=|flip(flip(|2*c^9|))|
  z=flip(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3/0.4)-0.5))))\
     +b4-conj(0.1/newpixel)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
  z=z*z+c+0.14/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2725 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  b5=cosxx(|newpixel/2|)*abs(cabs(newpixel^2))+(flip(|0.025/newpixel|))^4+0.3
  b3=|1/acos(flip(conj(newpixel^30.5)))|, b4=|flip(flip(|2*b5^9|))|
  z=flip(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3/0.4)-0.5))))\
    +b4-flip(0.1/newpixel)
  c=whitesq*b5-(whitesq==0)*b5
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.02/newpixel-0.25
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0009995
  z=z*z+c+0.07/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2726 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=atan(|newpixel/2|)*abs(cabs(newpixel^2))+(flip(|0.025/newpixel|))^4+0.3
  b3=|1/acos(flip(conj(newpixel^30.5)))|, b4=|flip(flip(|2*c^9|))|
  z=flip(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3/0.4)-0.5))))\
    +b4-flip(0.1/newpixel)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.02/newpixel-0.25
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0009995
  z=z*z+c+0.07/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2727 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=tanh(|newpixel*2|)*abs(abs(|newpixel/2|))\
     -(exp(|0.0035/newpixel|))-flip(0.1/newpixel)+0.3
  b3=|1/acos(flip(conj(newpixel^30.5)))|, b4=|flip(flip(|2*c^9|))|
  z=flip(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3/0.4)-0.5))))\
    +b4-flip(0.25/newpixel)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.02/newpixel-0.25
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0009995
  z=z*z+c+0.07/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2728 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=|newpixel^8|-0.296-flip(0.1/newpixel)
  b3=|1/acos(flip(conj(newpixel^30.5)))|
  b4=conj(conj(|flip(flip(|2*c^9|))|))
  z=flip(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3/0.4)-0.5))))\
     +b4-flip(0.25/newpixel)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.02/newpixel-0.25
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0009995
  z=z*z+c+0.07/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2729 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel/2+1/log(newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=newpixel-1/log(newpixel-1/log(tan(1/newpixel))-1/log(2/newpixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42pcarr.frm
}
 
Carr2694 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  m3=conj(0.10/newpixel)
  z=newpixel/2-flip(m3)^4
  b3=|cos(conj(conj(newpixel^30.5)))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))\
                                             +|flip(flip(2*z^4))|
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0048095
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 96msg.frm
}
 
