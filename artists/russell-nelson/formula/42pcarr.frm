{
Carr2694 & up.To see examples of images these FRACTINT formulas
can create, download 42pcarr.par.

I can be contacted on AOL with the screen name GENEALOGY1, or
CompuServe with the number 73753,2420

--Bob Carr--
Ocala, FL
}

Carr2694(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
m3=conj(0.10/pixel),
z=pixel/2-flip(m3)^4,
b3=|cos(conj(conj(pixel^30.5)))|
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))+|flip(flip(2*z^4))|
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+0.30-0.03/pixel;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0048095
z=z*z+c+0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2695(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
m3=conj(0.10/pixel),
z=tanh(pixel/2)-2*conj(m3)^3-conj(0.1/pixel)-flip(0.1/pixel),
b3=|cos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*z^10))|
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-conj(b3)-0.4)-0.8))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+0.30-0.03/pixel;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0048095
z=z*z+c-0.15;+0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2696(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
z=(pixel/(cabs(0.3/pixel)))-flip(0.010/pixel)
b3=|cos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*z^10))|,
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-conj(b3)-0.4)-0.8))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+0.30-0.03/pixel;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0048095
z=z*z+c+0.12/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2697(YAXIS){;Modified Sylvie Gallet frm.
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=pixel,
b3=|1/acos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*z^10))|,
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-conj(b3)-0.4)-0.8))))+b4
d1=(0.00099475/-pixel)+(flip(0.00010/pixel)),
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=(z*(1-test))+flip(imag(0.03750/pixel)),
c=c*(1-test)+d1+test*(p2*c+p3)
z=z^2+c+0.08/pixel,
iter=iter+1
|z|<=16
}

Carr2698(YAXIS){;Modified Sylvie Gallet frm.
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=pixel-1/log(pixel-1/log(tan(1/pixel))-1/log(2/pixel))
b3=|1/acos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*z^10))|,
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-conj(b3)-0.4)-0.8))))+b4
d1=(0.00099475/-pixel)+(flip(0.00010/pixel)),
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=(z*(1-test))+flip(imag(0.03750/pixel)),
c=c*(1-test)+d1+test*(p2*c+p3)
z=z^2+c+0.1,
iter=iter+1
|z|<=16
}

