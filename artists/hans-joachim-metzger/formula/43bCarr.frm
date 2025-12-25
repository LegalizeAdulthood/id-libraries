Carr3162 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b4=newpixel+b3
  b5=abs(b4^3)+cabs(b3)-0.2
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
  ;SOURCE: 43bcarr.frm
}
 
Carr3163 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b4=newpixel+cabs(b3)
  b5=abs(b4^3)+abs(b3)-0.2
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
  ;SOURCE: 43bcarr.frm
}
 
Carr3164 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b4=conj(newpixel^3)+cabs(b3)+0.15
  b5=flip(abs(b4^3))+abs(b3/0.5)-0.2
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
  ;SOURCE: 43bcarr.frm
}
 
Carr3165 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(-0.7456,-0.132)
  b5=cabs(conj(conj(2*newpixel^12)))-flip(0.1/newpixel)-conj(0.1/newpixel)+0.35
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3166 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(|newpixel|)-conj(0.1/newpixel-flip(0.01/newpixel-0.1/newpixel))
  b5=conj(conj(newpixel))*(newpixel^2)+tanh(0.1/newpixel)-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+flip(|c/10|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3167 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.1/newpixel)+flip(0.01/newpixel)
  b5=newpixel-b3-0.23
  b4=flip(cosxx(0.25-newpixel^3))*cabs(flip(1.5*newpixel^9))-tanh(0.1/newpixel)+sinh(0.1/newpixel)-b3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+flip(|c/10|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3168 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=flip(abs(conj(0.075/newpixel)+flip(0.075/newpixel)))
  b4=(0.37,-0.2991)
  b5=flip(cosxx(0.25*newpixel^3))*abs(conj(0.5*newpixel^10))-tanh(0.1/newpixel)+sinh(0.1/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+flip(|c/10|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3169 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=((0.37,-0.2901)/1.0025)-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=(newpixel^4*(0.25-newpixel)+0.25)/(cosxx(0.1-newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+abs(|c/10|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3170 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(conj(newpixel^3)*((0.37,-0.2901)/1.0025)-conj(0.1/newpixel-flip(0.01/newpixel)))
  b5=abs(newpixel^4*(0.25-newpixel)+0.25)/(cos(0.5-newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|abs(|c/10|)|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3171 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(conj(newpixel^4*(0.25-newpixel)+0.25)/(cos(0.5-newpixel)))+0.15
  b4=cabs(abs(newpixel^8*(0.25-newpixel)+0.25)/(cos(0.5-newpixel)))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|abs(|c/10|)|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3172 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel^2+0.1/newpixel-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=((newpixel^3-conj(0.1/newpixel)^3-0.35+exp(0.0025/newpixel))/(cos(0.1-newpixel)))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3173 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(|newpixel|)^2+0.1/newpixel-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=((newpixel^3-conj(0.1/newpixel)^3-0.35+exp(0.0025/newpixel))/(cosxx(|0.1-newpixel|)))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3174 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b4=(|newpixel|)^2+0.1/newpixel-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=((newpixel^3-conj(0.1/newpixel-flip(0.01/newpixel))^3-0.35+exp(0.0025/newpixel))/(cosxx(|0.1-newpixel|)))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+real(d/100*newpixel)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3175 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(exp(0.0025/newpixel))/(cosxx(|0.1-newpixel|))
  b4=(|newpixel|)^2+0.1/newpixel-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=((newpixel^4-conj(0.1/newpixel-flip(0.01/newpixel))^3)+b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)-flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3176 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(exp(0.0025/newpixel))/(cosxx(|0.1-newpixel|))
  b4=newpixel^5-conj(newpixel/5)
  b5=b4/2-b3+0.5
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3177 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(exp(0.0025/newpixel))/(cosxx(|0.1-newpixel|))
  b4=newpixel^5-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=abs(b4/2)-b3+0.5-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3178 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b5=abs(abs(0.5+conj(newpixel)/2))^3-conj(0.1/newpixel)^10-flip(0.1/newpixel)^10-0.3
  b4=tanh(sinh(0.5+newpixel/2))^3-conj(0.1/newpixel)-flip(0.01/newpixel)+0.25
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3179 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b4=conj(newpixel^3)-newpixel+conj(0.1/newpixel)
  b5=cabs(newpixel/2)-newpixel^5+0.4+conj(0.1/b3)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3180 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b5=conj(newpixel^3)-abs(newpixel)^8+conj(0.1/newpixel)-0.25
  b4=cabs(newpixel/2)-newpixel^5+conj(0.1/b3)+0.4
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3181 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b5=flip(newpixel^3)-abs(newpixel)^8-conj(0.1/newpixel-flip(0.01/newpixel))+0.15
  b4=cabs(newpixel/2)-newpixel^5+conj(0.1/b3)+0.4
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3182 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b5=(newpixel^5/(cosxx(0.1-1/newpixel)))+0.12
  b4=conj(newpixel)*newpixel^2-conj(conj(0.10/newpixel))^(-3*newpixel)-flip(flip(0.010/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3183 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b5=(abs(newpixel)^5/(cosxx(0.1-0.1/newpixel)))-b3+0.39
  b4=conj(newpixel)*newpixel^2-conj(conj(0.10/newpixel))^(-3*newpixel)-flip(flip(0.010/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3184 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b4=(abs(newpixel)^5/(cosxx(0.1-0.1/newpixel)))-b3
  b5=conj(newpixel)*newpixel^2-conj(conj(0.10/newpixel))^(-3*newpixel)\
      -flip(flip(0.010/newpixel))+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}
 
Carr3185 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b4=conj(-0.8006,-0.116), m4=(conj(0.005/newpixel))-sqr(flip(0.09/newpixel))
  b5=flip(1/atan(1-newpixel))*sqr(newpixel)-m4
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3186 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel^3))))-conj(0.01/newpixel)
  b5=newpixel^4-conj(0.1/newpixel-flip(0.01/newpixel-conj(0.1/b3)))+0.35
  m4=(conj(0.005/newpixel))-sqr(flip(0.09/newpixel))
  b4=flip(1/atan(1-newpixel))*conj(newpixel^3)-m4
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3, z1=imag(p1)*z-p2, iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3187 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b5=abs(cotanh(0.35-newpixel)^1.5*conj(newpixel)^2-(1/log(conj(0.10/newpixel+1.25)))^2.5)+0.19
  b4=newpixel-0.25/(atan(0.10/-newpixel)-sqr(acos(0.250/-newpixel))^3.7)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3, z1=imag(p1)*z-p2, iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3188 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b4=newpixel-cosh(0.25/newpixel)-conj(0.01/newpixel)+0.75
  b5=(newpixel^2*(newpixel-flip(0.010/newpixel)-conj(0.10/newpixel)))+(0.0001/newpixel)+0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3, z1=imag(p1)*z-p2, iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3189 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b4=((exp(conj(conj(newpixel^4.5))-cosh(conj(conj(newpixel^2.5)))-0.4)-0.5))^0.95
  b5=newpixel^3+0.33
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3, z1=imag(p1)*z-p2, iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  z<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3190 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b4=1/(cosxx(0.1-1/newpixel))
  b5=b4-newpixel^5+0.35
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3, z1=imag(p1)*z-p2, iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3191 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996  2821
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cos(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b5=flip(newpixel^3)-cabs(newpixel)^6-conj(0.1/newpixel-flip(0.01/newpixel))+0.25
  b4=cabs(newpixel/2)-newpixel^5+conj(0.1/b3)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*abs(b5)
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  cabs(|z|)<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3192 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996 
		  ; passes=1 needs to be used with this PHC formula.
		  ; Rewritten for if..else by George Martin 
		  ; and Sylvie Gallet, 8/1/97
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  imagp1 = imag(p1)
  imagp2 = imag(p2)
  d=log(1/newpixel-cos(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  c = flip(newpixel^3)-cabs(newpixel)^6-conj(0.1/newpixel-flip(0.01/newpixel))
  z = origz = cabs(newpixel^4)-newpixel^7+conj(0.1/b3)\
       -conj(0.1/newpixel-flip(0.01/newpixel))+0.15
  IF (whitesq == 0)
     z = origz = -z
     c = -c
  ENDIF
  d0 = flip(|d/80*newpixel|) + (-0.7456,-0.132)
  c = |c/7.5| + d0
  bailout=16, iter=0:
  IF (iter == p1)
    z = 0
    c = |0.2*origz^1.2| + d0
  ELSEIF (iter == imagp1)
    z = 0
    c = |0.3*conj(origz)| + d0
  ELSEIF (iter == p2)
    z = 0
    c = |0.45*flip(origz)| + d0
  ELSEIF (iter == imagp2)
    z = 0
    c = |0.675*flip(origz)| + d0
  ENDIF
  z = z*z + c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: 97msg.frm
}
 
Carr3193 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996  2821
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cos(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b4=flip(newpixel^3)-cabs(newpixel)^6-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=abs(newpixel^4)-conj(newpixel)^7+conj(0.1/b3)-conj(0.1/newpixel-flip(0.01/newpixel))+0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*(b5)
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  cabs(|z|)<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3194 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996  2821
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cos(1/newpixel))
  b5=((sin(conj(newpixel))/((tanh(conj(-0.81256,-0.189)))/(conj(cabs(newpixel)))))+0.35)^1.5
  b4=flip(conj(newpixel*newpixel))/(conj(newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*conj(b5)
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  cabs(|z|)<=bailout
  ;SOURCE: 43bcarr.frm
}
 
Carr3195 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
		  ; Rewritten for if..else by Sylvie Gallet 8/18/97
                  ; Added variable "newpixel". G. Martin 6/13/99
   newpixel = - abs(real(pixel)) + flip(imag(pixel))
   pinv = 0.1/newpixel
   imagp1 = imag(p1), imagp2 = imag(p2)
   d = log(10*pinv-cos(10*pinv))
   c = cabs(0.5*newpixel) - newpixel*((0.3,0.6)+newpixel) - conj(pinv)
   z = origz = c^5 - conj(0.1/c-flip(0.01/c)) - conj(pinv-flip(0.1*pinv))
   IF (whitesq == 0)
      z = origz = -z
      c = -c
   ENDIF
   d0 = flip(|d/80*newpixel|) + (-0.7456,-0.132)
   c = |c/7.5| + d0
   bailout = 16, iter = 0 :
   IF (iter == p1)
      z = 0
      c = |0.2*origz^1.2| + d0
   ELSEIF (iter == imagp1)
      z = 0
      c = |0.3*conj(origz)| + d0
   ELSEIF (iter == p2)
      z = 0
      c = |0.45*flip(origz)| + d0
   ELSEIF (iter == imagp2)
      z = 0
      c = |0.675*flip(origz)| + d0
   ENDIF
   z = z*z + c
   iter = iter + 1
   |z| <= bailout
  ;SOURCE: 97msg.frm
}
 
Carr3196 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996  2821
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cos(1/newpixel))
  b5=abs(newpixel^4)-newpixel*((0.3,0.6)+newpixel)-conj(0.1/newpixel)
  b4=b5^5-conj(0.1/b4-flip(0.01/b4))-conj(0.1/newpixel-flip(0.01/newpixel))
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
  ;SOURCE: 43bcarr.frm
}
 
