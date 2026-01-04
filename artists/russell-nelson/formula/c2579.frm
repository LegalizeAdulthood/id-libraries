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

