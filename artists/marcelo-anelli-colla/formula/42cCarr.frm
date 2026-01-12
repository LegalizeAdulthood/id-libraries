Carr2134 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=flip(conj(pixel*pixel))/(flip(pixel))
  c=(-0.7456,-0.132)
  d=(0.10/pixel), d1=flip(1/pixel)
  z1=1.5*z+d, z2=2.25*z+d1, z3=3.375*z+d, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
