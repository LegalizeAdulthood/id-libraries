{
To see examples of images these FRACTINT formulas
can create, download 43fcarr.par.

I can be contacted on AOL with the screen name GENEALOGY1@aol.com,
or CompuServe with the number 73753,2420

--Bob Carr--
Ocala, FL

}

Carr3316(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.015/pixel),b7=flip(0.025/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
b10=flip(pixel^8)*2/cotanh(pixel^4)-conj(0.01/pixel-flip(0.125/pixel))
b3=(((exp(0.0045/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b5=pi*(pixel^4-b6)*(b10)^3*(b4-b7)^3-b8/0.65-b6/0.65-b7/0.65-0.002/pixel+0.15
b4=pixel^6-0.33*(pixel^4-b3)-0.025/b5
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.745-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z-c-c/11-((b8^2*b6/pixel)^3)/1.5+b6
iter=iter+1
(conj(|z|))<=bailout
}

Carr3317(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.015/pixel),b7=flip(0.025/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
b10=flip(pixel^8)*2/cotanh(pixel^4)-conj(0.01/pixel-flip(0.125/pixel))
b3=(((exp(0.0045/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b2=(b8/0.55-b6/0.55-b7/0.55-0.001/pixel)
b5=(cabs(pixel^4)-b6)*(b10)^5*(b4-b7)^3-b2^1.25+0.1
b4=abs(pixel)^6-0.33*(pixel^4-b3)-0.025/b5
c=whitesq*b4-(whitesq==0)*b4^2
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z*z/5+z*z+2*c^2+(-0.7456,-0.132)^2.5,
iter=iter+1
(conj(|z|))<=bailout
}

Carr3318(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.015/pixel),b7=flip(0.025/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
b10=flip(pixel^8)*2/cotanh(pixel^4)-conj(0.01/pixel-flip(0.125/pixel))
b3=(((exp(0.0045/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b2=(b8/0.55-b6/0.55-b7/0.55-0.001/pixel)
b5=(cabs(pixel^4)-b6)*(b10)^5*(b4-b7)^3+b2^1.25+0.1
b4=abs(pixel)^6-0.33*(pixel^4-b3)-0.015/b5-(|0.015/b5*b3|)
c=whitesq*b4-(whitesq==0)*b4^2
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z*z/5+z*z+2*c^2+(-0.7456,-0.132)^2.5,
iter=iter+1
(conj(|z|))<=bailout
}

Carr3319(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.015/pixel),b7=flip(0.025/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
b3=(((exp(0.0045/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b2=(b8/0.55-b6/0.55-b7/0.55-0.001/pixel)
b4=1.2*(|pixel/0.75|)^5+conj(0.1/pixel+flip(0.01/pixel))
b9=conj(0.007/b4-flip(0.007/b4))
b5=flip(imag(0.33+sin(|pixel|)))*cabs((pixel)^4)-b2+0.001*b3-0.42*cos(b9)+0.35
c=whitesq*b4-(whitesq==0)*(b4/2)
z=whitesq*b5^0.745-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z-conj(c+0.1*b6)+flip(real(|d/70*pixel|))-2*(c/8)-0.33*b7-b2
iter=iter+1
(conj(|z|))<=bailout
}

Carr3320(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.015/pixel),b7=flip(0.025/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
b3=(((exp(0.0045/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b2=(b8/0.55-b6/0.55-b7/0.55-0.001/pixel)
b4=conj(|pixel|)^5+conj(0.1/pixel+flip(0.01/pixel))
b9=conj(0.007/b4-flip(0.007/b4))
b5=flip(imag(0.33+sin(|pixel|)))*cabs((pixel)^4)-b2+0.001*b3-0.42*cosxx(b9)+0.3
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.745-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z-conj(c+0.1*b6)+flip(real(|d/70*pixel|))-2*(c/9)-0.33*b7-b2
iter=iter+1
(conj(|z|))<=bailout
}

Carr3321(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.01/pixel),b7=flip(0.025/pixel)
b4=pixel^3^exp(0.02*pixel)+0.25
b5=abs((cabs(b4^6)/(cotanh(0.1-pixel))+conj(0.01/pixel))+flip(0.01/b4))+0.2493
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.745-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c+c/10-b6
iter=iter+1
(conj(|z|))<=bailout
}

Carr3322(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b3=conj(0.01/pixel-flip(0.001/pixel))
b5=conj(conj(pixel/12)*sin(abs(pixel/13)))*conj(pixel^8)-b3-conj(0.1/pixel)+0.2
b6=conj(conj(b5/2.5))-conj(0.01/pixel)
b4=b6+0.25
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.75-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=(|z/6|)+z*z+c+0.09-c/8+0.055/pixel-(flip(abs(d/60*pixel)))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3323(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b4=(pixel^4/(tanh(0.3/pixel)))+(0.1/pixel),
b5=conj(b4^6)-conj(0.1/pixel-flip(0.01/pixel))
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.75-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3324(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.015/pixel),b7=flip(0.01/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
b2=(b8/0.55-b6/0.55-b7/0.55-0.001/pixel)
b4=(conj(pixel^4/(tanh(0.3/pixel)))+(0.1/pixel))-0.25
b5=conj(cabs(b4^6)-b2)-conj(0.1/pixel-flip(0.01/pixel))-0.17
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.75-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3325(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.015/pixel),b7=flip(0.01/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
b4=pixel^2-conj(0.2*cabs(0.2-pixel^-0.025))
b5=flip(b4-b7)^3-cabs(0.01/pixel-flip(0.01/b4))-b6+b8+0.15
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.75-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3326(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.015/pixel),b7=flip(0.01/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
b2=(b8/0.55-b6/0.55-b7/0.55-0.001/pixel)
b5=abs(conj(pixel^5))*cabs(conj(pixel))-conj(0.0125/pixel-flip(0.005/pixel))-b2-0.19452
b4=conj(b5/2+b5)^2-conj(0.001/b5-flip(0.001/b5))-b6
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.75-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3327(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.01/pixel),b7=flip(0.02/pixel)
b1=pixel^2-conj(0.2*cos(0.2-pixel^-0.025))
b5=flip(conj(pixel^4))*abs(conj(pixel))*b1-conj(0.0125/pixel-flip(0.005/pixel))-0.075
b4=conj(b5/2+b5)^2-conj(0.001/b5-flip(0.001/b5))
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.66-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c+c/10-b7+b6
iter=iter+1
(conj(|z|))<=bailout
}

Carr3328(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.025/pixel),b7=flip(0.01/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
b10a=pixel-sinh(0.01/pixel)-tanh(0.01/pixel)-sinh(0.01/pixel)
b10=conj(pixel)^3*pixel^3*abs(pixel)
b5=conj(b10^1.5)*b10a^2*pixel-b6-b7-b8-0.1945
b4=conj(b5/2+b5)^2-conj(0.001/b5-flip(0.001/b5))
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.66-(whitesq==0)*b5/2
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c-b6+b7+0.0125
iter=iter+1
(conj(|z|))<=bailout
}

Carr3329(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.025/pixel),b7=flip(0.01/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
b2=(b8/0.65-b6/0.65-b7/0.65-0.002/pixel)
b10a=pixel-sinh(0.01/pixel)-tanh(0.01/pixel)-sinh(0.01/pixel)
b10=conj(pixel)^3*pixel^3*abs(pixel)
b1=tanh(pixel)^2-conj(0.075*cos(0.2-pixel^-0.025))
b5=conj(b10^3)*conj(b10a^2*pixel^2.5)-0.2*b1-b6-b8-0.1945
b4=conj(b5/2+b5)^2-conj(0.01/b5-conj(0.01/b5))-b2-0.25
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.745-(whitesq==0)*b5/2
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c-b6+b7+0.0125
iter=iter+1
(conj(|z|))<=bailout
}

Carr3330(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.025/pixel),b7=flip(0.01/pixel),b8=cabs(0.002/pixel+cabs(0.002/pixel))
b3=(((exp(0.0045/pixel))/(cosxx(0.1-pixel))))-conj(0.01/pixel)
b2=(b8/0.65-b6/0.65-b7/0.65-0.002/pixel)
b10a=pixel-sinh(0.01/pixel)-tanh(0.01/pixel)-sinh(0.01/pixel)
b10=conj(pixel)*sinh(pixel)^2*tanh(pixel)*conj(abs(pixel))
b1=tanh(pixel/pi)^2-conj(0.075*cos(0.2-pixel^-0.025))
b5=b10a*b10-b2*0.5+b6+b7+0.02*b3+0.1045
b4=conj(b5/2+b5)^2-conj(0.001/b5-flip(0.001/b5))
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.745-(whitesq==0)*b5/3/pixel
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c-b6+b7+0.0125
iter=iter+1
(conj(|z|))<=bailout
}

Carr3331(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.025/pixel),b7=flip(0.01/pixel)
b10a=pixel^3-cabs(0.01/pixel)-abs(0.01/pixel)-(0.01/pixel)
b5=0.67*b10a*(cabs(pixel^2)+conj(conj(pixel^9)))-conj(0.1/pixel-flip(0.01/pixel))+0.1
b4=b5-conj(|0.1/b5|)
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.745-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c-b6+b7-0.0125
iter=iter+1
(conj(|z|))<=bailout
}

Carr3332(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.025/pixel)
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))
b5=conj(conj(pixel^3))*cabs(pixel^4)-flip(0.01/pixel)-conj(0.01/pixel)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*conj(b5^0.745)-(whitesq==0)*conj(b5-b6)
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3333(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.055/pixel)
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))+0.2
b5=conj(conj(pixel^3))*cabs(pixel^4)-flip(0.01/pixel)-conj(0.0075/pixel)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*conj(b5^0.745)-(whitesq==0)*conj(b5-b6)
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3334(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.055/pixel)
b4=abs(conj(conj(pixel^2)))*conj(flip(pixel^3))+0.2
b5=conj(conj(pixel^3))*cabs(pixel^4)-flip(0.01/pixel)-conj(0.0075/pixel)-0.2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*conj(b5^0.745)-(whitesq==0)*conj(b5-b6)
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c+(-0.745,-0.132)-c/8.25
iter=iter+1
(conj(|z|))<=bailout
}

Carr3335(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.055/pixel)
b4=cabs(conj(conj(pixel^2)))*conj(flip(pixel^3))+0.2
b5=conj(cabs(pixel^3-b6))*flip(abs(pixel^4))-flip(0.025/pixel)-conj(0.0075/pixel)-0.1834
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*conj(b5^0.745)-(whitesq==0)*conj(b5-b6)
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c+(-0.745,-0.132)-c/8.25
iter=iter+1
(conj(|z|))<=bailout
}

Carr3336(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.055/pixel)
b4=cabs(conj(conj(pixel^2)))*conj(flip(pixel^3))+0.2
b5=conj(cabs(pixel^3-b6))*flip(abs(pixel^4))-flip(0.025/pixel)-conj(0.0075/pixel)-0.1834
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*conj(b5^0.745)-(whitesq==0)*conj(b5-b6)
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z-conj(0.15*z)+c+c/12
iter=iter+1
(conj(|z|))<=bailout
}

Carr3337(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b6=conj(0.055/pixel),b7=flip(0.025/pixel)
b5=conj(pixel^2)*conj(flip(pixel^3))-b6^2-b7+0.1534
b4=conj(b5/2.5)+flip(b5/2.5)-b6
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*conj(b5-b6)
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z-conj(0.25*z)+c+c/8
iter=iter+1
(conj(|z|))<=bailout
}

Carr3338(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.025/pixel)
b4=0.3*(pixel^4)/cos(0.1/cotanh(pixel))-0.1/log(pixel-0.2/sqrt(0.50/pixel))^2.5-conj(0.05/pixel)
b5=b10a*conj(b4/2.5)-b6+0.2
c=whitesq*b4-(whitesq==0)*b4
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

Carr3339(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b6=conj(0.05/pixel)
b5=(pixel^5)-conj(0.1/pixel-flip(0.010/pixel))+conj(0.1/pixel)+0.2
b4=pixel-conj(0.1/pixel-flip(0.01/pixel))-conj(0.01/b5)
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.7456-(whitesq==0)*(b5+pixel/pi)+b6*0.25
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3340(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b4=b5=(0.5+pixel/2)^7-conj(0.1/pixel)-flip(0.1/pixel)+0.3
c=whitesq*b4-(whitesq==0)*b4
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

Carr3341(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b4=(0.5+pixel/2)^7-conj(0.1/pixel)-flip(0.1/pixel)+0.3
b5=(0.5+pixel/3)^4*conj(0.5+pixel/2)^4-conj(0.15/pixel)-flip(0.15/pixel)+0.3
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.7456-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+conj(c-0.075/c)-flip(real(|d/40*pixel|))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3342(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b8=cabs(0.002/pixel+cabs(0.002/pixel))
b9=abs(0.5+pixel/3)^4*conj(0.5+pixel/2)^4*(0.5+pixel/2)
b4=(0.5+pixel/2)^7-conj(0.2/pixel)-flip(0.2/pixel)+0.3
b5=b9-conj(0.175/pixel)-flip(0.15/pixel)-b8-0.01/b4-conj(0.01/b4)+0.27
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.6456-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+conj(c-0.075/c)-flip(real(|d/40*pixel|))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3343(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
d=sqrt(1/pixel-cosxx(1/pixel))
b8=cabs(0.002/pixel+cabs(0.002/pixel))
b9=cabs(0.5+pixel/3)^4*conj(0.5+pixel/2)^4*flip(0.5+pixel/2)^2
b4=(0.5+pixel/2)^7-conj(0.2/pixel)-flip(0.2/pixel)+0.3
b5=b9-conj(0.175/pixel)-flip(0.15/pixel)-b8-0.01/b4-conj(0.1/b4)+0.27
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.6456-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+conj(c-0.075/c)-flip(real(|d/40*pixel|))
iter=iter+1
(conj(|z|))<=bailout
}

Carr3344(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b5=flip(pixel^5)-conj(0.1/pixel-flip(0.001/pixel))-0.135
b4=b5-conj(|0.1/b5|)
c=whitesq*b4-(whitesq==0)*b4
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

Carr3345(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b5=flip(pixel^2)-cabs(conj(pixel^7))-conj(0.01/pixel-flip(0.001/pixel))
b4=abs(b5/4)*conj(conj(b5/2))*conj(flip(b5/3))
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5/(tanh(0.3/pixel))
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3346(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
j=(1-pixel)^1.8/flip(asinh(pixel^2))
b5=(pixel^7)/j-conj(0.01/pixel)-flip(0.1/pixel)+0.15
b4=(pixel^7)/j-conj(0.01/pixel)-flip(0.1/pixel)
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

Carr3347(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b4=conj(pixel)*abs(pixel)*flip(pixel)-conj(0.1/pixel-flip(0.01/pixel))
b5=conj(sinh(b4^3))-conj(0.1/b4+flip(0.01/b4))-0.15
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

Carr3348(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b4=2*(conj(0.1-pixel))*conj(abs(pixel))*flip(tanh(pixel))-conj(0.1/pixel-flip(0.01/pixel))
b5=(conj(sinh(b4^3))-conj(0.1/b4+flip(0.01/b4))-0.15)^2
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

Carr3349(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
ba=2*(conj(0.1-pixel))*2*conj(abs(pixel))*flip(tanh(pixel))
b4=ba-conj(0.1/pixel-flip(0.01/pixel))
b5=(conj(sinh(b4^3))-conj(0.15/b4+flip(0.0075/b4))-0.15)^2
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

Carr3350(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
ba=2*(conj(0.1-pixel))*2*conj(abs(pixel))*2*flip(tanh(sinh(pixel)))
b4=ba-conj(0.1/pixel-flip(0.01/pixel))
b5=(conj(sinh(b4^3))-conj(0.15/b4+flip(0.0175/b4)-conj(0.1/pixel))-0.16)^2
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.745-(whitesq==0)*b5/2
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+c
iter=iter+1
(conj(|z|))<=bailout
}

Carr3351(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
ba=2*(conj(0.1-pixel))*2*conj(sinh(pixel))*2*flip(tanh(pixel))
b4=ba*0.33
b5=pixel^4-flip(0.05/pixel)-conj(0.001/pixel)-0.001/b4
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.745-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+(-0.745,-0.132)-flip(conj(c/10))
iter=iter+1
imag(flip(z))<=bailout
}

Carr3352(YAXIS){;Modified Sylvie Gallet frm.1996
;passes=1 needs to be used with this PHC formula
pixel=-abs(real(pixel))+flip(imag(pixel))
b5=conj(pixel)*abs(pixel)*flip(pixel)-conj(0.1/pixel-flip(0.01/pixel))-0.2
b4=conj(sinh(b5^3))-conj(0.1/b5+flip(0.01/b5))
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5^0.745-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*z,c3=3.375*z,c4=5.0625*z
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4)
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
z=z*z+(-0.745,-0.132)-flip(conj(c/10))
iter=iter+1
imag(flip(z))<=bailout
}



























































