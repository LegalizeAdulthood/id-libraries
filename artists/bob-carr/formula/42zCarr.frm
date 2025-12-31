comment {

To see examples of images these FRACTINT formulas
can create, download 42zcarr.par.

I can be contacted on AOL at address GENEALOGY1@aol.com or
CompuServe with the number 73753,2420

--Bob Carr--
Ocala, FL
}
Carr3074(YAXIS){;Modified Sylvie Gallet frm. [101324,3444]
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b5=cabs(pixel/2)-pixel*((0.3,0.6)+pixel)-conj(0.1/pixel)
b4=b5^2-conj(0.1/b5-flip(0.01/b5))-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+|(flip(c/10))|,
iter=iter+1
|z|<=bailout
}

Carr3075(YAXIS){;Modified Sylvie Gallet frm. [101324,3444]
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel))
b4=cabs(pixel/2)-pixel*((0.3,0.6)+pixel)-conj(0.1/pixel)
b5=b4^2-conj(0.1/b4-flip(0.01/b4))-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+(-0.7456,-0.132)+|(flip(c/10))|
iter=iter+1
|z|<=bailout
}

Carr3076(YAXIS){;Modified Sylvie Gallet frm. [101324,3444]
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel))
b4=((pixel)-conj(asin(pixel+pixel+0.39)))
b5=(pixel/(cabs(0.3/pixel)))+0.15
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+|(flip(c/10))|,
iter=iter+1
|z|<=bailout
}

Carr3077(YAXIS){;Modified Sylvie Gallet frm. [101324,3444]
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b4=((pixel)-conj(asin(pixel+pixel+0.39)))
b5=((pixel/(cabs(0.3/pixel)))+0.15)+cabs(0.1/b4)*conj(0.1/b4)
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+(-0.7456,-0.132)+|(flip(c/10))|
iter=iter+1
|z|<=bailout
}

Carr3078(YAXIS){;Modified Sylvie Gallet frm. [101324,3444]
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b4=(0.33-cos(pixel))/(0.33-tan(2*pixel))+0.75
b5=((pixel/(cabs(0.3/pixel)))+0.15)+cabs(0.1/b4)*conj(0.1/b4)+0.13
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+(-0.7456,-0.132)+|(flip(c/10))|
iter=iter+1
|z|<=bailout
}

Carr3079(YAXIS){;Modified Sylvie Gallet frm. [101324,3444]
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b4=((pixel^4)-conj(asin(pixel+pixel+0.39)))
b5=((pixel^5/(abs(0.1/pixel)))+0.15)+cabs(0.1/b4)*conj(0.1/b4)
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+(-0.7456,-0.132)+|(flip(c/10))|
iter=iter+1
|z|<=bailout
}

Carr3080(YAXIS){;Modified Sylvie Gallet frm. [101324,3444]
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
r=conj(pixel/2)
b4=(3.5*pixel^5)-r-sin(0.08-flip(0.01/pixel))+conj(0.0535/pixel)
b5=(3.5*pixel^5)-r-sin(0.08-flip(0.01/pixel))+conj(0.0535/pixel)-0.197
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+(-0.7456,-0.132)+|(abs(c/12))|
iter=iter+1
|z|<=bailout
}

Carr3081(YAXIS){;Modified Sylvie Gallet frm. [101324,3444]
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
r=conj(pixel/2)
b4=(3.5*pixel^5)-r-sin(0.08-flip(0.01/pixel))+conj(0.0535/pixel)
b5=(pixel^5)+r-sin(0.08-flip(0.01/pixel))+conj(0.1535/pixel)+0.197
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+(-0.7456,-0.132)+|(flip(c/12))|
c=((z+c/2.125)-0.0325)
iter=iter+1
|z|<=bailout
}

Carr3082(YAXIS){;Modified Sylvie Gallet frm. [101324,3444]
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
r=8*pixel,j=pixel,
b4=sinh(pixel)-1/log(2*j+0.0450/j-conj(0.010/-pixel)-flip(0.050/pixel)+4.6/r),
b5=pixel^2.3-conj(0.1/pixel)-0.15
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+(-0.7456,-0.132)+|(flip(c/12))|
c=((z+c/2.125)-0.0325)
iter=iter+1
|z|<=bailout
}

