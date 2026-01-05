{
To see examples of images these FRACTINT formulas
can create, download 42xcarr.par.

I can be contacted on AOL at address GENEALOGY1@aol.com or
CompuServe with the number 73753,2420

--Bob Carr--
Ocala, FL
}

Carr2988{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=abs(conj(pixel)*flip(pixel))-0.15
b4=b5^3-conj(0.1/pixel-flip(0.015/pixel-flip(0.1/b5)))+0.4
c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
z=whitesq*conj(b5)-(whitesq==0)*abs(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=0.2*z^3+z^2+(-0.7456,-0.132)+(c/8.5)+c/1.75,
iter=iter+1
imag(flip(z))<=bailout
}

Carr2989{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=(pixel-conj(conj(0.10/pixel))-cotan(cotan(1/pixel)))
b4=(pixel+cosxx((sqr(cos(pixel+conj(pixel))))))
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*(|b5|)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(c/10),
iter=iter+1
imag(flip(z))<=bailout
}

Carr2990{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=(abs(pixel)-conj(conj(0.10/pixel))-cotan(cotan(1/pixel)))-0.25
b4=(pixel+cosxx((sqr(cos(pixel*conj(pixel))))))
c=whitesq*b4-(whitesq==0)*b4^2
z=whitesq*b5-(whitesq==0)*(|b5|)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(c/10),
iter=iter+1
imag(flip(z))<=bailout
}

Carr2991{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=pixel^5+0.4
b4=0.55*((2*pixel-flip(0.010/pixel)-conj(0.10/pixel))),
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(c/10),
iter=iter+1
imag(flip(z))<=bailout
}

Carr2992{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=cabs(pixel)^5+0.2
b4=pixel-flip(0.010/pixel)-conj(0.10/pixel)-cabs(0.1/b5),
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)+flip(0.1/b5)
z=whitesq*sqr(b5)-(whitesq==0)*conj(|b5|)+flip(0.1/b4)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z*z/5+z*z+2*c^2+(-0.7456,-0.132),
iter=iter+1
imag(flip(z))<=bailout
}

Carr2993{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=pixel-conj(pixel/5),
b5=b4/2.5-flip(0.099/pixel)-0.6
c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
z=whitesq*conj(b5)-(whitesq==0)*sqr(|b5|)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c^(real(1)-(1,0)))*(z^2)+c/8+(-0.7756,-0.132),
iter=iter+1
imag(flip(z))<=bailout
}

Carr2994{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=pixel-conj(0.1/pixel)
b4=pixel-flip(0.1/pixel)-conj(0.001/pixel),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c^(real(1)-(1,0)))*(z^2)+c/8+(-0.7756,-0.132),
iter=iter+1
imag(flip(z))<=bailout
}

Carr2995{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=pixel-conj(0.1/pixel)-0.32
b4=pixel-flip(0.1/pixel)-conj(0.001/pixel),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c^(real(1)-(1,0)))*(z^2)+c/8+(-0.7256,-0.132),
c=((z+c*(0.4,0.35))-0.0325)
iter=iter+1
imag(flip(z))<=bailout
}

Carr2996{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=pixel-conj(0.01/pixel)
b4=pixel-flip(0.01/pixel)-conj(0.001/pixel),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(conj(c)^(real(1)-(1,0)))*(z^2)+c/8+(-0.7656,-0.132),
iter=iter+1
imag(flip(z))<=bailout
}

Carr2997{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=pixel-conj(0.01/pixel)
b4=pixel-flip(0.01/pixel)-conj(0.001/pixel),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=cabs(c)^(real(1)-(1,0))*(0.01+z^2)+tan(c/6)+(-0.7156,-0.132),
iter=iter+1
imag(flip(z))<=bailout
}

Carr2998{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=pixel-conj(0.01/pixel)
b4=pixel-flip(0.01/pixel)-conj(0.001/pixel),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+flip(conj(c/10)),
iter=iter+1
imag(flip(z))<=bailout
}

Carr2999{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=pixel-conj(0.01/pixel)
b5=pixel-flip(0.01/pixel)-conj(0.001/pixel)-conj(0.001/b4)-0.12,
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7156,-0.132)+flip(conj(c/10)),
iter=iter+1
imag(flip(z))<=bailout
}

