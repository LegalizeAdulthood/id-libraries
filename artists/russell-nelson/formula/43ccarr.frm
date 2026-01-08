{
To see examples of images these FRACTINT formulas
can create, download 43ccarr.par.

I can be contacted on AOL at address GENEALOGY1@aol.com or
CompuServe with the number 73753,2420

--Bob Carr--
Ocala, FL

}

Carr3197(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-cos(1/pixel))
b4=pixel^2-(0.2*cabs(0.2-pixel^-0.025))
b5=flip(b4)^2-cabs(0.1/pixel-flip(0.01/b4))-conj(0.1/pixel)-0.65
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

Carr3198(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-cos(1/pixel))
b5=conj(pixel)*abs(pixel)*flip(pixel)-conj(0.1/pixel-flip(0.01/pixel))+0.15,
b4=conj(1/sinh(1/flip(b5^3)))-conj(0.1/pixel-flip(0.01/pixel))
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

Carr3199(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-cosxx(1/pixel))
b5=imag(flip(pixel))-((abs(pixel/4))/(conj(pixel/2)))^3
b4=flip(pixel^2)*cabs(pixel)-(|flip(0.01/pixel-conj(0.1/pixel))|)+0.1
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

Carr3200(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-cosxx(1/pixel))
b4=(flip(flip(pixel))^3-1/(atan(0.1/pixel)-cabs(acos(0.2/pixel)))),
b5=conj(b4)-0.54
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

Carr3201(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-cosxx(1/pixel))
b4=pixel-conj(0.1/pixel-flip(0.01/pixel))
b5=(conj(abs(pixel))^5-0.5/(conj(atan(0.1/pixel))-cabs(acos(0.2/pixel))))+0.35,
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

Carr3202(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=log(1/pixel-cosxx(1/pixel))
b4=pixel^3-conj(0.1/pixel-flip(0.01/pixel))
b5=abs(conj(conj(pixel^12)))-flip(0.01/pixel)-conj(0.1/pixel)+0.3
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*pixel|))
iter=iter+1
(|z|)<=bailout
}

Carr3203(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b3=conj(0.1/pixel-flip(0.01/pixel))
b4=conj(conj(pixel/2)*sin(abs(pixel/3)))*flip(pixel^6)-conj(0.1/pixel+b3)+0.15
b5=conj(conj(pixel/2)*sin(abs(pixel/3)))*conj(pixel^6)-b3+0.13
c=whitesq*b4^2-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/70*pixel)))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3204(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b3=conj(0.1/pixel-flip(0.01/pixel))
b5=conj(conj(pixel/2)*sin(abs(pixel/3)))*conj(pixel^8)-b3+0.1+conj(0.01/pixel)
b6=conj(conj(b5/2.5))-conj(0.01/pixel)
b4=b6-0.2*(conj(flip(pixel/2)*sin(abs(pixel/3)))*flip(pixel^6)-conj(0.1/pixel+b3)+0.2)
c=whitesq*b4^2-(whitesq==0)*conj(b4)
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/70*pixel))),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3205(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b3=conj(0.1/pixel-flip(0.01/pixel))
b5=conj(abs(pixel/2)*sin(abs(pixel/3)))*conj(pixel^4)-b3+conj(0.01/pixel)-0.125
b6=pixel^3-conj(0.1/pixel-flip(0.01/pixel))
b4=b6-0.2*(conj(flip(pixel/2)*sin(abs(pixel/3)))*flip(pixel^6)-conj(0.1/pixel+b3)-0.15)
c=whitesq*b4-(whitesq==0)*conj(b4)
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*pixel|))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3206(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b4=pixel/2-conj(0.01/pixel-flip(0.001/pixel))
b5=conj(conj(abs(pixel))^5-0.5/(conj(atan(0.01/pixel))-cabs(acos(0.02/pixel))))-0.235
c=whitesq*b4-(whitesq==0)*b4^2
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/70*pixel))),
iter=iter+1
;imag(flip(z-pixel))<=bailout
;imag(flip(z))<=bailout
(conj(|z|))<=bailout
}

