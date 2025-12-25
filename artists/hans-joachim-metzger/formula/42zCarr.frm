Carr3074 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=cabs(newpixel/2)-newpixel*((0.3,0.6)+newpixel)-conj(0.1/newpixel)
  b4=b5^2-conj(0.1/b5-flip(0.01/b5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(flip(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3075 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=cabs(newpixel/2)-newpixel*((0.3,0.6)+newpixel)-conj(0.1/newpixel)
  b5=b4^2-conj(0.1/b4-flip(0.01/b4))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(flip(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3076 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=((newpixel)-conj(asin(newpixel+newpixel+0.39)))
  b5=(newpixel/(cabs(0.3/newpixel)))+0.15
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(flip(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3077 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=((newpixel)-conj(asin(newpixel+newpixel+0.39)))
  b5=((newpixel/(cabs(0.3/newpixel)))+0.15)+cabs(0.1/b4)*conj(0.1/b4)
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(flip(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3078 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(0.33-cos(newpixel))/(0.33-tan(2*newpixel))+0.75
  b5=((newpixel/(cabs(0.3/newpixel)))+0.15)+cabs(0.1/b4)*conj(0.1/b4)+0.13
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(flip(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3079 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=((newpixel^4)-conj(asin(newpixel+newpixel+0.39)))
  b5=((newpixel^5/(abs(0.1/newpixel)))+0.15)+cabs(0.1/b4)*conj(0.1/b4)
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(flip(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3080 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=conj(newpixel/2)
  b4=(3.5*newpixel^5)-r-sin(0.08-flip(0.01/newpixel))+conj(0.0535/newpixel)
  b5=(3.5*newpixel^5)-r-sin(0.08-flip(0.01/newpixel))+conj(0.0535/newpixel)-0.197
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(abs(c/12))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3081 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=conj(newpixel/2)
  b4=(3.5*newpixel^5)-r-sin(0.08-flip(0.01/newpixel))+conj(0.0535/newpixel)
  b5=(newpixel^5)+r-sin(0.08-flip(0.01/newpixel))+conj(0.1535/newpixel)+0.197
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(flip(c/12))|
  c=((z+c/2.125)-0.0325)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3082 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=8*newpixel, j=newpixel
  b4=sinh(newpixel)-1/log(2*j+0.0450/j-conj(0.010/-newpixel)\
      -flip(0.050/newpixel)+4.6/r)
  b5=newpixel^2.3-conj(0.1/newpixel)-0.15
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(flip(c/12))|
  c=((z+c/2.125)-0.0325)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3083 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel
  b5=flip(abs(0.33-newpixel))*sqr(newpixel)-conj(0.10/newpixel)-flip(0.010/newpixel)
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*abs(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(cabs(|c/10|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3084 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel^3+0.4
  b4=cosxx(0.33-newpixel)
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7450,-0.130)+(flip(|c/12|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3085 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel^3-0.4
  b4=cosh(0.33-conj(newpixel))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7450,-0.130)+(flip(|c/12|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3086 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=flip(0.66-newpixel)^3+0.2
  b4=abs(0.33-(newpixel))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7450,-0.130)+(|c/12|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3087 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=pixel^3-conj(0.1/pixel)-flip(0.01/pixel)^2+0.1/pixel
  b4=(b5*b5/(exp(pixel)))*b5-conj(0.1/pixel-flip(0.01/pixel))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+c
  iter=iter+1
  (2-z)<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3088 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel^3-conj(0.1/newpixel)-flip(0.01/newpixel)^2+0.1/newpixel+0.4
  b5=(b4*b4/(exp(newpixel)))*b4-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3089 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=flip(0.5+newpixel)
  b5=(b4^3*b4/(exp(newpixel)))*b4-conj(0.1/newpixel-flip(0.01/newpixel))-0.45
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/12|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3090 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=flip(0.5+newpixel)^9-conj(0.1/newpixel-flip(0.01/newpixel))+0.435
  b4=(flip(b5)*b5/(exp(newpixel)))*b5-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*(b4)-(whitesq==0)*(|b4|)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c^4)^(real(1)-(1,0))*(0.01+z^2)+(c/6)+(-0.7456,-0.132)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3091 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(1-newpixel*(cabs(1.65*newpixel-flip(0.010/newpixel)-conj(0.10/newpixel))))-0.5
  b5=newpixel^3-(1/log(newpixel-0.25/cos(conj(sinh(0.1/newpixel))))^5)
  c=whitesq*(b4)-(whitesq==0)*(|b4|)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/12|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3092 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
		  ; Revised for Fractint v20 by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel^7-(0.2*exp(0.2-newpixel^(-0.025)))
  b5=cabs(b4)^5-conj(0.1/newpixel-flip(0.01/b4))-0.45
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z*z+(c-0.75-conj(0.05/newpixel))*z-(c)^3 
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3093 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
		  ; Revised for Fractint v20 by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel^7-(0.2*exp(0.2-newpixel^(-0.025)))
  b5=cabs(b4)^2-conj(0.1/newpixel-flip(0.01/b4))-0.45
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/12|)^2
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3094 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
		  ; Revised for Fractint v20 by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(conj(newpixel))^exp(0.2)+(0.2*exp(0.2-newpixel^(-0.025)))
  b4=cabs(b5)^3-conj(0.1/newpixel-flip(0.01/b5))^3
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3095 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; Modified for if..else logic 3/17/97 by Sylvie Gallet
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  IF (whitesq)
    c = (-0.7456,0.2)
    z = zorig = flip(cabs(newpixel)) * cabs(newpixel*newpixel) - conj(0.13/newpixel)\
	+ tanh(0.1/newpixel) - sinh(0.1/newpixel) - flip(0.1/newpixel)
    c = (-0.743736,-0.13167) - c/600 + (|c/12|)^2
  ELSE
    c = (0.7456,-0.2)
    z = zorig = -flip(cabs(newpixel)) * cabs(newpixel*newpixel) + conj(0.13/newpixel)\
	- tanh(0.1/newpixel) + sinh(0.1/newpixel) + flip(0.1/newpixel)
    c = (-0.743736,-0.13167) - c/600 + (|c/12|)^2
  ENDIF
  bailout = 16, iter = 0
  :
  IF (iter == p1)
    z = 0, c = 1.5 * zorig
    c = (-0.743736,-0.13167) - c/600 + (|c/12|)^2
  ELSEIF (iter == imag(p1))
    z = 0, c = 2.25 * zorig
    c = (-0.743736,-0.13167) - c/600 + (|c/12|)^2
  ELSEIF (iter == p2)
    z = 0, c = 3.375 * zorig
    c = (-0.743736,-0.13167) - c/600 + (|c/12|)^2
  ELSEIF (iter == imag(p2))
    z = 0, c = 5.0625 * zorig
    c = (-0.743736,-0.13167) - c/600 + (|c/12|)^2
  ENDIF
  z = z*z*(0.9975 - 0.0005*z) + c
  iter = iter + 1
  |z| <= bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3096 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.13/newpixel)+flip(0.1/newpixel)
  b4=(-0.7456,0.2)
  b5=flip(cabs(newpixel))*cabs(newpixel^2)+tanh(0.1/newpixel)\
      -sinh(0.1/newpixel)-flip(b3)-0.05
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*conj(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/12|)^2-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)\
      +(c/10.5)+c/1.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3097 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=abs(0.13/newpixel)+flip(newpixel/3)
  b4=(0.3,0.6)+flip(0.01/newpixel)+1/b3
  b5=flip(cabs(newpixel^3))*conj(conj(newpixel^2))\
      -tanh(0.1/newpixel)+sinh(0.1/newpixel)-flip(b3)-0.185
  c=whitesq*(b4)-(whitesq==0)*(b4+conj(0.1/newpixel))
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/12|)^2-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)\
     +(c/10.5)+c/1.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3098 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.13/newpixel)+flip(0.1/newpixel)
  b4=(0.3,0.6)^3-0.3
  b5=flip(abs(newpixel))*cabs(newpixel^3)-conj(0.1/newpixel)-flip(0.01/newpixel)+b3
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/12|)^2-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3099 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.13/newpixel)+flip(0.1/newpixel)
  b4=(-0.7456,0.2)
  b5=conj(cabs(newpixel))*cabs(newpixel^2)+tanh(0.1/newpixel)-sinh(0.1/newpixel)-b3
  c=whitesq*(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/12|)^2-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3100 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.13/newpixel)+flip(0.1/newpixel)
  b4=(-0.7456,0.2)
  b5=flip(cabs(newpixel))*cabs(newpixel^2)+tan(0.1/newpixel)-sin(0.1/newpixel)-b3
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
      +(|c/9|)^2-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3101 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G. Martin 6/13/99
   ; passes=1  or Boundry Trace need to be used with this PHC formula.
  newpixel=-abs(real(pixel))+flip(imag(pixel))
   ;pixel=real(pixel)-flip(abs(imag(pixel)))
  b3=conj(0.13/newpixel)+flip(0.1/newpixel)
  b4=(-0.7456,0.2)/2
  b5=flip(flip(cabs(newpixel^3)))*conj(cabs(newpixel^2))\
      +tan(0.1/newpixel)-sin(0.1/newpixel)-b3
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/9|)^2-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3102 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
	     ; Converted to IF..ELSE logic by Sylvie Gallet, 02/15/98
	     ; passes=1 needs to be used with this PHC formula.
             ; Added variable "newpixel". G. Martin 6/13/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  IF (whitesq)
    c = sqr(abs(newpixel))*abs(newpixel) - 0.65
    c1 = sqr(c/9) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + c/1.5
    z = zorig = sqr(newpixel)*newpixel
  ELSE
    c = - sqr(abs(newpixel))*abs(newpixel) + 0.65
    c1 = sqr(c/9) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + c/1.5
    z = zorig = - sqr(newpixel)*newpixel
  ENDIF
  imagp1 = imag(p1), imagp2 = imag(p2), bailout = 16, iter = 0
  :
  IF (iter == p1)
    z = 0, c1 = sqr(zorig/6) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + zorig
  ELSEIF (iter == imagp1)
    z = 0, c1 = sqr(0.25*zorig) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + 1.5 * zorig
  ELSEIF (iter == p2)
    z = 0, c1 = sqr(0.375*zorig) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + 2.25 * zorig
  ELSEIF (iter == imagp2)
    z = 0, c1 = sqr(5.0625*zorig) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + 3.375 * zorig
  ENDIF
  z2 = z*z, z = z2 - 0.0025 * |0.2*z2*z + z2 + c2| + c1
  |z| <= bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3103 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(tanh(newpixel)^3/(cosxx(0.1-newpixel))^1.3)-0.5
  b4=newpixel^3
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/9)^2-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)\
      +(c/10.5)+c/1.75|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3104 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(tanh(newpixel)^3/(cotan(0.1-newpixel))^1.3)-0.5
  b4=newpixel^3
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/9)^2-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)\
     +(c/10.5)+c/1.75|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3105 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(abs(newpixel)^3/(cotan(0.1-newpixel))^1.3)-0.5
  b4=newpixel^3
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/9)^2-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)\
     +(c/10.5)+c/1.75|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3106 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(conj(abs(newpixel))^3/(cotan(0.1-newpixel))^1.3)-0.5
  b4=(tanh(newpixel)^3/(cotan(0.1-newpixel))^1.3)
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/9)^4-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)\
     +(c/10.5)+c/1.75|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3107 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(conj(abs(newpixel))^3/(flip(cotan(0.1-newpixel)))^1.3)-0.4
  b4=(tanh(newpixel)^3/(cotan(0.1-newpixel))^1.3)
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5-conj(0.1/newpixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/9|)^4-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)\
     +(c/10.5)+c/1.75|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3108 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(flip(abs(newpixel))^3/(flip(cotan(0.1-newpixel)))^1.3)+0.4
  b4=b5^2/0.33*(conj(newpixel)^3/(cotan(0.1-newpixel))^1.3)-0.4
  c=(whitesq*(b4)-(whitesq==0)*(b4))
  z=(whitesq*(b5)-(whitesq==0)*(b5))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/9|)^4-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3109 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(flip(abs(newpixel))^3/(flip(cotan(0.1-newpixel)))^1.3)+0.4
  b5=conj(b4)/1.13*(conj(newpixel)^3/(cotan(0.1-newpixel))^1.3)+0.4
  c=(whitesq*(b4)-(whitesq==0)*(b4))
  z=(whitesq*(b5)-(whitesq==0)*(b5))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/9|)^4-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3110 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(flip(newpixel)*conj(newpixel)*cabs(newpixel)/(cotanh(0.1-newpixel)))\
     -0.35-conj(0.01/newpixel)
  b4=((flip(newpixel^2)*conj(newpixel/2)*cabs(newpixel))/(flip(abs(0.33-newpixel))))
  c=(whitesq*(b4)-(whitesq==0)*(b4))
  z=(whitesq*(b5)-(whitesq==0)*(b5))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/9|)^4-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3111 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel^3^exp(0.02*newpixel)+0.25
  b4=cabs(b5^6)/(cotanh(0.1-newpixel))+conj(0.1/newpixel)
  c=whitesq*(b4)-(whitesq==0)*(|b4|)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(c/9)^4-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3112 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel^3^exp(0.02*newpixel)+0.25
  b5=(cabs(b4^6)/(cotanh(0.1-newpixel))+conj(0.1/newpixel))+flip(0.1/b4)
  c=whitesq*(b4)-(whitesq==0)*(|b4|)
  z=conj(whitesq*(b5)-(whitesq==0)*(b5))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/9|)^4-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3113 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=flip(newpixel^3)^exp(0.025*newpixel)+0.25
  b5=(cabs(b4^6)/(cosxx(0.1-newpixel))+conj(0.1/newpixel))+flip(0.1/b4)
  c=whitesq*(b4)-(whitesq==0)*(|b4|)
  z=conj(whitesq*(b5)-(whitesq==0)*(b5))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/9|)^4-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3114 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=conj(newpixel^3)^exp(0.025*newpixel)+0.25
  b5=(flip(b4^6)/(cosxx(0.1-newpixel))+conj(0.1/newpixel))+flip(b4)
  c=whitesq*(b4)-(whitesq==0)*(|b4|)
  z=conj(whitesq*(b5)-(whitesq==0)*(b5))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/9|)^4-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3115 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(1/log(exp(conj(conj(newpixel^450))-cosh(conj(conj(newpixel^50.5))))))
  b5=(flip(flip(conj(newpixel^3)))+0.5)-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*(|b4|)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/9|)^4-0.0038*(|z*z*z/5+z*z+2*c^2+(-0.7456,-0.132)|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3116 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.13/newpixel)+flip(0.1/newpixel)
  b5=flip(cabs(newpixel))*cabs(newpixel^2)+tanh(0.1/newpixel)-sinh(0.1/newpixel)-b3
  b4=(flip(flip(conj(newpixel^7)))+0.5)\
      -conj(0.1/newpixel-flip(0.01/newpixel))+b5/2.5
  c=whitesq*(|b4|)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/9|)^4-0.0038*(|z*z*z/5+z*z+2*c^2+(-0.7456,-0.132)|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3117 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b5=conj(cabs(newpixel^3))*cabs(newpixel^2)\
      +tanh(0.1/newpixel)-sinh(0.1/newpixel)-b3+0.4
  b4=(flip(flip(conj(newpixel^7)))+0.5)\
      +conj(0.1/newpixel+flip(0.01/newpixel))+b5/2.5
  c=whitesq*(|b4|)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/9|)^4-0.0038*(|z*z*z/5+z*z+2*c^2+(-0.7456,-0.132)|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3118 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b5=conj(cabs(newpixel^3))*cabs(newpixel^2)\
     +tanh(0.1/newpixel)-sinh(0.1/newpixel)+b3+0.55
  b4=(flip(abs(conj(newpixel^6)))+0.5)\
     +conj(0.1/newpixel+flip(0.01/newpixel))+b5/2+0.55
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,0.2)\
     +(|c/9|)^4-0.0038*(|z*z*z/5+z*z+2*c^2+(-0.7456,-0.132)|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
Carr3119 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(newpixel^3-((tan(0.10/newpixel)-sqr(flip(0.0250/newpixel))))/3.5)+0.45
  b4=newpixel-((0.050/newpixel)-cabs(0.10/newpixel)+conj(0.0250/newpixel))/5
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
  ;SOURCE: 42zcarr.frm
}
 
Carr3120 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(conj(newpixel^3)-((tan(0.10/newpixel)\
      -sqr(flip(0.0150/newpixel))))/3.5)+0.45
  b4=flip(newpixel)-((0.050/newpixel)-cabs(0.10/newpixel)+conj(0.0250/newpixel))/5
  c=whitesq*(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5-0.01/newpixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/9|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
 
