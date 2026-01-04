To see examples of images these formulas can create, download
42KCARR.PAR

I can be contacted on CompuServe: 73753,2420 or on America Online:
Genealogy1.

If you have comments or questions please feel free to contact me.

--Bob Carr--Carr


}

Carr2480(YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=pixel/2+1/log(pixel),
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

Carr2481(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=cabs(pixel*2)-1/log(conj(0.5/pixel)),
c=(pixel)-1/log(conj(0.5/pixel-1)),
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.006
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2482(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(conj(pixel))-conj(conj(0.5/pixel)),
c=(-0.7456,-0.132)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0033
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2483{;Modified Sylvie Gallet frm. [101324,3444],1996
z=conj(conj(pixel^3))-conj(conj(0.5/pixel))^8,
c=(-0.7456,-0.132)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0075
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2484(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(conj(pixel^1.75))-conj(conj(0.5/pixel))^4,
c=(-0.7456,-0.132)/2
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0065
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2485(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=flip(flip(pixel^1.75))-conj(conj(0.1/pixel))^4,
c=(-0.7456,-0.132)/2
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0064
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2486(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=c=pixel+1/log(cos(0.1/pixel-0.025))*(tan(0.1/pixel-0.025))
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0155
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2487(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=pixel+1/log(cos(0.1/pixel-0.025))*(tan(0.1/pixel-0.025))
c=pixel+1/log(cosxx(0.1/pixel-0.025))*(tan(0.1/pixel-0.025))
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0105
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2488(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=pixel^2+1/log(cos(0.1/pixel-0.025))*(tan(0.1/pixel-0.025))
c=cabs(pixel)+1/log(cosxx(0.1/pixel-0.025))*(tan(0.1/pixel-0.025))
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0105
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2489(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=pixel+1/log(cos(0.1/pixel-0.025))*(tan(0.1/pixel-0.025)),
c=(-0.7456,-0.122),
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0065
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2490(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=tanh(pixel)-(((0.3,0.6)+pixel)/(0.20/-pixel)),
c=(-0.7586,-0.132) ,
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00375
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2491(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=tanh(2*pixel)-(((0.3,-0.6)+pixel^4)-(conj(0.20/pixel))),
c=(-0.7456,-0.132) ,
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00475
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2492(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=sqr(sqr(conj(pixel)))-(conj(0.10/pixel))-(flip(0.020/pixel)),
c=(-0.7456,0.13)+0.009/pixel
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00575
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2493(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=pixel,
z=conj(pixel)*pixel^2-conj(conj(0.10/pixel))^(-3*pixel)-flip(flip(0.010/pixel)),
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00575
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2494(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=pixel,
c=conj(pixel)*pixel^2-conj(conj(0.10/pixel))^(-3*pixel)-flip(flip(0.010/pixel)),
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00675
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2495(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(pixel)*pixel^2-sinh(0.10/pixel)^(-3*pixel)-flip(0.0010/pixel),
;c=conj(pixel)*pixel^2-conj(conj(0.10/pixel))^(-3*pixel)-flip(flip(0.010/pixel)),
c=(-0.7556,-0.122),
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0044
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2496(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(pixel)*pixel^2-sinh(0.10/pixel)^(-3*pixel)-flip(0.0010/pixel),
c=(-0.7556,-0.122)/1.33,
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0035
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2497(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=flip(abs(1-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)-0.3,
c=(-0.7456,-0.110)/1.15,
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0024
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2498(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=flip(flip(1-pixel))*conj(pixel^2)-conj(0.10/pixel)-flip(0.010/pixel)-0.3,
c=(-0.7456,-0.110)/1.35,
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0032
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2499(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=c=conj(pixel)*cabs(pixel^4+0.25)-(conj(0.10/pixel))-sqr(flip(0.010/pixel)),
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0032
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2500(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
m3=cabs(pixel^-(2/pixel/2))
z=conj(pixel)*m3-(conj(0.10/pixel))-sqr(flip(0.010/pixel))-0.1,
c=(-0.9359,-0.09659)/2.1
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0051
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2501(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=conj(-0.8006,-0.116),m4=(conj(0.005/pixel))-sqr(flip(0.09/pixel))
z=flip(1/atan(1-pixel))*sqr(pixel)-m4,
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0061
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2502(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=(-0.8006,-0.149)/1.2
z=pixel-0.25/(atan(0.10/-pixel)-sqr(acos(0.250/-pixel))^3.7),
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.002
z=z^2+c,
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2503(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=(-0.3,-0.589)
z=cotanh(1-pixel)^1.5*pixel^4-(1/log(conj(0.10/pixel+1.25)))^2.5,
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.002
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2504(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=(-0.3,-0.589)/1.18
z=(cosxx(1-pixel*2)^3.5*conj(pixel^4)-(1/sqrt(conj(0.10/pixel+1.25)))^2.5)+0.4,
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.002
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2505(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=cotanh(1-pixel)^1.5*pixel^4-(1/log(conj(0.10/pixel+1.25)))^2.5,
c=(pixel^2.33)/log(1.667-pixel)^2.87-(1/log(conj(0.10/pixel+1.25)))^2.95,
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.00375
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2506(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=c=(1/pixel)-1/log(pixel-1/cos(0.010/pixel))^2.5,
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.00495
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2507(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=c=(1/pixel)-1/log(pixel-1/cos(0.10/pixel))^2.5-(conj(0.10/pixel)),
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.00895
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2508(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(flip(conj(abs((pixel*sin(pixel+1)))))),
c=flip(conj(abs((pixel*pixel))))-conj(0.10/pixel),
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-0.1/c,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.000995
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2509(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(flip(conj(abs((pixel*cosxx(pixel-1))))))+0.3,
c=flip(conj(abs((pixel^3))))-conj(0.10/pixel),
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-0.1/c,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.000995
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2510(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=real(pixel)+flip(abs(imag(pixel)))
z=flip(conj(abs((pixel^3))))-conj(0.10/pixel),
c=(-0.7456,-0.132)/1.25
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.000995
z=z^2+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2511(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(real(2*pixel-0.124)+flip(imag(pixel-0.224)*1.224))-0.35,
c=1/(2.224+1.224*real(pixel)+flip(abs(pixel)))
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.000995
z=(z*z+c),
iter=iter+1
(|real(z)|) <= bailout
}

Carr2512(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(real(2*pixel-0.124)+flip(imag(pixel-0.224)*1.224)),
c=1/(2.224+1.224*real(pixel)+flip(abs(pixel)))
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.000995
z=(z*z+c)+0.1/c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2513(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(imag(pixel-0.124)+flip(real(pixel-0.224)*1.224)),
c=1/(0.224+1.224*real(0.5*pixel)+flip(abs(pixel)))-conj(0.10/pixel)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.001095
z=(z*z+c)+0.1/c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2514(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(conj(imag(pixel-0.124))+flip(real(pixel-0.224)*1.224))-0.4,
c=1/(0.224+1.224*real(0.5*pixel)+flip(abs(pixel)))-conj(0.10/pixel)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.001095
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2515(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(conj(1/(conj(imag(pixel-0.124))+flip(real(pixel-0.224)*1.224)))),
c=conj(1/(0.224+1.224*real(0.5*pixel)+flip(abs(pixel)))-conj(0.10/pixel))
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.001995
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2516(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(conj(1/(conj(imag(pixel-0.124))+flip(real(pixel-0.224)*1.224)))),
c=conj(1/(0.224+1.224*real(0.5*pixel)+flip(abs(pixel)))-conj(0.10/pixel))
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.001995
z=z*z*z/5+z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2517(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),m4=conj(0.10/pixel)
z=conj(sin(1/(conj(imag(pixel-0.124))+flip(real(pixel-0.224)*1.224))))-0.5,
c=tanh(sinh(1/(0.224+1.224*real(0.5*pixel)+flip(abs(pixel)))-m4))
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.001995
z=real(z*z)*z/5+z*z+c+0.10/(c+z),
iter=iter+1
(|real(z)|) <= bailout
}

Carr2518(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),m4=conj(0.10/pixel)
z=conj(sin(1/(conj(imag(pixel-0.124))+flip(real(pixel-0.224)*1.224))))-0.6,
c=tanh(sinh(1.5/(0.224+1.224*real(0.5*pixel)+flip(abs(pixel)))-m4))
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.001995
z=(real(z*z)*z/5)+z*z+c-0.15/pixel,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2519(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=real((1/pixel)/1.91)/(5.7,-1.3)/2,
c=(1/pixel*0.91/pixel)+conj(0.10/pixel)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.001995
z=(real(z*z)*z/5)+z*z+c-0.19/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2520(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(real(pixel)+flip(imag(pixel)*2.924)),
c=1/(real(pixel*1.45)+flip(imag(pixel)*1.624)),
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0003995
z=(z*z*z/5)+z*z+c-0.19/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2521(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(tan(pixel)+flip(conj(pixel)*2.924)),
c=1/(real(pixel*1.45)+flip(imag(pixel)*1.624)),
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0003995
z=(z*z*z/5)+z*z+c-0.19/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2522(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(tan(pixel)+flip(conj(pixel)*2.924)),
c=0.75/(conj(conj(pixel*1.45))+flip(imag(pixel)*1.624)),
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0003995
z=(z*z*z/5)+z*z+c-0.19/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2523(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(sinh(pixel)+tanh(conj(pixel)*2.924)),
c=0.75/(conj(conj(pixel*1.45))+flip(imag(pixel)*1.624)),
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0023995
z=(z*z*z/5)+z*z+c-0.22/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2524(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=c=(conj(0.30/pixel)+flip(0.010/pixel))-0.5,
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0023995
z=(z*z*z/5)+z*z+c-0.22/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2525(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=0.8*(1/pixel),c=cosxx(z^z/pixel-2)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0016995
z=(z*z*z/5)+z*z+c-0.2/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2526(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=0.8*(1/pixel),c=cotanh(z^z/pixel-2)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0016995
z=(z*z*z/5)+z*z+c-0.275/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2527(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=c=sin(1/pixel)/cosxx(1/pixel)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0010995
z=(z*z*z/5)+z*z+c-0.59/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2528(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=c=sinh(2/pixel)/cosh(1/pixel)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0010995
z=(z*z*z/5)+z*z+c-0.59/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2529(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=0.1/(pixel)/(flip(0.88/pixel))-conj(0.6/pixel),
c=((2.9/pixel)/cosxx(z*z-2.2/pixel))
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0010995
z=(z*z*z/5)+z*z+c-0.79/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2530(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=0.1/(pixel)/(flip(1/pixel*0.88/pixel))-0.3,
c=0.1/(pixel)/(flip(1/pixel*0.88/pixel)),
c1=1.5*z,c2=2.25*|z|,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0010995
z=(z*z*z/5)+z*z+c-0.79/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2531(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
b=conj(0.10/pixel),b1=flip(0.010/pixel),
c=((0.75*pixel-1/cotan(pixel)-1/cos(pixel+0.2)))-b-b1,
z=(0.85*pixel-sinh(0.10/pixel))/b*b1-0.2
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*|z|,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0003995
z=(z*z*z/5)+z*z+c-0.39/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2532(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=c=(1.5/(0.77*pixel-cosxx(2/pixel)-cos(2/pixel))),
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0003995
z=(z*z*z/5)+z*z+c-0.59/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2533(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(tan(0.75/pixel)^1.75)-conj(0.10/pixel),
c=(tan(0.75/pixel)^1.65)-conj(0.10/pixel),
c1=1.05*z,c2=2.25*z,c3=3.375*z,c4=5.0625*|z|,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0010995
z=(|z|/5)+z*z+c-0.24/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2534(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=(1/pixel+1.15/pixel)+0.1*(tan(cosxx(7/pixel-real(3.5/pixel)))),
z=1/((pixel-0.5)-tan(2.5/pixel)-conj(5/pixel))
c1=0.95*z,c2=2.25*z,c3=3.375*conj(z/2),c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0013995
z=(|z|/5)+z*z+c-0.49/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2535(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(|0.75/pixel|)+1/pixel+0.0487,
c=1/(pixel-(0.124/z*(0.524/pixel/z)))
c1=0.95*z,c2=2.25*z,c3=3.375*conj(z/2),c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0003995
z=(|z|/5)+z*z+c-0.29/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2536(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(0.75*pixel-(|pixel|+cos(sqr(|pixel|*1/(pixel-0.124)))))
c=1/(pixel-(|pixel|+cos(sqr(|pixel|*1/(pixel-0.124)))))
c1=0.95*z,c2=2.25*z,c3=3.375*conj(z/2),c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0013995
z=(|z|/5)+z*z+c-0.09/pixel
iter=iter+1
(|real(z)|) <= bailout
}



















