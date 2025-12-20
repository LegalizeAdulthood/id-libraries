To see examples of images these FRACTINT formulas
can create, download 42wcarr.par.

I can be contacted on AOL at address GENEALOGY1@aol.com or
CompuServe with the number 73753,2420

--Bob Carr--
Ocala, FL

}

Carr2951{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=flip(imag(pixel))*(pixel^11)+tanh(0.1/pixel)-sinh(0.1/pixel)-flip(0.1/pixel)+0.25
b4=flip(imag(pixel))*(pixel^11)+tanh(0.1/pixel)-sinh(0.1/pixel)-flip(0.1/pixel)
c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+(-0.7456,-0.132)+c/10,
iter=iter+1
imag(flip(z))<=bailout
}

Carr2952{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=pixel^3-conj(0.1/pixel)-flip(0.01/pixel)^2+0.1/pixel-0.4
b4=(b5*b5/(exp(pixel)))*b5-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=0.2*z^3+z^2+(-0.63,-0.5)+(c/8.5)+c/2,
iter=iter+1
imag(flip(z))<=bailout
}

Carr2953{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=pixel-(0.2*exp(1-pixel^-0.01))
b4=conj(b5)
c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+(-0.7456,-0.132)+c/10,
iter=iter+1
imag(flip(z))<=bailout
}

Carr2954{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=pixel-(0.2*exp(1-pixel^-0.01))
b4=cabs(b5)-conj(0.1/pixel)
c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+(-0.7456,-0.132)+c/10,
iter=iter+1
imag(flip(z))<=bailout
}

Carr2955(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=pixel-(0.2*exp(1-pixel^-0.01))-conj(0.1/pixel-flip(0.01/pixel))
b4=abs(b5^2)-conj(0.1/pixel)
c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+(-0.7456,-0.132)+c/10,
iter=iter+1
imag(flip(z))<=bailout
}

Carr2956{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=pixel/(tanh(0.3/pixel)),
b4=conj(b5^2)-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=0.2*z^3+z^2+c,
iter=iter+1
imag(flip(z))<=bailout
}

Carr2957{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=(pixel/(tanh(0.3/pixel)))+(0.1/pixel),
b4=conj(b5^2)-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(0.2*z^3)+(z^2)+(c),
iter=iter+1
imag(flip(z))<=bailout
}

Carr2958{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=b4=abs(sinh(0.5+pixel/2))^3-conj(0.1/pixel)-flip(0.1/pixel)+0.5,
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+c/10,
iter=iter+1
imag(flip(z))<=bailout
}

Carr2959{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=abs(sinh(0.5+pixel/2))^3-conj(0.1/pixel)-flip(0.1/pixel)+0.5,
b4=cabs(sinh(0.5+pixel/2))^3-conj(0.1/pixel)-flip(0.1/pixel)+0.25,
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+c/10,
iter=iter+1
imag(flip(z))<=bailout
}

Carr2960{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=abs(abs(0.5+conj(pixel)/2))^3-conj(0.1/pixel)^10-flip(0.1/pixel)^10-0.6,
b4=tanh(sinh(0.5+pixel/2))^3-conj(0.1/pixel)-flip(0.01/pixel)+0.25,
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+c/10,
c=((z+c/2.125)-0.0325)
iter=iter+1
imag(flip(z))<=bailout
}

Carr2961{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=conj(pixel^3)-pixel+conj(0.1/pixel),
b5=cabs(pixel/2)-pixel^5+0.4
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+c/10,
c=((z+c/2.125)-0.0325)
iter=iter+1
imag(flip(z))<=bailout
}

Carr2962{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=(cabs(conj(pixel^3))^cosxx(pixel)^5)-(0.1/pixel),
b4=conj(conj(b5))*(pixel-1/pixel)
c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+c/10,
iter=iter+1
imag(flip(z))<=bailout
}

Carr2963{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=(cabs(conj(pixel^3))^cosxx(pixel)^5)-(0.1/pixel),
b4=conj(conj(b5))*(pixel-1/pixel)
c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+c,
c=((z+c/2.125)-0.0325)
iter=iter+1
imag(flip(z))<=bailout
}

