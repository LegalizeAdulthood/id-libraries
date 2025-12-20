comment {

To see examples of images these FRACTINT formulas
can create, download 43gcarr.par.

I can be contacted on AOL with the screen name GENEALOGY1@aol.com,
or CompuServe with the number 73753,2420

--Bob Carr--
Ocala, FL


}

Carr3353(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.015/pixel)
m3=tanh(pixel/2)*conj(conj(pixel/2))*ba
b5=m3-tanh(0.10/pixel-sinh(0.01/pixel))
b4=cabs(b5/2)-b6
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.745-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3354(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.015/pixel)
b1=conj(conj(pixel/2))*conj(cabs(pixel/3))*abs(pixel/4)
ba=2*(conj(0.1-pixel))*2*conj(sinh(pixel))*2*flip(tanh(pixel))
m3=tanh(pixel/2)*conj(conj(pixel/2))*ba*b1
b5=conj(m3)-tanh(0.10/pixel-sinh(0.1/pixel-0.1/pixel))
b4=cabs(b5/2)-b6
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.745-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3355(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.015/pixel),d=sqrt(1/pixel-cosxx(1/pixel))
b1=conj(conj(pixel/2))*conj(abs(pixel/3))*abs(pixel/4)
ba=2*(conj(0.1-pixel))*2*conj(sinh(pixel))*2*flip(tanh(pixel))
m3=tanh(pixel/2)*conj(conj(pixel/2))*ba*b1
b5=conj(m3)-tanh(0.10/pixel-sinh(0.1/pixel-0.1/pixel))
b4=cabs(b5/2)-b6
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.745-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=(((3*z*z-1)-conj(0.1/pixel))/(2+c))+flip(real(|d/70*pixel|))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3356(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.0015/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
b4=((flip(abs(pixel))^4/(flip(asinh(pixel)))))-conj(0.1/pixel)
b5=(conj(flip(abs(pixel-b8))^6/(flip(asinh(pixel))))-0.135)^0.69-b6
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.745-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3357(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b5=((tan(pixel)-sin(pixel))*(conj(pixel)-flip(pixel)))-conj(0.08/pixel)+0.15
b4=pixel*b5
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.745-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3358(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b5=((tan(pixel)-sin(pixel))*(conj(pixel)-flip(pixel)))-(0.08/pixel)+0.15
b4=pixel*b5
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.745-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3359(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b5=((tan(pixel)-sin(pixel))*(conj(pixel)-tan(pixel)))-conj(0.08/pixel)+0.15
b4=pixel*b5-conj(0.001/b5)
c=whitesq*b4^0.645-(whitesq==0)*b4
z=whitesq*b5^0.745-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3360(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b1=conj(conj(pixel/2))*conj(abs(pixel/3))*abs(pixel/4)
ba=2*(conj(0.1-pixel))*2*conj(sinh(pixel))*2*flip(tanh(pixel))
b5=b1*flip(conj(pixel^5))-conj(0.1/pixel-flip(0.01/pixel))+0.15
b4=conj(b5/2+b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.745-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3361(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b9=abs(0.5+pixel)*conj(0.5+pixel)*flip(0.5+pixel)
b5=2*b9*flip(conj(pixel^4))-conj(0.12995/pixel-flip(0.01/pixel))+0.199999
b4=conj(b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/pixel-flip(0.01/pixel))-0.3
c=whitesq*b4-(whitesq==0)*b4^2
z=whitesq*b5^0.7456-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3362(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b5=(flip(0.1-pixel)*abs(pixel^4))^2-pixel/pi*2-conj(0.03/pixel)-0.1
b4=conj(b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4-(whitesq==0)*b4^2
z=whitesq*b5^0.7456-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3363(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.035/pixel),b7=flip(0.01/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
b5=conj(conj(pixel^3))*cabs(pixel+0.125)^4-b7-b6+1.75*b8-0.175
b4=flip(b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4-(whitesq==0)*b4^2
z=whitesq*b5^0.5456-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3364(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.035/pixel),b7=flip(0.01/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
b5=conj(conj(pixel^3))*cabs(pixel+0.125)^4-b7-b6+1.75*b8-0.175
b4=flip(b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4-(whitesq==0)*b4^2
z=whitesq*b5^0.5456-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z-conj(0.5*z)+c+c/8
iter=iter+1
(conj(|z|))<=bailout
}

Carr3365(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.035/pixel),b7=flip(0.01/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
b5=conj(conj(pixel^3))*abs(pixel+0.125)^4-b7-b6+1.75*b8-0.175
b4=flip(b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4-(whitesq==0)*b4^2
z=whitesq*b5^0.5456-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z-conj(0.5*z)+c+c/8
iter=iter+1
(conj(|z|))<=bailout
}

Carr3366(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.035/pixel),b7=flip(0.01/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
ba=2*(conj(0.1-pixel))*2*conj(sinh(pixel))*2*flip(tanh(pixel))
b5=ba*conj(abs(pixel^2))*abs(conj(pixel+0.125))^4-b7-b6+2.75*b8-0.165
b4=flip(b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4-(whitesq==0)*b4^2
z=whitesq*b5^0.5456-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z-conj(0.5*z)+c+c/8
iter=iter+1
(conj(|z|))<=bailout
}

Carr3367(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.065/pixel),b7=flip(0.03/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
ba=2*(conj(0.1-pixel))*2*conj(sinh(pixel))*2*flip(tanh(pixel))
b5=conj(ba)*conj(abs(pixel^2))*abs(conj(pixel+0.125))^4-b7-b6-2*b8-0.165
b4=flip(b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.5456-(whitesq==0)*b5*0.75
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z-conj(|0.15*z|)+c+cabs(c/10)
iter=iter+1
(conj(|z|))<=bailout
}

Carr3368(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b10=flip(pixel^8)*2/cotanh(pixel^4)-conj(0.01/pixel-flip(0.125/pixel))
b5=b10-flip(0.0125/pixel)-conj(0.0125/pixel)-0.19
b4=(pixel^4/(tanh(0.3/pixel)))+(0.1/pixel)
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.5456-(whitesq==0)*b5*0.75
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z-conj(0.35*z)+c+abs(c/8)
iter=iter+1
(conj(|z|))<=bailout
}

Carr3369(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.085/pixel)
b4=b6^100+pixel*2+0.2
b5=b4*pixel-conj(0.1/pixel-flip(0.01/pixel))-0.15
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5*0.5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3370(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.1/pixel),b7=flip(0.01/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))-conj(0.01/pixel-flip(0.001/pixel))
b5=conj(conj(pixel^3))*cabs(pixel+0.125)^4-b7-b6+1.75*b8-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.7456-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+(-0.7456,-0.13214)+conj(c/10)
iter=iter+1
(conj(|z|))<=bailout
}

Carr3371(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.1/pixel),b7=flip(0.01/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))-conj(0.1/pixel-flip(0.01/pixel))
b5=conj(conj(pixel^3))*cabs(pixel+0.125)^4-b7-b6+1.75*b8-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.7456-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+(-0.7456,-0.13214)+conj(c/10)
iter=iter+1
(conj(|z|))<=bailout
}

Carr3372(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.145/pixel),b7=flip(0.04/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))-conj(0.1/pixel-flip(0.01/pixel))
b5=conj(conj(pixel^3))*cabs(pixel+0.125)^4-b7-b6+1.75*b8-0.22
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.7456-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+(-0.7456,-0.2)+conj(c/16)+tanh(c/14)
iter=iter+1
(conj(|z|))<=bailout
}

Carr3373(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b6=conj(0.145/pixel),b7=flip(0.04/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))-conj(0.1/pixel-flip(0.01/pixel))
b5=conj(conj(pixel^3))*cabs(pixel+0.125)^4-b7-b6+1.75*b8-0.22
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.7456-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+(-0.7496,-0.134287)+conj(c/13)+conj(0.05/pixel)
iter=iter+1
(conj(|z|))<=bailout
}

Carr3374(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.145/pixel),b7=flip(0.04/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
b4=abs(conj(conj(pixel^2)))*conj(abs(pixel^3))-conj(0.1/pixel-flip(0.01/pixel))
b5=abs(conj(conj(pixel^3)))*cabs(pixel+0.125)^4-b7-b6+1.75*b8-0.22
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.7456-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+(-0.7496,-0.134287)+conj(c/13)+conj(0.05/pixel)
iter=iter+1
(conj(|z|))<=bailout
}

Carr3375(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.1/pixel),b7=flip(0.01/pixel)*2
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))-conj(0.1/pixel-flip(0.01/pixel))
b5=conj(conj(pixel^3))*cabs(pixel+0.125)^4-log(b7+1)-log(b6+1)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.5-(whitesq==0)*b5*2
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+(-0.7496,-0.134287)+conj(c/12)
iter=iter+1
(conj(|z|))<=bailout
}

Carr3376(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))-conj(0.125/pixel-flip(0.01/pixel))
b5=conj(conj(pixel^3)+0.125)*cabs(pixel)^4-flip(0.01/b4)-conj(0.1/b4*0.66)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.5-(whitesq==0)*b5*2
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+(-0.7496,-0.134287)+conj(c/12)
iter=iter+1
(conj(|z|))<=bailout
}

Carr3377(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.135/pixel),b7=flip(0.01/pixel)
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))-conj(0.1/pixel-flip(0.01/pixel))
b5=conj(conj(pixel^3))*cabs(pixel+0.125)^4-b7-b6-0.2
c=whitesq*b4-(whitesq==0)*b4
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.7345-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+(0.255044,0.5791)+conj(c/9.75)
iter=iter+1
(conj(|z|))<=bailout
}

