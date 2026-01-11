Carr2088 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.8006,-0.149)
  z=flip(conj(1-pixel))*sqr(pixel)\
       -(conj(0.0005/pixel))-sqr(flip(0.03/pixel))
  z1 = 2.25*z, z2 = 3.25*z, z3 = 5.375*z, z4 = 10.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}
