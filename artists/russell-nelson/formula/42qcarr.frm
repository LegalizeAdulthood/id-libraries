{
; Carr2730 & up.To see examples of images these FRACTINT formulas
; can create, download 42qcarr.par.
; 
; I can be contacted on AOL with the screen name GENEALOGY1, or
; CompuServe with the number 73753,2420
; 
; --Bob Carr--
; Ocala, FL
}

Carr2730(YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
;passes 1 needs to be used with this formula. A PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=cabs(pixel*2)-1/log(conj(0.5/pixel)),
c=whitesq*b4-(whitesq==0)*b4
b5=pixel-1/log(pixel-1/log(tan(1/pixel))-1/log(2/pixel))
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2731(YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
;passes 1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=|pixel^8|+0.296-flip(0.1/pixel)
c=whitesq*b4-(whitesq==0)*b4
b5=abs(flip(conj(pixel/2)))+flip(0.01/pixel)
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2732(YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
;passes 1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=pixel-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4-(whitesq==0)*b4
b5=abs(flip(conj(pixel/2)))+flip(0.01/pixel)
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2733(YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
;passes 1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=pixel+1/log(cos(0.1/pixel-0.025))*(tan(0.1/pixel-0.025))
b5=b4-0.0625
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2734(YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
;passes 1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=pixel+1/log(cos(0.1/pixel-0.025))*(tan(0.1/pixel-0.025))
b5=pixel+1/log(cosxx(0.1/pixel-0.025))*(tan(0.1/pixel-0.025))
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2735(YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
;passes 1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=flip(pixel)+0.25/log(cos(1/pixel))*(tan(0.1/pixel))
b5=cabs(pixel)+0.15/log(cosxx(1/pixel))*(tan(0.1/pixel))
c=whitesq*b4-(whitesq==0)*b4-0.3
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2736{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes 1 needs to be used with this PHC formula.
b4=pixel-conj(0.1/pixel-sin(0.01/pixel))
b5=conj(pixel/2)-sqrt(cos(0.1/pixel))*(tan(0.1/pixel))
c=whitesq*b4-(whitesq==0)*(b4)
z=whitesq*b5-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2737{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes 1 needs to be used with this PHC formula.
b4=tanh(pixel)-(((0.3,0.6)+pixel)/(0.20/-pixel)),
b5=b4+0.0625
c=whitesq*b4-(whitesq==0)*(b4)
z=whitesq*b5-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2738{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes 1 needs to be used with this PHC formula.
b4=conj(conj(pixel/2))/(0.20/pixel),
b5=conj(conj(b4/2))
c=whitesq*b4-(whitesq==0)*(b4)
z=whitesq*b5-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00495
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2739{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=(pixel/3*cos(pixel-flip(0.010/pixel)-conj(0.10/pixel)))
b5=(pixel*(pixel-flip(0.010/pixel)-conj(0.10/pixel)))+(0.0001/pixel)
c=whitesq*flip(b4)-(whitesq==0)*conj(b4)
z=whitesq*conj(b5)-(whitesq==0)*flip(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c+(-0.7456,0.132),
iter=iter+1
(|real(z)|) <= bailout
}

Carr2740{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
d=log(1/pixel-conj(1/pixel))
b4=(pixel/3*cos(pixel-flip(0.010/pixel)-conj(0.10/pixel)))/d
b5=(pixel*(pixel-flip(0.010/pixel)-conj(0.10/pixel)))+(0.0001/pixel)
c=whitesq*flip(b4)-(whitesq==0)*conj(b4)
z=whitesq*conj(b5)-(whitesq==0)*flip(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c+(-0.7456,0.132),
iter=iter+1
(|real(z)|) <= bailout
}

Carr2741{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
d=log(1/pixel-conj(1/pixel))
b4=(pixel/3*cos(pixel-flip(0.010/pixel)-conj(0.10/pixel)))
b5=((pixel*(pixel-flip(0.010/pixel)-conj(0.10/pixel)))+(0.0001/pixel))/d
c=whitesq*((b4))-(whitesq==0)*conj(b4)
z=whitesq*conj(b5)-(whitesq==0)*(b5^5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c+(-0.7456,0.132),
iter=iter+1
(|real(z)|)<=bailout
}

Carr2742{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
d=sqrt(1/pixel-conj(0.1/pixel))
b4=(pixel/3*cos(pixel-flip(0.010/pixel)-conj(0.10/pixel)))/d
b5=((pixel*(pixel-flip(0.010/pixel)-conj(0.10/pixel)))+(0.0001/pixel))/d*10
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c+(-0.7456,0.132),
iter=iter+1
(|real(z)|)<=bailout
}

Carr2743(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=flip(imag(pixel))-conj(0.1/pixel)
b5=pixel
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2744(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=flip(imag(pixel))*log(0.1/pixel-conj(0.1/pixel))+0.3
b5=pixel
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c;
iter=iter+1
(|real(z)|)<=bailout
}

Carr2745(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=pixel-conj(0.1/pixel-flip(0.01/pixel))
b5=pixel
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c;
iter=iter+1
(|real(z)|)<=bailout
}

Carr2746(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=pixel-(sqrt(conj(0.1/pixel-flip(0.02/pixel))))^100
b5=pixel,
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c;
iter=iter+1
(|real(z)|)<=bailout
}

Carr2747(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=conj(conj(0.15/log(exp(conj(conj(pixel^150))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
b5=pixel
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c
iter=iter+1
(|real(z)|)<=bailout
}

Carr2748(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=pixel
b4=0.3*(pixel)/cotanh(1/cotanh(pixel/2))-0.5/log(pixel-0.7/sqrt(0.50/pixel))^2.5-conj(0.05/pixel),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c
iter=iter+1
(|real(z)|)<=bailout
}

Carr2749(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=((flip(imag(pixel))-flip(0.01/pixel-conj(0.1/pixel))))
b4=(pixel*(abs(1.15*pixel-flip(0.10/pixel)-conj(0.010/pixel))))+0.3
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2750(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=((flip(imag(pixel))-flip(0.01/pixel-conj(0.1/pixel))))
b4=(pixel*(abs(1.15*pixel-flip(0.10/pixel)-conj(0.010/pixel))))+0.3
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2751(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=(conj(conj(pixel^4))/(conj(pixel^1.5)))+0.2,
b4=0.8*pixel-1/log(pixel-conj(conj(0.10/pixel))+flip(flip(imag(0.0010/pixel)))),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2752(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=(conj(conj(pixel^4))/(conj(pixel^1.5)))+0.3,
b4=0.8*pixel-1/log(pixel-conj(conj(0.10/pixel))+flip(flip(imag(0.0010/pixel)))),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2753(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=(flip(flip(pixel^4))/(conj(pixel^1.5)))+0.3,
b4=abs(pixel)-1/log(pixel-conj(conj(0.10/pixel))+flip(flip(imag(0.0010/pixel)))),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2754(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=(flip(flip(pixel^4))/(conj(pixel^1.5)))+0.3,
b4=abs(pixel)-1/log(pixel-conj(conj(0.10/pixel))+flip(flip(imag(0.0010/pixel)))),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c-0.21/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2755(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=(cos(cos(pixel^4))/(cotanh(pixel^1.5))),
b5=pixel-(flip(flip(pixel^4))/(conj(pixel^1.5)))/2,
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c-0.11/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2756(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=0.5*pixel-1/log(pixel-conj(conj(0.10/pixel))+flip(flip(imag(0.0010/pixel)))),
b5=(b4+0.0525)-conj(0.10/pixel)
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2757(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=(cos(pixel^4))-cosh(pixel),
b5=conj(b4/2)-conj(0.1/pixel)
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2758(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=(cos(pixel^4))-cosh(pixel),
b5=conj(b4/2)-conj(0.1/pixel)
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c+0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2759(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=(cosxx(pixel^5))-cos(pixel*0.75)-conj(0.1/pixel),
b5=conj(b4/2)-flip(0.1/pixel)-0.1
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel^12/real(p2)/(1/pixel):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c+0.25/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2760(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=b5=pixel/(tanh(0.3/pixel)),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c+0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2761(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=pixel/(tanh(0.3/pixel)),
b5=conj(pixel)/(tanh(0.3/pixel)),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c+0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2762(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=(conj(flip(flip(pixel)))-asin(flip(pixel)))
b5=pixel
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2763(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=(pixel*(abs(1.15*pixel-flip(0.0010/pixel)-conj(0.30/pixel))))-0.1
b4=pixel-(1/log(pixel-1/cos(0.010/pixel))^5),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2764(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=(1-pixel*(cabs(1.65*pixel-flip(|0.010/pixel|)-conj(0.10/pixel))))-0.1
b5=pixel-(1/log(pixel-0.25/cos(conj(sinh(0.1/pixel))))^5),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c,
iter=iter+1
(|real(z)|)<=bailout
}





