Carr3207(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b4=(0.37,-0.3101)-flip(0.1/pixel)
b5=cabs(cabs(pixel/2)*tan(cabs(pixel/3)))*conj(abs(pixel^3))-conj(0.1/pixel)
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(z+conj(|0.1/pixel|))^2+(c-flip(0.01/pixel))+flip(real(|d/80*pixel|))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3208(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b4=(pixel^4/(tanh(0.3/pixel)))+(0.1/pixel),
b5=conj(b4^6)-conj(0.1/pixel-flip(0.01/pixel))-0.25
c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(z+conj(|0.1/pixel|))^2+(c-flip(|0.01/pixel|))+flip(real(|d/80*pixel|))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3209(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b4=(pixel^3/(tanh(0.3/pixel)))+(0.1/pixel),
b5=cabs(b4^6)-conj(0.1/pixel-flip(0.01/pixel))^0.75-0.25
c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(z+conj(|0.1/pixel|))^2+(c-flip(|0.01/pixel|))+flip(real(|d/80*pixel|))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3210(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b4=(pixel^4/(tanh(0.3/pixel)))+flip(0.1/pixel),
b5=conj(b4^6)-conj(0.1/pixel-flip(0.01/pixel))-0.25
c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(z+conj(|0.1/pixel|))^2+(c-flip(|0.01/pixel|))+flip(real(|d/80*pixel|))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3211(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b4=(pixel^4/(tanh(0.3/pixel)))+flip(0.1/pixel),
b5=conj(b4^6)-conj(0.1/pixel-flip(0.01/pixel))+0.15
c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*pixel|)),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3212(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b4=cabs(pixel^4/(tanh(0.3/pixel)))+flip(0.1/pixel),
b5=conj(b4^6)-conj(0.1/pixel-flip(0.01/pixel))-0.25
c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(z+conj(|0.1/pixel|))^2+(c-flip(|0.01/pixel|))+flip(real(|d/80*pixel|))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3213(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b5=abs(conj(pixel^3)*flip(pixel))-0.15
b4=b5^4-conj(0.1/pixel-flip(0.015/pixel-flip(0.1/b5)))
c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(z+conj(|0.1/pixel|))^2+(c-flip(|0.01/pixel|))+flip(real(|d/80*pixel|))
iter=iter+1
(conj(|z|))<=bailout
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
}

Carr3215(YAXIS){;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=(pixel^6)+0.15
b4=abs(b5/2.5)-conj(0.1/pixel-flip(0.01/pixel))-0.05
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=c*(z*z*(z*z-4)+2),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3216(YAXIS){;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b5=(pixel^6)+0.15
b4=cabs(b5/2.5)-conj(0.1/pixel-flip(0.01/pixel))-0.05
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2))+flip(real(|d/80*pixel|)),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3217(YAXIS){;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b5=(pixel^6)+0.15
b4=cabs(b5/2.5)-conj(0.1/pixel-flip(0.01/pixel))-0.05
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*conj(abs(b5-conj(0.1/pixel)))
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5-conj(0.1/pixel))+2))+flip(real(|d/80*pixel|)),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3218(YAXIS){;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b5=(pixel^6)+0.15
b4=cabs(b5/2.5)-conj(0.1/pixel-flip(0.01/pixel))-0.05
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*conj(abs(b5-conj(0.1/pixel)))
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5-flip(0.1/pixel))+2))+flip(real(|d/50*pixel|)),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3219(YAXIS){;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b5=conj(pixel^2)*abs(pixel)*conj(conj(pixel^3))-conj(0.1/pixel-flip(0.01/pixel)),
b4=conj(1/sinh(1/flip(b5^3)))-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*conj(abs(b5-conj(0.1/pixel)))
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5-flip(0.1/pixel))+2))+flip(real(|d/50*pixel|))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3220(YAXIS){;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b5=(pixel^6)+0.15
b4=1.2*(|pixel/0.75|)^5+conj(0.1/pixel+flip(0.01/pixel)),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*conj(abs(b5-conj(0.1/pixel)))
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5-flip(0.1/pixel))+2))+flip(real(|d/80*pixel|)),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3221(YAXIS){;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b5=(pixel^6)+0.15
x=conj/cabs(pixel-conj(0.1/pixel)),y=imag(flip(pixel-flip(0.1/pixel))),
b4=x*(conj(y)+x*sin(y^5))-conj(0.1/pixel)
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*abs(abs(b5-conj(0.1/pixel-flip(0.01/pixel))))
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5-flip(0.1/pixel))+2))+flip(real(|d/80*pixel|)),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3222(YAXIS){;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b5=(pixel^9)+0.15
x=conj/cabs(pixel-conj(0.1/pixel)),y=real(flip(pixel-flip(0.1/pixel))),
b4=x*(conj(y)+x*sin(y^5))-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*abs(abs(b5-conj(0.1/pixel-flip(0.01/pixel))))
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5-flip(0.1/pixel))+2))+flip(real(|d/80*pixel|)),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3223(YAXIS){;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b5=pixel^6+0.15
b4=(pixel^3)+0.1*(conj(b5/2)-conj(conj(b5^2))-conj(tan(sin(0.1/pixel-conj(0.01/pixel)))))
c=whitesq*b4-(whitesq==0)*abs(abs(b4-conj(0.1/pixel-flip(0.01/pixel))))
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=(c*(z*z*(z*z-3.5-flip(0.1/pixel))+2))+flip(real(|d/80*pixel|))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3224(YAXIS){;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b5=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))+0.15
b4=cabs(b5/2.5)-conj(0.1/pixel-flip(0.01/pixel))-0.05
c=whitesq*b4-(whitesq==0)*abs(abs(b4-conj(0.1/pixel-flip(0.01/pixel))))
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5-flip(0.1/pixel))+2))+flip(real(|d/80*pixel|)),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3225(YAXIS){;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b5=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))+0.25
b4=conj(conj(pixel))*(pixel^4)-flip(0.01/pixel)-conj(0.1/pixel)
c=whitesq*b4-(whitesq==0)*abs(abs(b4-conj(0.1/pixel-flip(0.01/pixel))))
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5-flip(0.1/pixel))+2))+flip(real(|d/80*pixel|)),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3226(YAXIS){;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b5=(pixel^6)+0.15
b4=cabs(b5/2.5)-conj(0.1/pixel-flip(0.01/pixel))-0.05
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+c*z))-(flip(real(|d/80*pixel|)))^3,
iter=iter+1
(conj(|z|))<=bailout
}

