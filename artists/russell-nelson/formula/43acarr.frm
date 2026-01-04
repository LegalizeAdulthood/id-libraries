To see examples of images these FRACTINT formulas
can create, download 43acarr.par.

I can be contacted on AOL at address GENEALOGY1@aol.com or
CompuServe with the number 73753,2420

--Bob Carr--
Ocala, FL

}

Carr3121(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=((sin(conj(pixel))/((tanh(conj(-0.81256,-0.189)))/(conj(cabs(pixel)))))+0.35)^1.5,
b4=flip(conj(pixel*pixel))/(conj(pixel)),
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

Carr3122(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=((flip(conj(pixel))/((cabs(conj(-0.81256,-0.189)))/(conj(cabs(pixel)))))+0.35)^1.5,
b4=flip(conj(pixel*pixel))/(cabs(conj(pixel))),
c=whitesq*(b4)-(whitesq==0)*flip(cabs(b4^3))
z=whitesq*(b5)-(whitesq==0)*(b5)^2
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=cabs(5.0625*z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/9|),
iter=iter+1
|z|<=bailout
}

Carr3123(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=cabs(pixel/2)-pixel*((0.3,0.6)+pixel)-conj(0.1/pixel)
b5=b4^2-conj(0.1/b4-flip(0.01/b4))-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*cabs(z/2),c2=2.25*conj(z/2),c3=3.375*flip(z/2),c4=5.0625*z^2,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/9|),
iter=iter+1
|z|<=bailout
}

Carr3124(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=abs(pixel^3)-pixel*((0.3,0.6)+pixel)-conj(0.1/pixel)-0.15
b4=b5^2-conj(0.1/b5-flip(0.01/b5))-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*cabs(z/2),c2=2.25*conj(z/2),c3=3.375*flip(z/2),c4=5.0625*z^2,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/9|),
iter=iter+1
|z|<=bailout
}

Carr3125(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=pixel^7-(0.2*exp(0.2-pixel^-0.025))
b5=cabs(b4)^2-conj(0.1/pixel-flip(0.01/b4))-0.45
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*cabs(|z/2|),c2=2.25*conj(z/2),c3=3.375*flip(z/2)^6,c4=5.0625*z^2,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/8|),
iter=iter+1
|z|<=bailout
}

Carr3126(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=pixel^2-(0.2*cabs(0.2-pixel^-0.025))
b5=abs(b4)^2-cabs(0.1/pixel-flip(0.01/b4))-0.45
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*cabs(|z/2|),c2=2.25*conj(z/2),c3=3.375*flip(z/2)^6,c4=5.0625*z^2,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/8|),
iter=iter+1
|z|<=bailout
}

Carr3127(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=pixel-conj(0.1/pixel-flip(0.01/pixel)),
b5=cabs(b4)*abs(3*b4*b4-0.1/pixel)-0.14
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*cabs(|z/2|),c2=2.25*conj(z/2),c3=3.375*flip(z/2)^6,c4=5.0625*z^2,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/8|),
iter=iter+1
|z|<=bailout
}

Carr3128(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=conj(pixel)*abs(pixel)*tan(pixel)-conj(0.1/pixel),
b4=1/sinh(1/(b5*b5))
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*cabs(|z/2|),c2=2.25*conj(z/2),c3=3.375*flip(z/2)^6,c4=5.0625*z^2,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(c/8),
iter=iter+1
|z|<=bailout
}

Carr3129(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=conj(pixel)*abs(pixel)*flip(pixel)-flip(0.1/pixel)+0.13,
b4=conj(1/sinh(1/(b5^3)))
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*cabs(|z/2|),c2=2.25*conj(z/2),c3=3.375*flip(z/2)^6,c4=5.0625*z^2,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(c/8),
iter=iter+1
|z|<=bailout
}

Carr3130(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=conj(pixel)*abs(pixel)*tan(pixel)*flip(pixel/2)-conj(0.1/pixel)-0.25,
b4=1/sinh(1/(b5*b5))
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*cabs(|z/2|),c2=2.25*conj(z/2),c3=3.375*flip(z/2)^6,c4=5.0625*z^2,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(c/8),
iter=iter+1
|z|<=bailout
}