Carr2964{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=(cabs(conj(pixel^3))^cosxx(pixel)^5)-(0.1/pixel)-conj(0.1/pixel-flip(0.01/pixel)),
b4=conj(conj(b5^3))*flip(imag(pixel-1/pixel))-conj(0.1/pixel)
c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+c/10,
iter=iter+1
imag(flip(z))<=bailout
}

Carr2965{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=pixel^4*(pixel-0.2)-(0.10/pixel)-cos(0.010/pixel)+conj(0.10/pixel)+0.5
b4=conj(pixel^3)*(pixel)-(flip(asin(0.010/pixel))-conj(asin(0.10/pixel))),
c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+c/10,
iter=iter+1
imag(flip(z))<=bailout
}

Carr2966{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=cotan(|1-pixel/2|)^3.5*pixel^8-(0.5/log(conj(conj(0.10/pixel+1.0))))^12,
b4=exp(-0.7456,-0.132)-conj(0.1/pixel)
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*cabs(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=4,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+c/10,
c=((z+c/2.125)-0.0325)
iter=iter+1
imag(flip(z^6))<=bailout
}

Carr2967{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=(2.224*(pixel)+flip(abs(pixel))),
b4=(1.224*real(pixel)+flip(imag(pixel)))
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+c/10,
iter=iter+1
imag(flip(z))<=bailout
}

Carr2968{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=(2.224*conj(conj(pixel^5))+conj(cabs(pixel)))+0.6,
b4=(1.224*cabs(pixel/2)+flip(imag(pixel)))
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+c/10,
iter=iter+1
imag(flip(z))<=bailout
}

Carr2969{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=(2.224*conj(conj(pixel/2))+conj(cabs(pixel))),
b5=(1.224*cabs(pixel^5)+flip(imag(pixel))),
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+c/10,
iter=iter+1
imag(flip(z))<=bailout
}

Carr2970{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=(2.224*conj(conj(pixel/2))+conj(cabs(pixel))),
b5=(1.224*cabs(pixel^6)-flip(imag(pixel))),
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+c/10,
iter=iter+1
imag(flip(z))<=bailout
}

Carr2971{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=(2.224*conj(conj(pixel/2))+conj(cabs(pixel^4))),
b5=(3.224*cabs(pixel^6)-flip(imag(pixel))),
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+c/10,
iter=iter+1
imag(flip(z))<=bailout
}

Carr2972{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=pixel-conj(0.1/pixel-flip(0.01/pixel)),
b5=cabs(b4^3)+0.5,
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(c/10),
iter=iter+1
imag(flip(z))<=4/cos(real(z))
}

Carr2973{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=(pixel/2^3-conj(0.1/pixel))-flip(0.1/pixel),
b5=(((conj(b4^2+pixel*pixel)))/(pixel-b4^3))/1.7
c=whitesq*conj(b4^3)-(whitesq==0)*flip(imag(b4))
z=whitesq*sqr(b5^3)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c^(real(1)-(1,0)))*(z^2)+c/8+(-0.7456,-0.132),
iter=iter+1
imag(flip(z))<=bailout
}

Carr2974{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=(pixel/2^3-conj(0.1/pixel))-flip(0.1/pixel),
b5=(((cabs(b4^2+pixel^2)))/(pixel-b4^3))/1.33
c=whitesq*conj(b4^3)-(whitesq==0)*flip(imag(b4))
z=whitesq*sqr(b5^3)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c^(real(1)-(1,0)))*(z^2)+c/8+(-0.7456,-0.132),
iter=iter+1
imag(flip(z))<=bailout
}

Carr2975{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=(pixel/2^3-conj(0.1/pixel))-flip(0.1/pixel),
b5=(((cabs(b4^2+pixel^2)))/(pixel-b4^3))/1.33
c=whitesq*conj(b4^3)-(whitesq==0)*flip(imag(b4))
z=whitesq*sqr(b5^3)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=0.2*z^3+z^2+(-0.7456,-0.132)+(c/8.5)+c/1.75,
iter=iter+1
imag(flip(z))<=bailout
}

