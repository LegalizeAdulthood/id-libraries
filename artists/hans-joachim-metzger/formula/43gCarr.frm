Carr3353 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel)
  m3=tanh(newpixel/2)*conj(conj(newpixel/2))*ba
  b5=m3-tanh(0.10/newpixel-sinh(0.01/newpixel))
  b4=cabs(b5/2)-b6
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3354 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel)
  b1=conj(conj(newpixel/2))*conj(cabs(newpixel/3))*abs(newpixel/4)
  ba=2*(conj(0.1-newpixel))*2*conj(sinh(newpixel))*2*flip(tanh(newpixel))
  m3=tanh(newpixel/2)*conj(conj(newpixel/2))*ba*b1
  b5=conj(m3)-tanh(0.10/newpixel-sinh(0.1/newpixel-0.1/newpixel))
  b4=cabs(b5/2)-b6
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3355 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), d=sqrt(1/newpixel-cosxx(1/newpixel))
  b1=conj(conj(newpixel/2))*conj(abs(newpixel/3))*abs(newpixel/4)
  ba=2*(conj(0.1-newpixel))*2*conj(sinh(newpixel))*2*flip(tanh(newpixel))
  m3=tanh(newpixel/2)*conj(conj(newpixel/2))*ba*b1
  b5=conj(m3)-tanh(0.10/newpixel-sinh(0.1/newpixel-0.1/newpixel))
  b4=cabs(b5/2)-b6
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(((3*z*z-1)-conj(0.1/newpixel))/(2+c))+flip(real(|d/70*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3356 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.0015/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b4=((flip(abs(newpixel))^4/(flip(asinh(newpixel)))))-conj(0.1/newpixel)
  b5=(conj(flip(abs(newpixel-b8))^6/(flip(asinh(newpixel))))-0.135)^0.69-b6
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3357 (YAXIS) {; Modified Sylvie Gallet frm.1996
		  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((tan(newpixel)-sin(newpixel))*(conj(newpixel)\
     -flip(newpixel)))-conj(0.08/newpixel)+0.15
  b4=newpixel*b5
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 98msg.frm
}
 
Carr3358 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((tan(newpixel)-sin(newpixel))*(conj(newpixel)-flip(newpixel)))-(0.08/newpixel)+0.15
  b4=newpixel*b5
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3359 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((tan(newpixel)-sin(newpixel))*(conj(newpixel)-tan(newpixel)))-conj(0.08/newpixel)+0.15
  b4=newpixel*b5-conj(0.001/b5)
  c=whitesq*b4^0.645-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3360 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=conj(conj(newpixel/2))*conj(abs(newpixel/3))*abs(newpixel/4)
  ba=2*(conj(0.1-newpixel))*2*conj(sinh(newpixel))*2*flip(tanh(newpixel))
  b5=b1*flip(conj(newpixel^5))-conj(0.1/newpixel-flip(0.01/newpixel))+0.15
  b4=conj(b5/2+b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3361 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b9=abs(0.5+newpixel)*conj(0.5+newpixel)*flip(0.5+newpixel)
  b5=2*b9*flip(conj(newpixel^4))-conj(0.12995/newpixel-flip(0.01/newpixel))+0.199999
  b4=conj(b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/newpixel-flip(0.01/newpixel))-0.3
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3362 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(flip(0.1-newpixel)*abs(newpixel^4))^2-newpixel/pi*2-conj(0.03/newpixel)-0.1
  b4=conj(b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3363 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.035/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b5=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4-b7-b6+1.75*b8-0.175
  b4=flip(b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5^0.5456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3364 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.035/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b5=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4-b7-b6+1.75*b8-0.175
  b4=flip(b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5^0.5456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-conj(0.5*z)+c+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3365 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.035/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b5=conj(conj(newpixel^3))*abs(newpixel+0.125)^4-b7-b6+1.75*b8-0.175
  b4=flip(b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5^0.5456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-conj(0.5*z)+c+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3366 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.035/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  ba=2*(conj(0.1-newpixel))*2*conj(sinh(newpixel))*2*flip(tanh(newpixel))
  b5=ba*conj(abs(newpixel^2))*abs(conj(newpixel+0.125))^4-b7-b6+2.75*b8-0.165
  b4=flip(b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5^0.5456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-conj(0.5*z)+c+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3367 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.065/newpixel), b7=flip(0.03/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  ba=2*(conj(0.1-newpixel))*2*conj(sinh(newpixel))*2*flip(tanh(newpixel))
  b5=conj(ba)*conj(abs(newpixel^2))*abs(conj(newpixel+0.125))^4-b7-b6-2*b8-0.165
  b4=flip(b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.5456-(whitesq==0)*b5*0.75
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-conj(|0.15*z|)+c+cabs(c/10)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3368 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b5=b10-flip(0.0125/newpixel)-conj(0.0125/newpixel)-0.19
  b4=(newpixel^4/(tanh(0.3/newpixel)))+(0.1/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.5456-(whitesq==0)*b5*0.75
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-conj(0.35*z)+c+abs(c/8)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3369 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.085/newpixel)
  b4=b6^100+newpixel*2+0.2
  b5=b4*newpixel-conj(0.1/newpixel-flip(0.01/newpixel))-0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5*0.5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3370 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.1/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.01/newpixel-flip(0.001/newpixel))
  b5=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4-b7-b6+1.75*b8-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.13214)+conj(c/10)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3371 (YAXIS) {; Modified Sylvie Gallet frm.1996
		  ; Rewritten for if..else by George Martin 3/9/98
		  ; passes=1 needs to be used with this PHC formula
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  tenthinvpixel = .1/newpixel
  b6=conj(tenthinvpixel) 
  b7=flip(.1*tenthinvpixel) 
  b8=cabs(.02*tenthinvpixel+cabs(0.02*tenthinvpixel))
  b4=abs(newpixel^2)*conj(flip(newpixel^3))\
     -conj(tenthinvpixel-flip(0.1*tenthinvpixel))
  b5=(newpixel^3)*cabs(newpixel+0.125)^4-b7-b6+1.75*b8-0.2
  IF (whitesq)
    z = origz = b5^0.7456
    c = (-0.7456,-0.13214)+conj(.1*b4)
  ELSE
    z = origz = -b5
    c = (-0.7456,-0.13214)+conj(.1*(-b4))
  ENDIF
  bailout=16, imagp1 = imag(p1), imagp2 = imag(p2), iter=0
  :
  IF (iter == p1)
    z=0
    c=(-0.7456,-0.13214)+conj(.15*origz^1.2)     
  ELSEIF (iter == imagp1)
    z=0
    c=(-0.7456,-0.13214)+conj(.225*origz)   
  ELSEIF (iter == p2)
    z=0
    c=(-0.7456,-0.13214)+conj(.3375*origz)   
  ELSEIF (iter == imagp2)
    z=0
    c=(-0.7456,-0.13214)+conj(.50625*origz)   
  ENDIF
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 98msg.frm
}
 
Carr3372 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.145/newpixel), b7=flip(0.04/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4-b7-b6+1.75*b8-0.22
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.2)+conj(c/16)+tanh(c/14)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3373 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.145/newpixel), b7=flip(0.04/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4-b7-b6+1.75*b8-0.22
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.134287)+conj(c/13)+conj(0.05/newpixel)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3374 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.145/newpixel), b7=flip(0.04/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(abs(newpixel^3))-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=abs(conj(conj(newpixel^3)))*cabs(newpixel+0.125)^4-b7-b6+1.75*b8-0.22
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.134287)+conj(c/13)+conj(0.05/newpixel)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3375 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.1/newpixel), b7=flip(0.01/newpixel)*2
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4-log(b7+1)-log(b6+1)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.5-(whitesq==0)*b5*2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.134287)+conj(c/12)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3376 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.125/newpixel-flip(0.01/newpixel))
  b5=conj(conj(newpixel^3)+0.125)*cabs(newpixel)^4-flip(0.01/b4)-conj(0.1/b4*0.66)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.5-(whitesq==0)*b5*2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.134287)+conj(c/12)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3377 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.135/newpixel), b7=flip(0.01/newpixel)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4-b7-b6-0.2
  c=whitesq*b4-(whitesq==0)*b4
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7345-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(0.255044,0.5791)+conj(c/9.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3378 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=newpixel^4-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=newpixel^4-conj(0.01/newpixel-flip(0.01/newpixel))-conj(0.1/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5/2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+conj(c-0.075/c)-flip(real(|d/40*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3379 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(0.37,-0.2991)*0.99519
  b5=conj(conj(newpixel))*(newpixel^4)+tanh(0.1/newpixel)-sinh(0.1/newpixel)-conj(0.15/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
Carr3381 {; MJM-PHC02 Brian E. Jones modified
  z =pixel^3
  c=conj(conj(pixel))*(pixel^4)+tanh(0.1/pixel)-sinh(0.1/pixel)-conj(0.125/pixel)
  newpixel=pixel, iter=0 
  reduction=real(p1)+(real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3+(p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit=100, bailout=4
  p=(0.255044,0.5791):
  test=(iter==nextzoom)
  test1=(compt<limit)
  nextzoom=nextzoom+test*iterspace
  newpixel=newpixel*(1-test)+test*reduction*(newpixel-p2)*exp(rotation)
  z=z*(1-test) 
  c=(c*(1-test)+test*newpixel)*whitesq+(c*test1+p*(1-test1))*(whitesq==0)
  z=z*z+c
  iter=iter+1
  compt=compt+1
  |z|<=16
  ;SOURCE: 43gcarr.frm
}
 
Carr3382 {; MJM-PHC02 Brian E. Jones modified
  c =pixel^3-conj(0.1/pixel)
  z=conj(conj(pixel))*(pixel^4)+tanh(0.1/pixel)-sinh(0.1/pixel)-conj(0.125/pixel)
  newpixel=pixel, iter=0 
  reduction=real(p1)+(real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3+(p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit=100, bailout=4
  p=(0.255044,0.5791):
  test=(iter==nextzoom)
  test1=(compt<limit)
  nextzoom=nextzoom+test*iterspace
  newpixel=newpixel*(1-test)+test*reduction*(newpixel-p2)*exp(rotation)
  z=z*(1-test)
  c=(c*(1-test)+test*newpixel)*whitesq+(c*test1+p*(1-test1))*(whitesq==0)
  z=z*z+c
  iter=iter+1
  compt=compt+1
  |z|<=16
  ;SOURCE: 43gcarr.frm
}
 
Carr3383 {; MJM-PHC02 Brian E. Jones modified
          ; Some optimizations made by G. Martin
  c=pixel^5-conj(0.15/pixel)
  z=pixel^4-conj(0.01/pixel-flip(0.01/pixel))-conj(0.1/pixel)-0.2
  newpixel=pixel, iter=0 
  reduction=real(p1)+(real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3+(p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit=100, bailout=4
  p=(0.255044,0.5791):
  test=(iter==nextzoom)
  test1=(compt<limit)
  nextzoom=nextzoom+test*iterspace
  newpixel=newpixel*(1-test)+test*reduction*(newpixel-p2)*exp(rotation)
  z=z*(1-test)
  c=(c*(1-test)+test*newpixel)*whitesq+(c*test1+p*(1-test1))*(whitesq==0)
  z=z*z+c-conj(0.01/c)
  iter=iter+1
  compt=compt+1
  z<=16
  ;SOURCE: 43gcarr.frm
}
 
Carr3384 {; MJM-PHC02 Brian E. Jones modified
          ; Some optimizations made by G. Martin
  z=conj(conj(pixel))^4-conj(0.1/pixel)-flip(0.01/pixel)+sin(0.1/pixel)-0.1/pixel
  c=pixel^4-tanh(0.1/pixel)
  newpixel=pixel, iter=0 
  reduction=real(p1)+(real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3+(p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit=100, bailout=4
  p=(0.255044,0.5741):
  test=(iter==nextzoom)
  test1=(compt<limit)
  nextzoom=nextzoom+test*iterspace
  newpixel=newpixel*(1-test)+test*reduction*(newpixel-p2)*exp(rotation)
  z=z*(1-test)
  c=(c*(1-test)+test*newpixel)*whitesq+(c*test1+p*(1-test1))*(whitesq==0)
  z=z*z+c
  iter=iter+1
  compt=compt+1
  z<=16
  ;SOURCE: 43gcarr.frm
}
 
Carr3380 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(newpixel^2-(conj(0.125/newpixel)+flip(conj(0.0010/newpixel)))^4)+flip(0.1/newpixel)+0.25
  b4=newpixel*newpixel*(0.25-newpixel)+0.1
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}
 
