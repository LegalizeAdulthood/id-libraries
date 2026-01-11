Carr3237 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=conj(conj(newpixel/2)*sin(abs(newpixel/3)))*flip(newpixel^6)-conj(0.1/newpixel)
  b5=conj(conj(newpixel/2)*sin(abs(newpixel/3)))*conj(newpixel^6)-flip(0.1/newpixel)+0.23
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3238 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=((conj(newpixel^5)*(abs(newpixel)))/(1/newpixel))-conj(0.066/newpixel)-((flip(0.00510/newpixel))^2)-0.1
  b4=((conj(newpixel/2)*(abs(newpixel/2)))/(1/newpixel))-conj(0.06/newpixel)-((flip(0.00510/newpixel))^4)+0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3239 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=conj(conj(abs(flip(newpixel^3))*conj(tanh(newpixel))))
  b5=((b3^2)/(1/newpixel)-(0.00066/b3)-(flip(0.003/newpixel)^2))-0.1
  b4=((cabs(newpixel/2)*(flip(newpixel/2)))/(1/newpixel))-conj(0.06/newpixel)-((flip(0.00510/newpixel))^4)+0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3240 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=(newpixel^6)+0.15
  b4=b6/(cotanh(-1/newpixel^3))-conj(0.06/newpixel)-(flip(0.00510/newpixel))^4-0.25
  b5=b6/(cotanh(-1/newpixel^3))-conj(0.06/newpixel)-(flip(0.00510/newpixel))^4+0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3241 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Converted to if.else by George Martin, 6/11/99
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b1=(cosh(cos(-newpixel)))
  b2=(cosxx(cosh(-newpixel)))
  b6=(cabs(newpixel)*conj(flip(newpixel))+0.15)/b2
  b5=newpixel^6-conj(0.01/b1-flip(0.01/b2-conj(0.01/b6)))+0.25
  b4=(newpixel/2)-conj(0.01/b1-flip(0.01/b2-conj(0.01/b6)))
  IF (whitesq)
    z = origz = b5
    c = b4
  ELSE
    z = origz = -b5
    c = -b4
  ENDIF
  imagp1=imag(p1), imagp2=imag(p2)
  c5=flip(abs(d/70*newpixel))
  bailout=16, iter=0:
  IF (iter == p1)
    z = 0
    c = 1.5*origz^1.2
  ELSEIF (iter == imagp1)
    z = 0
    c = 2.25*origz
  ELSEIF (iter == p2)
    z = 0
    c = 3.375*origz
  ELSEIF (iter == imagp2)
    z = 0
    c = 5.0625*origz
  ENDIF
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-c5
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3242 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b1=(cosh(cos(-newpixel)))
  b2=(cosxx(cosh(-newpixel)))
  b6=(cabs(newpixel)*conj(flip(newpixel))+0.15)/b2
  b5=newpixel^6-conj(0.001/b1-flip(0.001/b2-conj(0.001/b6)))-0.35
  b4=(newpixel/2)-conj(0.01/b1-flip(0.01/b2-conj(0.01/b6)))+0.1
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*z*z)/(conj(z+c))+conj(c/8)+(-0.7456,-0.132)+sqr(0.1/newpixel)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3243 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b1=(cosh(cos(-newpixel)))
  b2=(cosxx(cosh(-newpixel)))
  b6=(cabs(newpixel)*conj(flip(newpixel))+0.15)/b2
  b5=newpixel^7-conj(0.001/b1-flip(0.001/b2-conj(0.001/b6)))-0.35
  b4=cabs(b5/2.5)-conj(0.1/newpixel-flip(0.01/newpixel))-0.05
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3244 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=cabs(newpixel^2)-newpixel-conj(0.1/newpixel)
  b5=abs(newpixel^5)-conj(0.1/b3-flip(0.01/b3))-conj(0.1/newpixel-flip(0.01/newpixel))-0.13
  b4=newpixel^5-conj(0.1/b3-flip(0.01/b3))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*sqr(b4)
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3245 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=cabs(newpixel^2)-cosxx(newpixel)-conj(0.1/newpixel)
  b5=abs(newpixel^7)-conj(0.075/b3-flip(0.01/b3))\
   -conj(0.065/newpixel-flip(0.01/newpixel))-0.23
  b4=cabs(newpixel^7)-conj(0.1/b3-flip(0.01/b3))\
   -conj(0.1/newpixel-flip(0.01/newpixel))-0.075
  c=whitesq*b4^3-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}

