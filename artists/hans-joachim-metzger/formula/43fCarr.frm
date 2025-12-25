Carr3316 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b5=pi*(newpixel^4-b6)*(b10)^3*(b4-b7)^3-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel+0.15
  b4=newpixel^6-0.33*(newpixel^4-b3)-0.025/b5
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-c-c/11-((b8^2*b6/newpixel)^3)/1.5+b6
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3317 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b2=(b8/0.55-b6/0.55-b7/0.55-0.001/newpixel)
  b5=(cabs(newpixel^4)-b6)*(b10)^5*(b4-b7)^3-b2^1.25+0.1
  b4=abs(newpixel)^6-0.33*(newpixel^4-b3)-0.025/b5
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z*z/5+z*z+2*c^2+(-0.7456,-0.132)^2.5
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3318 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b2=(b8/0.55-b6/0.55-b7/0.55-0.001/newpixel)
  b5=(cabs(newpixel^4)-b6)*(b10)^5*(b4-b7)^3+b2^1.25+0.1
  b4=abs(newpixel)^6-0.33*(newpixel^4-b3)-0.015/b5-(|0.015/b5*b3|)
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z*z/5+z*z+2*c^2+(-0.7456,-0.132)^2.5
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3319 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b2=(b8/0.55-b6/0.55-b7/0.55-0.001/newpixel)
  b4=1.2*(|newpixel/0.75|)^5+conj(0.1/newpixel+flip(0.01/newpixel))
  b9=conj(0.007/b4-flip(0.007/b4))
  b5=flip(imag(0.33+sin(|newpixel|)))*cabs((newpixel)^4)-b2+0.001*b3-0.42*cos(b9)+0.35
  c=whitesq*b4-(whitesq==0)*(b4/2)
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-conj(c+0.1*b6)+flip(real(|d/70*newpixel|))-2*(c/8)-0.33*b7-b2
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3320 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b2=(b8/0.55-b6/0.55-b7/0.55-0.001/newpixel)
  b4=conj(|newpixel|)^5+conj(0.1/newpixel+flip(0.01/newpixel))
  b9=conj(0.007/b4-flip(0.007/b4))
  b5=flip(imag(0.33+sin(|newpixel|)))*cabs((newpixel)^4)-b2+0.001*b3-0.42*cosxx(b9)+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-conj(c+0.1*b6)+flip(real(|d/70*newpixel|))-2*(c/9)-0.33*b7-b2
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3321 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.01/newpixel), b7=flip(0.025/newpixel)
  b4=newpixel^3^exp(0.02*newpixel)+0.25
  b5=abs((cabs(b4^6)/(cotanh(0.1-newpixel))+conj(0.01/newpixel))+flip(0.01/b4))+0.2493
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+c/10-b6
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3322 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=conj(0.01/newpixel-flip(0.001/newpixel))
  b5=conj(conj(newpixel/12)*sin(abs(newpixel/13)))*conj(newpixel^8)-b3-conj(0.1/newpixel)+0.2
  b6=conj(conj(b5/2.5))-conj(0.01/newpixel)
  b4=b6+0.25
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z/6|)+z*z+c+0.09-c/8+0.055/newpixel-(flip(abs(d/60*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3323 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(newpixel^4/(tanh(0.3/newpixel)))+(0.1/newpixel)
  b5=conj(b4^6)-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3324 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b2=(b8/0.55-b6/0.55-b7/0.55-0.001/newpixel)
  b4=(conj(newpixel^4/(tanh(0.3/newpixel)))+(0.1/newpixel))-0.25
  b5=conj(cabs(b4^6)-b2)-conj(0.1/newpixel-flip(0.01/newpixel))-0.17
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3325 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b4=newpixel^2-conj(0.2*cabs(0.2-newpixel^(-0.025)))
  b5=flip(b4-b7)^3-cabs(0.01/newpixel-flip(0.01/b4))-b6+b8+0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3326 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b2=(b8/0.55-b6/0.55-b7/0.55-0.001/newpixel)
  b5=abs(conj(newpixel^5))*cabs(conj(newpixel))-conj(0.0125/newpixel-flip(0.005/newpixel))-b2-0.19452
  b4=conj(b5/2+b5)^2-conj(0.001/b5-flip(0.001/b5))-b6
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3327 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.01/newpixel), b7=flip(0.02/newpixel)
  b1=newpixel^2-conj(0.2*cos(0.2-newpixel^(-0.025)))
  b5=flip(conj(newpixel^4))*abs(conj(newpixel))*b1-conj(0.0125/newpixel-flip(0.005/newpixel))-0.075
  b4=conj(b5/2+b5)^2-conj(0.001/b5-flip(0.001/b5))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.66-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+c/10-b7+b6
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3328 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.025/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10a=newpixel-sinh(0.01/newpixel)-tanh(0.01/newpixel)-sinh(0.01/newpixel)
  b10=conj(newpixel)^3*newpixel^3*abs(newpixel)
  b5=conj(b10^1.5)*b10a^2*newpixel-b6-b7-b8-0.1945
  b4=conj(b5/2+b5)^2-conj(0.001/b5-flip(0.001/b5))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.66-(whitesq==0)*b5/2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c-b6+b7+0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3329 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.025/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b2=(b8/0.65-b6/0.65-b7/0.65-0.002/newpixel)
  b10a=newpixel-sinh(0.01/newpixel)-tanh(0.01/newpixel)-sinh(0.01/newpixel)
  b10=conj(newpixel)^3*newpixel^3*abs(newpixel)
  b1=tanh(newpixel)^2-conj(0.075*cos(0.2-newpixel^(-0.025)))
  b5=conj(b10^3)*conj(b10a^2*newpixel^2.5)-0.2*b1-b6-b8-0.1945
  b4=conj(b5/2+b5)^2-conj(0.01/b5-conj(0.01/b5))-b2-0.25
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5/2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c-b6+b7+0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3330 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.025/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b2=(b8/0.65-b6/0.65-b7/0.65-0.002/newpixel)
  b10a=newpixel-sinh(0.01/newpixel)-tanh(0.01/newpixel)-sinh(0.01/newpixel)
  b10=conj(newpixel)*sinh(newpixel)^2*tanh(newpixel)*conj(abs(newpixel))
  b1=tanh(newpixel/pi)^2-conj(0.075*cos(0.2-newpixel^(-0.025)))
  b5=b10a*b10-b2*0.5+b6+b7+0.02*b3+0.1045
  b4=conj(b5/2+b5)^2-conj(0.001/b5-flip(0.001/b5))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5/3/newpixel
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c-b6+b7+0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3331 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.025/newpixel), b7=flip(0.01/newpixel)
  b10a=newpixel^3-cabs(0.01/newpixel)-abs(0.01/newpixel)-(0.01/newpixel)
  b5=0.67*b10a*(cabs(newpixel^2)+conj(conj(newpixel^9)))-conj(0.1/newpixel-flip(0.01/newpixel))+0.1
  b4=b5-conj(|0.1/b5|)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c-b6+b7-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3332 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.025/newpixel)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*conj(b5^0.745)-(whitesq==0)*conj(b5-b6)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3333 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.055/newpixel)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))+0.2
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.0075/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*conj(b5^0.745)-(whitesq==0)*conj(b5-b6)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3334 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.055/newpixel)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))+0.2
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.0075/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*conj(b5^0.745)-(whitesq==0)*conj(b5-b6)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+(-0.745,-0.132)-c/8.25
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3335 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.055/newpixel)
  b4=cabs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))+0.2
  b5=conj(cabs(newpixel^3-b6))*flip(abs(newpixel^4))-flip(0.025/newpixel)-conj(0.0075/newpixel)-0.1834
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*conj(b5^0.745)-(whitesq==0)*conj(b5-b6)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+(-0.745,-0.132)-c/8.25
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3336 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.055/newpixel)
  b4=cabs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))+0.2
  b5=conj(cabs(newpixel^3-b6))*flip(abs(newpixel^4))-flip(0.025/newpixel)-conj(0.0075/newpixel)-0.1834
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*conj(b5^0.745)-(whitesq==0)*conj(b5-b6)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-conj(0.15*z)+c+c/12
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3337 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.055/newpixel), b7=flip(0.025/newpixel)
  b5=conj(newpixel^2)*conj(flip(newpixel^3))-b6^2-b7+0.1534
  b4=conj(b5/2.5)+flip(b5/2.5)-b6
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*conj(b5-b6)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-conj(0.25*z)+c+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3338 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.025/newpixel)
  b4=0.3*(newpixel^4)/cos(0.1/cotanh(newpixel))-0.1/log(newpixel-0.2/sqrt(0.50/newpixel))^2.5-conj(0.05/newpixel)
  b5=b10a*conj(b4/2.5)-b6+0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3339 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.05/newpixel)
  b5=(newpixel^5)-conj(0.1/newpixel-flip(0.010/newpixel))+conj(0.1/newpixel)+0.2
  b4=newpixel-conj(0.1/newpixel-flip(0.01/newpixel))-conj(0.01/b5)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*(b5+newpixel/pi)+b6*0.25
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3340 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=b5=(0.5+newpixel/2)^7-conj(0.1/newpixel)-flip(0.1/newpixel)+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3341 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=(0.5+newpixel/2)^7-conj(0.1/newpixel)-flip(0.1/newpixel)+0.3
  b5=(0.5+newpixel/3)^4*conj(0.5+newpixel/2)^4-conj(0.15/newpixel)-flip(0.15/newpixel)+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+conj(c-0.075/c)-flip(real(|d/40*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3342 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b9=abs(0.5+newpixel/3)^4*conj(0.5+newpixel/2)^4*(0.5+newpixel/2)
  b4=(0.5+newpixel/2)^7-conj(0.2/newpixel)-flip(0.2/newpixel)+0.3
  b5=b9-conj(0.175/newpixel)-flip(0.15/newpixel)-b8-0.01/b4-conj(0.01/b4)+0.27
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.6456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+conj(c-0.075/c)-flip(real(|d/40*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3343 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b9=cabs(0.5+newpixel/3)^4*conj(0.5+newpixel/2)^4*flip(0.5+newpixel/2)^2
  b4=(0.5+newpixel/2)^7-conj(0.2/newpixel)-flip(0.2/newpixel)+0.3
  b5=b9-conj(0.175/newpixel)-flip(0.15/newpixel)-b8-0.01/b4-conj(0.1/b4)+0.27
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.6456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+conj(c-0.075/c)-flip(real(|d/40*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3344 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=flip(newpixel^5)-conj(0.1/newpixel-flip(0.001/newpixel))-0.135
  b4=b5-conj(|0.1/b5|)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3345 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=flip(newpixel^2)-cabs(conj(newpixel^7))-conj(0.01/newpixel-flip(0.001/newpixel))
  b4=abs(b5/4)*conj(conj(b5/2))*conj(flip(b5/3))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5/(tanh(0.3/newpixel))
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3346 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  j=(1-newpixel)^1.8/flip(asinh(newpixel^2))
  b5=(newpixel^7)/j-conj(0.01/newpixel)-flip(0.1/newpixel)+0.15
  b4=(newpixel^7)/j-conj(0.01/newpixel)-flip(0.1/newpixel)
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
  ;SOURCE: 43fcarr.frm
}
 
Carr3349 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  ba=2*(conj(0.1-newpixel))*2*conj(abs(newpixel))*flip(tanh(newpixel))
  b4=ba-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=(conj(sinh(b4^3))-conj(0.15/b4+flip(0.0075/b4))-0.15)^2
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
  ;SOURCE: 43fcarr.frm
}
 
Carr3350 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  ba=2*(conj(0.1-newpixel))*2*conj(abs(newpixel))*2*flip(tanh(sinh(newpixel)))
  b4=ba-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=(conj(sinh(b4^3))-conj(0.15/b4+flip(0.0175/b4)-conj(0.1/newpixel))-0.16)^2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5/2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3351 {; Modified Sylvie Gallet frm.1996
	  ; Rewritten for if..else by Sylvie Gallet, 6/14/98
	  ; passes=1 needs to be used with this PHC formula
          ; Added variable "newpixel". G. Martin 6/13/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  IF (whitesq)
    c = 0.264 * conj(0.1-newpixel) * conj(sinh(newpixel)) * flip(tanh(newpixel))
    z = zorig = (sqr(sqr(newpixel)) - flip(0.05/newpixel) - conj(0.001/newpixel)\
	       - 0.0001/c)^0.745
    c = (-0.745,-0.132) - flip(conj(c))
  ELSE
    c = - 0.264 * conj(0.1-newpixel) * conj(sinh(newpixel)) * flip(tanh(newpixel))
    z = zorig = - (sqr(sqr(newpixel)) - flip(0.05/newpixel) - conj(0.001/newpixel)\
	       + 0.0001/c)
    c = (-0.745,-0.132) - flip(conj(c))
  ENDIF
  bailout = 16, iter = 0
  :
  IF (iter == p1)
    z = 0, c = (-0.745,-0.132) - flip(conj(0.15*zorig^1.2))
  ELSEIF (iter == imag(p1))
    z = 0, c = (-0.745,-0.132) - flip(conj(0.225*zorig))
  ELSEIF (iter == p2)
    z = 0, c = (-0.745,-0.132) - flip(conj(0.3375*zorig))
  ELSEIF (iter == imag(p2))
    z = 0, c = (-0.745,-0.132) - flip(conj(0.50625*zorig))
  ENDIF
  iter = iter + 1
  z = z*z + c
  z <= bailout
  ;SOURCE: 98msg.frm
}
 
Carr3352 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(newpixel)*abs(newpixel)*flip(newpixel)-conj(0.1/newpixel-flip(0.01/newpixel))-0.2
  b4=conj(sinh(b5^3))-conj(0.1/b5+flip(0.01/b5))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.745,-0.132)-flip(conj(c/10))
  iter=iter+1
  z<=bailout
  ;SOURCE: 43fcarr.frm
}
 
Carr3346 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  j=(1-newpixel)^1.8/flip(asinh(newpixel^2))
  b5=(newpixel^7)/j-conj(0.01/newpixel)-flip(0.1/newpixel)+0.15
  b4=(newpixel^7)/j-conj(0.01/newpixel)-flip(0.1/newpixel)
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
  ;SOURCE: 43fcarr.frm
}
 
Carr3347 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=conj(newpixel)*abs(newpixel)*flip(newpixel)-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=conj(sinh(b4^3))-conj(0.1/b4+flip(0.01/b4))-0.15
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
  ;SOURCE: 43fcarr.frm
}
 
