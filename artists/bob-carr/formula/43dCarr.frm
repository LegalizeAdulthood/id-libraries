comment {

To see examples of images these FRACTINT formulas
can create, download 43dcarr.par.

I can be contacted on AOL at address GENEALOGY1@aol.com or
CompuServe with the number 73753,2420

--Bob Carr--
Ocala, FL
}

Carr3237(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b4=conj(conj(pixel/2)*sin(abs(pixel/3)))*flip(pixel^6)-conj(0.1/pixel)
b5=conj(conj(pixel/2)*sin(abs(pixel/3)))*conj(pixel^6)-flip(0.1/pixel)+0.23
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

Carr3238(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b5=((conj(pixel^5)*(abs(pixel)))/(1/pixel))-conj(0.066/pixel)-((flip(0.00510/pixel))^2)-0.1
b4=((conj(pixel/2)*(abs(pixel/2)))/(1/pixel))-conj(0.06/pixel)-((flip(0.00510/pixel))^4)+0.15
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*pixel))),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3239(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b3=conj(conj(abs(flip(pixel^3))*conj(tanh(pixel))))
b5=((b3^2)/(1/pixel)-(0.00066/b3)-(flip(0.003/pixel)^2))-0.1
b4=((cabs(pixel/2)*(flip(pixel/2)))/(1/pixel))-conj(0.06/pixel)-((flip(0.00510/pixel))^4)+0.15
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*pixel))),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3240(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b6=(pixel^6)+0.15
b4=b6/(cotanh(-1/pixel^3))-conj(0.06/pixel)-(flip(0.00510/pixel))^4-0.25
b5=b6/(cotanh(-1/pixel^3))-conj(0.06/pixel)-(flip(0.00510/pixel))^4+0.15
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

Carr3241(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b1=(cosh(cos(-pixel)))
b2=(cosxx(cosh(-pixel)))
b6=(cabs(pixel)*conj(flip(pixel))+0.15)/b2
b5=pixel^6-conj(0.01/b1-flip(0.01/b2-conj(0.01/b6)))+0.25
b4=(pixel/2)-conj(0.01/b1-flip(0.01/b2-conj(0.01/b6)))
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*pixel))),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3242(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b1=(cosh(cos(-pixel)))
b2=(cosxx(cosh(-pixel)))
b6=(cabs(pixel)*conj(flip(pixel))+0.15)/b2
b5=pixel^6-conj(0.001/b1-flip(0.001/b2-conj(0.001/b6)))-0.35
b4=(pixel/2)-conj(0.01/b1-flip(0.01/b2-conj(0.01/b6)))+0.1
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*z*z)/(conj(z+c))+conj(c/8)+(-0.7456,-0.132)+sqr(0.1/pixel),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3243(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b1=(cosh(cos(-pixel)))
b2=(cosxx(cosh(-pixel)))
b6=(cabs(pixel)*conj(flip(pixel))+0.15)/b2
b5=pixel^7-conj(0.001/b1-flip(0.001/b2-conj(0.001/b6)))-0.35
b4=cabs(b5/2.5)-conj(0.1/pixel-flip(0.01/pixel))-0.05
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*pixel))),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3244(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b3=cabs(pixel^2)-pixel-conj(0.1/pixel)
b5=abs(pixel^5)-conj(0.1/b3-flip(0.01/b3))-conj(0.1/pixel-flip(0.01/pixel))-0.13
b4=pixel^5-conj(0.1/b3-flip(0.01/b3))-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4-(whitesq==0)*sqr(b4)
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*pixel))),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3245(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b3=cabs(pixel^2)-cosxx(pixel)-conj(0.1/pixel)
b5=abs(pixel^7)-conj(0.075/b3-flip(0.01/b3))-conj(0.065/pixel-flip(0.01/pixel))-0.23
b4=cabs(pixel^7)-conj(0.1/b3-flip(0.01/b3))-conj(0.1/pixel-flip(0.01/pixel))-0.075
c=whitesq*b4^3-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*pixel))),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3246(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b3=cabs(pixel)-cosxx(pixel^4)-conj(0.1/pixel^3)
b5=abs(pixel^10)-conj(0.1/b3-flip(0.0075/b3))-conj(0.065/pixel-flip(0.01/pixel))-0.3
b4=cabs(b5/2.5)-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4^2-(whitesq==0)*flip(imag(b4))
z=whitesq*b5-(whitesq==0)*b5^2
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*pixel|)),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3247(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b3=cosh(2/pixel)-cotanh(3/pixel)-conj(|0.1/pixel^3|)
b5=abs(pixel^6)-conj(0.25/b3-flip(0.0075/b3))-conj(0.065/pixel-flip(0.01/pixel))-0.3
b4=pixel^4-conj(0.01/pixel-flip(0.01/pixel-cabs(0.001/b5-abs(0.001/b3))))
c=whitesq*b4^2-(whitesq==0)*flip(imag(b4))
z=whitesq*b5-(whitesq==0)*b5^2
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*pixel|)),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3248(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b5=conj(conj(pixel/2)*sin(abs(pixel/3)))*conj(pixel^6)-flip(0.1/pixel)-0.13
b4=(pixel^3)+0.5*(conj(b5/2)-conj(conj(b5^2))-conj(tan(sin(0.1/pixel-conj(0.01/pixel)))))-0.15
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5^2
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*pixel|)),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3249(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b5=conj(conj(pixel^6)-sin(abs(pixel/3)))-conj(pixel/2)-flip(0.001/pixel)-0.2
b4=(pixel^6)*(conj(b5/2)-conj(conj(0.001/b5))-conj(tan(sin(0.001/pixel-conj(0.005/pixel)))))-0.15
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5^2
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*pixel|)),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3250(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))
b5=conj(conj(pixel^3))*cabs(pixel^4)-flip(0.01/pixel)-conj(0.01/pixel)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.75-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+c+flip(real(|d/70*pixel|))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3251(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))
b5=conj(conj(pixel^3))*cabs(pixel^4)-flip(0.01/pixel)-conj(0.01/pixel)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.75-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*pixel))),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3252(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))
b5=abs(conj(pixel^3))*abs(pixel^4)-flip(0.01/pixel)-conj(0.01/pixel)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.75-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*pixel))),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3253(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))-0.045/pixel
b5=abs(conj(pixel^3))*(flip(pixel^4))-flip(0.0001/b4)+conj(0.001/pixel)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*pixel))),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3254(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b4=abs(conj(conj(pixel^3)))*conj(flip(pixel^3))-cabs(0.035/pixel)+0.1
b5=abs(conj(pixel^2))*(cabs(flip(pixel^4)))-flip(0.0001/b4)+conj(0.001/pixel)-0.2
c=whitesq*b4-(whitesq==0)*conj(b4)
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*pixel))),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3255(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))-conj(cabs(0.04/pixel))
b5=conj(conj(pixel^3))*cabs(pixel^4)-flip(0.01/pixel)-conj(0.01/pixel)-0.2
c=whitesq*b4-(whitesq==0)*conj(b4)
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*pixel)))-0.001/c,
iter=iter+1
(conj(|z|))<=bailout
}

