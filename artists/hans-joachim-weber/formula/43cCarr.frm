Carr3197 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Edited for Fractint v. 20 by George Martin, 10/98
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cos(1/newpixel))
  b4=newpixel^2-(0.2*cabs(0.2-newpixel^(-0.025)))
  b5=flip(b4)^2-cabs(0.1/newpixel-flip(0.01/b4))-conj(0.1/newpixel)-0.65
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  (|z|)<=bailout
  ;SOURCE: 98msg.frm
}

Carr3198 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cos(1/newpixel))
  b5=conj(newpixel)*abs(newpixel)*flip(newpixel)-conj(0.1/newpixel-flip(0.01/newpixel))+0.15
  b4=conj(1/sinh(1/flip(b5^3)))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  (|z|)<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3199 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cosxx(1/newpixel))
  b5=imag(flip(newpixel))-((abs(newpixel/4))/(conj(newpixel/2)))^3
  b4=flip(newpixel^2)*cabs(newpixel)-(|flip(0.01/newpixel-conj(0.1/newpixel))|)+0.1
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  (|z|)<=bailout
  ;SOURCE: 97msg.frm
}

Carr3200 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cosxx(1/newpixel))
  b4=(flip(flip(newpixel))^3-1/(atan(0.1/newpixel)-cabs(acos(0.2/newpixel))))
  b5=conj(b4)-0.54
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  (|z|)<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3201 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cosxx(1/newpixel))
  b4=newpixel-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=(conj(abs(newpixel))^5-0.5/(conj(atan(0.1/newpixel))-cabs(acos(0.2/newpixel))))+0.35
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  (|z|)<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3202 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cosxx(1/newpixel))
  b4=newpixel^3-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=abs(conj(conj(newpixel^12)))-flip(0.01/newpixel)-conj(0.1/newpixel)+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  (|z|)<=bailout
  ;SOURCE: 97msg.frm
}

Carr3203 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b4=conj(conj(newpixel/2)*sin(abs(newpixel/3)))*flip(newpixel^6)-conj(0.1/newpixel+b3)+0.15
  b5=conj(conj(newpixel/2)*sin(abs(newpixel/3)))*conj(newpixel^6)-b3+0.13
  c=whitesq*b4^2-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3204 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b5=conj(conj(newpixel/2)*sin(abs(newpixel/3)))*conj(newpixel^8)-b3+0.1+conj(0.01/newpixel)
  b6=conj(conj(b5/2.5))-conj(0.01/newpixel)
  b4=b6-0.2*(conj(flip(newpixel/2)*sin(abs(newpixel/3)))*flip(newpixel^6)-conj(0.1/newpixel+b3)+0.2)
  c=whitesq*b4^2-(whitesq==0)*conj(b4)
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3205 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b5=conj(abs(newpixel/2)*sin(abs(newpixel/3)))*conj(newpixel^4)-b3+conj(0.01/newpixel)-0.125
  b6=newpixel^3-conj(0.1/newpixel-flip(0.01/newpixel))
  b4=b6-0.2*(conj(flip(newpixel/2)*sin(abs(newpixel/3)))*flip(newpixel^6)-conj(0.1/newpixel+b3)-0.15)
  c=whitesq*b4-(whitesq==0)*conj(b4)
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3206 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=newpixel/2-conj(0.01/newpixel-flip(0.001/newpixel))
  b5=conj(conj(abs(newpixel))^5-0.5/(conj(atan(0.01/newpixel))-cabs(acos(0.02/newpixel))))-0.235
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  ;imag(flip(z-newpixel))<=bailout
  ;imag(flip(z))<=bailout
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3207 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=(0.37,-0.3101)-flip(0.1/newpixel)
  b5=cabs(cabs(newpixel/2)*tan(cabs(newpixel/3)))*conj(abs(newpixel^3))-conj(0.1/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z+conj(|0.1/newpixel|))^2+(c-flip(0.01/newpixel))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3208 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=(newpixel^4/(tanh(0.3/newpixel)))+(0.1/newpixel)
  b5=conj(b4^6)-conj(0.1/newpixel-flip(0.01/newpixel))-0.25
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z+conj(|0.1/newpixel|))^2+(c-flip(|0.01/newpixel|))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}