Carr3000{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=pixel-conj(0.01/pixel-flip(0.001/pixel))
b5=conj(pixel)-flip(0.01/pixel)-conj(0.001/pixel)-conj(0.001/b4)-0.1,
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2-(0.3,0.525)+flip(conj(c/10)),
iter=iter+1
imag(flip(z))<=bailout
}

Carr3001{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=conj(pixel)-conj(0.1/pixel-flip(0.001/pixel))-0.45
b4=flip(pixel*2)-flip(0.01/pixel)-conj(0.001/pixel)-conj(0.001/b5),
c=whitesq*flip(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*flip(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7496,-0.132)+flip(conj(|c/12|)),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3002{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=conj(pixel)-conj(0.1/pixel-flip(0.0019/pixel))
b4=conj(pixel)-flip(0.01/pixel)-conj(0.001/pixel),
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c^4)^(real(1)-(1,0))*(0.01+z^2)+(c/6)+(-0.7156,-0.132),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3003{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=conj(pixel)-conj(0.1/pixel-flip(0.0019/pixel))+0.2
b4=conj(pixel)-flip(0.01/pixel)-conj(0.001/pixel),
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*sqr(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*z*z)/(z+c)+c/10+(-0.7956,-0.132),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3004{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=conj(pixel)-conj(0.1/pixel-flip(0.0019/pixel))+0.2
b4=conj(pixel)-flip(0.01/pixel)-conj(0.001/pixel),
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*sqr(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*z*z)/(conj(z+c))+c/10+(-0.7956,-0.132),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3005(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=conj(pixel^3)-conj(0.1/pixel-flip(0.01/pixel))+0.4
b5=flip(conj(1.25*pixel))-flip(0.01/pixel)-conj(0.001/pixel)+0.4,
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*(b5)-(whitesq==0)*sqr(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*z*z)/(conj(z+c))+c/10+(-0.7956,-0.132),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3006{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=pixel-conj(0.1/pixel)
b4=pixel-flip(0.1/pixel)-conj(0.001/pixel),
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*z*z)/(conj(z+c))+c/10+(-0.7956,-0.132),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3007{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=(-0.7456,-0.132)
b5=abs(conj(conj(2*pixel^12)))-flip(0.1/pixel)-conj(0.1/pixel)+0.35
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*z*z)/(flip(z+c))+c/8+(-0.7956,-0.132),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3008{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=pixel-conj(0.01/pixel-flip(0.001/pixel))
b5=1-abs(imag(b4)-real(b4))+flip(1-abs(1-real(b4)-imag(b4))),
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*sqr(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*z*z)/(conj(z+c))+c/8+flip(-0.6956,-0.132),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3009(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=pixel-conj(0.01/pixel-flip(0.001/pixel))
b5=1-abs(imag(b4)-real(b4))+flip(1-abs(1-real(b4)-imag(b4))),
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*sqr(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*z*z)/(conj(z+c))+c/8+flip(-0.6956,-0.132),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3010(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=pixel-conj(0.01/pixel-flip(0.001/pixel))
b5=1-abs(conj(imag(b4)-real(b4/2)))+flip(1-abs(1-real(b4)-flip(imag(b4)))),
c=whitesq*conj(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*sqr(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*z*z)/(conj(z+c))+c/8+flip(-0.6956,-0.132),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3011{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=b4=pixel,
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*z*z)/(conj(z+c))+conj(c/8)+(-0.7456,-0.132)+sqr(1/pixel),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3012(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=pixel,
b5=pixel-conj(0.001/pixel-flip(0.01/pixel)),
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*z*z)/(conj(z+c))+conj(c/8)+(-0.7456,-0.132)+sqr(1/pixel),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3013{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=conj(conj(pixel^2.5))-tanh(tanh(pixel)^1.4)-0.4
b4=(conj(pixel)^2.5)-(flip(0.010/pixel))-(conj(0.10/pixel))-0.5,
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*z*z)/(conj(z+c))+conj(c/8)+(-0.7456,-0.132)+sqr(flip(1/pixel)),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3014(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=b4=((pixel)-0.15/((log(conj(-pixel))^12)+pixel)+sqrt(0.0450/pixel))/0.8
c=whitesq*sqr(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*z*z)/(conj(z+c))+conj(c/8)+(-0.7456,-0.132)+sqr(1/pixel),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3015{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=(1/log(exp(conj(conj(pixel^450))-cosh(conj(conj(pixel^35.5)))-0.4)-0.5))
b5=flip(flip(pixel)),
c=whitesq*sqr(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*z*z)/(conj(z+c))+conj(c/8)+(-0.7456,-0.132)-pixel,
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3016{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=(0.15/log(exp(conj(conj(pixel^450))-cosh(conj(conj(pixel^50.5))))))
b5=conj(conj(pixel))-tan(tan(0.0010/pixel))-0.5
c=whitesq*sqr(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c*z*z)/(conj(z+c))+conj(c/8)+(-0.7456,-0.132)-pixel,
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3017{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=(0.15/log(exp(conj(conj(pixel^450))-cosh(conj(conj(pixel^50.5))))))
b5=conj(conj(pixel))-tan(tan(0.0010/pixel))-0.5
c=whitesq*conj(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=0.75*(c*z*z)/(conj(z+c)*0.6)+conj(c/4)+(-0.7456,-0.132),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3018{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=pixel/3.67-conj(flip(pixel/3)),
b4=(-0.7456,-0.132)+pixel
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=0.75*(c*z*z)/(conj(z+c)*0.6)+conj(c/4)+(-0.7456,-0.132),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3019{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=pixel-flip(0.001/pixel)
b5=pixel-conj(0.001/pixel)
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=1.25*(c*z*z)/(conj(z+c)*2.8)+conj(c/4)+(-0.7456,-0.132),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3020{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=(pixel-0.2)-(0.010/pixel)-cos(0.010/pixel)+conj(0.10/pixel)
b4=conj(pixel)-(flip(asin(0.010/pixel))-conj(asin(0.10/pixel))),
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=1.25*(c*z*z)/(conj(z+c)*2.8)+conj(c/4)+(-0.7456,-0.132),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3021{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=flip(pixel^5)-conj(pixel^7)-conj(0.01/pixel-flip(0.001/pixel))+1.75
b4=b5-conj(|0.1/b5|)+0.5
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*sqr(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=1.25*(c*z*z)/(conj(z+c)*2.8)+conj(c/4)+(-0.7456,-0.132)+pixel,
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3022{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=cabs(pixel^2)-conj(conj(pixel^7))-conj(0.01/pixel-flip(0.001/pixel))+1.75
b4=b5-conj(|0.1/b5|)+0.5
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*sqr(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=1.25*(c*z*z)/(flip(z+c)*2.8)+flip(c/4)+(-0.7456,-0.132)+cabs(pixel),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3023{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=flip(pixel^2)-cabs(conj(pixel^7))-conj(0.01/pixel-flip(0.001/pixel))+1.75
b4=b5-conj(|0.1/b5|)+0.5
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*flip(b5)^3
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=1.25*(c*z*z)/(flip(z+c)*2.8)+flip(c/4)+(-0.7456,-0.132)+cabs(pixel),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3024{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=flip(pixel^2)-cabs(conj(pixel^7))-conj(0.01/pixel-flip(0.001/pixel))-0.3
b4=b5-conj(|0.1/b5|)
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*flip(b5)^3
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7496,-0.132)+flip(conj(c/10)),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3025{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=flip(pixel^4)-cabs(conj(pixel^10))-conj(0.01/pixel-flip(0.001/pixel))-0.3
b4=b5-flip(|0.1/b5|)
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*flip(b5)^3
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7496,-0.132)+flip(conj(c/10)),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3026{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=cabs(conj(pixel^1.5))-conj(pixel^5.5)-conj(0.01/pixel-flip(0.001/pixel))
b5=b4^3-conj(|0.01/b4|)-0.75
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*flip(b5)^3
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+flip(conj(c/10)),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3027{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=cabs(conj(pixel^1.5))-conj(pixel^5.5)-conj(0.01/pixel-flip(0.001/pixel))
b5=cabs(conj(b4^5.5))-conj(b4^1.5)-conj(0.01/b4-flip(0.001/b4))-0.65
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7656,-0.132)+(conj(c/10)),
iter=iter+1
imag(flip(z-pixel))<=bailout
}

Carr3028{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=b4=pixel,
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+c,
iter=iter+1
(imag(z)-cabs(2*real(z)))^3<=16-sqr(real(z)+sin(imag(z)))
}





















































