{
To see examples of images these FRACTINT formulas
can create, download 43bcarr.par.

I can be contacted on AOL at address GENEALOGY1@aol.com or
CompuServe with the number 73753,2420

--Bob Carr--
Ocala, FL

}

Carr3162(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=conj(0.1/pixel-flip(0.01/pixel))
b4=pixel+b3,
b5=abs(b4^3)+cabs(b3)-0.2,
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/8|),
iter=iter+1
|z|<=bailout
}

Carr3163(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=conj(0.1/pixel-flip(0.01/pixel))
b4=pixel+cabs(b3),
b5=abs(b4^3)+abs(b3)-0.2,
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/8|),
iter=iter+1
|z|<=bailout
}

Carr3164(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=conj(0.1/pixel-flip(0.01/pixel))
b4=conj(pixel^3)+cabs(b3)+0.15,
b5=flip(abs(b4^3))+abs(b3/0.5)-0.2,
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/8|),
iter=iter+1
abs(|z|)<=bailout
}

Carr3165(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=(-0.7456,-0.132)
b5=cabs(conj(conj(2*pixel^12)))-flip(0.1/pixel)-conj(0.1/pixel)+0.35
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/10|),
iter=iter+1
|z|<=bailout
}

Carr3166(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=(|pixel|)-conj(0.1/pixel-flip(0.01/pixel-0.1/pixel))
b5=conj(conj(pixel))*(pixel^2)+tanh(0.1/pixel)-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+flip(|c/10|),
iter=iter+1
|z|<=bailout
}

Carr3167(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=conj(0.1/pixel)+flip(0.01/pixel)
b5=pixel-b3-0.23
b4=flip(cosxx(0.25-pixel^3))*cabs(flip(1.5*pixel^9))-tanh(0.1/pixel)+sinh(0.1/pixel)-b3
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+flip(|c/10|),
iter=iter+1
|z|<=bailout
}

Carr3168(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=flip(abs(conj(0.075/pixel)+flip(0.075/pixel)))
b4=(0.37,-0.2991)
b5=flip(cosxx(0.25*pixel^3))*abs(conj(0.5*pixel^10))-tanh(0.1/pixel)+sinh(0.1/pixel)
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+flip(|c/10|),
iter=iter+1
|z|<=bailout
}

Carr3169(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=((0.37,-0.2901)/1.0025)-conj(0.1/pixel-flip(0.01/pixel))
b5=(pixel^4*(0.25-pixel)+0.25)/(cosxx(0.1-pixel))
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+abs(|c/10|),
iter=iter+1
|z|<=bailout
}

Carr3170(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=(conj(pixel^3)*((0.37,-0.2901)/1.0025)-conj(0.1/pixel-flip(0.01/pixel)))
b5=abs(pixel^4*(0.25-pixel)+0.25)/(cos(0.5-pixel))
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|abs(|c/10|)|),
iter=iter+1
|z|<=bailout
}

Carr3171(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=(conj(pixel^4*(0.25-pixel)+0.25)/(cos(0.5-pixel)))+0.15
b4=cabs(abs(pixel^8*(0.25-pixel)+0.25)/(cos(0.5-pixel)))
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|abs(|c/10|)|),
iter=iter+1
|z|<=bailout
}

Carr3172(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=pixel^2+0.1/pixel-conj(0.1/pixel-flip(0.01/pixel))
b5=((pixel^3-conj(0.1/pixel)^3-0.35+exp(0.0025/pixel))/(cos(0.1-pixel)))
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/10|),
iter=iter+1
|z|<=bailout
}

Carr3173(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=(|pixel|)^2+0.1/pixel-conj(0.1/pixel-flip(0.01/pixel))
b5=((pixel^3-conj(0.1/pixel)^3-0.35+exp(0.0025/pixel))/(cosxx(|0.1-pixel|)))
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/10|),
iter=iter+1
|z|<=bailout
}

Carr3174(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-conj(1/pixel))
b4=(|pixel|)^2+0.1/pixel-conj(0.1/pixel-flip(0.01/pixel))
b5=((pixel^3-conj(0.1/pixel-flip(0.01/pixel))^3-0.35+exp(0.0025/pixel))/(cosxx(|0.1-pixel|)))
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/10|)+real(d/100*pixel),
iter=iter+1
|z|<=bailout
}