Carr3209 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=(newpixel^3/(tanh(0.3/newpixel)))+(0.1/newpixel)
  b5=cabs(b4^6)-conj(0.1/newpixel-flip(0.01/newpixel))^0.75-0.25
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z+conj(|0.1/newpixel|))^2+(c-flip(|0.01/newpixel|))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3210 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=(newpixel^4/(tanh(0.3/newpixel)))+flip(0.1/newpixel)
  b5=conj(b4^6)-conj(0.1/newpixel-flip(0.01/newpixel))-0.25
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z+conj(|0.1/newpixel|))^2+(c-flip(|0.01/newpixel|))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3211 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=(newpixel^4/(tanh(0.3/newpixel)))+flip(0.1/newpixel)
  b5=conj(b4^6)-conj(0.1/newpixel-flip(0.01/newpixel))+0.15
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3212 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=cabs(newpixel^4/(tanh(0.3/newpixel)))+flip(0.1/newpixel)
  b5=conj(b4^6)-conj(0.1/newpixel-flip(0.01/newpixel))-0.25
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z+conj(|0.1/newpixel|))^2+(c-flip(|0.01/newpixel|))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3213 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=abs(conj(newpixel^3)*flip(newpixel))-0.15
  b4=b5^4-conj(0.1/newpixel-flip(0.015/newpixel-flip(0.1/b5)))
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z+conj(|0.1/newpixel|))^2+(c-flip(|0.01/newpixel|))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3214 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((conj(newpixel^5)*(abs(newpixel)))/(1/newpixel))-conj(0.10/newpixel)-((flip(0.00510/newpixel))^4)-0.3
  b4=conj(b5-flip(0.1/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*sqr(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(3*z*z-1.5)/(2+c)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3215 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(newpixel^6)+0.15
  b4=abs(b5/2.5)-conj(0.1/newpixel-flip(0.01/newpixel))-0.05
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=c*(z*z*(z*z-4)+2)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3216 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=(newpixel^6)+0.15
  b4=cabs(b5/2.5)-conj(0.1/newpixel-flip(0.01/newpixel))-0.05
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}

Carr3217 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=(newpixel^6)+0.15
  b4=cabs(b5/2.5)-conj(0.1/newpixel-flip(0.01/newpixel))-0.05
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*conj(abs(b5-conj(0.1/newpixel)))
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5-conj(0.1/newpixel))+2))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3218 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=(newpixel^6)+0.15
  b4=cabs(b5/2.5)-conj(0.1/newpixel-flip(0.01/newpixel))-0.05
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*conj(abs(b5-conj(0.1/newpixel)))
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5-flip(0.1/newpixel))+2))+flip(real(|d/50*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3219 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=conj(newpixel^2)*abs(newpixel)*conj(conj(newpixel^3))-conj(0.1/newpixel-flip(0.01/newpixel))
  b4=conj(1/sinh(1/flip(b5^3)))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*conj(abs(b5-conj(0.1/newpixel)))
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5-flip(0.1/newpixel))+2))+flip(real(|d/50*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3220 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=(newpixel^6)+0.15
  b4=1.2*(|newpixel/0.75|)^5+conj(0.1/newpixel+flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*conj(abs(b5-conj(0.1/newpixel)))
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5-flip(0.1/newpixel))+2))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3221 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=(newpixel^6)+0.15
  x=conj(cabs(newpixel-conj(0.1/newpixel))), y=imag(flip(newpixel-flip(0.1/newpixel)))
  b4=x*(conj(y)+x*sin(y^5))-conj(0.1/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*abs(abs(b5-conj(0.1/newpixel-flip(0.01/newpixel))))
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5-flip(0.1/newpixel))+2))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3222 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=(newpixel^9)+0.15
  x=conj(cabs(newpixel-conj(0.1/newpixel))), y=real(flip(newpixel-flip(0.1/newpixel)))
  b4=x*(conj(y)+x*sin(y^5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*abs(abs(b5-conj(0.1/newpixel-flip(0.01/newpixel))))
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5-flip(0.1/newpixel))+2))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3223 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=newpixel^6+0.15
  b4=(newpixel^3)+0.1*(conj(b5/2)-conj(conj(b5^2))-conj(tan(sin(0.1/newpixel-conj(0.01/newpixel)))))
  c=whitesq*b4-(whitesq==0)*abs(abs(b4-conj(0.1/newpixel-flip(0.01/newpixel))))
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5-flip(0.1/newpixel))+2))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3224 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))+0.15
  b4=cabs(b5/2.5)-conj(0.1/newpixel-flip(0.01/newpixel))-0.05
  c=whitesq*b4-(whitesq==0)*abs(abs(b4-conj(0.1/newpixel-flip(0.01/newpixel))))
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5-flip(0.1/newpixel))+2))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3225 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))+0.25
  b4=conj(conj(newpixel))*(newpixel^4)-flip(0.01/newpixel)-conj(0.1/newpixel)
  c=whitesq*b4-(whitesq==0)*abs(abs(b4-conj(0.1/newpixel-flip(0.01/newpixel))))
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5-flip(0.1/newpixel))+2))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3226 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=(newpixel^6)+0.15
  b4=cabs(b5/2.5)-conj(0.1/newpixel-flip(0.01/newpixel))-0.05
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c*z))-(flip(real(|d/80*newpixel|)))^3
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3227 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=(newpixel^6)+0.15-conj(0.01/newpixel-flip(0.001/newpixel))
  b4=abs(conj(abs(conj(b5/2.5))))-conj(0.1/newpixel-flip(0.01/newpixel))-0.05
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c*z))-(flip(real(|d/60*newpixel|)))^3
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}

