Carr3121 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((sin(conj(newpixel))/((tanh(conj(-0.81256,-0.189)))/(conj(cabs(newpixel)))))+0.35)^1.5
  b4=flip(conj(newpixel*newpixel))/(conj(newpixel))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/9|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3122 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((flip(conj(newpixel))/((cabs(conj(-0.81256,-0.189)))/(conj(cabs(newpixel)))))+0.35)^1.5
  b4=flip(conj(newpixel*newpixel))/(cabs(conj(newpixel)))
  c=whitesq*(b4)-(whitesq==0)*flip(cabs(b4^3))
  z=whitesq*(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=cabs(5.0625*z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/9|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3123 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=cabs(newpixel/2)-newpixel*((0.3,0.6)+newpixel)-conj(0.1/newpixel)
  b5=b4^2-conj(0.1/b4-flip(0.01/b4))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/9|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3124 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=abs(newpixel^3)-newpixel*((0.3,0.6)+newpixel)-conj(0.1/newpixel)-0.15
  b4=b5^2-conj(0.1/b5-flip(0.01/b5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/9|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3125 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel^7-(0.2*exp(0.2-newpixel^(-0.025)))
  b5=cabs(b4)^2-conj(0.1/newpixel-flip(0.01/b4))-0.45
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(|z/2|), c2=2.25*conj(z/2), c3=3.375*flip(z/2)^6, c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/8|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3126 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel^2-(0.2*cabs(0.2-newpixel^(-0.025)))
  b5=abs(b4)^2-cabs(0.1/newpixel-flip(0.01/b4))-0.45
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(|z/2|), c2=2.25*conj(z/2), c3=3.375*flip(z/2)^6, c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/8|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3127 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=cabs(b4)*abs(3*b4*b4-0.1/newpixel)-0.14
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(|z/2|), c2=2.25*conj(z/2), c3=3.375*flip(z/2)^6, c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/8|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3128 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(newpixel)*abs(newpixel)*tan(newpixel)-conj(0.1/newpixel)
  b4=1/sinh(1/(b5*b5))
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(|z/2|), c2=2.25*conj(z/2)
  c3=3.375*flip(z/2)^6, c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/8)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}

Carr3129 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(newpixel)*abs(newpixel)*flip(newpixel)-flip(0.1/newpixel)+0.13
  b4=conj(1/sinh(1/(b5^3)))
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(|z/2|), c2=2.25*conj(z/2), c3=3.375*flip(z/2)^6, c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/8)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3130 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(newpixel)*abs(newpixel)*tan(newpixel)*flip(newpixel/2)-conj(0.1/newpixel)-0.25
  b4=1/sinh(1/(b5*b5))
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(|z/2|), c2=2.25*conj(z/2), c3=3.375*flip(z/2)^6, c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/8)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3131 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=flip(conj(newpixel^2)*abs(newpixel)*tan(newpixel)-conj(0.1/newpixel))+0.1
  b4=1/sinh(1/(b5/2*b5))
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(|z/2|), c2=2.25*conj(z/2), c3=3.375*flip(z/2)^6, c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/8)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3132 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=conj(newpixel)*abs(newpixel)*tan(newpixel)-conj(0.1/newpixel)
  b5=flip(cosxx(newpixel^3))*abs(conj(newpixel))+0.25
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2)^6, c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/8|)+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3133 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel^4-conj(0.1/newpixel)-flip(0.1/newpixel)^3+0.3
  b4=b5*flip(b5)
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3134 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=abs(newpixel^5)-newpixel*((0.3,0.6)+newpixel)-conj(0.1/newpixel)+0.25
  b4=b5^2-conj(0.1/b5-flip(0.01/b5))^2-conj(0.1/newpixel-flip(0.01/newpixel))^3
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.144)+(c/10)-(|0.0035/c/21|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3135 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(newpixel)*abs(newpixel)*tan(newpixel)*cabs(newpixel)-conj(0.1/newpixel)
  b4=1/sinh(1/(b5*b5))/2
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5^2
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.132)+(c/8)-(0.0035/c/21)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3136 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(newpixel^2)*abs(newpixel^2)*tan(newpixel^2)*cabs(newpixel^2)-conj(0.1/newpixel)
  b4=0.1/sinh(0.1/(b5*b5))/2
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5^2
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.132)+(c/8)-(0.0035/c/21)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3137 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(newpixel^2)*tanh(newpixel^2)*flip(newpixel^2)*cabs(newpixel^2)-flip(0.06/newpixel)
  b4=0.1/sinh(0.1/(b5*b5))/2
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5^2
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.132)+(c/8)-(0.0035/c/21)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3138 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((newpixel+conj(0.125/newpixel))^3)*abs(newpixel)
  b4=b5-0.1/b5
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5^2
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.132)+(c/8)+(0.0065/c/21)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3139 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(newpixel)*cabs(newpixel)-0.3
  b4=flip(abs(newpixel))
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5^2
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.132)+(c/8)+(0.0035/c/21)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3140 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel-(|conj(0.1/newpixel)|)
  b5=newpixel^3-(|flip(0.01/newpixel)|)+0.4
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5^2
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*abs(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/8|)-0.0025/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3141 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  pixinv = 0.01/newpixel
  p0 = (-0.7456,-0.132) - 0.25*pixinv
  IF (whitesq)
    c = | (newpixel - |pixinv|) * 0.125 | + p0
    z = zorig = newpixel*sqr(newpixel) - |pixinv - conj(10*pixinv)| + 0.4
  ELSE
    c = | (- newpixel + |pixinv|) * 0.125 | + p0
    z = zorig = - sqr(newpixel*sqr(newpixel) - |pixinv - conj(10*pixinv)| + 0.4)
  ENDIF
  imagp1 = imag(p1), imagp2 = imag(p2), bailout = 16, iter = 0:
  IF (iter == p1)
    z = 0, c = |0.09375*zorig| + p0
  ELSEIF (iter == imagp1)
    z = 0, c = |0.140625*zorig| + p0
  ELSEIF (iter == p2)
    z = 0, c = |0.2109375*zorig| + p0
  ELSEIF (iter == imagp2)
    z = 0, c = |0.6328125*zorig| + p0
  ENDIF
  iter = iter + 1
  z = z*z + c
  |z| <= bailout
  ;SOURCE: 0from_ml.frm
}