Carr3131(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=flip(conj(pixel^2)*abs(pixel)*tan(pixel)-conj(0.1/pixel))+0.1,
b4=1/sinh(1/(b5/2*b5))
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*cabs(|z/2|),c2=2.25*conj(z/2),c3=3.375*flip(z/2)^6,c4=5.0625*z^2,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(c/8),
iter=iter+1
|z|<=bailout
}

Carr3132(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=conj(pixel)*abs(pixel)*tan(pixel)-conj(0.1/pixel),
b5=flip(cosxx(pixel^3))*abs(conj(pixel))+0.25
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*cabs(z/2),c2=2.25*conj(z/2),c3=3.375*flip(z/2)^6,c4=5.0625*z^2,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/8|)+c/8,
iter=iter+1
|z|<=bailout
}

Carr3133(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=pixel^4-conj(0.1/pixel)-flip(0.1/pixel)^3+0.3
b4=b5*flip(b5)
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*cabs(z/2),c2=2.25*conj(z/2),c3=3.375*flip(z/2),c4=5.0625*z^2,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+c/8,
iter=iter+1
|z|<=bailout
}

Carr3134(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=abs(pixel^5)-pixel*((0.3,0.6)+pixel)-conj(0.1/pixel)+0.25
b4=b5^2-conj(0.1/b5-flip(0.01/b5))^2-conj(0.1/pixel-flip(0.01/pixel))^3
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*cabs(z/2),c2=2.25*conj(z/2),c3=3.375*flip(z/2),c4=5.0625*z^2,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+(-0.7456,-0.144)+(c/10)-(|0.0035/c/21|) 
iter=iter+1
|z|<=bailout
}

Carr3135(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=conj(pixel)*abs(pixel)*tan(pixel)*cabs(pixel)-conj(0.1/pixel),
b4=1/sinh(1/(b5*b5))/2
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5^2
c1=1.5*cabs(z/2),c2=2.25*conj(z/2),c3=3.375*flip(z/2),c4=5.0625*z^2,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+(-0.7456,-0.132)+(c/8)-(0.0035/c/21) 
iter=iter+1
|z|<=bailout
}

Carr3136(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=conj(pixel^2)*abs(pixel^2)*tan(pixel^2)*cabs(pixel^2)-conj(0.1/pixel),
b4=0.1/sinh(0.1/(b5*b5))/2
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5^2
c1=1.5*cabs(z/2),c2=2.25*conj(z/2),c3=3.375*flip(z/2),c4=5.0625*z^2,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+(-0.7456,-0.132)+(c/8)-(0.0035/c/21) 
iter=iter+1
|z|<=bailout
}

Carr3137(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=conj(pixel^2)*tanh(pixel^2)*flip(pixel^2)*cabs(pixel^2)-flip(0.06/pixel),
b4=0.1/sinh(0.1/(b5*b5))/2
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5^2
c1=1.5*cabs(z/2),c2=2.25*conj(z/2),c3=3.375*flip(z/2),c4=5.0625*z^2,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+(-0.7456,-0.132)+(c/8)-(0.0035/c/21) 
iter=iter+1
|z|<=bailout
}

Carr3138(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=((pixel+conj(0.125/pixel))^3)*abs(pixel)
b4=b5-0.1/b5
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5^2
c1=1.5*cabs(z/2),c2=2.25*conj(z/2),c3=3.375*flip(z/2),c4=5.0625*z^2,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+(-0.7456,-0.132)+(c/8)+(0.0065/c/21) 
iter=iter+1
|z|<=bailout
}

Carr3139(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=conj(pixel)*cabs(pixel)-0.3
b4=flip(abs(pixel)),
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5^2
c1=1.5*cabs(z/2),c2=2.25*conj(z/2),c3=3.375*flip(z/2),c4=5.0625*z^2,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+(-0.7456,-0.132)+(c/8)+(0.0035/c/21) 
iter=iter+1
|z|<=bailout
}

