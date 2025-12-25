Carr2765 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=b5=1/(newpixel-conj(1/newpixel)-flip(1/newpixel))
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
  ;SOURCE: 42rcarr.frm
}
 
Carr2766 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=newpixel^5-conj(newpixel/5)
  b5=b4/2-0.099/newpixel
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
  ;SOURCE: 42rcarr.frm
}
 
Carr2767 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=newpixel^7-conj(newpixel/5)
  b5=b4/2.5-flip(0.099/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c-0.05/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2768 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=1/(0.75*newpixel-(|newpixel|+cos(sqr(|newpixel|*1/(newpixel-0.124)))))+0.5
  b4=1/(conj(conj(newpixel))\
      -(|0.67*newpixel|+cos(sqr(|newpixel|*1/(newpixel-0.124)))))
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
  ;SOURCE: 42rcarr.frm
}
 
Carr2769 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=cotan(|1-newpixel|)^1.5*newpixel^8-(1/log(conj(0.10/newpixel+1.25)))^15.5
  b5=(newpixel^2.63)/log(1.667-newpixel)^2.87\
      -(1/log(conj(0.10/newpixel+1.25)))^2.95
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c-0.02/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2770 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=cotan(|1-newpixel|)^1.5*newpixel^8-(1/log(conj(0.10/newpixel+1.25)))^30
  b5=(newpixel^2.63)/log(1.667-newpixel)^2.87\
      -(1/log(conj(0.10/newpixel+1.25)))^5
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c-0.02/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2771 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Modified for IF..ELSE logic by Sylvie Gallet, 05/15/97
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = real(pixel) - flip(abs(imag(pixel)))
  pp2 = newpixel/imag(p2), a = 0.02/newpixel
  IF (whitesq)
    c = cotan(|1-newpixel|)^1.5*newpixel^8                \
        -(0.5/log(5*a + 1.0))^30 - a
    z = z0 = (newpixel^2.63)/log(1.667 - newpixel)^2.87   \
             -(1/log(conj(3.5*a + 1.25)))^7.5
  ELSE
    c = -cotan(|1-newpixel|)^1.5*newpixel^8               \
        +(0.5/log(5*a + 1.0))^30 - a
    z = z0 = -(newpixel^2.63)/log(1.667 - newpixel)^2.87  \
             +(1/log(conj(3.5*a + 1.25)))^7.5
  ENDIF
  bailout = 4, iter = 0
  :
  IF (iter==p1)
    z = 0, c = z0 - a
  ELSEIF (iter==imag(p1))
    z = 0, c = z0 * 2.25 - a
  ELSEIF (iter==p2)
    z = 0, c = z0 * 3.375 - a
  ELSEIF (iter==imag(p2))
    z = 0, c = z0 * 5.0625 - a
  ENDIF
  iter = iter + 1
  c = c + pp2, z = sqr(z) + c
  abs(z) <= bailout
  ;SOURCE: phctopng.frm
}
 
Carr2772 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=(flip(abs(1-newpixel)))^1.66
  b5=(1-newpixel)^1.8
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1*z, c2=2.25*z, c3=3.375*z, c4=7.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c+0.02/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2773 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=flip(conj(newpixel))^30-flip(0.1/newpixel)
  b5=flip(flip(newpixel))^10-conj(0.1/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1*z, c2=2.25*z, c3=3.375*z, c4=7.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2774 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=b5=(conj(newpixel/1.75)*flip(newpixel/1.5)\
         -conj(conj(0.025/newpixel)))/newpixel^6+0.3
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
  ;SOURCE: 42rcarr.frm
}
 
Carr2775 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=b5=conj(conj(newpixel/1.75)*flip(newpixel/1.5)\
        -flip(flip(0.025/newpixel)))/newpixel^10+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c-0.05
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2776 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=conj(conj(newpixel/1.75)*flip(newpixel/2)\
      -flip(flip(0.025/newpixel)))/newpixel^10+0.3
  b5=conj(sinh(conj(newpixel/10)\
      -conj(tanh(0.025/newpixel/5)))/(newpixel/3)^10)^(0.7456,-0.132)+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c-0.05
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2777 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=|newpixel^5|+0.096+flip(0.1/newpixel)+conj(0.01/newpixel)
  b5=abs(flip(conj(newpixel)))+flip(0.01/newpixel)+conj(0.1/newpixel)
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
  ;SOURCE: 42rcarr.frm
}
 
