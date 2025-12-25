Carr3278 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=flip(conj(newpixel^5))*abs(conj(newpixel))-conj(0.0125/newpixel-flip(0.005/newpixel))
  b4=conj(b5/2+b5)^2-conj(0.001/b5-flip(0.001/b5))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+0.125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3279 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=flip(0.1-newpixel)+abs(newpixel^6)-newpixel/pi-conj(0.01/newpixel)+0.25
  b4=b5^2-conj(0.1/b5-flip(0.01/b5))^2-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+0.125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3280 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=flip(0.1-newpixel)+abs(newpixel^6)-newpixel/pi-conj(0.01/newpixel)-flip(0.01/newpixel)+0.2
  b4=b5^2-conj(0.01/b5-flip(0.01/b5))^2-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4^0.75-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+0.125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3281 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b7=flip(0.01/newpixel), b8=sin(0.001/newpixel-tanh(0.001/newpixel))
  b9=conj(0.01/b5-flip(0.01/b5))
  b5=flip(0.1-newpixel)+abs(newpixel^6)+b8-newpixel/pi-conj(0.01/newpixel)-flip(0.01/newpixel)+0.2
  b4=flip(b5^2)-b9^2-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4^0.75-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5^3
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+0.125-b7
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3282 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b7=flip(0.01/newpixel), b8=sin(0.001/newpixel-flip(0.001/newpixel))
  b9=conj(0.01/b5-flip(0.01/b5))
  b4=flip(0.1-newpixel)+abs(newpixel^6)+b8-newpixel/pi-conj(0.01/newpixel)-flip(0.01/newpixel)
  b5=flip(b4^2)-b9^2-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4^0.75-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5^3
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+0.125-b7
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3283 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.01/newpixel), b8=sin(0.003/newpixel-flip(0.003/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.01/newpixel-flip(0.001/newpixel))
  b5=conj(conj(newpixel^3.3))*cabs(newpixel+0.125)^4-b7-b6+1.75*b8-0.2
  c=whitesq*b4-(whitesq==0)*b4+0.2
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+flip(real(|d/70*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3284 (YAXIS) {; Modified Sylvie Gallet frm.1996
		  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.01/newpixel) 
  b8=sin(0.003/newpixel-flip(0.003/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))\
      -conj(0.01/newpixel-flip(0.001/newpixel))
  b9=conj(0.007/b4-flip(0.007/b4))
  b5=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4-b7-b6+1.75*b8-0.2
  c=whitesq*b4-(whitesq==0)*b4+0.2
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+flip(real(|d/70*newpixel|))-(|b6|)-b7-flip(b9/5)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}
 
Carr3285 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.01/newpixel)
  b9=conj(0.01/b4*b8^2-flip(0.01/b4*b8))
  b5=conj(conj(newpixel/2)*sin(abs(newpixel/3)))*conj(newpixel^6)-b7-b6-0.2
  b4=b5-0.01/b5-b6-b7
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*conj(b5)^0.7455-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z*z+conj(c)+flip(real(|d/70*newpixel|))-(|b6|)-b7-flip(b9)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3286 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b8=sin(0.003/newpixel-flip(0.003/newpixel))
  m3=cabs(newpixel)*conj(conj(newpixel)), m4=(-0.7456,-0.132)
  b4=m4/2-b8-0.25/m3, b8=sin(0.003/newpixel-flip(0.003/newpixel))
  b9=conj(0.01/b4*b8^2-flip(0.01/b4*b8))
  b5=(0.75*flip(m3)^2-conj(0.01/newpixel))-b7-b8+b9+0.35 
  c=whitesq*b4^0.75-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5^0.75
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+m4+(c/8)-0.0025/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3287 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.005/newpixel)
  b4=(newpixel^4/(tanh(0.3/newpixel)))+(0.1/newpixel)
  b5=flip(newpixel-b7^2)*conj(newpixel)*flip(b4)^2-b6-b7-0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+conj(c)+flip(real(|d/70*newpixel|))-(|b6|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3288 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.005/newpixel), b8=sin(0.003/newpixel-flip(0.003/newpixel))
  b4=(newpixel^4/(tanh(0.3/newpixel)))+(0.1/newpixel)
  b9=conj(0.0033/b4*b8^2-flip(0.0033/b4*b8))
  b5=flip(newpixel-b9^2)^2*conj(newpixel^2)*flip(b4)^2-b6-b7-0.1497
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*conj(b5)^0.55-(whitesq==0)*(b5+b9)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+conj(c+0.25*b6)+flip(real(|d/70*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3289 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.005/newpixel), b8=sin(0.003/newpixel-flip(0.003/newpixel))
  b4=(newpixel^4/(tanh(0.3/newpixel)))+(0.1/newpixel)
  b9=conj(0.0033/b4*b8^2-flip(0.0033/b4*b8))
  b5=newpixel*(flip(newpixel-b9^2)^2*conj(newpixel^2)*flip(b4)^2-b6-b7-0.1597)/(cos(0.1-b4+b6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*conj(b5)^0.75-(whitesq==0)*(b5+b9)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+conj(c+0.25*b6)+flip(real(|d/70*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3290 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.005/newpixel)
  b8=sin(0.003/newpixel-flip(0.003/newpixel))
  b4=(newpixel^4/(tanh(0.3/newpixel)))+(0.1/newpixel)
  b9=conj(0.0033/b4*b8^2-flip(0.0033/b4*b8)), b10=(conj(cosxx(b4+b9)))
  b5=(b4+newpixel)*(flip(newpixel-b9^2)^2*conj(newpixel^2)\
     *flip(b4)^2-b6-b7-0.1597)/b10
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*conj(b5)^0.75-(whitesq==0)*(b5+2/b4)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+conj(c+0.25*b6)+flip(real(|d/70*newpixel|))-(c/8)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}
 
Carr3291 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.01/newpixel), b8=sin(0.003/newpixel-flip(0.003/newpixel))
  b4=(newpixel^4/(sinh(0.3/newpixel)))+flip(0.1/newpixel)
  b9=conj(0.007/b4-flip(0.007/b4))
  b5=conj(conj(newpixel^3))*abs(flip(newpixel+0.125))^4-b7-b6+1.75*b8-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+flip(real(|d/70*newpixel|))-(|b6|)-b7-flip(b9/5)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3292 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.01/newpixel)
  b9=conj(0.007/b4-flip(0.007/b4)), b10=conj(newpixel)+abs(0.1-newpixel)*cabs(0.15-newpixel^2)
  b4=|newpixel^8|-flip(0.1/newpixel)
  b5=b10+abs(conj(newpixel^6))+flip(0.01/newpixel)-conj(0.001/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+flip(real(|d/70*cos(newpixel)|))-(|b6|)-b7-conj(b9/4.8)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3293 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.01/newpixel)
  b9=conj(0.007/b4-flip(0.007/b4)), b10=conj(newpixel)+abs(0.1-newpixel)*cabs(0.15-newpixel^2)
  b4=|newpixel^8|-flip(0.1/newpixel)
  b5=b10^4-b4
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+flip(real(|d/40*cotanh(newpixel)|))-(|b6|)-b7-conj(b9/5)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
 
Carr3295 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b10=(conj(newpixel^3)*newpixel^4)/(tanh(0.3/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-0.01/newpixel
  b5=b10-flip(0.0125/newpixel)-conj(0.0125/newpixel)-0.19
  c=whitesq*b4-(whitesq==0)*b4-b7-b6
  z=whitesq*b5^0.73-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3296 (YAXIS) {; Modified Sylvie Gallet frm.1996
		  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b10=(conj(newpixel^3)*newpixel^4)/(tanh(0.3/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-0.01/newpixel
  b5=b10-flip(0.0125/newpixel)-conj(0.0125/newpixel)-0.19
  c=whitesq*b4-(whitesq==0)*b4-b7-b6
  z=whitesq*b5^0.73-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/5)+z*z+c-0.09/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}
 
Carr3297 (XAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b10=(conj(newpixel^3)*newpixel^4)/(tanh(0.3/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-0.01/newpixel
  b5=conj(b10)^3-conj(0.0125/newpixel)-flip(0.0125/newpixel)^2-0.2
  c=whitesq*b4-(whitesq==0)*b4-b7-b6
  z=whitesq*b5^0.73-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/5)+z*z+c-0.09/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3298 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b10=((flip(newpixel^3)*newpixel^4)/(sinh(0.3/newpixel)))-b7
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-0.01/newpixel
  b5=newpixel^2*flip(b4/pi)*conj(b10)^3-conj(0.0155/newpixel)-flip(0.025/newpixel)+0.005/newpixel-0.17
  c=whitesq*b4-(whitesq==0)*b4-0.24
  z=whitesq*b5^0.75-(whitesq==0)*b5/2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+c/12
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3299 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=sin(0.002/newpixel-flip(0.002/newpixel))
  b10=newpixel^10-conj(0.01/newpixel-flip(0.15/newpixel))
  b4=abs(conj(conj(newpixel^2)))*b10-0.01/newpixel
  b5=newpixel^2*abs(b10)^2*cosxx(0.1-b4)-b8-b6-b7-0.002/newpixel-0.19
  c=whitesq*b4-(whitesq==0)*b4-0.24
  z=whitesq*(b5^0.745)-(whitesq==0)*(b5/2)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c-0.015-(b7*b6)^3/1.5
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3300 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=sin(0.002/newpixel-flip(0.002/newpixel))
  b10=newpixel^10-conj(0.01/newpixel-flip(0.15/newpixel))
  b4=abs(conj(conj(newpixel^2)))*b10-0.01/newpixel
  b5=cabs(newpixel^2)*abs(b10)^2*(0.1-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel-0.19
  c=whitesq*b4-(whitesq==0)*b4-0.24
  z=whitesq*(b5^0.745)-(whitesq==0)*(b5/2)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c-0.015-((b8*b6)^3)/1.5
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3301 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)-0.4/cos(newpixel)-conj(0.01/newpixel-flip(0.15/newpixel))
  b4=cabs(conj(conj(newpixel^2)))*b10-0.01/newpixel
  b5=cabs(newpixel^2)*abs(b10)^2*(0.1-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel-0.1951
  c=whitesq*b4-(whitesq==0)*b4-0.24
  z=whitesq*(b5^0.745)-(whitesq==0)*(b5/2)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z/2.5|)+z*z+c-0.015-((b8^2*b6/newpixel)^3)/1.5
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3302 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)-0.4/cos(newpixel)-conj(0.01/newpixel-flip(0.15/newpixel))
  b4=cabs(conj(conj(newpixel^2)))*b10^3-0.01/newpixel
  b5=sinh(newpixel^4)*flip(b10)^3*conj(0.25-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel-0.1951
  c=whitesq*b4-(whitesq==0)*b4-0.24
  z=whitesq*(b5^0.745)-(whitesq==0)*(b5/2*newpixel^2)+0.15
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z/2.5|)+z*z+c-0.015-((b8^2*b6/newpixel)^3)/1.5
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3303 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)-0.4/cos(newpixel)-conj(0.01/newpixel-flip(0.15/newpixel))
  b4=cabs(conj(conj(newpixel^2)))*b10^3-0.01/newpixel
  b5=sinh(newpixel^4)*flip(b10)^3*conj(0.25-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel-0.1951
  c=whitesq*b4-(whitesq==0)*b4-0.24
  z=whitesq*(b5^0.745)-(whitesq==0)*(b5/2*newpixel^2)+0.15
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z/2.5|)+z*z+c-0.015-((b8^2*b6/newpixel)^3)/1.5-c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3304 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)-0.4/cos(newpixel)-conj(0.01/newpixel-flip(0.15/newpixel))
  b4=cabs(conj(conj(newpixel^2)))*b10^3-0.01/newpixel
  b5=(1/newpixel)*flip(b10)^3*conj(0.25-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel-0.1951
  c=whitesq*b4-(whitesq==0)*b4-0.24
  z=whitesq*(b5^0.745)-(whitesq==0)*(b5/2*newpixel^2)+0.15
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z/2.5|)+z*z+c-0.015+(|c/8|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3305 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel)
  b10=flip(newpixel^8)*0.2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b5=conj(newpixel+b6)^4*newpixel^3*b10-b6/0.64-b7/0.64+0.1345
  b4=conj(conj(newpixel/2)*sin(abs(newpixel/3)^5))*flip(newpixel^6-b7)-b6
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5/0.75
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-c-c/11
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3306 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*0.2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b5=tanh(newpixel+b6)^4*newpixel^3*b10-b8/0.64-b7/0.64+0.1345+0.1/cos(b6)
  b4=conj(conj(newpixel/2)+sin(abs(newpixel/3)^5))*flip(newpixel^6-b7)-b6
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5^0.745-(whitesq==0)*b5/0.75
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-conj(c+0.25*b6)+flip(real(|d/70*newpixel|))+(c/8)+0.33*b7
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3307 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*0.2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b5=tanh(newpixel+b6)^4*newpixel^3*b10-b8/0.64-b7/0.64+0.1345+0.1/cos(b6)
  b4=conj(conj(newpixel/2)+sin(abs(newpixel/3)^5))*flip(newpixel^6-b7)-b6
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5^0.745-(whitesq==0)*b5/0.75
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-c-((b8^2*b6/newpixel)^3)/1.5
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3308 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel)
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b5=conj(newpixel^2)*flip(newpixel^5)-b6-b7-0.066/b10
  b4=b5-0.1/conj(conj(newpixel/2)+sin(abs(newpixel/3)^5))*flip(newpixel^6-b7)-b6
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5^0.745-(whitesq==0)*b5/0.75
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-c-c/11
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3309 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b4=cabs(conj(conj(newpixel^2)))*b10^3-0.01/newpixel
  b5=tanh(newpixel^4)*flip(b10)^3*conj(0.25-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+conj((newpixel-c)-0.1)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3311 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  m4=(-0.7456,-0.132)
  b4=m4/2
  b5=tanh(newpixel^4)*flip(b10)^3*conj(0.25-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel;-0.1951
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+conj((newpixel-c)-0.25)+c/12
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3312 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  m4=(-0.7456,-0.132)
  b4=m4/2
  b5=tanh(newpixel^4)*flip(b10)^3*conj(0.25-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+conj(sinh((newpixel-c))-0.25)+c/12
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3313 (YAXIS) {; Modified Sylvie Gallet frm.1996
		  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel)
  b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  m4=(0.3,0.6)
  b4=m4/pi
  b5=tanh(newpixel^4)*flip(b10)^3*conj(0.25-b4)\
     -b8/0.65-b6/0.65-b7/0.65-0.002/newpixel    ; -0.1951
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+conj(sinh((newpixel-c))-0.25)+c/12
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}
 
Carr3314 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b4=(0.3,0.6)/4
  b5=sinh(newpixel^4)*conj(b10)^3*conj(0.05-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5^2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+conj(sinh((newpixel-c))-0.25)+c/12
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3315 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b4=newpixel^4-b6-b7
  b5=1/cos(pi)*(newpixel^4)*(b10)^3*(0.15-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+c/11
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3310 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  m4=(-0.7456,-0.132)
  b4=m4/2
  b5=tanh(newpixel^4)*flip(b10)^3*conj(0.25-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel;-0.1951
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+conj((newpixel-c)-0.175)+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
Carr3294 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.01/newpixel)
  b9=conj(0.007/b4-flip(0.007/b4)), b10=conj(newpixel)+abs(0.1-newpixel)*cabs(0.15-newpixel^2)
  b4=abs(newpixel^6)-flip(0.085/newpixel)
  b5=b10^4*abs(newpixel^2)-b4-b6+0.1
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+flip(real(|d/40*cotanh(newpixel)|))-(|b6|)-b7-conj(b9/5)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}
 
