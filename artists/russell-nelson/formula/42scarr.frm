{
Carr2802 & up. To see examples of images these FRACTINT formulas
can create, download 42scarr.par.

I can be contacted on AOL with the screen name GENEALOGY1, or
CompuServe with the number 73753,2420

--Bob Carr--
Ocala, FL
}

Carr2802{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=b5=(0.5+pixel/2)^7-conj(0.1/pixel)-flip(0.1/pixel)+0.3,
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4-pp2+0.00025
z=z*z+c,
iter=iter+1
|z|<=bailout
}

Carr2803{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b3=(conj(conj(0.25+0.1/pixel)))
b5=b4=(pixel^7-(tan(conj(0.25-0.1/pixel)))-b3)-0.4+exp(0.0025/pixel)
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4-pp2-0.00025
z=z*z+c,
iter=iter+1
|z|<=bailout
}

Carr2804{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=pixel-conj(0.01/pixel)-flip(0.001/pixel)+0.4,
b5=pixel-conj(0.01/pixel)-flip(0.001/pixel),
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+flip(0.005/pixel)
z=z*z+c,
iter=iter+1
|z|<=bailout
}

Carr2806{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=2*pixel+1.75/log(cos(0.1/pixel+0.025))*(tan(0.1/pixel-0.025))
b4=pixel-sqrt(pixel-0.3)
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2;
z=z*z+c-0.087,
iter=iter+1
|z|<=bailout
}

Carr2807{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=|pixel^5|-conj(conj(sqrt(pixel)+log(pixel)))/15-conj(0.1/pixel),
b4=pixel-((tan(pixel)+sin(1/pixel)-1/pixel))/10,
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2;
z=z*z+c-0.087,
iter=iter+1
|z|<=bailout
}

Carr2808{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=conj(conj(|pixel^5|))-conj(conj(sqrt(pixel)+log(pixel)))/15-conj(0.1/pixel),
b5=conj(conj(pixel^5))-conj(conj(sqrt(pixel)+log(pixel)))/15-conj(0.1/pixel),
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2;
z=z*z+c-0.087,
iter=iter+1
|z|<=bailout
}