Carr3227(YAXIS){;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b5=(pixel^6)+0.15-conj(0.01/pixel-flip(0.001/pixel))
b4=abs(conj(abs(conj(b5/2.5))))-conj(0.1/pixel-flip(0.01/pixel))-0.05
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+c*z))-(flip(real(|d/60*pixel|)))^3,
iter=iter+1
(conj(|z|))<=bailout
}

Carr3228(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b5=conj(pixel)*abs(pixel)*flip(pixel^4)-conj(0.01/pixel-flip(0.001/pixel))+0.15
b4=conj(sinh(cabs(b5/2.5)))-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*conj(b4)-(whitesq==0)*conj(b4)^3
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/70*pixel)))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3229(YAXIS){;Modified Sylvie Gallet frm
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b4=conj(conj(pixel))*(pixel^11)+tanh(0.1/pixel)-sinh(0.1/pixel)-conj(0.13/pixel)
b5=conj(conj(pixel))*(pixel^11)+tanh(0.1/pixel)-sinh(0.1/pixel)-conj(0.13/pixel)-0.35
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+c*z+1/c))-(flip(real(|d/80*pixel|))),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3230(YAXIS){;Modified Sylvie Gallet frm
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b3=cabs(pixel/2)-pixel*((0.3,0.6)+pixel)-conj(0.1/pixel)
b5=pixel^5-conj(0.1/b3-flip(0.01/b3))-conj(0.1/pixel-flip(0.01/pixel))-0.25
b4=pixel^5-conj(0.1/b3-flip(0.01/b3))-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/35*pixel))),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3231(YAXIS){;Modified Sylvie Gallet frm
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b3=cabs(pixel/2)-pixel*((0.3,0.6)+pixel)-conj(0.1/pixel)
b5=pixel^5-conj(0.1/b3-flip(0.01/b3))-conj(0.1/pixel-flip(0.01/pixel))-0.25
b4=pixel^5-conj(0.1/b3-flip(0.01/b3))-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*pixel|)),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3232(YAXIS){;Modified Sylvie Gallet frm
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b5=(conj(abs(pixel))^3/(cotan(0.1-pixel))^1.3)-0.3
b4=(conj(tanh(pixel)^3/(cotan(0.1-pixel))^1.3))/2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/35*pixel))),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3233(YAXIS){;Modified Sylvie Gallet frm
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b5=abs(pixel^6)-pixel*((0.3,0.6)+pixel)-conj(0.1/pixel)-0.15
b4=b5/2.5-conj(0.1/b5-flip(0.01/b5))-conj(0.075/pixel-flip(0.01/pixel))+0.05
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5^2
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/35*pixel)))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3234(YAXIS){;Modified Sylvie Gallet frm
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b5=cabs(pixel^6)-pixel*((0.3,0.6)+pixel)-conj(0.09/pixel)-0.3
b4=cabs(b5/2.5)-conj(0.1/pixel-flip(0.01/pixel))-0.075
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5^2
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(((3*z*z-1)-conj(0.1/pixel))/(2+c))+flip(real(|d/70*pixel|))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3235(YAXIS){;Modified Sylvie Gallet frm
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b5=((sin(pixel)-tan(pixel))/(conj(pixel)+flip(pixel)))-0.1-conj(0.01/pixel)
b4=pixel/2.5-conj(0.01/pixel)-flip(0.001/pixel)
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/35*pixel))),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3236(YAXIS){;Modified Sylvie Gallet frm
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b4=conj(conj(pixel/2)*sin(abs(pixel/3)))*flip(pixel^6)-conj(0.1/pixel)
b5=conj(conj(pixel/2)*sin(abs(pixel/3)))*flip(pixel^6)-conj(0.1/pixel)+0.23
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/70*pixel)))
iter=iter+1
(conj(|z|))<=bailout
}


































































