Carr3246 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=cabs(newpixel)-cosxx(newpixel^4)-conj(0.1/newpixel^3)
  b5=abs(newpixel^10)-conj(0.1/b3-flip(0.0075/b3))-conj(0.065/newpixel-flip(0.01/newpixel))-0.3
  b4=cabs(b5/2.5)-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4^2-(whitesq==0)*flip(imag(b4))
  z=whitesq*b5-(whitesq==0)*b5^2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3247 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=cosh(2/newpixel)-cotanh(3/newpixel)-conj(|0.1/newpixel^3|)
  b5=abs(newpixel^6)-conj(0.25/b3-flip(0.0075/b3))-conj(0.065/newpixel-flip(0.01/newpixel))-0.3
  b4=newpixel^4-conj(0.01/newpixel-flip(0.01/newpixel-cabs(0.001/b5-abs(0.001/b3))))
  c=whitesq*b4^2-(whitesq==0)*flip(imag(b4))
  z=whitesq*b5-(whitesq==0)*b5^2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3248 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=conj(conj(newpixel/2)*sin(abs(newpixel/3)))*conj(newpixel^6)-flip(0.1/newpixel)-0.13
  b4=(newpixel^3)+0.5*(conj(b5/2)-conj(conj(b5^2))-conj(tan(sin(0.1/newpixel-conj(0.01/newpixel)))))-0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5^2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3249 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=conj(conj(newpixel^6)-sin(abs(newpixel/3)))-conj(newpixel/2)-flip(0.001/newpixel)-0.2
  b4=(newpixel^6)*(conj(b5/2)-conj(conj(0.001/b5))-conj(tan(sin(0.001/newpixel-conj(0.005/newpixel)))))-0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5^2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3250 (YAXIS) {; Modified Sylvie Gallet frm.1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+c+flip(real(|d/70*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}

Carr3251 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3252 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=abs(conj(newpixel^3))*abs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3253 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-0.045/newpixel
  b5=abs(conj(newpixel^3))*(flip(newpixel^4))-flip(0.0001/b4)+conj(0.001/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3254 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=abs(conj(conj(newpixel^3)))*conj(flip(newpixel^3))-cabs(0.035/newpixel)+0.1
  b5=abs(conj(newpixel^2))*(cabs(flip(newpixel^4)))-flip(0.0001/b4)+conj(0.001/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*conj(b4)
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3255 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(cabs(0.04/newpixel))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*conj(b4)
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*newpixel)))-0.001/c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3256 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(cabs(0.045/newpixel))+0.075
  b5=conj(conj(newpixel^3))*flip(conj(sinh(newpixel^4)))-flip(0.01/newpixel)-conj(0.01/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5+0.01/c
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*newpixel)))-0.001/c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3257 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*abs(newpixel^4)-flip(0.0075/newpixel)-conj(0.0125/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+c+flip(real(|d/70*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3258 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=(|0.0175/newpixel|)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)\
     -conj(0.01/newpixel)-conj(b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*(b5^0.75)-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+flip(real(|d/70*newpixel|))+0.105
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}

Carr3259 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=(|0.0175/newpixel|)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-conj(b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*(b5^0.75)-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*newpixel)))+0.13
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3260 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=(|0.0175/newpixel|)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-conj(b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*(b5^0.75)-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/12|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3261 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=(|0.0175/newpixel|)-imag(0.00725/newpixel)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-conj(b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*(b5^0.75)-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*newpixel)))+0.125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3262 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=(|0.0175/newpixel|)-imag(0.00725/newpixel)+cabs(0.01/newpixel)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-conj(b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*(b5^0.75)-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*newpixel)))+0.125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3263 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=(|0.0175/newpixel|)-imag(0.00725/newpixel)+cabs(0.01/newpixel)
  b4=abs(conj(conj(newpixel^5)))*conj(flip(newpixel^3))-flip(b3)
  b5=abs(conj(conj(newpixel^2)))*cabs(newpixel^3)-flip(0.01/newpixel)-conj(0.01/newpixel)-conj(b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*(b5^0.75)-(whitesq==0)*abs(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*newpixel)))+0.08
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3264 (YAXIS) {; Modified Sylvie Gallet frm.1996
		  ; passes=1 needs to be used with this PHC formula.
		  ; Converted to if/else by George Martin 11/20/97
                  ; Added variable "newpixel". G. Martin 6/13/99
  imagp1=imag(p1), imagp2=imag(p2)
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  invpixel=1/newpixel
  centinvpixel=.01*invpixel
  cubepixel = newpixel^3
  d=flip(abs((sqrt(invpixel-cosxx(invpixel)))/30*newpixel))-0.08
  b3=conj((0.0175*invpixel)-imag(0.00725*invpixel)+cabs(centinvpixel))
  c=abs(cubepixel*newpixel^2)*conj(flip(cubepixel))+b3
  b5=abs(cubepixel)*cabs(newpixel*cubepixel)\
      -flip(centinvpixel)-conj(centinvpixel)-conj(b3)-0.2
  IF (whitesq)
    z = origz = b5^0.75
  ELSE
    z = origz = -abs(b5)
    c = -c
  ENDIF
  const= c*(imag(c)+2) - d
  bailout=16, iter=0
  :
  IF (iter == p1)
    z = 0
    c=1.5*origz^1.2
    const= c*(imag(c)+2) - d
  ELSEIF (iter == imagp1)
    z = 0
    c=2.25*origz
    const= c*(imag(c)+2) - d
  ELSEIF (iter == p2)
    z = 0
    c=3.375*origz
    const= c*(imag(c)+2) - d
  ELSEIF (iter == imagp2)
    z = 0
    c=5.0625*origz
    const= c*(imag(c)+2) - d
  ENDIF
  z=c*z*z*(z*z-3.5) + const
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}