Carr3175(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-conj(1/pixel))
b3=(exp(0.0025/pixel))/(cosxx(|0.1-pixel|))
b4=(|pixel|)^2+0.1/pixel-conj(0.1/pixel-flip(0.01/pixel))
b5=((pixel^4-conj(0.1/pixel-flip(0.01/pixel))^3)+b3)-0.2
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/10|)-flip(real(|d/100*pixel|)),
iter=iter+1
|z|<=bailout
}

Carr3176(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-conj(1/pixel))
b3=(exp(0.0025/pixel))/(cosxx(|0.1-pixel|))
b4=pixel^5-conj(pixel/5),
b5=b4/2-b3+0.5
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*pixel|)),
iter=iter+1
|z|<=bailout
}

Carr3177(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-conj(1/pixel))
b3=(exp(0.0025/pixel))/(cosxx(|0.1-pixel|))
b4=pixel^5-conj(0.1/pixel-flip(0.01/pixel)),
b5=abs(b4/2)-b3+0.5-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*pixel|)),
iter=iter+1
|z|<=bailout
}

Carr3178(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-conj(1/pixel))
b5=abs(abs(0.5+conj(pixel)/2))^3-conj(0.1/pixel)^10-flip(0.1/pixel)^10-0.3,
b4=tanh(sinh(0.5+pixel/2))^3-conj(0.1/pixel)-flip(0.01/pixel)+0.25,
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*pixel|)),
iter=iter+1
|z|<=bailout
}

Carr3179(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-conj(1/pixel))
b3=(((exp(0.0025/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b4=conj(pixel^3)-pixel+conj(0.1/pixel),
b5=cabs(pixel/2)-pixel^5+0.4+conj(0.1/b3)
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*pixel|)),
iter=iter+1
|z|<=bailout
}

Carr3180(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-conj(1/pixel))
b3=(((exp(0.0025/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b5=conj(pixel^3)-abs(pixel)^8+conj(0.1/pixel)-0.25,
b4=cabs(pixel/2)-pixel^5+conj(0.1/b3)+0.4
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*pixel|)),
iter=iter+1
|z|<=bailout
}

Carr3181(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-conj(1/pixel))
b3=(((exp(0.0025/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b5=flip(pixel^3)-abs(pixel)^8-conj(0.1/pixel-flip(0.01/pixel))+0.15,
b4=cabs(pixel/2)-pixel^5+conj(0.1/b3)+0.4
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*pixel|)),
iter=iter+1
|z|<=bailout
}

Carr3182(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-conj(1/pixel))
b5=(pixel^5/(cosxx(0.1-1/pixel)))+0.12,
b4=conj(pixel)*pixel^2-conj(conj(0.10/pixel))^(-3*pixel)-flip(flip(0.010/pixel)),
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*pixel|)),
iter=iter+1
|z|<=bailout
}

Carr3183(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-conj(1/pixel))
b3=(((exp(0.0025/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b5=(abs(pixel)^5/(cosxx(0.1-0.1/pixel)))-b3+0.39,
b4=conj(pixel)*pixel^2-conj(conj(0.10/pixel))^(-3*pixel)-flip(flip(0.010/pixel)),
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*pixel|)),
iter=iter+1
|z|<=bailout
}

Carr3184(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-conj(1/pixel))
b3=(((exp(0.0025/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b4=(abs(pixel)^5/(cosxx(0.1-0.1/pixel)))-b3,
b5=conj(pixel)*pixel^2-conj(conj(0.10/pixel))^(-3*pixel)-flip(flip(0.010/pixel))+0.3,
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*pixel|)),
iter=iter+1
|z|<=bailout
}

Carr3185(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-conj(1/pixel))
b3=(((exp(0.0025/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b4=conj(-0.8006,-0.116),m4=(conj(0.005/pixel))-sqr(flip(0.09/pixel))
b5=flip(1/atan(1-pixel))*sqr(pixel)-m4,
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*pixel|)),
iter=iter+1
|z|<=bailout
}

Carr3186(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-conj(1/pixel))
b3=(((exp(0.0025/pixel))/(cosxx(0.1-pixel^3))))-conj(0.01/pixel)
b5=pixel^4-conj(0.1/pixel-flip(0.01/pixel-conj(0.1/b3)))+0.35,
m4=(conj(0.005/pixel))-sqr(flip(0.09/pixel))
b4=flip(1/atan(1-pixel))*conj(pixel^3)-m4,
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,z1=imag(p1)*z-p2,iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*pixel|)),
iter=iter+1
|z|<=bailout
}

