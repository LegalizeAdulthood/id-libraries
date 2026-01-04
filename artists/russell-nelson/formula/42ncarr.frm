Carr2625 & up.
}

Carr2625(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=((exp(conj(conj(pixel^450))-cosh(conj(conj(pixel^20.5)))-0.4)-0.5))^0.95
c=pixel
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

Carr2626(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(1/log(exp(conj(conj(pixel^450))-cosh(conj(conj(pixel^50.5)))-0.4)-0.5))
c=flip(flip(pixel)),
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
z=z*z+c+0.19/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2627(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(1/log(exp(conj(conj(pixel^450))-cosh(conj(conj(pixel^50.5)))-0.4)-0.5))
c=conj(conj(pixel))-conj(conj(0.10/pixel))
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
z=z*z+c+0.19/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2628(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(1/log(exp(conj(conj(pixel^450))-cosh(conj(conj(pixel^50.5)))-0.4)-0.5))
c=conj(conj(pixel))-tan(tan(0.10/pixel))
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
z=z*z+c+0.19/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2629(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(0.25/log(exp(conj(conj(pixel^450))-cosh(conj(conj(pixel^50.5)))-0.4)-0.8))
c=(-0.7456,-0.152),
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
z=z*z+c-0.29/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2630(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(conj(0.15/log(exp(conj(conj(pixel^450))-cosh(conj(conj(pixel^50.5)))-0.4)-0.8)))
c=acos(1-pixel+pixel/5-0.22/pixel)^2-(conj(0.10/pixel))-(flip(0.0060/pixel)),
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0022995
z=z*z+c-0.15/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2631(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(conj(0.15/log(exp(conj(conj(pixel^450))-cosh(conj(conj(pixel^50.5)))-0.4)-0.8)))
c=cosxx(1-pixel+pixel/5-0.22/pixel)^2-(conj(0.10/pixel))-(flip(0.0060/pixel)),
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0022995
z=z*z+c-0.15/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2632(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(conj(0.15/log(exp(conj(conj(pixel^450))-cosh(conj(conj(pixel^50.5)))-0.4)-0.8)))
c=cotan(1-pixel+pixel/5-0.22/pixel)-(conj(0.10/pixel))-(flip(0.0060/pixel))-0.1,
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0022995
z=z*z+c-0.15/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2633(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(cabs(0.15/log(exp(conj(conj(pixel^450))-cosh(conj(conj(pixel^50.5)))-0.4)-0.8)))
c=cotan(1-pixel+pixel/5-0.22/pixel)-cabs(conj(0.10/pixel))-abs(flip(0.0060/pixel))-0.1,
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0022995
z=z*z+c-0.15/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2634(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(cabs(0.15/log(exp(conj(conj(pixel^450))-cosh(conj(conj(pixel^50.5)))-0.4)-0.8)))
c=((pixel+pixel/5)-0.45/log(sin(pixel-log(1/log(0.005550/pixel)))))+0.2,
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.04/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
z=z*z+c-0.15/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2635(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(cabs(0.15/log(exp(conj(conj(pixel^450))-cosh(conj(conj(pixel^50.5)))-0.4)-0.8)))
c=(0.67*(sinh(pixel)+conj(pixel/5))-0.45/log(cabs(pixel-log(1/log(0.005550/pixel)))))+0.2,
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.04/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
z=z*z+c-0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2636(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(cabs(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^50.5)))-0.4)-0.8)))
c=pixel-tanh(pixel)/log((tan(pixel)+sin(pixel-1)-2.75/pixel))-0.3,
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.04/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
z=(|z|/5)+z*z+c-0.1/pixel
iter=iter+1
(|real(z)|)<=bailout
}

Carr2637(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(cabs(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^40.5)))-0.4)-0.8)))
c=(acos(1-pixel+pixel/1.5)-(conj(0.10/pixel))-(tanh(0.0025250/pixel)))-0.3,
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.04/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
z=(|z|/5)+z*z+c-0.1/pixel
iter=iter+1
(|real(z)|)<=bailout
}

Carr2638(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=c=pixel-tanh(pixel)/(sqrt(log((tan(pixel)+sin(pixel-1)-2.75/pixel)))),
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.04/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
z=(|z|/5)+z*z+c-0.09/pixel
iter=iter+1
(|real(z)|)<=bailout
}

Carr2639(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(cabs(0.1/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
c=cabs(pixel)/(1/log(log((tan(1-1/pixel)+sin(pixel-1)-1.75/pixel))))-0.4,
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.04/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
z=(|z|/5)+z*z+c-0.09/pixel
iter=iter+1
(|real(z)|)<=bailout
}

Carr2640(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(cabs(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
c=(-0.3159,-0.63555),
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.04/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
z=z*z+c-0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2641(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(cabs(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=pixel,
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.04/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
z=z*z+c-0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2642(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(cabs(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=(pixel/2)/(1/log(log((tan(1/pixel)+sin(pixel)-1.75/pixel)))),
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.04/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
z=z*z+c-0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2643(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(cabs(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=(pixel/2)-1/log(0.10/pixel)-cos(0.010/pixel)+conj(0.10/pixel)+0.75
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.04/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
z=z*z+c-0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2644(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(cabs(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=conj(pixel/3)*(pixel+1.25)-(flip(asin(0.010/pixel))-conj(asin(0.10/pixel)))+0.25,
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.04/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0021995
z=z*z+c-0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2645(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(cabs(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=(pixel/2-(conj(0.10/pixel)+flip(conj(0.010/pixel)))^4),
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.04/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0021995
z=z*z+c-0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2646(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(cabs(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=(abs(pixel/2)-(conj(0.10/pixel)+flip(conj(0.010/pixel)))^4),
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.04/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0021995
z=z*z+c-0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2647(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(cabs(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=(sinh((pixel-conj(0.10/pixel-flip(0.010/pixel)))))^cosxx(0.5*pixel),
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.04/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0021995
z=z*z+c-0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2648(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(cabs(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=cabs(pixel)*sqr(0.33+pixel)-tanh(0.10/pixel)-sqr(conj(0.00510/pixel))-0.1,
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.04/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0021995
z=z*z+c-0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2649(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(cabs(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=0.75*((pixel)*sqr(0.33+pixel)-tanh(0.10/pixel)+conj(conj(0.002510/pixel)))-0.1,
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.04/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0021995
z=z*z+c-0.09/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2650(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(cabs(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=conj(conj(sqr(pixel)))/acos(conj(conj(sqr(pixel))))
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.04/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0021995
z=z*z+c-0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2651(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(cabs(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=(pixel/2-0.5/log(0.0010/pixel)-cos(0.010/pixel+1.25)-conj(0.10/pixel))+0.07
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.04/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
z=z*z+c-0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2652(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(cabs(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=(imag(pixel/2)-0.5/log(0.0010/pixel)-cos(0.010/pixel+1.25)-conj(0.10/pixel))+0.07
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.04/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029995
z=z*z+c-0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2653(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(cabs(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=(flip(imag(pixel/1.75))-2/log(0.0010/pixel)-cos(0.050/pixel+1.25)-conj(0.10/pixel))+0.07
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.04/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029995
z=z*z+c-0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2654(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(cabs(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=flip(imag(0.33-cabs(pixel)))-conj(0.120/pixel)-flip(0.010/pixel),
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.04/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0036995
z=z*z+c+0.08/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2655(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=(pixel/2)-1/log(pixel-1/tan(0.10/pixel))^2.5,
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.013/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0036995
z=z*z+c+0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2656(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=(pixel/2)-1/log(pixel-1/sqrt(0.10/pixel))^2.5-conj(0.05/pixel),
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

Carr2657(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(conj(0.15/log(exp(conj(conj(pixel^450))-1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
z=pixel/cotanh(1/cotanh(pixel/2))-0.5/log(pixel-0.7/sqrt(0.50/pixel))^2.5-conj(0.05/pixel),
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



































































