Carr2976{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=(pixel/2^5-conj(0.1/pixel))-flip(0.1/pixel),
b5=((flip(b4^2+pixel^2))/(pixel-b4^1.5))/1.33
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5^3)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-1.099,-0.2249)+(c/8),
iter=iter+1
imag(flip(z))<=bailout
}

Carr2977{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=(pixel/2^5-conj(0.1/pixel))-flip(0.1/pixel),
b5=((flip(b4^2+conj(pixel)^2))/(pixel-b4^1.5))/1.33
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5-conj(0.1/pixel))
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c^(real(1)-(1,0)))*(z^2)+c/8+(-0.7456,-0.132),
iter=iter+1
imag(flip(z))<=bailout
}

Carr2978{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=1/(pixel*pixel)+0.4,
b4=cosxx(1.099,0)/pixel
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4-flip(0.1/pixel))^3
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5-conj(0.1/pixel))
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z*z/5+z*z+2*c^2+(-0.7456,-0.132)^2.5,
iter=iter+1
imag(flip(z))<=bailout
}

Carr2979{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=pixel-(conj(0.01/pixel*0.4/pixel))+0.45,
b5=pixel^3+0.1/b4
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-1.099,-0.2249)+(c/8),
iter=iter+1
imag(flip(z))<=bailout
}

Carr2980{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=pixel-conj(0.1/pixel)+0.4
b4=pixel-flip(0.1/pixel)-conj(0.001/pixel),
c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*sqr(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(|z|/5)+z*z+c-0.09/pixel
iter=iter+1
imag(flip(z))<=bailout
}

Carr2981{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=pixel/2-conj(0.1/pixel-flip(0.01/pixel))+0.4
b4=pixel^2-flip(0.01/pixel)-conj(0.1/pixel),
c=whitesq*sqr(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*sqr(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.8056,-0.132)+(c/7)+0.125/(0<=|z|),
iter=iter+1
imag(flip(z))<=bailout
}

Carr2982{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=pixel/2-conj(0.1/pixel-flip(0.01/pixel))+0.4
b4=cabs(b5*0.3)-flip(0.1/pixel)-conj(0.01/pixel),
c=whitesq*sqr(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*sqr(|b5|)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(c^(real(1)-(1,0)))*(z^2)+c/8+(-0.7956,-0.132),
iter=iter+1
imag(flip(z))<=bailout
}

Carr2983{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=(sqr(cos(pixel))-cosh(pixel))/2,
b5=b4^5-conj(0.1/pixel-flip(0.01/pixel))-0.4
c=whitesq*sqr(b4)-(whitesq==0)*(|b4|)
z=whitesq*(b5)-(whitesq==0)*sqr(|b5|)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.8056,-0.132)+(c/7)+0.125/(0<=|z|),
iter=iter+1
imag(flip(z))<=bailout
}

Carr2984{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=conj(cabs(pixel))-conj(0.1/pixel-flip(0.01/pixel)),
b4=(cabs(abs(pixel/1.75)))*conj(sqr(pixel))-conj(0.10/pixel)-flip(0.10/pixel),
c=whitesq*(b4)-(whitesq==0)*conj(b4)
z=whitesq*sqr(b5)-(whitesq==0)*cabs(sqr(|b5|))
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(c/10),
iter=iter+1
imag(flip(z))<=bailout
}

Carr2985{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=abs(conj(pixel)*flip(pixel))
b4=b5^3-conj(0.1/pixel-flip(0.01/pixel-0.1/b5))
c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
z=whitesq*conj(b5)-(whitesq==0)*abs(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(c/10),
iter=iter+1
imag(flip(z))<=bailout
}

Carr2986{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=abs(conj(pixel)*flip(pixel))
b4=b5^3-conj(0.1/pixel-flip(0.015/pixel-flip(0.1/b5)))+0.4
c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
z=whitesq*conj(b5)-(whitesq==0)*abs(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(c/10),
iter=iter+1
imag(flip(z))<=bailout
}



























































































































