Carr3187(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-conj(1/pixel))
b5=abs(cotanh(0.35-pixel)^1.5*conj(pixel)^2-(1/log(conj(0.10/pixel+1.25)))^2.5)+0.19,
b4=pixel-0.25/(atan(0.10/-pixel)-sqr(acos(0.250/-pixel))^3.7),
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,z1=imag(p1)*z-p2,iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*pixel|)),
iter=iter+1
|z|<=bailout
}

Carr3188(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-conj(1/pixel))
b4=pixel-cosh(0.25/pixel)-conj(0.01/pixel)+0.75
b5=(pixel^2*(pixel-flip(0.010/pixel)-conj(0.10/pixel)))+(0.0001/pixel)+0.15
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,z1=imag(p1)*z-p2,iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*pixel|)),
iter=iter+1
|z|<=bailout
}

Carr3189(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-conj(1/pixel))
b4=((exp(conj(conj(pixel^4.5))-cosh(conj(conj(pixel^2.5)))-0.4)-0.5))^0.95
b5=pixel^3+0.33
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,z1=imag(p1)*z-p2,iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*pixel|)),
iter=iter+1
imag(flip(z))<=bailout
}

Carr3190(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-conj(1/pixel))
b4=1/(cosxx(0.1-1/pixel))
b5=b4-pixel^5+0.35
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,z1=imag(p1)*z-p2,iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*pixel|)),
iter=iter+1
|z|<=bailout
}

Carr3191(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996  2821
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-cos(1/pixel))
b3=(((exp(0.0025/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b5=flip(pixel^3)-cabs(pixel)^6-conj(0.1/pixel-flip(0.01/pixel))+0.25,
b4=cabs(pixel/2)-pixel^5+conj(0.1/b3)
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*abs(b5)
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*pixel|)),
iter=iter+1
cabs(|z|)<=bailout
}

Carr3192(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996 
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-cos(1/pixel))
b3=(((exp(0.0025/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b4=flip(pixel^3)-cabs(pixel)^6-conj(0.1/pixel-flip(0.01/pixel)),
b5=cabs(pixel^4)-pixel^7+conj(0.1/b3)-conj(0.1/pixel-flip(0.01/pixel))+0.15
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*(b5)
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*pixel|)),
iter=iter+1
cabs(|z|)<=bailout
}

Carr3193(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996  2821
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-cos(1/pixel))
b3=(((exp(0.0025/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b4=flip(pixel^3)-cabs(pixel)^6-conj(0.1/pixel-flip(0.01/pixel)),
b5=abs(pixel^4)-conj(pixel)^7+conj(0.1/b3)-conj(0.1/pixel-flip(0.01/pixel))+0.15
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*(b5)
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*pixel|)),
iter=iter+1
cabs(|z|)<=bailout
}

Carr3194(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996  2821
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-cos(1/pixel))
b5=((sin(conj(pixel))/((tanh(conj(-0.81256,-0.189)))/(conj(cabs(pixel)))))+0.35)^1.5,
b4=flip(conj(pixel*pixel))/(conj(pixel)),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*conj(b5)
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*pixel|)),
iter=iter+1
cabs(|z|)<=bailout
}

Carr3195(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996  2821
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-cos(1/pixel))
b4=cabs(pixel/2)-pixel*((0.3,0.6)+pixel)-conj(0.1/pixel)
b5=b4^5-conj(0.1/b4-flip(0.01/b4))-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*pixel|)),
iter=iter+1
cabs(|z|)<=bailout
}

Carr3196(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996  2821
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-cos(1/pixel))
b5=abs(pixel^4)-pixel*((0.3,0.6)+pixel)-conj(0.1/pixel)
b4=b5^5-conj(0.1/b4-flip(0.01/b4))-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*pixel|)),
iter=iter+1
(|z|)<=bailout
}
























































































































































