Carr3140(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=pixel-(|conj(0.1/pixel)|)
b5=pixel^3-(|flip(0.01/pixel)|)+0.4
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5^2
c1=1.5*cabs(z/2),c2=2.25*conj(z/2),c3=3.375*flip(z/2),c4=5.0625*abs(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/8|)-0.0025/pixel,
iter=iter+1
|z|<=bailout
}

Carr3141(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=pixel-(|conj(0.01/pixel)|)
b5=pixel^3-(|flip(0.01/pixel-conj(0.1/pixel))|)+0.4
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5^2
c1=1.5*cabs(z/2),c2=2.25*conj(z/2),c3=3.375*flip(z/2),c4=5.0625*abs(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/8|)-0.0025/pixel,
iter=iter+1
|z|<=bailout
}

Carr3142(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=flip(pixel)-(|conj(0.05/pixel)|)
b5=abs(pixel^3)-(|flip(0.01/pixel-conj(0.3/pixel))|)+0.4
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5^2
c1=1.5*cabs(z/2),c2=2.25*conj(z/2),c3=3.375*flip(z/2),c4=5.0625*abs(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/8|)-0.0025/pixel,
iter=iter+1
|z|<=bailout
}

Carr3143(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=pixel^4-((abs(pixel/4))/(conj(pixel/2)))^3
b4=flip(pixel^2)*cabs(pixel)-(|flip(0.01/pixel-conj(0.1/pixel))|)+0.1
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5^2
c1=1.5*cabs(z/2),c2=2.25*conj(z/2),c3=3.375*flip(z/2),c4=5.0625*abs(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(c/8)-0.0025/pixel,
iter=iter+1
|z|<=bailout
}

Carr3144(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
m3=cabs(pixel)*conj(conj(pixel))
b5=(m3-conj(0.10/pixel))-0.15,
b4=(-1.099,-0.0049)/2,
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5^2
c1=1.5*cabs(z/2),c2=2.25*conj(z/2),c3=3.375*flip(z/2),c4=5.0625*abs(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(c/8)-0.0025/pixel,
iter=iter+1
|z|<=bailout
}

Carr3145(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
m3=cabs(pixel)*conj(conj(pixel)),m4=(-0.7456,-0.132)
b5=(m3^2+conj(0.10/pixel)),
b4=m4/2,
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5^2
c1=1.5*cabs(z/2),c2=2.25*conj(z/2),c3=3.375*flip(z/2),c4=5.0625*abs(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+m4+(c/8)-0.0025/pixel,
iter=iter+1
|z|<=bailout
}

Carr3146(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=(-0.8006,-0.1645)/2
b5=(flip(flip(pixel))^3-1/(atan(0.1/pixel)-cabs(acos(0.2/pixel)))),
m4=(-0.7456,-0.132),
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*cabs(z/2),c2=2.25*conj(z/2),c3=3.375*flip(z/2),c4=5.0625*abs(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+m4+(c/8),
iter=iter+1
|z|<=bailout
}

Carr3147(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=pixel-conj(0.1/pixel-flip(0.01/pixel))
b5=(conj(abs(pixel))^3-0.25/(atan(0.1/pixel)-cabs(acos(0.2/pixel)))),
m4=(-0.7456,-0.132),
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*cabs(z/2),c2=2.25*conj(z/2),c3=3.375*flip(z/2),c4=5.0625*abs(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+m4+(c/8),
iter=iter+1
|z|<=bailout
}

Carr3148(YAXIS){ ; Modified Sylvie Gallet formula.
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=((tan(pixel)^2+cotan(pixel)^2)/(sin(pixel)^2-cos(pixel)^2))
b4=pixel-0.1/b5
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/8|),
iter=iter+1
|z|<=bailout
}

Carr3149(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=((cabs(pixel)^3+cotan(pixel)^2)/(sin(pixel)^2-cos(pixel)^3))+0.3
b4=pixel-0.1/b5-conj(0.1/pixel)-flip(0.01/pixel)
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/8|),
iter=iter+1
|z|<=bailout
}

Carr3150(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=(sin(pixel)-tan(pixel))/(cos(pixel)-cotan(pixel))
b4=pixel-0.1/b5-conj(0.1/pixel)-flip(0.01/pixel)
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/8|),
iter=iter+1
|z|<=bailout
}

Carr3151(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=(sin(pixel)-tan(pixel))/(sin(pixel^1.5)-cotan(pixel))*2
b4=pixel-0.1/b5-conj(0.1/pixel)-flip(0.01/pixel)
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/8|),
iter=iter+1
|z|<=bailout
}

Carr3152(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=(sin(pixel)-tan(pixel))/(sin(pixel)-abs(pixel^4))
b4=pixel^2-0.1/b5-conj(0.1/pixel)-flip(0.01/pixel)
c=whitesq*b4-(whitesq==0)*(|b4|)
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/8|)/pixel,
iter=iter+1
|z|<=bailout
}

