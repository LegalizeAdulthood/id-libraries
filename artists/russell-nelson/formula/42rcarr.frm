{
Carr2765 & up. To see examples of images these FRACTINT formulas
can create, download 42rcarr.par.

I can be contacted on AOL with the screen name GENEALOGY1, or
CompuServe with the number 73753,2420

--Bob Carr--
Ocala, FL
}
Carr2765(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=b5=1/(pixel-conj(1/pixel)-flip(1/pixel))
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

Carr2766(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=pixel^5-conj(pixel/5),
b5=b4/2-0.099/pixel
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

Carr2767(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=pixel^7-conj(pixel/5),
b5=b4/2.5-flip(0.099/pixel)
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c-0.05/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2768(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=1/(0.75*pixel-(|pixel|+cos(sqr(|pixel|*1/(pixel-0.124)))))+0.5
b4=1/(conj(conj(pixel))-(|0.67*pixel|+cos(sqr(|pixel|*1/(pixel-0.124)))))
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

Carr2769(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=cotan(|1-pixel|)^1.5*pixel^8-(1/log(conj(0.10/pixel+1.25)))^15.5,
b5=(pixel^2.63)/log(1.667-pixel)^2.87-(1/log(conj(0.10/pixel+1.25)))^2.95,
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c-0.02/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2770(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=cotan(|1-pixel|)^1.5*pixel^8-(1/log(conj(0.10/pixel+1.25)))^30,
b5=(pixel^2.63)/log(1.667-pixel)^2.87-(1/log(conj(0.10/pixel+1.25)))^5,
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c-0.02/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2771(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=cotan(|1-pixel|)^1.5*pixel^8-(0.5/log(conj(conj(0.10/pixel+1.0))))^30,
b5=(pixel^2.63)/log(1.667-pixel)^2.87-(1/log(conj(0.07/pixel+1.25)))^7.5,
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c-0.02/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2772(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=(flip(abs(1-pixel)))^1.66;
b5=(1-pixel)^1.8;
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1*z,c2=2.25*z,c3=3.375*z,c4=7.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c+0.02/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2773(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=flip(conj(pixel))^30-flip(0.1/pixel)
b5=flip(flip(pixel))^10-conj(0.1/pixel),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1*z,c2=2.25*z,c3=3.375*z,c4=7.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2774(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=b5=(conj(pixel/1.75)*flip(pixel/1.5)-conj(conj(0.025/pixel)))/pixel^6+0.3
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

Carr2775(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=b5=conj(conj(pixel/1.75)*flip(pixel/1.5)-flip(flip(0.025/pixel)))/pixel^10+0.3
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c-0.05,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2776(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=conj(conj(pixel/1.75)*flip(pixel/2)-flip(flip(0.025/pixel)))/pixel^10+0.3
b5=conj(sinh(conj(pixel/10)-conj(tanh(0.025/pixel/5)))/(pixel/3)^10)^(0.7456,-0.132)+0.3
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c-0.05,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2777(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=|pixel^5|+0.096+flip(0.1/pixel)+conj(0.01/pixel)
b5=abs(flip(conj(pixel)))+flip(0.01/pixel)+conj(0.1/pixel)
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

Carr2778(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=pixel,
b4=(-0.7456,0.25)*(0.3,0.6),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z^2+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2779(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=abs(flip(conj(pixel)))+flip(0.01/pixel)+conj(0.1/pixel)-0.4
b4=(-0.7456,0.25)*(0.3,0.6),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z^2+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2780(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=pixel^5+0.096+flip(0.1/pixel)+conj(0.01/pixel)-0.3
b4=((-0.7056,0.25)*(0.3,0.6)),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z^2+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2781(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=pixel^5+0.096+flip(0.1/pixel)+conj(0.01/pixel)
b4=((-0.7296,0.25)*(0.3,0.6)),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z^2+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2782(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=flip(conj(conj(pixel^3)))+0.096+flip(0.01/pixel)^8+conj(0.1/pixel)^6
b4=((-0.7296,0.25)*(0.3,0.6)),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z^2+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2783(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=flip(flip(conj(2*pixel^3-conj(0.01/pixel))))+0.096+flip(0.01/pixel)^20+conj(0.1/pixel)^16
b4=((-0.7296,0.25)*(0.3,0.6)),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z^2+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2784(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=flip(flip(conj(5*pixel^7-conj(0.01/pixel))))+0.096+flip(0.01/pixel)^20+conj(0.1/pixel)^16
b4=((-0.7296,0.25)*(0.3,0.6)),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z^2+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2785(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=1/(1/(1/(3/conj(pixel^6))))+pixel^3+0.2-flip(0.01/pixel)^12,
b4=((-0.7296,0.25)*(0.3,0.6)),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z^2+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2786(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=pixel^3-conj(pixel/4-(tan(0.1/pixel))-flip(0.02/pixel))
b4=((-0.7296,0.25)*(0.3,0.6)),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z^2+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2787(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=flip(imag(pixel^7)+0.2)-conj((pixel/2)^3-(tan(0.1/pixel))-flip(0.02/pixel))-0.3
b4=((-0.7156,0.25)*(0.3,0.6)),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z^2+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2788(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=abs(pixel^5)-1/log(conj(0.5/pixel))-conj(0.1/pixel),
b4=((-0.7156,0.25)*(0.3,0.6)),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z^2+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2789(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=((cos(pixel^5))-cosh(pixel))-flip(0.01/pixel)
b4=((-0.8756,-0.132)*(0.3,0.6)),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z^2+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2790(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=((cosxx(pixel^3))-cos(pixel))-flip(0.01/pixel)+conj(0.1/pixel)
b4=((-0.8756,-0.132)*(0.3,0.6)),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z^2+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2791(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=b4=(0.2+pixel^3)-((-0.9056,-0.132)*(0.3,0.6))/2-conj(0.1/pixel)^3+flip(0.01/pixel)^6,
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z^2+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2792(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=conj(conj(pixel^5))+conj(conj(0.1/pixel))^4-0.3,
b4=(-0.7456,-0.132)/3
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z^2+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2793(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=b5=conj(conj(pixel^5))+flip(flip(0.1/pixel))-0.3-conj(0.1/pixel)^12,
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^4-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0095
z=z^2+c-conj(0.1/pixel),
iter=iter+1
(|real(z)|)<=bailout
}

Carr2794(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=conj(conj(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
b5=pixel,
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/(imag(p2+5)):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0065
z=z^2+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2795(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=conj(conj(0.2/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
b5=pixel^5-conj(0.01/pixel)-0.4,
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/(imag(p2+5)):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0065
z=z^2+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2796(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=conj(conj(0.2/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
b5=conj(conj(pixel^3))+conj(conj(0.01/pixel*3))-0.25,
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/(imag(p2+5)):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.007
z=z^2+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2797(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b5=b4=0.3*(pixel)/cos(1/cotanh(pixel))-0.5/log(pixel-0.7/sqrt(0.50/pixel))^2.5-conj(0.05/pixel)+0.2,
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/(imag(p2+5)):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.002
z=z^2+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2798(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=conj(conj(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
b5=(2.75*pixel^5)+conj(pixel-flip(0.010/pixel))+0.3+conj(0.1/pixel)^10,
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/(imag(p2+5)):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z^2+c,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2799{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=0.8*pixel^5/(sqr(pixel))+0.4,
b5=(0.8*pixel^5/(sqr(pixel))+0.4)-flip(0.1/pixel),
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00015
z=z*z+c,
iter=iter+1
|z|<=bailout
}

Carr2800{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=(0.8*pixel^5/(sqr(0.33-pixel))+0.4)-conj(0.1/pixel),
b5=(0.8*pixel^5/(pixel^2)+0.4)-flip(0.1/pixel),
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00015
z=z*z+c,
iter=iter+1
|z|<=bailout
}

Carr2801{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b3=conj(conj(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
b4=b3-flip(0.1/pixel)
b5=conj(conj(pixel/2.5))-(conj(0.1/pixel)-flip(0.1/pixel)+0.055/pixel)+0.15,
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.000015
z=z*z+c,
iter=iter+1
|z|<=bailout
}



































































