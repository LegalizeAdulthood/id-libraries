Carr2918 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(pixel^5-conj(0.1/pixel)-flip(0.1/pixel))
  b4=(pixel^5-(b5+conj(sqr(b5*(pixel)))))
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=((z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42vcarr.frm
}

