Carr2771(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=real(pixel)-flip(abs(imag(pixel))),
b4=cotan(|1-pixel|)^1.5*pixel^8-(0.5/log(conj(conj(0.10/pixel+1.0))))^30,
b5=(pixel^2.63)/log(1.667-pixel)^2.87-(1/log(conj(0.07/pixel+1.25)))^7.5,
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c-0.02/pixel,
iter=iter+1
(|real(z)|)<=bailout
}