Carr3228 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=conj(newpixel)*abs(newpixel)*flip(newpixel^4)-conj(0.01/newpixel-flip(0.001/newpixel))+0.15
  b4=conj(sinh(cabs(b5/2.5)))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*conj(b4)-(whitesq==0)*conj(b4)^3
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3229 (YAXIS) {; Modified Sylvie Gallet frm
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=conj(conj(newpixel))*(newpixel^11)+tanh(0.1/newpixel)-sinh(0.1/newpixel)-conj(0.13/newpixel)
  b5=conj(conj(newpixel))*(newpixel^11)+tanh(0.1/newpixel)-sinh(0.1/newpixel)-conj(0.13/newpixel)-0.35
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c*z+1/c))-(flip(real(|d/80*newpixel|)))
  iter=iter+1
  |z| <= bailout
  ;SOURCE: 43ccarr.frm
}

Carr3230 (YAXIS) {; Modified Sylvie Gallet frm
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=cabs(newpixel/2)-newpixel*((0.3,0.6)+newpixel)-conj(0.1/newpixel)
  b5=newpixel^5-conj(0.1/b3-flip(0.01/b3))-conj(0.1/newpixel-flip(0.01/newpixel))-0.25
  b4=newpixel^5-conj(0.1/b3-flip(0.01/b3))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/35*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3231 (YAXIS) {; Modified Sylvie Gallet frm
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=cabs(newpixel/2)-newpixel*((0.3,0.6)+newpixel)-conj(0.1/newpixel)
  b5=newpixel^5-conj(0.1/b3-flip(0.01/b3))-conj(0.1/newpixel-flip(0.01/newpixel))-0.25
  b4=newpixel^5-conj(0.1/b3-flip(0.01/b3))-conj(0.1/newpixel-flip(0.01/newpixel))
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
  ;SOURCE: 43ccarr.frm
}

Carr3232 (YAXIS) {; Modified Sylvie Gallet frm
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=(conj(abs(newpixel))^3/(cotan(0.1-newpixel))^1.3)-0.3
  b4=(conj(tanh(newpixel)^3/(cotan(0.1-newpixel))^1.3))/2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/35*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3233 (YAXIS) {; Modified Sylvie Gallet frm
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=abs(newpixel^6)-newpixel*((0.3,0.6)+newpixel)-conj(0.1/newpixel)-0.15
  b4=b5/2.5-conj(0.1/b5-flip(0.01/b5))-conj(0.075/newpixel-flip(0.01/newpixel))+0.05
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5^2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/35*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3234 (YAXIS) {; Modified Sylvie Gallet frm
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=cabs(newpixel^6)-newpixel*((0.3,0.6)+newpixel)-conj(0.09/newpixel)-0.3
  b4=cabs(b5/2.5)-conj(0.1/newpixel-flip(0.01/newpixel))-0.075
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5^2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(((3*z*z-1)-conj(0.1/newpixel))/(2+c))+flip(real(|d/70*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3235 (YAXIS) {; Modified Sylvie Gallet frm
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=((sin(newpixel)-tan(newpixel))/(conj(newpixel)+flip(newpixel)))-0.1-conj(0.01/newpixel)
  b4=newpixel/2.5-conj(0.01/newpixel)-flip(0.001/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/35*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

Carr3236 (YAXIS) {; Modified Sylvie Gallet frm
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=conj(conj(newpixel/2)*sin(abs(newpixel/3)))*flip(newpixel^6)-conj(0.1/newpixel)
  b5=conj(conj(newpixel/2)*sin(abs(newpixel/3)))*flip(newpixel^6)-conj(0.1/newpixel)+0.23
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}