Carr3142 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=flip(newpixel)-(|conj(0.05/newpixel)|)
  b5=abs(newpixel^3)-(|flip(0.01/newpixel-conj(0.3/newpixel))|)+0.4
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5^2
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*abs(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/8|)-0.0025/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3143 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel^4-((abs(newpixel/4))/(conj(newpixel/2)))^3
  b4=flip(newpixel^2)*cabs(newpixel)-(|flip(0.01/newpixel-conj(0.1/newpixel))|)+0.1
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5^2
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*abs(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/8)-0.0025/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3144 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  m3=cabs(newpixel)*conj(conj(newpixel))
  b5=(m3-conj(0.10/newpixel))-0.15
  b4=(-1.099,-0.0049)/2
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5^2
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*abs(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/8)-0.0025/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3145 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G. Martin 6/13/99
   ; passes=1 needs to be used with this PHC formula.
   ; Converted to IF..ELSE logic by Sylvie Gallet, 11/30/97
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c0 = (-0.7456,-0.132) - 0.0025/newpixel
  IF (whitesq)
    c = (-0.0466,-0.00825) + c0
    z = zorig = |newpixel|*newpixel*newpixel + conj(0.10/newpixel)
  ELSE
    c = (0.0466,0.00825) + c0
    z = zorig = - sqr(|newpixel|*newpixel*newpixel + conj(0.10/newpixel))
  ENDIF
  imagp1 = imag(p1), imagp2 = imag(p2), bailout = 16, iter = 0 :
  IF (iter == p1)
    z = 0, c = 0.09375*cabs(zorig) + c0
  ELSEIF (iter == imagp1)
    z = 0, c = 0.140625*conj(zorig) + c0
  ELSEIF (iter == p2)
    z = 0, c = 0.2109375*flip(zorig) + c0
  ELSEIF (iter == imagp2)
    z = 0, c = 0.6328125*abs(zorig) + c0
  ENDIF
  iter = iter + 1
  z = z*z + c
  |z| <= bailout
  ;SOURCE: 97msg.frm
}