Carr3083(YAXIS){;Modified Sylvie Gallet frm. [101324,3444]
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b4=pixel,
b5=flip(abs(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*abs(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+(-0.7456,-0.132)+(cabs(|c/10|)),
iter=iter+1
|z|<=bailout
}

Carr3084(YAXIS){;Modified Sylvie Gallet frm. [101324,3444]
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b5=pixel^3+0.4
b4=cosxx(0.33-pixel)
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+(-0.7450,-0.130)+(flip(|c/12|))
iter=iter+1
|z|<=bailout
}

Carr3085(YAXIS){;Modified Sylvie Gallet frm. [101324,3444]
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b5=pixel^3-0.4
b4=cosh(0.33-conj(pixel))
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+(-0.7450,-0.130)+(flip(|c/12|))
iter=iter+1
|z|<=bailout
}

Carr3086(YAXIS){;Modified Sylvie Gallet frm. [101324,3444]
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b5=flip(0.66-pixel)^3+0.2
b4=abs(0.33-(pixel))
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+(-0.7450,-0.130)+(|c/12|)
iter=iter+1
|z|<=bailout
}

Carr3087{;Modified Sylvie Gallet frm. [101324,3444]
;passes=1 needs to be used with this PHC formula
b5=pixel^3-conj(0.1/pixel)-flip(0.01/pixel)^2+0.1/pixel
b4=(b5*b5/(exp(pixel)))*b5-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+c
iter=iter+1
imag(flip(2-z))<=bailout
}

Carr3088(YAXIS){;Modified Sylvie Gallet frm. [101324,3444]
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b4=pixel^3-conj(0.1/pixel)-flip(0.01/pixel)^2+0.1/pixel+0.4
b5=(b4*b4/(exp(pixel)))*b4-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+c
iter=iter+1
|z|<=bailout
}

Carr3089(YAXIS){;Modified Sylvie Gallet frm. [101324,3444]
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b4=flip(0.5+pixel)
b5=(b4^3*b4/(exp(pixel)))*b4-conj(0.1/pixel-flip(0.01/pixel))-0.45
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+(-0.7456,-0.132)+(|c/12|)
iter=iter+1
|z|<=bailout
}

Carr3090(YAXIS){;Modified Sylvie Gallet frm. [101324,3444]
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b5=flip(0.5+pixel)^9-conj(0.1/pixel-flip(0.01/pixel))+0.435
b4=(flip(b5)*b5/(exp(pixel)))*b5-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*(b4)-(whitesq==0)*(|b4|)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=(c^4)^(real(1)-(1,0))*(0.01+z^2)+(c/6)+(-0.7456,-0.132)
iter=iter+1
|z|<=bailout
}

Carr3091(YAXIS){;Modified Sylvie Gallet frm. [101324,3444]
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b4=(1-pixel*(cabs(1.65*pixel-flip(0.010/pixel)-conj(0.10/pixel))))-0.5
b5=pixel^3-(1/log(pixel-0.25/cos(conj(sinh(0.1/pixel))))^5)
c=whitesq*(b4)-(whitesq==0)*(|b4|)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+(-0.7456,-0.132)+(|c/12|)
iter=iter+1
|z|<=bailout
}

Carr3092(YAXIS){;Modified Sylvie Gallet frm. [101324,3444]
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b4=pixel^7-(0.2*exp(0.2-pixel^-0.025))
b5=cabs(b4)^5-conj(0.1/pixel-flip(0.01/b4))-0.45
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z*z+(c-0.75-conj(0.05/pixel))*z-c^3
iter=iter+1
|z|<=bailout
}

Carr3093(YAXIS){;Modified Sylvie Gallet frm. [101324,3444]
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b4=pixel^7-(0.2*exp(0.2-pixel^-0.025))
b5=cabs(b4)^2-conj(0.1/pixel-flip(0.01/b4))-0.45
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+(-0.7456,-0.132)+(|c/12|)^2
iter=iter+1
|z|<=bailout
}

Carr3094(YAXIS){;Modified Sylvie Gallet frm. [101324,3444]
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b5=conj(conj(pixel))^exp(0.2)+(0.2*exp(0.2-pixel^-0.025))
b4=cabs(b5)^3-conj(0.1/pixel-flip(0.01/b5))^3
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z^2+c,
iter=iter+1
|z|<=bailout
}

Carr3095(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=conj(0.13/pixel)+flip(0.1/pixel)
b4=(-0.7456,0.2)
b5=flip(cabs(pixel))*cabs(pixel^2)+tanh(0.1/pixel)-sinh(0.1/pixel)-b3
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/12|)^2-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75),
iter=iter+1
|z|<=bailout
}

Carr3096(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=conj(0.13/pixel)+flip(0.1/pixel)
b4=(-0.7456,0.2)
b5=flip(cabs(pixel))*cabs(pixel^2)+tanh(0.1/pixel)-sinh(0.1/pixel)-flip(b3)-0.05
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*conj(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/12|)^2-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75),
iter=iter+1
|z|<=bailout
}