Carr2699(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
z=conj(flip(pixel/3))-|sinh(pixel)^3|,
b3=(|1/acos(conj(conj(pixel^30.5)))|),b4=|flip(flip(2*z^10))|,
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-(b3)-0.4)-0.8))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+0.30-0.03/pixel;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0048095
z=z*z+c+0.15/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2700(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
z=conj(flip(pixel/3))-|conj(pixel)^3|,
b3=(|1/acos(conj(conj(pixel^30.5)))|),b4=|flip(flip(2*z^10))|,
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-(b3)-0.4)-0.8))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+0.30-0.03/pixel;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0048095
z=z*z+c+0.17/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2701(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
z=flip(imag(pixel/2.5))-conj(0.1/pixel)-0.2,
b3=|cos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*z^4))|
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))+b4*b3
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+0.30-0.03/pixel;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0048095
z=z*z+c+0.28/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2702(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
z=flip(conj(pixel/2.5))+0.01/exp(flip(imag(0.1/pixel)))-0.2,
b3=|cos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*z^4))|
c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.03/pixel+0.2;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0038095
z=z*z+c+0.15/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2703(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
z=abs(flip(pixel/2.5))+0.01/exp(flip(imag(0.1/pixel)))-0.2,
b3=|cos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*z^4))|
c=(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3-0.4)-1.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.03/pixel+0.2;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0068095
z=z*z+c+0.19/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2704(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
z=(flip(flip(pixel))^6-1/(atan(1/pixel)-cabs(acos(2/pixel)))^6)-0.09,
b3=|cos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*z^4))|
c=(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3-0.4)-1.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.03/pixel+0.1;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0068095
z=z*z+c+0.16/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2705(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
z=(conj(flip(pixel))^6-1/(acos(1/pixel)-abs(atan(2/pixel)))^6)-0.1,
b3=|cos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*z^4))|
c=(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3-0.4)-1.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.03/pixel+0.1;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0052095
z=z*z+c+0.16/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2706(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
z=(conj(flip(pixel))^2-1/(acos(1/pixel)-abs(atan(2/pixel)))^10)-0.1,
b3=|cos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*z^4))|
c=(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3-0.4)-1.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.03/pixel+0.1;
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0052095
z=z*z+c+0.16/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2707(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=(conj(flip(pixel))^2-0.5/(acos(1/pixel)-abs(atan(0.2/pixel)))^10)-0.1,
z=b5,
b3=|cos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*c^4))|
b5=(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3-0.4)-1.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.03/pixel
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030095
z=z*z+c+0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2708(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=cotanh(0.3-pixel)*pixel/2-(1/log(conj(0.10/pixel+0.25)))^12.5,
z=b5,
b3=|cos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*c^4))|
b5=(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3-0.4)-1.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.03/pixel
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030095
z=z*z+c-0.1/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2709(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=conj(conj(flip(abs(pixel/2)))/(flip(cabs(pixel))))+0.1,
b3=|cos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*c^4))|
z=(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3-0.4)-1.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.03/pixel
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002095
z=z*z+c+0.15/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2710(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=pixel/(cabs(0.3/pixel))
b3=|cos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*c^4))|
z=(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3-0.4)-1.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.03/pixel
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002095
z=z*z+c+0.15/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2711(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=conj(pixel^2)-1/log(pixel-conj(0.10/pixel)/flip(0.010/pixel))+0.3,
b3=|cos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*c^4))|
z=(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3-0.4)-1.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.03/pixel
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002095
z=z*z+c+0.18/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2712(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=conj(|pixel^2|)-1/log(pixel-conj(0.10/pixel)/flip(0.010/pixel))+0.3,
b3=|cos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*c^4))|
z=(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3-0.4)-1.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.02/pixel-0.2
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0001095
z=z*z+c+0.18/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2713(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=conj(pixel^2)-cos(|pixel|)-1/log(pixel-conj(0.10/pixel)/flip(0.010/pixel))+0.7,
b3=|cos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*c^4))|
z=(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3-0.4)-1.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.02/pixel-0.2
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0001095
z=z*z+c+0.18/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2714(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=conj(pixel^2)-cos(cos(|pixel|))-0.25/sqrt(pixel*2-conj(0.10/pixel)/flip(0.010/pixel))+0.7,
b3=|cos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*c^4))|
z=(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3-0.4)-1.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.02/pixel-0.2
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0001095
z=z*z+c+0.18/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2715(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
b6=conj(pixel^2)-cos(1/acos(|pixel|))
c=b6-0.25/sqrt(pixel*2-tanh(0.10/pixel)/(conj(conj(1/pixel))))+0.7,
b3=|cos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*c^4))|
z=(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3-0.4)-1.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.02/pixel-0.2
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0001095
z=z*z+c+0.18/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2716(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=conj(conj(pixel))-(flip(0.25+pixel)),
b3=|1/acos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*c^4))|
z=(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3-0.4)-1.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.02/pixel-0.2
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0000995
z=z*z+c+0.11/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2717(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=(pixel-(conj(0.050/pixel)+flip(conj(0.0010/pixel)))^4)+0.1+flip(0.1/pixel),
b3=|1/acos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*c^4))|
z=(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3-0.4)-1.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.02/pixel-0.2
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
z=z*z+c+0.15/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2718(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=(flip(imag(pixel))-(conj(0.050/pixel)+flip(conj(0.0010/pixel)))^4)+0.1+flip(0.1/pixel),
b3=|1/acos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*c^4))|
z=(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3-0.4)-1.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.02/pixel-0.2
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
z=z*z+c+0.15/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2719(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=(5*flip(imag(pixel))/(2*(sqrt(flip(tanh(pixel)))))^5+0.25)/|(conj(4/pixel))|
b3=|1/acos(conj(conj(pixel^30.5)))|,b4=|flip(flip(2*c^4))|
z=(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3-0.4)-1.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.02/pixel-0.2
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
z=z*z+c+0.15/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2720(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=(((log(flip(tanh(|pixel/2|))))))/(cosxx(4/pixel))-0.4
b3=|1/acos(flip(conj(pixel^30.5)))|,b4=|flip(flip(2*c^4))|
z=(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3-0.4)-0.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.02/pixel-0.2
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
z=z*z+c+0.15/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2721(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=atan(pixel)*2+conj(pixel/3),
b3=|1/acos(flip(conj(pixel^30.5)))|,b4=|flip(flip(2*c^4))|
z=(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3/0.4)-0.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.02/pixel-0.2
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
z=z*z+c+0.19/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2722(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=conj(pixel)*sqr(pixel)-sqr(flip(0.00510/pixel)),
b3=|1/acos(flip(conj(pixel^30.5)))|,b4=|flip(flip(|2*c^9|))|
z=(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3/0.4)-0.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.02/pixel-0.2
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
z=z*z+c+0.14/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2723(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=cosxx(pixel/2)*cabs(abs(pixel^2))-sqr(flip(|0.00510/pixel|)),
b3=|1/acos(flip(conj(pixel^30.5)))|,b4=|flip(flip(|2*c^9|))|
z=flip(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3/0.4)-0.5))))+b4
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.02/pixel-0.2
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
z=z*z+c+0.14/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2724(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=cosxx(|pixel/2|)*abs(cabs(pixel^2))-sqr(flip(|0.00510/pixel|)),
b3=|1/acos(flip(conj(pixel^30.5)))|,b4=|flip(flip(|2*c^9|))|
z=flip(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3/0.4)-0.5))))+b4-conj(0.1/pixel)
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-0.02/pixel-0.2
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
z=z*z+c+0.14/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2725(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
b5=cosxx(|pixel/2|)*abs(cabs(pixel^2))+(flip(|0.025/pixel|))^4+0.3,
b3=|1/acos(flip(conj(pixel^30.5)))|,b4=|flip(flip(|2*b5^9|))|
z=flip(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3/0.4)-0.5))))+b4-flip(0.1/pixel)
c=whitesq*b5-(whitesq==0)*b5
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+0.02/pixel-0.25
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0009995
z=z*z+c+0.07/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2726(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=atan(|pixel/2|)*abs(cabs(pixel^2))+(flip(|0.025/pixel|))^4+0.3,
b3=|1/acos(flip(conj(pixel^30.5)))|,b4=|flip(flip(|2*c^9|))|
z=flip(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3/0.4)-0.5))))+b4-flip(0.1/pixel)
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+0.02/pixel-0.25
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0009995
z=z*z+c+0.07/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2727(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=tanh(|pixel*2|)*abs(abs(|pixel/2|))-(exp(|0.0035/pixel|))-flip(0.1/pixel)+0.3,
b3=|1/acos(flip(conj(pixel^30.5)))|,b4=|flip(flip(|2*c^9|))|
z=flip(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3/0.4)-0.5))))+b4-flip(0.25/pixel)
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+0.02/pixel-0.25
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0009995
z=z*z+c+0.07/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2728(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=(-abs(real(pixel))+flip(imag(pixel))),
c=|pixel^8|-0.296-flip(0.1/pixel)
b3=|1/acos(flip(conj(pixel^30.5)))|,b4=conj(conj(|flip(flip(|2*c^9|))|))
z=flip(conj(conj(0.15/log(exp(conj(conj(pixel^750))-b3/0.4)-0.5))))+b4-flip(0.25/pixel)
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t+0.02/pixel-0.25
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0009995
z=z*z+c+0.07/pixel,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2729(YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=pixel/2+1/log(pixel),
c=whitesq*b4-(whitesq==0)*b4
z=pixel-1/log(pixel-1/log(tan(1/pixel))-1/log(2/pixel))
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}








































































































