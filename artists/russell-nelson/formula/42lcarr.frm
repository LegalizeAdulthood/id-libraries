To see examples of images these formulas can create, download
42LCARR.PAR

I can be contacted on CompuServe: 73753,2420 or on America Online:
Genealogy1.

If you have comments or questions please feel free to contact me.

--Bob Carr--

}


Carr2537(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(0.75*pixel-(|pixel|+cos(sqr(|pixel|*1/(pixel-0.124)))))+0.5
c=1/(conj(conj(pixel))-(|0.67*pixel|+cos(sqr(|pixel|*1/(pixel-0.124)))))
c1=0.95*z,c2=2.25*z,c3=3.375*|z|,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0013995
z=(|z|/5)+z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2538(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=tanh(1/pixel)-0.1,
c=1/(pixel-conj(z/(conj(pixel))*z/pixel+pixel/z))
c1=0.95*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0005995
z=(|z|/5)+z*z+c-0.19/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2539(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=tanh(1/pixel)-0.1,
z=2/(pixel-conj(b3/(conj(pixel))*b3/pixel+pixel/b3))
c=1/(0.8*pixel-conj((b3+0.8)/(conj(pixel))*b3/pixel+pixel/(b3)))
c1=0.95*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0005995
z=(|z|/5)+z*z+c-0.19/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2540(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
b1=conj(1/pixel)+flip(1/pixel),
z=1/(pixel-sqrt(1/pixel)-log(1/pixel)-(|b1|)),
c=1/(pixel-sqrt(3/pixel))
c1=0.95*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0005995
z=(|z|/5)+z*z+c-0.49/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2541(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(conj(0.7*pixel)-(cos(7/pixel-0.524)+sin(1/pixel)-conj(1/pixel))),
c=1/(pixel*real(5/pixel-1.724))
c1=0.95*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
z=(|z|/5)+z*z+c-0.09/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2542(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(conj(pixel)-(cos(7/pixel-0.524)+sin(1/pixel)-conj(1/pixel))),
c=1/(pixel-conj(z-1.1)*|z|*z^conj(cotanh(pixel-0.2)))
c1=0.95*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
z=(|z|/5)+z*z+c-0.09/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2543(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(conj(pixel)-(cos(7/pixel-0.524)+sin(1/pixel)-conj(0.1/pixel)))+0.11,
c=1/(pixel-conj(z-1.1)*z*z^conj(cotanh(5/pixel-0.2)))
c1=0.95*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
z=(|z|/5)+z*z+c-0.59/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2544(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
b1=1/(conj(pixel)-(cos(7/pixel-0.524)+sin(1/pixel)-conj(0.1/pixel)))+0.11,
z=1/(pixel-conj(b1-1.9)*b1*b1*b1^conj(cotanh(0.7/pixel-0.4)))
c=1/(pixel-conj(b1-1.9)*b1*b1*b1^conj(cosxx(0.7/pixel-0.2)))
c1=0.95*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
z=(|z|/5)+z*z+c-0.59/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2545(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
b1=(conj(1/pixel)/exp(1/pixel)),
z=c=1/(pixel-(atan(1/pixel-(conj(b1))))+conj(1/pixel)+flip(1/pixel))
c1=0.95*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
z=(|z|/5)+z*z+c+0.09/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2546(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
b1=(conj(1/pixel)/exp(1/pixel)),
z=1/(pixel-(atan(1/pixel-(conj(b1))))+conj(1/pixel)+flip(1/pixel))
c=1/(pixel-(cos(1/pixel-(conj(b1))))+conj(1/pixel)+flip(1/pixel))/b1
c1=0.95*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
z=(|z|/5)+z*z+c+0.09/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2547(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
b1=(conj(1/pixel)/exp(1/pixel)),
z=1/(pixel-(atan(1/pixel-(conj(b1))))+conj(1/pixel)+flip(1/pixel))
c=1/(pixel-(cos(1/pixel-(conj(b1))))+conj(1/pixel)+flip(1/pixel))/(pixel-b1)
c1=0.95*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-flip(flip(0.099/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
z=(|z|/5)+z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2548(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(pixel-flip(1/pixel)-tan(|1/pixel|)-conj(1/pixel)),
c=1/(pixel-atan(1/pixel-cosh(|z|)-conj(|z|))-conj(1/(exp(pixel-0.85))))
c1=0.95*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-flip(flip(0.099/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
z=(|z|/5)+z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2549(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(pixel-exp(1/pixel)-tan(|1/pixel|)-conj(0.10/pixel)),
c=1/(pixel-asinh(1/pixel-cosxx(|z|)-conj(|z|))-conj(1/(exp(pixel-0.85))))
c1=0.95*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-flip(flip(0.099/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
z=(|z|/5)+z*z+c-0.09/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2550(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=|conj(pixel)|,b4=|flip(pixel)|
z=((tan(pixel*3)/tanh(pixel+conj(0.1/pixel)+flip(0.01/pixel)))/b4)-0.3,
c=((pixel-z^3)/(b3+z))/2
c1=0.95*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-flip(flip(0.099/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
z=(|z|/5)+z*z+c+0.39/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2551(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
b1=1/(pixel-sin(1/pixel)-cos(2.5/pixel)),
c=((pixel-conj(0.1/pixel)-flip(0.01/pixel)-b1)),
z=(pixel-b1-c-flip(0.09/c))
c1=0.95*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-flip(flip(0.099/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
z=(|z|/5)+z*z+c+0.14/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2552(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(1/(pixel-conj(1/(conj(pixel)))-flip(1/(conj(pixel))))),
c=1/(tan(pixel)*conj(5/pixel-0.724))
c1=0.95*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-flip(flip(0.099/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
z=(|z|/5)+z*z+c+0.5/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2553(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(1/(pixel-conj(1.5/(conj(pixel)))-flip(1.5/(conj(pixel))))),
c=1/(tan(pixel)*conj(2/pixel-0.924))
c1=0.95*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-flip(flip(0.099/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
z=(|z|/5)+z*z+c+0.5/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2554(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=(1/(pixel-conj(1.5/(conj(pixel)))-flip(1.5/(conj(pixel))))),
z=1/(tan(pixel)*conj(2/pixel-0.924))+0.3
c1=0.95*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-flip(flip(0.099/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
z=(|z|/5)+z*z+c+0.5/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2555(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=pixel-cosh(0.25/pixel)-conj(0.01/pixel)+0.75
z=(pixel*(pixel-flip(0.010/pixel)-conj(0.10/pixel)))+(0.0001/pixel)
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.1/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
z=(|z|/5)+z*z+c+0.15/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2556(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(pixel*(pixel-flip(0.010/pixel)-conj(0.10/pixel)))+(0.0001/pixel)
c=(-0.7556,-0.242)
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
z=(|z|/5)+z*z+c+0.09/pixel
;z=z*z*z/5+z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2557(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(pixel/3*cos(pixel-flip(0.010/pixel)-conj(0.10/pixel)))
c=(-0.7456,-0.132)/1.2
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
z=(|z|/5)+z*z+c+0.35/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2558(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=c=1/(pixel-sqrt(conj(pixel))-log(pixel))
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
z=(|z|/5)+z*z+c+0.35/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2559(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(pixel-log(conj(pixel))-log(cosh(pixel)))
c=1/(pixel-sqrt(conj(pixel))-log(pixel))
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
z=(|z|/5)+z*z+c+0.59/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2560(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(pixel-log(conj(pixel))-sqrt(tan(2*pixel)))
c=1/(pixel-sqrt(conj(pixel))-log(pixel))
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
z=(|z|/5)+z*z+c+0.69/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2561(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(1/(pixel/0.7-log(conj(pixel))-sqrt(conj(tan(pixel)))))-0.2
c=1/((conj(pixel)-sqrt(conj(pixel))-sqrt(pixel)))
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0009995
z=(|z|/5)+z*z+c+0.39/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2562(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(1.9*pixel-real(1/pixel)-cos(imag(1/pixel))),
c=1/(pixel/0.5-sin(1/pixel)-cosxx(0.25/pixel))-0.3
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*2*(|z|),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
z=(|z|/5)+z*z+c+0.59/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2563(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=1/(pixel/0.8-conj(0.1/pixel)+exp(0.06/pixel)),
z=1/(pixel-abs(cos(c^2)-conj(c))+flip(cabs(tanh(c)-conj(c))))
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*2*(|z|),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.12/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0004995
z=(|z|/5)+z*z+c+0.49/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2564(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=1/(pixel-conj(1/pixel)+exp(0.045/pixel)-flip(1/pixel)),
z=1/(pixel-(3/c-c/4)-conj(1/pixel))
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*2*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0004995
z=(|z|/5)+z*z+c+0.19/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2565(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=1/(pixel-conj(1/pixel)+exp(0.045/pixel)-flip(1/pixel)),
z=c=1/(pixel-(3/b3-b3/4)-conj(0.1/pixel)+exp(0.050/(|pixel|)))
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*2*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.08/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0004995
z=(|z|/5)+z*z+c+0.45/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2566(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=pixel-(conj(0.10/pixel)+(exp(0.0250/pixel))),
c=pixel-(tanh(0.010/pixel)+(exp(0.0250/pixel)))+0.1,
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*(|z|),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.1/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0004995
z=(|z|/5)+z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2567(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=flip(imag(sqr(pixel))),
c=pixel*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel),
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0010995
z=(|z|/5)+z*z+c+0.09/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2568(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=flip(imag(sqr(pixel))),
c=(pixel)-conj(0.10/pixel)-flip(0.010/pixel),
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0010995
z=(|z|/5)+z*z+c+0.09/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2569(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
p5=exp(0.035/pixel)
z=sinh(pixel^2)-1/log(pixel-(15*p5)-flip(0.75*p5)),
c=z-0.0325,
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=400
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.08/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0010995
z=(|z|/5)+z*z+c-0.1/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2570(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=pixel*(pixel-0.2)-1/log(0.10/pixel)-cos(0.010/pixel)+conj(0.10/pixel)+0.45
c=pixel*(pixel-0.2)-1/log(0.10/pixel)-cos(0.010/pixel)+conj(0.08/pixel)+0.1
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.08/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c-0.009/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2571(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=pixel,
z=flip(imag(1-pixel))*conj(pixel^2)-conj(0.10/pixel)-flip(0.010/pixel),
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.08/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c-0.019/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2572(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=pixel-conj(0.1/pixel)-flip(0.02/pixel),
z=flip(imag(1-pixel))*conj(pixel^5)-conj(0.10/pixel)-flip(0.010/pixel),
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.06/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c-0.059/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2573(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=flip(imag(1-pixel)),
c=pixel,
z=b3*(pixel^2)-conj(0.10/pixel)-flip(0.010/pixel),
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.06/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c-0.059/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2574(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(pixel-conj(0.1/pixel)-flip(0.011/pixel)),
c=1/(pixel-acosh(1/pixel-cosxx(|z|)-conj(|z|))-conj(1/(exp(pixel+1.85))))
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.13/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c
iter=iter+1
(|real(z)|) <= bailout
}

Carr2575(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(pixel-conj(0.1/pixel)-flip(0.051/pixel)),
c=1/(pixel-acosh(1/pixel-cotan(|z|)-conj(|z|))-conj(1/(exp(pixel+1.85))))
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.13/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2576(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(pixel-conj(0.1/pixel)-exp(0.25/pixel)),
c=1/(pixel+cosxx(1/(sqr(cos(pixel+conj(pixel))))))
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c-0.15/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2577(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(pixel-log(conj(pixel))-log(cosh(pixel)))
c=1/(pixel+cosxx(1/(sqr(cos(pixel+conj(pixel))))))
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c-0.15/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2578(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(pixel-sqrt(conj(pixel))-log(cotan(pixel)))
c=1/(pixel+cosxx(1/(sqr(cos(pixel+conj(pixel))))))
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c-0.15/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2579(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(pixel-conj(conj(0.10/pixel))-cotan(cotan(1/pixel)))
c=1/(pixel+cosxx(1.5/(sqr(cos(pixel+conj(pixel))))))
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c-0.49/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2580(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(1/(pixel-conj(conj(0.10/pixel))-cotan(cotan(1/pixel))))/(1.33+1/pixel)
c=1/(pixel+cos(1.5/(sqr(cos(pixel+conj(pixel))))))
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c-0.49/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2581(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(pixel-flip(flip(0.1/pixel))-conj(conj(flip(0.25/pixel)))),
c=1/(pixel+cos(1.5/(sqr(cos(pixel+conj(pixel))))))
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.09/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c-0.49/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2582(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(pixel-flip(flip(0.1/pixel))-conj(conj(flip(0.25/pixel)))),
c=1/(pixel+cos(1.5/(sqr(cos(pixel+conj(pixel))))))
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.12/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0013995
z=(|z|/5)+z*z+c-0.49/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2583(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(pixel-(flip(flip(0.1/pixel))-conj(conj(flip(0.25/pixel))))^4)+0.2,
c=1/(pixel+cos(1.5/(sqr(cos(pixel+conj(pixel))))))
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.08/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c-0.19/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2584(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/((pixel)-(flip(imag(0.1/pixel))-(flip(real(0.25/pixel))))^4)+0.2,
c=1/(flip(imag(pixel))+cos(1.5/(sqr(cos(pixel+conj(pixel))))))
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.08/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c-0.19/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2585(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(pixel-(tanh(0.10/pixel)-sqr(sinh(0.0250/pixel)))^6),
c=1/(pixel+cos(3.5/(sqr(cos(pixel+conj(pixel))))))
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.08/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c-0.19/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2586(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(pixel*(3*pixel-flip(0.01/pixel)-conj(0.1/pixel)))
c=1.3/(pixel*(cabs(2.15*pixel-flip(0.010/pixel)-conj(0.10/pixel))))-0.1
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.10/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c-0.10/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2587(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=1/(pixel*(3*sinh(pixel)-flip(0.01/pixel)-conj(0.1/pixel)))
c=0.83/(pixel*(cabs(2.15*pixel-flip(0.10/pixel)-conj(0.010/pixel))))-0.1
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.08/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c-0.10/pixel
iter=iter+1
(|real(z)|) <= bailout
}

Carr2588(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=0.85/(pixel-asin(0.5/pixel)-exp(0.0250/pixel)),
c=0.83/(pixel*(cabs(2.15*pixel-flip(0.10/pixel)-conj(0.010/pixel))))-0.1
c1=2*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-conj(conj(0.08/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
z=(|z|/5)+z*z+c-0.10/pixel
iter=iter+1
(|real(z)|) <= bailout
}



