Carr3097(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=abs(0.13/pixel)+flip(pixel/3)
b4=(0.3,0.6)+flip(0.01/pixel)+1/b3
b5=flip(cabs(pixel^3))*conj(conj(pixel^2))-tanh(0.1/pixel)+sinh(0.1/pixel)-flip(b3)-0.185
c=whitesq*(b4)-(whitesq==0)*(b4+conj(0.1/pixel))
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/12|)^2-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75),
iter=iter+1
|z|<=bailout
}

Carr3098(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=conj(0.13/pixel)+flip(0.1/pixel)
b4=(0.3,0.6)^3-0.3
b5=flip(abs(pixel))*cabs(pixel^3)-conj(0.1/pixel)-flip(0.01/pixel)+b3
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/12|)^2-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75),
iter=iter+1
|z|<=bailout
}

Carr3099(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=conj(0.13/pixel)+flip(0.1/pixel)
b4=(-0.7456,0.2)
b5=conj(cabs(pixel))*cabs(pixel^2)+tanh(0.1/pixel)-sinh(0.1/pixel)-b3
c=whitesq*(b4)-(whitesq==0)*sqr(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/12|)^2-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75),
iter=iter+1
|z|<=bailout
}

Carr3100(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=conj(0.13/pixel)+flip(0.1/pixel)
b4=(-0.7456,0.2)
b5=flip(cabs(pixel))*cabs(pixel^2)+tan(0.1/pixel)-sin(0.1/pixel)-b3
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/9|)^2-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75),
iter=iter+1
|z|<=bailout
}

Carr3101(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1  or Boundry Trace need to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
;pixel=real(pixel)-flip(abs(imag(pixel))),
b3=conj(0.13/pixel)+flip(0.1/pixel)
b4=(-0.7456,0.2)/2
b5=flip(flip(cabs(pixel^3)))*conj(cabs(pixel^2))+tan(0.1/pixel)-sin(0.1/pixel)-b3
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/9|)^2-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75),
iter=iter+1
|z|<=bailout
}

Carr3102(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=abs(pixel)^3-0.65
b5=pixel^3
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(c/9)^2-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75|),
|z|<=bailout
}

Carr3103(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=(tanh(pixel)^3/(cosxx(0.1-pixel))^1.3)-0.5
b4=pixel^3
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(c/9)^2-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75|),
iter=iter+1
|z|<=bailout
}

Carr3104(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=(tanh(pixel)^3/(cotan(0.1-pixel))^1.3)-0.5
b4=pixel^3
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(c/9)^2-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75|),
iter=iter+1
|z|<=bailout
}

Carr3105(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=(abs(pixel)^3/(cotan(0.1-pixel))^1.3)-0.5
b4=pixel^3
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(c/9)^2-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75|),
iter=iter+1
|z|<=bailout
}

Carr3106(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=(conj(abs(pixel))^3/(cotan(0.1-pixel))^1.3)-0.5
b4=(tanh(pixel)^3/(cotan(0.1-pixel))^1.3)
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(c/9)^4-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75|),
iter=iter+1
|z|<=bailout
}

Carr3107(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=(conj(abs(pixel))^3/(flip(cotan(0.1-pixel)))^1.3)-0.4
b4=(tanh(pixel)^3/(cotan(0.1-pixel))^1.3)
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5-conj(0.1/pixel))
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/9|)^4-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75|),
iter=iter+1
|z|<=bailout
}

Carr3108(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=(flip(abs(pixel))^3/(flip(cotan(0.1-pixel)))^1.3)+0.4
b4=b5^2/0.33*(conj(pixel)^3/(cotan(0.1-pixel))^1.3)-0.4
c=(whitesq*(b4)-(whitesq==0)*(b4))
z=(whitesq*(b5)-(whitesq==0)*(b5))
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/9|)^4-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75|),
iter=iter+1
|z|<=bailout
}

Carr3109(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=(flip(abs(pixel))^3/(flip(cotan(0.1-pixel)))^1.3)+0.4
b5=conj(b4)/1.13*(conj(pixel)^3/(cotan(0.1-pixel))^1.3)+0.4
c=(whitesq*(b4)-(whitesq==0)*(b4))
z=(whitesq*(b5)-(whitesq==0)*(b5))
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/9|)^4-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75|),
iter=iter+1
|z|<=bailout
}

Carr3110(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=(flip(pixel)*conj(pixel)*cabs(pixel)/(cotanh(0.1-pixel)))-0.35-conj(0.01/pixel)
b4=((flip(pixel^2)*conj(pixel/2)*cabs(pixel))/(flip(abs(0.33-pixel))))
c=(whitesq*(b4)-(whitesq==0)*(b4))
z=(whitesq*(b5)-(whitesq==0)*(b5))
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/9|)^4-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75|),
iter=iter+1
|z|<=bailout
}

