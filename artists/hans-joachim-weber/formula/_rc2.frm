Carr2182 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel
  c=flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/10)*t+ct, c = c*t+ct
  z=(z^2+(-0.7856,0.10)+(c/7*pixel))
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: 42dcarr.frm
}

Carr2121 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=1/(pixel-asin(pixel))
  c=(-1.099,-0.2349)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
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

Carr2949 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(sqr(pixel))/(conj(2/pixel)*sin(2/pixel))
  b5=(b4/(cos(-0.7456,0.2)))-flip(0.1/pixel)+0.4
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.132)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42vcarr.frm
}

Carr2907 (XYAXIS) {; Halley PHC
                   ; passes=1 needs to be used with this PHC formula.
  b5=1/pixel
  z=b5*(whitesq+b5*(whitesq==0)):
  z5=z*z*z*z*z
  z6=z5*z
  z7=z6*z
  z=(z-p1*((z7-z)/((14.0*z6-2)-(84.0*z5)*(z7-z)/(28.0*z6-4))))
  0.0001<=|z7-z|
  ;SOURCE: 42ucarr.frm
}

carr2821 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; Converted to if.else by Sylvie Gallet and George Martin 3/97
          ; passes=1 needs to be used with this PHC formula.
   pixinv = 0.1/pixel
   p9 = 0.9*pixinv
   imagp1 = imag(p1)
   imagp2 = imag(p2)
   IF (whitesq)
      z = zorig = pixel - conj(pixinv)
      c = pixel - flip(pixinv) - conj(0.01*pixinv) - p9
      mz = |z|
   ELSE
      c = flip(pixinv) + conj(0.01*pixinv) - pixel - p9
      z = zorig = conj(pixinv) - pixel
      mz = |z|
   ENDIF
   bailout = 16
   iter = 0
   :
   IF (iter==p1)
      z = mz = 0
      c = 1.5*zorig^1.2 - p9
   ELSEIF (iter==imagp1)
      z = mz = 0
      c = 2.25*conj(zorig) - p9
   ELSEIF (iter==p2)
      z = mz = 0
      c = 3.375*flip(zorig) - p9
   ELSEIF (iter==imagp2)
      z = mz = 0
      c = 5.0625*flip(zorig) - p9
   ENDIF
   z = mz*0.2 + z*z + c
   mz = |z|
   iter = iter + 1
   mz <= bailout
  ;SOURCE: ifs196.frm
}