Carr3265 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=(conj((0.0175/newpixel)-imag(0.00725/newpixel)^2+cabs(0.01/newpixel)))
  b4=abs(conj(conj(newpixel^5)))*conj(flip(newpixel^3))-(b3)
  b5=abs(conj(conj(newpixel^3)))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-(b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*(b5^0.75)-(whitesq==0)*abs(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/5)+z*z+c-0.09/newpixel-0.08
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3266 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=(conj((0.0175/newpixel)-imag(0.00725/newpixel)^2+cabs(0.01/newpixel)))
  b5=newpixel^5-conj(0.075/newpixel)-flip(0.001/b3)-0.2
  b4=newpixel-flip(0.075/newpixel)-conj(0.001/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*(b5^0.75)-(whitesq==0)*abs(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/5)+z*z+c-0.09/newpixel-0.08
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3267 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=(flip((0.0175/newpixel)-imag(0.00725/newpixel)^3+cabs(0.01/newpixel)^2))
  b4=abs(conj(conj(1.5*newpixel)))*conj(flip(newpixel^3))-(b3*newpixel^0.66)-0.15
  b5=abs(conj(conj(newpixel^3)))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-(b3)-0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5^0.75
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/4)+z*z+c-(0.1/newpixel*b3*2)-0.096
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3268 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-0.2
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3-0.0075/b3))*cabs(newpixel^4)-flip(0.035/newpixel)-conj(0.03/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/4)+z*z+c+0.08-c/20
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3269 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel-conj(0.1/newpixel-flip(0.01/newpixel+cabs(0.01/newpixel)))
  b5=newpixel^6-conj(0.1/b4-flip(0.01/b4+cabs(0.01/b4)))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*conj(b5-0.025/b5*newpixel^4)^2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/4)+z*z+c+0.08-c/20+0.03/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3270 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(conj(conj(newpixel^2))*flip(flip(newpixel^2))-conj(0.075/newpixel)+sinh(0.001/newpixel))
  b5=tan(tan(newpixel^4)-0.075/b4)-tanh(0.1/newpixel)-conj(0.001/newpixel)-0.24
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z/6|)+z*z+c+0.09-c/8+0.025/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3271 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b5=newpixel^5-0.0075/b3-conj(0.0075/b3)-0.45
  b4=cabs(newpixel^2)-newpixel^7+conj(0.075/b3)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5^2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z/6|)+z*z+c+0.09-c/8+0.025/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3272 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b5=conj(newpixel^6)-abs(0.007/b3)-conj(0.007/b3)-cabs(0.0025/b3)-0.45
  b4=cabs(newpixel^3+0.075/b5)-newpixel^7+conj(0.075/b3)-0.35
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5^3
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z/6|)+z*z+c+0.09-c/8+0.025/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3273 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=conj(newpixel^4-sinh(0.007/newpixel)), m4=(conj(0.005/newpixel))-sqr(flip(0.09/newpixel))
  b5=conj(1/acos(1-newpixel))*(newpixel^4)-m4-conj(0.008/newpixel)-0.1
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z/6|)+z*z+c+0.09-c/8+0.025/newpixel-(flip(abs(d/30*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3274 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)+conj(0.0095/b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+flip(real(|d/70*newpixel|))+0.125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3275 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.0075/b3)-flip(0.0075/b3)
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)+conj(0.0095/b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+flip(real(|d/70*newpixel|))+0.125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3276 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.0075/b3)-flip(0.0075/b3)
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.0025/b4)-conj(0.0025/b4)+conj(0.0095/b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+flip(real(|d/70*newpixel|))+0.125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

Carr3277 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel^4))))-conj(0.01/newpixel)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.0075/b3)-flip(0.0075/b3)
  b6=conj(conj(conj(0.001/b4)))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.0007/b4)-b6+conj(0.0095/b3)-0.235
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+((z*z/c)/30)+0.125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}