Carr3256(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))-conj(cabs(0.045/pixel))+0.075
b5=conj(conj(pixel^3))*flip(conj(sinh(pixel^4)))-flip(0.01/pixel)-conj(0.01/pixel)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5+0.01/c
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*pixel)))-0.001/c,
iter=iter+1
(conj(|z|))<=bailout
}

Carr3257(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))
b5=conj(conj(pixel^3))*abs(pixel^4)-flip(0.0075/pixel)-conj(0.0125/pixel)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.75-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+c+flip(real(|d/70*pixel|))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3258(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b3=(|0.0175/pixel|)
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))
b5=conj(conj(pixel^3))*cabs(pixel^4)-flip(0.01/pixel)-conj(0.01/pixel)-conj(b3)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*(b5^0.75)-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+c+flip(real(|d/70*pixel|))+0.105
iter=iter+1
(conj(|z|))<=bailout
}

Carr3259(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b3=(|0.0175/pixel|)
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))
b5=conj(conj(pixel^3))*cabs(pixel^4)-flip(0.01/pixel)-conj(0.01/pixel)-conj(b3)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*(b5^0.75)-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*pixel)))+0.13
iter=iter+1
(conj(|z|))<=bailout
}

Carr3260(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b3=(|0.0175/pixel|)
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))
b5=conj(conj(pixel^3))*cabs(pixel^4)-flip(0.01/pixel)-conj(0.01/pixel)-conj(b3)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*(b5^0.75)-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+cabs(|c/12|)+flip(real(|d/80*pixel|)),
iter=iter+1
(conj(|z|))<=bailout
}