Carr2809{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=flip(flip(conj(conj(0.25+pixel^5))-conj(conj(sqrt(pixel)+log(pixel)))/35-conj(0.15/pixel))),
b5=conj(tan(tan(pixel^5))-conj(conj(sqrt(0.5*pixel/0.85)+log(pixel/0.75)))/15-conj(0.1/pixel)),
c=whitesq*(b4)-(whitesq==0)*b4
z=whitesq*(b5)-(whitesq==0)*b5
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=imag(p1),l2=real(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2;
z=z*z+c-0.087,
iter=iter+1
|z|<=bailout
}

Carr2809{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=(sinh(pixel)^5/conj(pixel)^1.5)-conj(0.1/pixel),
b5=pixel*sqr(pixel)-sqr(conj(conj(0.10/pixel)))-(flip(0.010/pixel)),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*sqr(z^1.2),c2=2.25*flip(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+0.00065,
z=z*z+c-0.17,
iter=iter+1
|z|<=bailout
}

Carr2810{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=conj(conj(pixel)^7/conj(pixel)^1.5)-conj(0.1/pixel),
b4=conj(conj(pixel)^5/conj(pixel)^1.5)-conj(0.1/pixel),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+c,
iter=iter+1
|z|<=bailout
}

Carr2811{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b3=conj(0.05/pixel-flip(0.05/pixel))
b4=conj(pixel-0.33)-b3,
b5=conj(pixel-0.33)*sqr(pixel)-(conj(0.10/pixel))+sqr(flip(0.010/pixel)),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+c,
iter=iter+1
|z|<=bailout
}

Carr2812{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=(-0.8206,-0.149),
b5=flip(conj(1-pixel))*(pixel^5)-(conj(0.1/pixel))+sqr(flip(0.1/pixel)),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+c,
iter=iter+1
|z|<=bailout
}

Carr2813{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=tan(pixel)-(((0.3,0.6)/2+pixel)/(0.20/pixel)),
b4=pixel+conj(0.001/pixel+flip(0.001/pixel)),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+c,
iter=iter+1
|z|<=bailout
}

Carr2814{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
r=(cabs(pixel/2)),
b5=(1.5*pixel^9)-r-cabs(0.08/pixel-flip(0.01/pixel))+conj(0.0535/pixel)+0.09,
b4=(1.5*pixel^5)-r-cabs(0.08/pixel-flip(0.01/pixel))+conj(0.0535/pixel)+0.1,
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+c,
iter=iter+1
|z|<=bailout
}

Carr2815{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
r=(cabs(pixel/2+(0.025/pixel))),
b5=(1.5*pixel^3)-r^5-cabs(0.08/pixel-flip(0.01/pixel))+conj(0.1/pixel)+0.3,
b4=(0.5*pixel^5)-r-cabs(0.08/pixel-flip(0.01/pixel))+conj(0.1/pixel)+0.3,
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+c,
iter=iter+1
|z|<=bailout
}

Carr2816{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=tanh(2*pixel)-(((0.3,-0.6)+pixel^4)-(conj(0.20/pixel))),
b4=(-0.7456,-0.132),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+c,
iter=iter+1
|z|<=bailout
}

Carr2817{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b1=1/(conj(pixel)-(cos(7/pixel)+sin(1/pixel)-conj(0.1/pixel)))+0.285,
b4=0.3*(pixel^5-conj(b1)+b1^conj(tan(0.7/pixel)))
b5=0.3*(pixel^5-conj(b1)+b1^conj(tan(0.7/pixel)))
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(|z|/5)+z*z+c-0.09/pixel
iter=iter+1
|z|<=bailout
}

Carr2818{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=pixel-1/log(1/pixel/0.71)/(0.85/pixel+2.324)
b4=pixel-1/log(pixel/2/b5-2.5^(pixel+2.324)/0.5/pixel)-0.4
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+c,
iter=iter+1
|z|<=bailout
}

Carr2819{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b2=pixel-conj(0.1/pixel-flip(0.1/pixel))
b3=conj(imag(pixel))/b2-((pixel+2.324)/(5/pixel))+0.5
b4=conj(cabs(pixel))/b3-((pixel+2.324)/(5/pixel))-0.3
b5=conj(cabs(pixel))/b3-((pixel+2.324)/(5/pixel))
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+c,
;z=(|z|/5)+z*z+c-0.09/pixel
iter=iter+1
|z|<=bailout
}

Carr2820{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b2=pixel-conj(0.1/pixel-flip(0.1/pixel))
b3=conj(imag(pixel))/b2-((pixel+2.324)/(5/pixel))+0.5
b4=conj(cabs(pixel^3))/b3-((pixel+2.324)/(5/pixel))^3*cosxx(0.25-pixel)-0.3
b5=conj(cabs(pixel/2)^5)/(0.25-b3)-((pixel+2.324)/(5/pixel))
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+c,
iter=iter+1
|z|<=bailout
}

Carr2821{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=pixel-conj(0.1/pixel)
b4=pixel-flip(0.1/pixel)-conj(0.001/pixel),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(|z|/5)+z*z+c-0.09/pixel
iter=iter+1
|z|<=bailout
}

Carr2822{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=pixel-conj(0.1/pixel)-flip(0.001/pixel)
b5=pixel^5-flip(0.1/pixel)-conj(0.001/pixel),
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(|z|/5)+z*z+c-0.09/pixel
iter=iter+1
|z|<=bailout
}

Carr2823{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=(conj(conj(0.25-pixel^4))-conj(0.1/pixel)+sinh(0.001/pixel))
b5=tan(tan(0.25+pixel^4))-tanh(0.1/pixel)-conj(0.001/pixel)-0.24,
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=(|z|/5)+z*z+c-0.09/pixel
iter=iter+1
|z|<=bailout
}

Carr2825{;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
z=flip(conj(cabs((pixel/2))))+0.4,
c=flip(conj(cabs((pixel^5))))-conj(0.1/pixel),
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=(z*(1-test)), 
c=(c*(1-test)+test*(p2*c+p3))*(whitesq==0)+((z*(1-test))+flip(imag(0.03750/pixel)))*whitesq
z=(|z|/5)+z*z+c-0.09/pixel
iter=iter+1
|z|<=16
}

Carr2827{;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
c=(-0.7456,-0.132)/2,z=flip(conj(cabs((0.25+pixel))))-conj(0.1/pixel-flip(0.01/pixel))^5
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=(z*(1-test)), 
c=(c*(1-test)+test*(p2*c+p3))*(whitesq==0)+((z*(1-test))+flip(imag(0.03750/pixel)))*whitesq
z=(|z|/5)+z*z+c-0.1/pixel
iter=iter+1
|z|<=16
}

Carr2828(YAXIS){;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=pixel^4-conj(0.1/pixel-flip(0.001/pixel))+0.01/pixel-0.55
c=conj(conj(z))+(z/3)-conj(0.1/pixel)
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=(z*(1-test)), 
c=(c*(1-test)+test*(p2*c+p3))*(whitesq==0)+((z*(1-test))+flip(imag(0.03750/pixel)))*whitesq
z=(|z|/5)+z*z+c-0.1/pixel
iter=iter+1
|z|<=16
}

Carr2829(YAXIS){;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
m3=cabs(pixel*2)*conj(conj(pixel*2))
z=(m3-conj(0.10/pixel)-sqr(flip(0.00510/pixel)))+0.25,
c=(-1.099,-0.459)/2.9,
iter=0,nextzoom=iterspace=real(p1)
b8=0.09/pixel:
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(test==0), 
c=(c+(c*p2+p3-c)*test)*(whitesq==0)+(z+fip)*whitesq
z=(|z|/5)+z*z+c-b8
iter=iter+1
|z|<=16
}

Carr2830(YAXIS){;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(flip(abs(pixel))^4/(flip(asinh(pixel))))-0.2,
c=(-0.3009,-0.645)
iter=0,nextzoom=iterspace=real(p1)
b8=0.1/pixel:
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(test==0), 
c=(c+(c*p2+p3-c)*test)*(whitesq==0)+(z+fip)*whitesq
z=(|z|/5)+z*z+c-b8
iter=iter+1
|z|<=16
}

Carr2831{;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
z=(flip(abs(pixel))^4/(flip(asinh(pixel))))-conj(0.1/pixel),
c=(flip(abs(pixel))^4/(flip(asinh(pixel))))-0.175,
iter=0,nextzoom=iterspace=real(p1)
b8=0.1/pixel:
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(test==0), 
c=(c+(c*p2+p3-c)*test)*(whitesq==0)+(z+fip)*whitesq
z=(|z|/5)+z*z+c-b8
iter=iter+1
|z|<=16
}

Carr2832{;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
z=(conj(conj(cabs(pixel)))^5/(flip(asinh(pixel))))-conj(0.1/pixel),
c=conj(conj((|1/z|)^z*z+z)),
iter=0,nextzoom=iterspace=real(p1)
b8=0.1/pixel:
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(test==0), 
c=(c+(c*p2+p3-c)*test)*(whitesq==0)+(z+fip)*whitesq
z=(|z|/5)+z*z+c-b8
iter=iter+1
|z|<=16
}

Carr2833{;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
c=|pixel^8|-flip(0.1/pixel)
z=abs(flip(conj(pixel)))+flip(0.01/pixel)-conj(0.001/pixel)
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(test==0), 
c=(c+(c*p2+p3-c)*test)*(whitesq==0)+(z+fip)*whitesq
z=(|z|/5)+z*z+c,
iter=iter+1
|z|<=16
}

Carr2834{;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
c=conj(conj(|pixel^15|))-conj(0.1/pixel)
z=abs(flip(conj(pixel^12)))-flip(0.01/pixel)+conj(0.001/pixel)
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(test==0), 
c=(c+(c*p2+p3-c)*test)*(whitesq==0)+(z+fip)*whitesq
z=(|z|/5)+z*z+c,
iter=iter+1
|z|<=16
}

Carr2835{;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
c=flip(flip(|pixel^15|))-conj(0.1/pixel)
z=abs(flip(conj(pixel^12)))-flip(0.1/pixel)+conj(0.1/pixel)+0.3
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(test==0), 
c=(c+(c*p2+p3-c)*test)*(whitesq==0)+(z+fip)*whitesq
z=(|z|/5)+z*z+c,
iter=iter+1
|z|<=16
}

Carr2836{;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
c=(-0.275,0.45)
z=abs(flip(conj(2*pixel^12)))+flip(0.1/pixel)+conj(0.1/pixel)+0.35
iter=0,nextzoom=iterspace=real(p1)
b8=0.13/pixel:
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(test==0), 
c=(c+(c*p2+p3-c)*test)*(whitesq==0)+(z+fip)*whitesq
z=(|z|/5)+z*z+c-b8
iter=iter+1
|z|<=16
}

Carr2837{;Modified Sylvie Gallet frm.
;passes=1 needs to be used with this PHC formula.
z=pixel*(-1)^(pixel>0)
c=(-0.28,0.42)
iter=0,nextzoom=iterspace=real(p1)
b8=0.13/pixel:
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(test==0), 
c=(c+(c*p2+p3-c)*test)*(whitesq==0)+(z+fip)*whitesq
z=(|z|/5)+z*z+c-b8,
iter=iter+1
|z|<=16
}


Carr2839{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b4=(-0.7456,-0.132)
b5=abs(flip(conj(2*pixel^12)))+flip(0.1/pixel)+conj(0.1/pixel)+0.35
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+c,
iter=iter+1
|z|<=bailout
}



















































































































































































