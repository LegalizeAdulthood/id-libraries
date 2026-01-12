Carr2730 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
   ; passes 1 needs to be used with this formula. A PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=cabs(newpixel*2)-1/log(conj(0.5/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  b5=newpixel-1/log(newpixel-1/log(tan(1/newpixel))-1/log(2/newpixel))
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42qcarr.frm
}
Carr2731 (YAXIS) {; Robert Carr [73753,2420], 1996  Requires passes=1
                  ; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=|newpixel^8|+0.296-flip(0.1/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  b5=abs(flip(conj(newpixel/2)))+flip(0.01/newpixel)
   ; b5=newpixel-1/log(newpixel-1/log(tan(1/newpixel))-1/log(2/newpixel))
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: phc.frm
}
Carr2732 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes 1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  b5=abs(flip(conj(newpixel/2)))+flip(0.01/newpixel)
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42qcarr.frm
}
Carr2733 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes 1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel+1/log(cos(0.1/newpixel-0.025))*(tan(0.1/newpixel-0.025))
  b5=b4-0.0625
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42qcarr.frm
}
Carr2734 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes 1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel+1/log(cos(0.1/newpixel-0.025))*(tan(0.1/newpixel-0.025))
  b5=newpixel+1/log(cosxx(0.1/newpixel-0.025))*(tan(0.1/newpixel-0.025))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42qcarr.frm
}
Carr2735 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
   ; passes 1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=flip(newpixel)+0.25/log(cos(1/newpixel))*(tan(0.1/newpixel))
  b5=cabs(newpixel)+0.15/log(cosxx(1/newpixel))*(tan(0.1/newpixel))
  c=whitesq*b4-(whitesq==0)*b4-0.3
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 96msg.frm
}
Carr2736 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes 1 needs to be used with this PHC formula.
  b4=pixel-conj(0.1/pixel-sin(0.01/pixel))
  b5=conj(pixel/2)-sqrt(cos(0.1/pixel))*(tan(0.1/pixel))
  c=whitesq*b4-(whitesq==0)*(b4)
  z=whitesq*b5-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42qcarr.frm
}
Carr2737 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes 1 needs to be used with this PHC formula.
  b4=tanh(pixel)-(((0.3,0.6)+pixel)/(0.20/-pixel))
  b5=b4+0.0625
  c=whitesq*b4-(whitesq==0)*(b4)
  z=whitesq*b5-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42qcarr.frm
}
Carr2738 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes 1 needs to be used with this PHC formula.
  b4=conj(conj(pixel/2))/(0.20/pixel)
  b5=conj(conj(b4/2))
  c=whitesq*b4-(whitesq==0)*(b4)
  z=whitesq*b5-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00495
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42qcarr.frm
}
Carr2739 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(pixel/3*cos(pixel-flip(0.010/pixel)-conj(0.10/pixel)))
  b5=(pixel*(pixel-flip(0.010/pixel)-conj(0.10/pixel)))+(0.0001/pixel)
  c=whitesq*flip(b4)-(whitesq==0)*conj(b4)
  z=whitesq*conj(b5)-(whitesq==0)*flip(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c+(-0.7456,0.132)
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42qcarr.frm
}
Carr2740 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  d=log(1/pixel-conj(1/pixel))
  b4=(pixel/3*cos(pixel-flip(0.010/pixel)-conj(0.10/pixel)))/d
  b5=(pixel*(pixel-flip(0.010/pixel)-conj(0.10/pixel)))+(0.0001/pixel)
  c=whitesq*flip(b4)-(whitesq==0)*conj(b4)
  z=whitesq*conj(b5)-(whitesq==0)*flip(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c+(-0.7456,0.132)
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42qcarr.frm
}
Carr2741 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  d=log(1/pixel-conj(1/pixel))
  b4=(pixel/3*cos(pixel-flip(0.010/pixel)-conj(0.10/pixel)))
  b5=((pixel*(pixel-flip(0.010/pixel)\
      -conj(0.10/pixel)))+(0.0001/pixel))/d
  c=whitesq*((b4))-(whitesq==0)*conj(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5^5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c+(-0.7456,0.132)
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2742 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  d=sqrt(1/pixel-conj(0.1/pixel))
  b4=(pixel/3*cos(pixel-flip(0.010/pixel)-conj(0.10/pixel)))/d
  b5=((pixel*(pixel-flip(0.010/pixel)\
      -conj(0.10/pixel)))+(0.0001/pixel))/d*10
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c+(-0.7456,0.132)
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2743 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=flip(imag(newpixel))-conj(0.1/newpixel)
  b5=newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2744 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=flip(imag(newpixel))*log(0.1/newpixel-conj(0.1/newpixel))+0.3
  b5=newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2745 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=newpixel-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2746 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=newpixel-(sqrt(conj(0.1/newpixel-flip(0.02/newpixel))))^100
  b5=newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2747 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=conj(conj(0.15/log(exp(conj(conj(newpixel^150))\
     -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  b5=newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2748 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=newpixel
  b4=0.3*(newpixel)/cotanh(1/cotanh(newpixel/2))\
      -0.5/log(newpixel-0.7/sqrt(0.50/newpixel))^2.5-conj(0.05/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2749 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=((flip(imag(newpixel))-flip(0.01/newpixel-conj(0.1/newpixel))))
  b4=(newpixel*(abs(1.15*newpixel-flip(0.10/newpixel)-conj(0.010/newpixel))))+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2750 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((flip(imag(newpixel))-flip(0.01/newpixel-conj(0.1/newpixel))))
  b4=(newpixel*(abs(1.15*newpixel-flip(0.10/newpixel)-conj(0.010/newpixel))))+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2751 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(conj(conj(newpixel^4))/(conj(newpixel^1.5)))+0.2
  b4=0.8*newpixel-1/log(newpixel-conj(conj(0.10/newpixel))\
      +flip(flip(imag(0.0010/newpixel))))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2752 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=(conj(conj(newpixel^4))/(conj(newpixel^1.5)))+0.3
  b4=0.8*newpixel-1/log(newpixel-conj(conj(0.10/newpixel))\
        +flip(flip(imag(0.0010/newpixel))))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2753 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=(flip(flip(newpixel^4))/(conj(newpixel^1.5)))+0.3
  b4=abs(newpixel)-1/log(newpixel-conj(conj(0.10/newpixel))\
      +flip(flip(imag(0.0010/newpixel))))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2754 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(flip(flip(newpixel^4))/(conj(newpixel^1.5)))+0.3
  b4=abs(newpixel)-1/log(newpixel-conj(conj(0.10/newpixel))\
     +flip(flip(imag(0.0010/newpixel))))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c-0.21/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2755 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(cos(cos(newpixel^4))/(cotanh(newpixel^1.5)))
  b5=newpixel-(flip(flip(newpixel^4))/(conj(newpixel^1.5)))/2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c-0.11/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2756 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=0.5*newpixel-1/log(newpixel-conj(conj(0.10/newpixel))\
      +flip(flip(imag(0.0010/newpixel))))
  b5=(b4+0.0525)-conj(0.10/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2757 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=(cos(newpixel^4))-cosh(newpixel)
  b5=conj(b4/2)-conj(0.1/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2758 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(cos(newpixel^4))-cosh(newpixel)
  b5=conj(b4/2)-conj(0.1/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2759 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(cosxx(newpixel^5))-cos(newpixel*0.75)-conj(0.1/newpixel)
  b5=conj(b4/2)-flip(0.1/newpixel)-0.1
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel^12/real(p2)/(1/newpixel):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c+0.25/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2760 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=b5=newpixel/(tanh(0.3/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2761 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=newpixel/(tanh(0.3/newpixel))
  b5=conj(newpixel)/(tanh(0.3/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2762 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=(conj(flip(flip(newpixel)))-asin(flip(newpixel)))
  b5=newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
Carr2763 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=(newpixel*(abs(1.15*newpixel-flip(0.0010/newpixel)-conj(0.30/newpixel))))-0.1
  b4=newpixel-(1/log(newpixel-1/cos(0.010/newpixel))^5)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 96msg.frm
}
Carr2764 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=(1-newpixel*(cabs(1.65*newpixel-flip(|0.010/newpixel|)\
      -conj(0.10/newpixel))))-0.1
  b5=newpixel-(1/log(newpixel-0.25/cos(conj(sinh(0.1/newpixel))))^5)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}