Carr2778 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=newpixel
  b4=(-0.7456,0.25)*(0.3,0.6)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2779 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=abs(flip(conj(newpixel)))+flip(0.01/newpixel)+conj(0.1/newpixel)-0.4
  b4=(-0.7456,0.25)*(0.3,0.6)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2780 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=newpixel^5+0.096+flip(0.1/newpixel)+conj(0.01/newpixel)-0.3
  b4=((-0.7056,0.25)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2781 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel^5+0.096+flip(0.1/newpixel)+conj(0.01/newpixel)
  b4=((-0.7296,0.25)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2782 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=flip(conj(conj(newpixel^3)))\
      +0.096+flip(0.01/newpixel)^8+conj(0.1/newpixel)^6
  b4=((-0.7296,0.25)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2783 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=flip(flip(conj(2*newpixel^3-conj(0.01/newpixel))))\
     +0.096+flip(0.01/newpixel)^20+conj(0.1/newpixel)^16
  b4=((-0.7296,0.25)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2784 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=flip(flip(conj(5*newpixel^7-conj(0.01/newpixel))))\
     +0.096+flip(0.01/newpixel)^20+conj(0.1/newpixel)^16
  b4=((-0.7296,0.25)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2785 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=1/(1/(1/(3/conj(newpixel^6))))+newpixel^3+0.2-flip(0.01/newpixel)^12
  b4=((-0.7296,0.25)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2786 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=newpixel^3-conj(newpixel/4-(tan(0.1/newpixel))-flip(0.02/newpixel))
  b4=((-0.7296,0.25)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2787 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=flip(imag(newpixel^7)+0.2)\
      -conj((newpixel/2)^3-(tan(0.1/newpixel))-flip(0.02/newpixel))-0.3
  b4=((-0.7156,0.25)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2788 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=abs(newpixel^5)-1/log(conj(0.5/newpixel))-conj(0.1/newpixel)
  b4=((-0.7156,0.25)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2789 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=((cos(newpixel^5))-cosh(newpixel))-flip(0.01/newpixel)
  b4=((-0.8756,-0.132)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2790 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=((cosxx(newpixel^3))-cos(newpixel))-flip(0.01/newpixel)+conj(0.1/newpixel)
  b4=((-0.8756,-0.132)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2791 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=b4=(0.2+newpixel^3)-((-0.9056,-0.132)*(0.3,0.6))/2\
          -conj(0.1/newpixel)^3+flip(0.01/newpixel)^6
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2792 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=conj(conj(newpixel^5))+conj(conj(0.1/newpixel))^4-0.3
  b4=(-0.7456,-0.132)/3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2793 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=b5=conj(conj(newpixel^5))+flip(flip(0.1/newpixel))-0.3-conj(0.1/newpixel)^12
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^4-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0095
  z=z^2+c-conj(0.1/newpixel)
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 96msg.frm
}
 
Carr2794 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
      -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  b5=newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/(imag(p2+5)):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0065
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2795 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=conj(conj(0.2/log(exp(conj(conj(newpixel^450))\
      -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  b5=newpixel^5-conj(0.01/newpixel)-0.4
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/(imag(p2+5)):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0065
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2796 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=conj(conj(0.2/log(exp(conj(conj(newpixel^450))\
      -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  b5=conj(conj(newpixel^3))+conj(conj(0.01/newpixel*3))-0.25
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/(imag(p2+5)):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.007
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2797 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=b4=0.3*(newpixel)/cos(1/cotanh(newpixel))\
         -0.5/log(newpixel-0.7/sqrt(0.50/newpixel))^2.5-conj(0.05/newpixel)+0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/(imag(p2+5)):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.002
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2798 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
        -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  b5=(2.75*newpixel^5)+conj(newpixel-flip(0.010/newpixel))+0.3+conj(0.1/newpixel)^10
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/(imag(p2+5)):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2799 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=0.8*pixel^5/(sqr(pixel))+0.4
  b5=(0.8*pixel^5/(sqr(pixel))+0.4)-flip(0.1/pixel)
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00015
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2800 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(0.8*pixel^5/(sqr(0.33-pixel))+0.4)-conj(0.1/pixel)
  b5=(0.8*pixel^5/(pixel^2)+0.4)-flip(0.1/pixel)
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00015
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42rcarr.frm
}
 
Carr2801 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b3=conj(conj(0.15/log(exp(conj(conj(pixel^450))\
     -1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
  b4=b3-flip(0.1/pixel)
  b5=conj(conj(pixel/2.5))\
      -(conj(0.1/pixel)-flip(0.1/pixel)+0.055/pixel)+0.15
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.000015
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42rcarr.frm
}
 