Carr3111(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=pixel^3^exp(0.02*pixel)+0.25
b4=cabs(b5^6)/(cotanh(0.1-pixel))+conj(0.1/pixel)
c=whitesq*(b4)-(whitesq==0)*(|b4|)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(c/9)^4-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75),
iter=iter+1
|z|<=bailout
}

Carr3112(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=pixel^3^exp(0.02*pixel)+0.25
b5=(cabs(b4^6)/(cotanh(0.1-pixel))+conj(0.1/pixel))+flip(0.1/b4)
c=whitesq*(b4)-(whitesq==0)*(|b4|)
z=conj(whitesq*(b5)-(whitesq==0)*(b5))
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/9|)^4-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75),
iter=iter+1
|z|<=bailout
}

Carr3113(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=flip(pixel^3)^exp(0.025*pixel)+0.25
b5=(cabs(b4^6)/(cosxx(0.1-pixel))+conj(0.1/pixel))+flip(0.1/b4)
c=whitesq*(b4)-(whitesq==0)*(|b4|)
z=conj(whitesq*(b5)-(whitesq==0)*(b5))
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/9|)^4-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75),
iter=iter+1
|z|<=bailout
}

Carr3114(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=conj(pixel^3)^exp(0.025*pixel)+0.25
b5=(flip(b4^6)/(cosxx(0.1-pixel))+conj(0.1/pixel))+flip(b4)
c=whitesq*(b4)-(whitesq==0)*(|b4|)
z=conj(whitesq*(b5)-(whitesq==0)*(b5))
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/9|)^4-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75),
iter=iter+1
|z|<=bailout
}

Carr3115(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel))
b4=(1/log(exp(conj(conj(pixel^450))-cosh(conj(conj(pixel^50.5))))))
b5=(flip(flip(conj(pixel^3)))+0.5)-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*(|b4|)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/9|)^4-0.0038*(|z*z*z/5+z*z+2*c^2+(-0.7456,-0.132)|),
iter=iter+1
|z|<=bailout
}

Carr3116(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=conj(0.13/pixel)+flip(0.1/pixel)
b5=flip(cabs(pixel))*cabs(pixel^2)+tanh(0.1/pixel)-sinh(0.1/pixel)-b3
b4=(flip(flip(conj(pixel^7)))+0.5)-conj(0.1/pixel-flip(0.01/pixel))+b5/2.5,
c=whitesq*(|b4|)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/9|)^4-0.0038*(|z*z*z/5+z*z+2*c^2+(-0.7456,-0.132)|),
iter=iter+1
|z|<=bailout
}

Carr3117(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=conj(0.1/pixel-flip(0.01/pixel))
b5=conj(cabs(pixel^3))*cabs(pixel^2)+tanh(0.1/pixel)-sinh(0.1/pixel)-b3+0.4
b4=(flip(flip(conj(pixel^7)))+0.5)+conj(0.1/pixel+flip(0.01/pixel))+b5/2.5,
c=whitesq*(|b4|)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/9|)^4-0.0038*(|z*z*z/5+z*z+2*c^2+(-0.7456,-0.132)|),
iter=iter+1
|z|<=bailout
}

Carr3118(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=conj(0.1/pixel-flip(0.01/pixel))
b5=conj(cabs(pixel^3))*cabs(pixel^2)+tanh(0.1/pixel)-sinh(0.1/pixel)+b3+0.55
b4=(flip(abs(conj(pixel^6)))+0.5)+conj(0.1/pixel+flip(0.01/pixel))+b5/2+0.55,
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,0.2)+(|c/9|)^4-0.0038*(|z*z*z/5+z*z+2*c^2+(-0.7456,-0.132)|),
iter=iter+1
|z|<=bailout
}

Carr3119(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=(pixel^3-((tan(0.10/pixel)-sqr(flip(0.0250/pixel))))/3.5)+0.45,
b4=pixel-((0.050/pixel)-cabs(0.10/pixel)+conj(0.0250/pixel))/5
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/9|),
iter=iter+1
|z|<=bailout
}

Carr3120(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=(conj(pixel^3)-((tan(0.10/pixel)-sqr(flip(0.0150/pixel))))/3.5)+0.45,
b4=flip(pixel)-((0.050/pixel)-cabs(0.10/pixel)+conj(0.0250/pixel))/5
c=whitesq*(b4)-(whitesq==0)*sqr(b4)
z=whitesq*(b5)-(whitesq==0)*(b5-0.01/pixel)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/9|),
iter=iter+1
|z|<=bailout
}














