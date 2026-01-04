To see examples of images these formulas can create, download
42MCARR.PAR

I can be contacted on CompuServe: 73753,2420 or on America Online:
Genealogy1.

If you have comments or questions please feel free to contact me.

--Bob Carr--

}

Carr2589(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=0.85/(pixel*5*(exp(pixel)-flip(0.01/pixel)-conj(0.1/pixel)))
c=0.83/(pixel*(abs(1.15*pixel-flip(0.10/pixel)-conj(0.010/pixel))))-0.1
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.08/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c-0.40/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2590(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=0.85/(tan(pixel)*(pixel/2))/(pixel-sqr(flip(1/pixel)-sqr(conj(1/pixel))))
z=0.83/(pixel*(abs(1.15*pixel-flip(0.10/pixel)-conj(0.010/pixel))))-0.1
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.08/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2591(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=(conj(conj(pixel^4))/(conj(pixel^1.5)))-0.35,
z=(flip(flip(pixel^5))/(flip(pixel)))-0.5,
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.115/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c+0.10/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2592(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(conj(conj(pixel^4))/(conj(pixel^1.5)))-0.25,
c=0.8*pixel-1/log(pixel-conj(conj(0.10/pixel))+flip(flip(imag(0.0010/pixel)))),
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.07/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c+0.120/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2593(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(sinh(sinh(pixel^4))/(conj(pixel^1.5)))-0.25,
c=0.5*pixel-1/log(pixel-conj(conj(0.10/pixel))+flip(flip(imag(0.0010/pixel)))),
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.07/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c+0.120/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2594(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(cos(cos(pixel^4))/(cotanh(pixel^1.5)))-0.25,
c=0.5*pixel-1/log(pixel-conj(conj(0.10/pixel))+flip(flip(imag(0.0010/pixel)))),
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.07/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c+0.130/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2595(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(cosxx(cosxx(pixel^4))/(cotanh(pixel^1.5)))-0.15,
c=0.5*pixel-1/log(pixel-conj(conj(0.10/pixel))+flip(flip(imag(0.0010/pixel)))),
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.10/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0005995
z=(|z|/5)+z*z+c+0.130/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2596(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=0.5*pixel-1/log(pixel-conj(conj(0.10/pixel))+flip(flip(imag(0.0010/pixel)))),
z=(c+0.0525)-conj(0.10/pixel)
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.10/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0005995
z=(|z|/5)+z*z+c+0.130/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2597(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(conj(pixel^5))-flip(flip(pixel)^4)-0.4
c=(conj(pixel)^2.5)-(flip(0.010/pixel))-(conj(0.10/pixel))-0.5,
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.10/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
z=(|z|/5)+z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2598(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(conj(pixel^5))-flip(flip(pixel)^4)-0.4
c=z-0.0625-conj(0.10/pixel),
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.10/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
z=(|z|/5)+z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2599(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=exp(conj(conj(pixel^20))-flip(flip(pixel)^4)-0.4)-0.5
c=z-0.0625-conj(0.10/pixel),
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.10/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
z=(|z|/5)+z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2600(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=exp(conj(conj(pixel^20))-sin(flip(pixel)^3)-0.4)-0.5
c=(z-0.0625-conj(0.10/pixel)),
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.10/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
z=(|z|/5)+z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2601(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=exp(conj(conj(pixel^20))-sin(flip(pixel)^3)-0.4)-0.5
c=pixel-conj(0.10/pixel)-flip(0.0010/pixel),
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.10/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
z=(|z|/5)+z*z+c+0.05/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2602(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=flip(exp(conj(conj(pixel^20))-sin(flip(pixel)^3)-0.4)-0.5)
c=conj(pixel-conj(0.10/pixel)-flip(0.0010/pixel)),
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.10/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
z=(|z|/5)+z*z+c+0.05/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2603(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(exp(conj(conj(pixel^20))-sin(flip(pixel^3.5))-0.4)-0.5)
c=(-0.7456,-0.132)/2,
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.10/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
z=(|z|/5)+z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2604(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(exp(conj(conj(pixel^20))-sin(flip(pixel^3))-0.4)-0.5)
c=(0.3,0.6)/3
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.10/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
z=(|z|/5)+z*z+c;+0.05/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2605(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(exp(conj(conj(flip(pixel^20)))-tanh(flip(pixel^3))-0.4)-0.5)
c=pixel-(1/log(pixel-1/cos(0.010/pixel))^2.5),
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.07/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
z=(|z|/5)+z*z+c+0.09/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2606(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(exp(conj(conj(flip(pixel^20)))-tanh(flip(pixel^3))-0.4)-0.5)
c=(pixel*(abs(1.15*pixel-flip(0.0010/pixel)-conj(0.30/pixel))))-0.1
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.07/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
z=(|z|/5)+z*z+c+0.09/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2607(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(exp(conj(conj(flip(pixel^20)))-tanh(flip(pixel^3))-0.4)-0.5)
c=(pixel*(cabs(1.15*pixel-flip(0.0010/pixel)-conj(0.30/pixel))))-0.1
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.07/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
z=(|z|/5)+z*z+c+0.19/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2608(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=conj(0.10/pixel),b4=conj(1/pixel),
z=(exp(conj(conj(flip((pixel/3-b4)^20)))-cabs(cosxx((pixel)^5))-0.3)-0.5)
c=(pixel*(cosxx(1.15*pixel-flip(0.01/pixel)-b3)))-0.15
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.07/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
z=(|z|/5)+z*z+c+0.19/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2609(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=flip(conj(0.10/pixel)),b4=conj(1/pixel),
z=(exp(conj(conj(flip((pixel/4-b4)^20)))-cabs(cosxx((pixel)^4))-0.3)-0.5)
c=(pixel*(cosxx(1.15*pixel-flip(0.01/pixel)-b3)))/4.15
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.02/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
z=(|z|/5)+z*z+c+0.16/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2610(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=flip(conj(0.10/pixel)),b4=conj(1/pixel),
b5=cabs(flip(acos(asinh(0.5*pixel))))
z=((exp(conj(conj(flip((pixel/4-b4)^20)))-cabs(cosxx((pixel)^4))-0.3)-0.5))/(b5-exp(b3))
c=(pixel*(cosxx(1.15*pixel-flip(1/pixel)-(b3/pixel))))/4.15
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0005995
z=(|z|/5)+z*z+c+0.13/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2611(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=flip(conj(0.10/pixel)),b4=conj(1/pixel),
b5=cabs(flip(acos(asin(0.5*pixel))))
z=((exp(conj(conj(flip((2*pixel-b4)^20)))-cabs(cosxx((pixel)^6))-0.3)-0.5))/(b5-exp(b3))
c=pixel/4
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0005995
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2612(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=flip(conj(0.10/pixel)),b4=conj(1/pixel),
b5=cabs(flip(acos(asin(0.5*pixel))))
z=((exp(conj(conj(flip((2*pixel-b4)^20)))-cabs(cosxx((pixel)^6))-0.3)-0.5))/(b5-exp(b3))
c=b5*pixel/4
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0005995
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2613(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=flip(conj(0.10/pixel)),b4=conj(1/pixel),
b5=cabs(flip(acos(asin(0.5*pixel))))
z=((exp(conj(conj(flip((2*pixel-b4)^20)))-cabs(cosxx((pixel)^6))-0.3)-0.5))/(b5-exp(b3))
c=(b5*cotanh(pixel)/4)-0.4
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0005995
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2614(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=flip(conj(0.10/pixel)),b4=conj(1/pixel),
b5=cabs(flip(acos(asin(0.5*pixel))))
z=((exp(conj(conj(flip((2*pixel-b4)^20)))-cabs(cosxx((pixel)^6))-0.3)-0.5))/(b5-exp(b3))
c=((b5*conj(conj(pixel)/4))-0.4)^z*z
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0005995
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2615(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=flip(conj(0.10/pixel)),b4=conj(1/pixel),
b5=cabs(flip(acos(asin(0.5*pixel))))
z=((exp(conj(conj(flip((2*pixel-(b4)*2)^20)))-cabs(cosxx((pixel)^6))-0.3)-0.5))/(b5-exp(b3))
c=0.85/(pixel*5*(exp(pixel)-flip(0.01/pixel)-conj(0.1/pixel)))
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0009995
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2616(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(exp(conj(conj(pixel^20))-cosxx(conj(conj(pixel^3.5)))-0.4)-0.5)
c=(flip(imag(0.5-pixel))*conj(tan(pixel))-conj(0.10/pixel)-flip(0.010/pixel)),
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0009995
z=z*z+c+0.15/pixel,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2617(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(exp(conj(conj(pixel^20))-cosxx(conj(conj(pixel^3.5)))-0.4)-0.5)
c=(cos(cos(0.5-pixel))*conj(conj(pixel))-conj(0.10/pixel)-flip(0.010/pixel)),
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0009995
z=z*z+c+0.15/pixel,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2618(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(exp(conj(conj(pixel^100))-cosh(conj(conj(pixel^2.5)))-0.4)-0.5)
c=conj(acosh(1-pixel+pixel))^2-(conj(0.10/pixel))-(flip(0.010/pixel)),
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0039995
z=z*z+c+0.29/pixel,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2619(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(exp(conj(conj(pixel^100))-cosh(conj(conj(pixel^2.5)))-0.4)-0.5)
c=(pixel)-0.5/((log(conj(pixel))^12)+pixel)+conj(0.0450/pixel)
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
z=z*z+c+0.09/pixel,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2620(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(exp(conj(conj(pixel^100))-cosh(conj(conj(pixel^2.5)))-0.4)-0.5)
c=((pixel)-0.5/((log(conj(-pixel))^12)+pixel)+sqrt(0.0450/pixel))/0.8
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
z=z*z+c+0.09/pixel,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2621(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=c=((pixel)-0.5/((log(conj(-pixel))^12)+pixel)+sqrt(0.0450/pixel))/0.8
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
z=z*z+c+0.09/pixel,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2622(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(exp(conj(conj(pixel^100))-cosh(conj(conj(pixel^2.5)))-0.4)-0.5)
c=(cabs(pixel)*(sqr(pixel))-sinh(0.10/pixel)-sqr(flip(0.00010/pixel)))/4,
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
z=z*z+c+0.19/pixel,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2623(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(exp(conj(conj(pixel^100))-cosh(conj(conj(pixel^2.5)))-0.4)-0.5)
c=(pixel)-1/log(pixel-1/tan(0.0010/pixel))^3.5,
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
z=z*z+c+0.19/pixel,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2624(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(exp(conj(conj(pixel^450))-cosh(conj(conj(pixel^20.5)))-0.4)-0.5)
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)),
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
z=z*z+c+0.19/pixel,
iter=iter+1
(|real(z)|) <= bailout
}