Carr3261(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b3=(|0.0175/pixel|)-imag(0.00725/pixel)
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))
b5=conj(conj(pixel^3))*cabs(pixel^4)-flip(0.01/pixel)-conj(0.01/pixel)-conj(b3)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*(b5^0.75)-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*pixel)))+0.125
iter=iter+1
(conj(|z|))<=bailout
}

Carr3262(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b3=(|0.0175/pixel|)-imag(0.00725/pixel)+cabs(0.01/pixel)
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))
b5=conj(conj(pixel^3))*cabs(pixel^4)-flip(0.01/pixel)-conj(0.01/pixel)-conj(b3)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*(b5^0.75)-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*pixel)))+0.125
iter=iter+1
(conj(|z|))<=bailout
}

Carr3263(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b3=(|0.0175/pixel|)-imag(0.00725/pixel)+cabs(0.01/pixel)
b4=abs(conj(conj(pixel^5)))*conj(flip(pixel^3))-flip(b3)
b5=abs(conj(conj(pixel^2)))*cabs(pixel^3)-flip(0.01/pixel)-conj(0.01/pixel)-conj(b3)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*(b5^0.75)-(whitesq==0)*abs(b5)
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*pixel)))+0.08
iter=iter+1
(conj(|z|))<=bailout
}

Carr3264(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
d=sqrt(1/pixel-cosxx(1/pixel))
b3=conj((0.0175/pixel)-imag(0.00725/pixel)+cabs(0.01/pixel))
b4=abs(conj(conj(pixel^5)))*conj(flip(pixel^3))-(-b3)
b5=abs(conj(conj(pixel^3)))*cabs(pixel^4)-flip(0.01/pixel)-conj(0.01/pixel)-conj(b3)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*(b5^0.75)-(whitesq==0)*abs(b5)
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*pixel)))+0.08
iter=iter+1
(conj(|z|))<=bailout
}

Carr3265(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=(conj((0.0175/pixel)-imag(0.00725/pixel)^2+cabs(0.01/pixel)))
b4=abs(conj(conj(pixel^5)))*conj(flip(pixel^3))-(b3)
b5=abs(conj(conj(pixel^3)))*cabs(pixel^4)-flip(0.01/pixel)-conj(0.01/pixel)-(b3)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*(b5^0.75)-(whitesq==0)*abs(b5)
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(|z|/5)+z*z+c-0.09/pixel-0.08
iter=iter+1
(conj(|z|))<=bailout
}

Carr3266(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=(conj((0.0175/pixel)-imag(0.00725/pixel)^2+cabs(0.01/pixel)))
b5=pixel^5-conj(0.075/pixel)-flip(0.001/b3)-0.2
b4=pixel-flip(0.075/pixel)-conj(0.001/pixel),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*(b5^0.75)-(whitesq==0)*abs(b5)
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(|z|/5)+z*z+c-0.09/pixel-0.08
iter=iter+1
(conj(|z|))<=bailout
}

Carr3267(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=(flip((0.0175/pixel)-imag(0.00725/pixel)^3+cabs(0.01/pixel)^2))
b4=abs(conj(conj(1.5*pixel)))*conj(flip(pixel^3))-(b3*pixel^0.66)-0.15
b5=abs(conj(conj(pixel^3)))*cabs(pixel^4)-flip(0.01/pixel)-conj(0.01/pixel)-(b3)-0.15
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.75-(whitesq==0)*b5^0.75
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(|z|/4)+z*z+c-(0.1/pixel*b3*2)-0.096
iter=iter+1
(conj(|z|))<=bailout
}

