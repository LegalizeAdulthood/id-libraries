Carr2168{;Modified Sylvie Gallet frm. [101324,3444],1996
c=pixel,
z=flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel),
d1 = conj(0.0000455/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 11.0625*z+d1,
l1=(real(p1)),l2=(imag(p1)),l3=(real(p2)),l4=(imag(p2)),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*sin(t+ct) , c = c*t + ct,
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