Carr3378(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b4=pixel^4-conj(0.1/pixel-flip(0.01/pixel))
b5=pixel^4-conj(0.01/pixel-flip(0.01/pixel))-conj(0.1/pixel)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5/2
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+conj(c-0.075/c)-flip(real(|d/40*pixel|))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3379(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b4=(0.37,-0.2991)*0.99519
b5=conj(conj(pixel))*(pixel^4)+tanh(0.1/pixel)-sinh(0.1/pixel)-conj(0.15/pixel)
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.7456-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3380(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b5=(pixel^2-(conj(0.125/pixel)+flip(conj(0.0010/pixel)))^4)+flip(0.1/pixel)+0.25
b4=pixel*pixel*(0.25-pixel)+0.1
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.7456-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3381{;MJM-PHC02 Brian E. Jones modified
z=pixel^3
c=conj(conj(pixel))*(pixel^4)+tanh(0.1/pixel)-sinh(0.1/pixel)-conj(0.125/pixel)
newpixel=pixel,iter=0 
reduction=real(p1)+(real(p1)==0)
nextzoom=iterspace=(p3>0)*p3+(p3<=0)*256
rotation=pi*flip(imag(p1))/180
compt=0,limit=100,bailout=4
p=(0.255044,0.5791):
test=(iter==nextzoom)
test1=(compt<limit)
nextzoom=nextzoom+test*iterspace
newpixel=newpixel*(1-test)+test*reduction*(newpixel-p2)*exp(rotation)
z=z*(1-test) 
c=(c*(1-test)+test*newpixel)*whitesq+(c*test1+p*(1-test1))*(whitesq==0)
z=z*z+c
iter=iter+1
compt=compt+1
|z|<=16
}

Carr3382{;MJM-PHC02 Brian E. Jones modified
c=pixel^3-conj(0.1/pixel)
z=conj(conj(pixel))*(pixel^4)+tanh(0.1/pixel)-sinh(0.1/pixel)-conj(0.125/pixel)
newpixel=pixel,iter=0 
reduction=real(p1)+(real(p1)==0)
nextzoom=iterspace=(p3>0)*p3+(p3<=0)*256
rotation=pi*flip(imag(p1))/180
compt=0,limit=100,bailout=4
p=(0.255044,0.5791):
test=(iter==nextzoom)
test1=(compt<limit)
nextzoom=nextzoom+test*iterspace
newpixel=newpixel*(1-test)+test*reduction*(newpixel-p2)*exp(rotation)
z=z*(1-test)
c=(c*(1-test)+test*newpixel)*whitesq+(c*test1+p*(1-test1))*(whitesq==0)
z=z*z+c
iter=iter+1
compt=compt+1
|z|<=16
}

Carr3383{;MJM-PHC02 Brian E. Jones modified
c=pixel^5-conj(0.15/pixel)
z=pixel^4-conj(0.01/pixel-flip(0.01/pixel))-conj(0.1/pixel)-0.2
newpixel=pixel,iter=0 
reduction=real(p1)+(real(p1)==0)
nextzoom=iterspace=(p3>0)*p3+(p3<=0)*256
rotation=pi*flip(imag(p1))/180
compt=0,limit=100,bailout=4
p=(0.255044,0.5791):
test=(iter==nextzoom)
test1=(compt<limit)
nextzoom=nextzoom+test*iterspace
newpixel=newpixel*(1-test)+test*reduction*(newpixel-p2)*exp(rotation)
z=z*(1-test)
c=(c*(1-test)+test*newpixel)*whitesq+(c*test1+p*(1-test1))*(whitesq==0)
z=z*z+c-conj(0.01/c)
iter=iter+1
compt=compt+1
imag(flip(z))<=16
}

Carr3384{;MJM-PHC02 Brian E. Jones modified
z=conj(conj(pixel))^4-conj(0.1/pixel)-flip(0.01/pixel)+sin(0.1/pixel)-0.1/pixel
c=pixel^4-tanh(0.1/pixel)
newpixel=pixel,iter=0 
reduction=real(p1)+(real(p1)==0)
nextzoom=iterspace=(p3>0)*p3+(p3<=0)*256
rotation=pi*flip(imag(p1))/180
compt=0,limit=100,bailout=4
p=(0.255044,0.5741):
test=(iter==nextzoom)
test1=(compt<limit)
nextzoom=nextzoom+test*iterspace
newpixel=newpixel*(1-test)+test*reduction*(newpixel-p2)*exp(rotation)
z=z*(1-test)
c=(c*(1-test)+test*newpixel)*whitesq+(c*test1+p*(1-test1))*(whitesq==0)
z=z*z+c
iter=iter+1
compt=compt+1
imag(flip(z))<=16
}















