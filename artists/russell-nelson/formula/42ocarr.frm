{
Carr2658 & up. To see examples of images these FRACTINT formulas
can create, download 42ocarr.par.

I can be contacted on AOL with the screen name GENEALOGY1, or
CompuServe with the number 73753,2420

--Bob Carr--
Ocala, FL

}

Carr2658(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=0.3*(pixel)/cotanh(1/cotanh(pixel/2))-0.5/log(pixel-0.7/sqrt(0.50/pixel))^2.5-conj(0.05/pixel),
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.013/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0034995
z=z*z+c+0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2659(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=0.3*(pixel)/cos(1/cotanh(pixel))-0.5/log(pixel-0.7/sqrt(0.50/pixel))^2.5-conj(0.05/pixel)+0.2,
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.013/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0034995
z=z*z+c+0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2660(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=0.3*1/log(pixel)/cotanh(1/cotanh(pixel))-0.5/log(pixel-0.7/sqrt(0.50/pixel))^2.5-conj(0.05/pixel)+0.2,
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.013/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0032995
z=z*z+c+0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2661(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=(3*pixel)+conj(pixel-flip(0.010/pixel))+0.3,
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.013/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0032995
z=z*z+c+0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2662(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=((pixel^5)+0.2)/flip(2.5*pixel)+conj(pixel-conj(0.30/pixel))-0.1,
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.013/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029995
z=z*z+c-0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2663(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=pixel/2-(conj(0.03/pixel)-flip(0.0030/pixel)+0.055/pixel)+0.15,
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.013/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029995
z=z*z+c+0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2664(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-cos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=((pixel^10)+0.1)/flip(2.5*pixel)+conj(conj(pixel-conj(0.30/pixel)))-0.1,
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.013/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
z=z*z+c+0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2665(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-cos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=conj(conj(0.2+pixel/2+conj(pixel/3+0.2)+flip(pixel/2+0.2)))-0.3,
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.013/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
z=z*z+c+0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2666(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-cos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=pixel/(tanh(0.3/pixel))
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.013/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
z=z*z+c+0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2667(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-cos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=(pixel+0.2)/(cosh(0.3/pixel-0.2))
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.013/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
z=z*z+c+0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2668(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel)))+exp(0.1/pixel),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-cos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=(sinh(tanh(0.63-cos(pixel)))/(cosxx(2*pixel+0.6)))-0.3
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.013/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
z=z*z+c+0.125/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2669(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-cos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=(sinh(tanh(0.63-cos(pixel)))/(cosxx(6*pixel+0.6)))-0.1
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.013/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
z=z*z+c+0.125/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2670(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-cos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=(sinh(tanh(0.63-cos(pixel*3)))/(cosxx(6*pixel+0.6)))-0.1
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.013/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
z=z*z+c+0.125/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2671(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-cos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=(sinh(tanh(0.63-cos(pixel*3))-exp(0.01/pixel))/(cosxx(6*pixel+0.6)))-0.1
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.013/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
z=z*z+c+0.125/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2672(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel)))+0.3,
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-cos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=(sinh(tanh(0.63-cos(pixel*3))-cotan(exp(0.05/pixel)))/(cosxx(6*pixel+0.6)))-0.1
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+flip(flip(0.009/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
z=z*z+c+0.125/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2673(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-cos(conj(conj(pixel^30.5)))-0.4)-0.8)))
m1=1/pixel,m=conj(m1),m2=0.125*pixel+cabs(pixel^4.9),
z=m2-tanh(pixel/3)^2-conj(sinh(pixel^2.3))+sqr(m/(1.5*m1))
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+flip(flip(0.009/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0038995
z=z*z+c+0.125/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2674(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-cos(conj(conj(pixel^30.5)))-0.4)-0.8)))
m1=1/pixel,m=conj(m1),m2=sqr(sqr(0.125*pixel+cabs(pixel^4.9)))
z=m2-tanh(pixel/3)^2-conj(tan(pixel^4.3))+sqr(m/(1.5*m1))
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+flip(flip(0.009/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0028995
z=z*z+c+0.125/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2675(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
m=tan(pixel)-tanh(pixel)
z=2*m+flip(pixel/2)+0.1
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+conj(conj(0.009/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0028995
z=z*z+c+0.125/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2676(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
m=tan(pixel)-tanh(pixel)
z=15*m+flip(pixel/2)
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+conj(conj(0.009/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0028995
z=z*z+c+0.125/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2677(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=(cosh(pixel^4)-cos(pixel^2))+conj(0.1/pixel)
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.25;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0034995
z=z*z+c+0.2/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2678(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=flip(conj(abs((pixel/3))))
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.25;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0035995
z=z*z+c+0.15/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2679(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=flip(conj(abs((pixel/3))))-conj(0.1/pixel)+0.075
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.25;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0035995
z=z*z+c+0.15/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2680(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=pixel/c*c-(conj(0.1/pixel))
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.25;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0035995
z=z*z+c+0.15/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2681(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
z=flip(flip(pixel/2^1.75))-conj(conj(0.1/pixel))^4,
b3=cosh(conj(conj(pixel^30.5)))
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.25;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0035995
z=z*z+c+0.15/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2682{;Modified Sylvie Gallet frm. [101324,3444],1996
z=flip(flip(pixel/2^1.75))-conj(conj(0.1/pixel))^4,
b3=cosh(conj(conj(pixel^30.5)))
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.25;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0035995
z=(pixel-(z*z+c)/(pixel-(0.4/c)))-0.35
iter=iter+1
(|real(z)|)<=bailout
}

Carr2683(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
z=cos(pixel)-exp(0.09/pixel)-|conj(0.1/pixel)|-flip(0.1/pixel)-0.3
b3=cos(conj(conj(pixel^30.5)))
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+0.30;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0033995
z=z*z+c+0.08/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2684(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
z=pixel/2-conj(asin(pixel+pixel+0.32))
b3=cos(conj(conj(pixel^30.5)))
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))+z
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+0.30-0.03/pixel;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029995
z=z*z+c+0.08/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2685(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
z=pixel/2-1/cos(asin(3*pixel+0.52))+flip(0.1/pixel)
b3=cos(conj(conj(pixel^30.5)))
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))+z
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+0.30-0.03/pixel;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020095
z=(|z|/5)+z*z+c+0.15/pixel
iter=iter+1
(|real(z)|)<=bailout
}

Carr2686(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
z=pixel/2-|1/cos(asin(3*pixel+0.52))|+flip(0.1/pixel)
b3=cos(conj(conj(pixel^30.5)))
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))+z
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+0.30-0.03/pixel;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020095
z=(|z|/5)+z*z+c+0.15/pixel
iter=iter+1
(|real(z)|)<=bailout
}

Carr2687(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
z=|pixel/2|-1/cos(asin(3*pixel+0.52))+flip(0.1/pixel)
b3=cos(conj(conj(pixel^30.5)))
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))+z
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+0.30-0.03/pixel;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029095
z=(|z|/5)+z*z+c-0.15/pixel
iter=iter+1
(|real(z)|)<=bailout
}

Carr2688(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
z=pixel/2-1/cos(asin(3*pixel+0.52))+flip(0.1/pixel)
b3=|cos(conj(conj(pixel^30.5)))|
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))+z
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+0.30-0.03/pixel;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029095
z=(|z|/5)+z*z+c-0.15/pixel
iter=iter+1
(|real(z)|)<=bailout
}

Carr2689(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
m3=cabs(pixel+0.5)*conj(conj(pixel^7))
z=(m3-conj(0.10/pixel)-sqr(flip(0.00510/pixel))),
b3=|cos(conj(conj(pixel^30.5)))|
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))+conj(z)
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+0.30-0.03/pixel;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029095
z=z*z+c+0.125/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2690(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
z=(flip(flip(pixel))^6-1/(atan(1/pixel)-cabs(acos(2/pixel)))^6)-0.3,
b3=|cos(conj(conj(pixel^30.5)))|
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))+conj(conj(z))-0.3
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+0.30-0.03/pixel;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029095
z=z*z+c-0.185/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2691(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
z=(flip(abs(pixel))^4/(flip(asinh(pixel))))-0.2,
b3=|cos(conj(conj(pixel^30.5)))|
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))+|flip(flip(2*z^4))|
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+0.30-0.03/pixel;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029095
z=z*z+c+0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2692(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-|cos(conj(conj(pixel^30.5)))|-0.4)-0.8)))
z=(sinh(tanh(0.63-cos(pixel)))/(cosxx(6*pixel+0.6)))-0.1
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.013/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
z=z*z+c+0.125/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2693(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
z=((flip(abs(pixel))^8/(flip(asinh(pixel)))))-flip(0.1/pixel)-0.2,
b3=|cos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*z^4))|
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+0.30-0.03/pixel;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0047095
z=z*z+c+0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}












