Carr3268(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=conj(conj(pixel^3))*cabs(pixel^4)-flip(0.01/pixel)-conj(0.01/pixel)-0.2
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))
b5=conj(conj(pixel^3-0.0075/b3))*cabs(pixel^4)-flip(0.035/pixel)-conj(0.03/pixel)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.75-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(|z|/4)+z*z+c+0.08-c/20
iter=iter+1
(conj(|z|))<=bailout
}

Carr3269(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b4=pixel-conj(0.1/pixel-flip(0.01/pixel+cabs(0.01/pixel)))
b5=pixel^6-conj(0.1/b4-flip(0.01/b4+cabs(0.01/b4)))
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.75-(whitesq==0)*conj(b5-0.025/b5*pixel^4)^2
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=(|z|/4)+z*z+c+0.08-c/20+0.03/pixel
iter=iter+1
(conj(|z|))<=bailout
}

Carr3270(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b4=(conj(conj(pixel^2))*flip(flip(pixel^2))-conj(0.075/pixel)+sinh(0.001/pixel))
b5=tan(tan(pixel^4)-0.075/b4)-tanh(0.1/pixel)-conj(0.001/pixel)-0.24
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=(|z/6|)+z*z+c+0.09-c/8+0.025/pixel
iter=iter+1
(conj(|z|))<=bailout
}

Carr3271(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b3=(((exp(0.0025/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b5=pixel^5-0.0075/b3-conj(0.0075/b3)-0.45
b4=cabs(pixel^2)-pixel^7+conj(0.075/b3)
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5^2
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=(|z/6|)+z*z+c+0.09-c/8+0.025/pixel
iter=iter+1
(conj(|z|))<=bailout
}

Carr3272(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b3=(((exp(0.0025/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b5=conj(pixel^6)-abs(0.007/b3)-conj(0.007/b3)-cabs(0.0025/b3)-0.45
b4=cabs(pixel^3+0.075/b5)-pixel^7+conj(0.075/b3)-0.35
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5^3
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=(|z/6|)+z*z+c+0.09-c/8+0.025/pixel
iter=iter+1
(conj(|z|))<=bailout
}

Carr3273(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b4=conj(pixel^4-sinh(0.007/pixel)),m4=(conj(0.005/pixel))-sqr(flip(0.09/pixel))
b5=conj(1/acos(1-pixel))*(pixel^4)-m4-conj(0.008/pixel)-0.1
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=(|z/6|)+z*z+c+0.09-c/8+0.025/pixel-(flip(abs(d/30*pixel)))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3274(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b3=(((exp(0.0045/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))
b5=conj(conj(pixel^3))*cabs(pixel^4)-flip(0.01/pixel)-conj(0.01/pixel)+conj(0.0095/b3)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.75-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c+flip(real(|d/70*pixel|))+0.125
iter=iter+1
(conj(|z|))<=bailout
}

Carr3275(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b3=(((exp(0.0045/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))-conj(0.0075/b3)-flip(0.0075/b3)
b5=conj(conj(pixel^3))*cabs(pixel^4)-flip(0.01/pixel)-conj(0.01/pixel)+conj(0.0095/b3)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.75-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c+flip(real(|d/70*pixel|))+0.125
iter=iter+1
(conj(|z|))<=bailout
}

Carr3276(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b3=(((exp(0.0045/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))-conj(0.0075/b3)-flip(0.0075/b3)
b5=conj(conj(pixel^3))*cabs(pixel^4)-flip(0.0025/b4)-conj(0.0025/b4)+conj(0.0095/b3)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.75-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c+flip(real(|d/70*pixel|))+0.125
iter=iter+1
(conj(|z|))<=bailout
}

Carr3277(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b3=(((exp(0.0045/pixel))/(cosxx(0.1-pixel^4))))-conj(0.01/pixel)
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))-conj(0.0075/b3)-flip(0.0075/b3)
b6=conj(conj(conj(0.001/b4)))
b5=conj(conj(pixel^3))*cabs(pixel^4)-flip(0.0007/b4)-b6+conj(0.0095/b3)-0.235
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.75-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c+((z*z/c)/30)+0.125
iter=iter+1
(conj(|z|))<=bailout
}










