Carr3153(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=(sin(pixel)-abs(pixel))/(sin(pixel)-tan(pixel^4))
b4=pixel^2-0.1/b5-conj(0.1/pixel)-flip(0.01/pixel)
c=whitesq*b4-(whitesq==0)*(|b4|)
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/8|)/pixel,
iter=iter+1
|z|<=bailout
}

Carr3154(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=conj(0.1/pixel-flip(0.01/pixel))
b5=pixel^3-0.2*((cabs(pixel-b3)^3+cotan(0.3-pixel)^2)/(sin(pixel)^2-cos(0.3-pixel+b3)^3))-0.4
b4=pixel^2-0.1/b5-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4-(whitesq==0)*(|b4|)
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/8|)/pixel,
iter=iter+1
|z|<=bailout
}

Carr3155(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=conj(0.1/pixel-flip(0.01/pixel))
b2=((cabs(pixel-b3^3)^3+cotan(0.3-pixel)^2)/(sin(pixel)^2-cos(0.3-pixel+b3)^3))-0.4
b5=cabs(pixel^3)-0.2*b2
b4=pixel^2-0.1/b5-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/8|)/pixel,
iter=iter+1
|z|<=bailout
}

Carr3156(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=abs(conj(pixel)*flip(conj(pixel^2)))
b4=b5^3-conj(0.1/pixel-flip(0.015/pixel-flip(0.1/b5)))
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+c/8,
iter=iter+1
|z|<=bailout
}

Carr3157(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=(pixel-conj(conj(0.10/pixel))-cotan(cotan(0.1/-pixel)))
b4=(pixel+cosxx((sqr(cos(0.1-pixel+conj(0.1-pixel))))))
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+c/8,
iter=iter+1
|z|<=bailout
}

Carr3158(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b5=(pixel^4-conj(conj(0.10/pixel))-cotan(cotan(0.1/-pixel)))
b4=(pixel+cosxx((sqr(cos(0.1-pixel+conj(0.1-pixel))))))-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+c/8,
iter=iter+1
|z|<=bailout
}

Carr3159(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=conj(0.1/pixel-flip(0.01/pixel))
b5=pixel^5+0.4-abs(abs(b3))+0.35
b4=0.55*((pixel^3-flip(0.010/pixel-conj(0.10/pixel)))),
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+c/8,
iter=iter+1
|z|<=bailout
}

Carr3160(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=conj(0.1/pixel-flip(0.01/pixel))
b4=pixel-conj(pixel/5),
b5=b4^3-flip(0.099/pixel),
c=whitesq*b4-(whitesq==0)*(|b4|),
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+c/8,
iter=iter+1
|z|<=bailout
}

Carr3161(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b4=pixel-conj(0.1/pixel-flip(0.01/pixel)),
b5=b4^3-abs(0.099/pixel)
c=whitesq*b4-(whitesq==0)*b4,
z=whitesq*b5-(whitesq==0)*b5,
c1=p3,
z1=imag(p1)*z-p2,
iter=0,limit=real(p1),bailout=16:
test=(iter==limit)
z=z*(1-test)+z1*test,
c=c*(1-test)+c1*test,
z=z^2+(-0.7456,-0.132)+(|c/8|),
iter=iter+1
|z|<=bailout
}


































