Carr3146 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(-0.8006,-0.1645)/2
  b5=(flip(flip(newpixel))^3-1/(atan(0.1/newpixel)-cabs(acos(0.2/newpixel))))
  m4=(-0.7456,-0.132)
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*abs(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+m4+(c/8)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3147 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=(conj(abs(newpixel))^3-0.25/(atan(0.1/newpixel)-cabs(acos(0.2/newpixel))))
  m4=(-0.7456,-0.132)
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*abs(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+m4+(c/8)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3148 (YAXIS) {; Modified Sylvie Gallet formula.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((tan(newpixel)^2+cotan(newpixel)^2)/(sin(newpixel)^2-cos(newpixel)^2))
  b4=newpixel-0.1/b5
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/8|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3149 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((cabs(newpixel)^3+cotan(newpixel)^2)/(sin(newpixel)^2-cos(newpixel)^3))+0.3
  b4=newpixel-0.1/b5-conj(0.1/newpixel)-flip(0.01/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/8|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3150 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(sin(newpixel)-tan(newpixel))/(cos(newpixel)-cotan(newpixel))
  b4=newpixel-0.1/b5-conj(0.1/newpixel)-flip(0.01/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/8|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3151 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(sin(newpixel)-tan(newpixel))/(sin(newpixel^1.5)-cotan(newpixel))*2
  b4=newpixel-0.1/b5-conj(0.1/newpixel)-flip(0.01/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/8|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3152 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(sin(newpixel)-tan(newpixel))/(sin(newpixel)-abs(newpixel^4))
  b4=newpixel^2-0.1/b5-conj(0.1/newpixel)-flip(0.01/newpixel)
  c=whitesq*b4-(whitesq==0)*(|b4|)
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/8|)/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3153 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(sin(newpixel)-abs(newpixel))/(sin(newpixel)-tan(newpixel^4))
  b4=newpixel^2-0.1/b5-conj(0.1/newpixel)-flip(0.01/newpixel)
  c=whitesq*b4-(whitesq==0)*(|b4|)
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/8|)/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3154 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b5=newpixel^3-0.2*((cabs(newpixel-b3)^3+cotan(0.3-newpixel)^2)/(sin(newpixel)^2-cos(0.3-newpixel+b3)^3))-0.4
  b4=newpixel^2-0.1/b5-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*(|b4|)
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/8|)/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3155 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b2=((cabs(newpixel-b3^3)^3+cotan(0.3-newpixel)^2)/(sin(newpixel)^2-cos(0.3-newpixel+b3)^3))-0.4
  b5=cabs(newpixel^3)-0.2*b2
  b4=newpixel^2-0.1/b5-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/8|)/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3156 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=abs(conj(newpixel)*flip(conj(newpixel^2)))
  b4=b5^3-conj(0.1/newpixel-flip(0.015/newpixel-flip(0.1/b5)))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3157 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(newpixel-conj(conj(0.10/newpixel))-cotan(cotan(0.1/-newpixel)))
  b4=(newpixel+cosxx((sqr(cos(0.1-newpixel+conj(0.1-newpixel))))))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3158 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(newpixel^4-conj(conj(0.10/newpixel))-cotan(cotan(0.1/-newpixel)))
  b4=(newpixel+cosxx((sqr(cos(0.1-newpixel+conj(0.1-newpixel))))))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3159 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b5=newpixel^5+0.4-abs(abs(b3))+0.35
  b4=0.55*((newpixel^3-flip(0.010/newpixel-conj(0.10/newpixel))))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3160 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b4=newpixel-conj(newpixel/5)
  b5=b4^3-flip(0.099/newpixel)
  c=whitesq*b4-(whitesq==0)*(|b4|)
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

Carr3161 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=b4^3-abs(0.099/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/8|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}

