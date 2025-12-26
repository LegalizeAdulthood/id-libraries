Carr2115 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-1.099,-0.2349)
  z=(pixel^2.33)/log(1.667-pixel)^2.87-(1/log(conj(0.10/pixel+1.25)))^2.95
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
 
Carr2118 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=flip(abs(1-pixel))^1.66/(flip(asinh(pixel+1.5)))
  c=(-0.3009,-0.625)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c-0.057
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
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
 
Carr2122 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=1/(conj(pixel)-asin(pixel))
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
 
Carr2123 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-1.099,-0.2349)
  z=1/(pixel*(3*pixel-flip(1/pixel)-conj(1/pixel)))
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
 
Carr2124 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-1.099,-0.2349)
  z=3.3/(pixel*(cabs(2.15*pixel-flip(0.010/pixel)-conj(0.10/pixel))))
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
 
Carr2126 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-1.099,-0.2349)
  z=1/(pixel*(3*pixel-flip(1/pixel)-conj(1/pixel)))
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
 
Carr2127 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=sin(conj(-0.81256,-0.189))
  z=pixel-(0.010/conj(pixel))-(0.010/flip(pixel))
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+1.1*c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2129 {; Modified Sylvie Gallet frm. [101324,3444],1996
  d=0.30
  z=c=1/(tan(pixel)*(pixel))/(pixel-sqr(flip(1/pixel)-sqr(conj(1/pixel))))
  z1=1.5*z+d, z2=2.25*z+d, z3=3.375*z+d, z4=11.0625*z+d
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
 
Carr2130 {; Modified Sylvie Gallet frm. [101324,3444],1996
  d=0.030/pixel
  z=c=1/(tan(pixel)*(pixel))/(pixel-sqr(flip(1/pixel)-sqr(conj(1/pixel))))
  z1=1.5*z+d, z2=2.25*z+d, z3=3.375*z+d, z4=11.0625*z+d
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
 
Carr2131 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=sin(conj(-0.81256,-0.189))
  d=0.030/pixel
  z=1/(cos(pixel)*(pixel))/(pixel-sqr(flip(1/pixel)-sqr(conj(1/pixel))))
  z1=1.5*z+d, z2=2.25*z+d, z3=3.375*z+d, z4=11.0625*z+d
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
 
Carr2137 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel, c=sin(conj(-0.81256,-0.189))
  d1=(flip(0.0018/pixel))
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2144 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=1/log(pixel-conj(0.010/pixel))^2.5
  c=sin(conj(-0.81256,-0.189))
  d1 = flip(0.00053/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2146 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(1-pixel)^1.5-1/log(pixel-1/sin(0.010/pixel))^2.5
  c=sin(conj(-0.81256,-0.189))
  d1 = flip(0.00053/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2147 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(1-pixel)^2.5-1/log(pixel-1/sqrt(0.010/pixel)-conj(0.10/pixel))^1.5
  c=sin(conj(-0.81256,-0.189))
  d1 = flip(0.00053/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2148 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=conj(abs(tan(pixel*pixel)))
  c=sin(conj(-0.7456,-0.132))
  d1 = flip(0.0002925/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2149 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=flip(conj(abs((pixel*pixel))))
  c=sin(conj(-0.7456,-0.132))
  d1 = flip(0.0004925/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2150 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(flip(conj(abs((pixel*sin(pixel+1))))))
  c=sin(conj(-0.7456,-0.132))
  d1 = flip(0.0004925/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2152 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=sin(0.25-pixel)/(sin(1/pixel))
  c=sin(conj(-0.7456,-0.232))
  d1 = -conj(0.0005525/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2153 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(0.33-cos(pixel))/(0.33-tan(pixel))
  c=sin(conj(-0.7456,-0.232))
  d1 = -conj(0.0005525/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2154 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(0.33-cos(pixel))/(0.33-tan(pixel))
  c=sin(conj(-0.81256,-0.189))
  d1 = -conj(0.00000950/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2157 {; Modified Sylvie Gallet frm.
  z=c=pixel-1/(tanh(0.250/pixel)-sqr(sinh(0.01250/pixel)))^6
  iter=1, rad=6, center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0, d1=(conj(0.00054550/pixel)):
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=conj(z-zn)*test2+conj(zn), z2=z*z, z4=z2*z2
  z1=((z4*z-1)/(4*z4+(z4==0)))+d1
  z=(z2+c)*test1+(z-z1)*(1-test1)
  test3=(test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter=iter+(1.099,0.0)
  ((|sqr(z)| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ccarr.frm
}
 
Carr2162 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel
  z=1/((pixel+pixel)+flip(1/pixel)-conj(1/pixel))
  d1 = conj(0.000004550/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2164 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=sqr(1/((pixel+pixel)+flip(1/pixel)-conj(1/pixel)))
  c=sin(conj(-0.81256,-0.1895))
  d1 = conj(0.000004550/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2167 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c1=(-0.7456,0.2)*pixel, c2=pixel*pixel
  c3=conj(0.10/pixel)+flip(0.10/pixel)
  z = sinh(c1)*c2-c3, c = tanh(c1)*c2-c3
  d1 = conj(0.00000455/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = (c-0.00625)*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2169 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=sqrt(pixel)+pixel
  z=flip(imag(1-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  d1 = conj(0.0000455/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*sin(t+ct), c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2170 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel+pixel
  z=sin(flip(imag(1-pixel))*conj(tan(pixel))\
      -conj(0.10/pixel)-flip(0.010/pixel))
  d1 = conj(0.0000455/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*sin(t+ct), c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2109 {; Modified Sylvie Gallet frm.
  c=(-0.8006,-0.149)
  z=pixel-1/(atan(0.10/pixel)-sqr(acos(0.0250/pixel)))^6
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn, z2 = z*z, z4 = z2*z2 
  z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ccarr.frm
}
 
Carr2110 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.8006,-0.149), p01 = 0.10/pixel
  z=pixel-1/log(p01)-cos(p01+1.25)+conj(p01)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=5.0625*z
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
 
Carr2111 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.8006,-0.159)
  z=pixel-1/log(0.050/pixel)-cos(0.10/pixel+1.25)+conj(0.0250/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=5.0625*z
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
 
Carr2112 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.8006,-0.149)
  z=pixel-cos(0.10/pixel+1.25)+conj(0.10/pixel+1.35)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=5.0625*z
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
 
Carr2114 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.3,-0.625)
  z=(pixel^2.33)/log(1.667-pixel)^2.87-(1/log(conj(0.10/pixel+1.25)))^2.95
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
 
Carr2116 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-1.099,-0.2349)
  z=conj(pixel^2.33)/log(2.667-pixel)^2.87\
      -(1/log(acos(0.10/pixel+1.25)))^2.95
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
 
Carr2117 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(1-pixel)^1.8/(flip(asinh(pixel+1.5)))
  c=(-0.3,-0.625)
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
 
Carr2119 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=flip(cos(1-pixel))^1.66/(flip(asinh(pixel+1.5)))
  c=(-0.3009,-0.63525)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c-0.057
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2120 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.7456,-0.132)
  z=(log((pixel+4/pixel)^1.8)/(1/asin(1-pixel)))
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
 
Carr2122 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=1/(conj(pixel)-asin(pixel))
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
 
Carr2125 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.3009,-0.63555)
  z=(pixel+1.25)-flip(asin(0.010/pixel))-conj(asin(0.10/pixel))
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
 
Carr2128 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(tan(1/pixel))/(5*pixel-(sin(flip(pixel)))-conj(1/pixel))
  c=1/(tan(pixel)*(pixel))/(pixel-sqr(flip(1/pixel)-sqr(conj(1/pixel))))
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
 
Carr2132 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=sin(conj(pixel+1.5))/((tanh(conj(-0.81256,-0.189)))/(conj(pixel-0.75)))
  c=sin(conj(-0.81256,-0.189))
  d=(0.10/pixel)
  z1=1.5*z+d, z2=2.25*z+d, z3=3.375*z+d, z4=11.0625*z+d
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
 
Carr2133 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=flip(conj(pixel*pixel))/(conj(pixel))
  d=(0.10/pixel)
  z1=1.5*z+d, z2=2.25*z+d, z3=3.375*z+d, z4=11.0625*z+d
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
 
Carr2135 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=pixel-1/log(pixel-real(0.010/pixel)+flip(imag(0.10/pixel)*2.924))
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
 
Carr2136 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=tan(pixel-1/log(real(pixel*pixel+1.25)+flip(imag(pixel)*2.924)))
  d1 = real(0.004/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2138 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(pixel^2)-(flip(pixel)^4)
  c=sin(conj(-0.81256,-0.189))
  d1 = flip(0.00045/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2139 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(pixel^2.5)-(flip(pixel)^2)-(conj(pixel^2))
  c=sin(conj(-0.81256,-0.189))
  d1 = flip(0.00045/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2140 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=conj(pixel^2.5)-((pixel-conj(0.10/pixel))^4)
  c=sin(conj(-0.81256,-0.189))
  d1 = flip(0.00045/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2141 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=conj(pixel^1.5)-((pixel-log(0.10/pixel))^4)
  c=sin(conj(-0.81256,-0.189))
  d1 = flip(0.00053/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2142 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=conj(pixel^1.5)-((pixel-log(0.10/pixel))^4)
  d1 = flip(0.00053/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2143 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=conj(pixel^1.5)-((pixel-sqrt(0.10/pixel))^4)
  d1 = flip(0.00053/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2144 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=1/log(pixel-conj(0.010/pixel))^2.5
  c=sin(conj(-0.81256,-0.189))
  d1 = flip(0.00053/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2145 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(1/pixel)-1/log(pixel-1/cos(0.010/pixel))^2.5
  c=sin(conj(-0.81256,-0.189))
  d1 = flip(0.00053/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2148 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=conj(abs(tan(pixel*pixel)))
  c=sin(conj(-0.7456,-0.132))
  d1 = flip(0.0002925/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2151 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=(flip(conj(abs((sin(pixel))))))*asin(pixel-flip(0.010/pixel))
  d1 = -conj(0.0005525/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2152 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=sin(0.25-pixel)/(sin(1/pixel))
  c=sin(conj(-0.7456,-0.232))
  d1 = -conj(0.0005525/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2155 {; Modified Sylvie Gallet frm.
  z=flip(conj(abs((pixel*pixel))))
  c=sin(conj(-0.81256,-0.139))-0.0387
  iter=1, rad=6, center=(-3.6,-3.0)
  pix=(10*pixel+(5.0,-3.5))*(-0.1,-0.95)
  zn=flip(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0
  d1 = -(conj(0.0005455/pixel)), d2 = sqr(d1):
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+zn, z2=z*z, z4=z2*z2, z1=((z4*z-1)/(4*z4+(z4==0)))+d1
  z=(z2+c)*test1+(z-z1)*(1-test1)+d2
  test3=(test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter=iter+1.2
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ccarr.frm
}
 
Carr2156 {; Modified Sylvie Gallet frm.
  z=flip(conj(abs((log(pixel)*sqrt(pixel)))))
  c=sin(conj(-0.81256,-0.139))-0.0387
  iter=1, rad=6, center=(-3.6,-3.0)
  pix=(10*pixel+(5.0,-3.5))*(-0.1,-0.95)
  zn=flip(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0
  d1 = -(conj(0.0005455/pixel)), d2 = sqr(d1):
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+zn, z2=z*z, z4=z2*z2, z1=((z4*z-1)/(4*z4+(z4==0)))+d1
  z=(z2+c)*test1+(z-z1)*(1-test1)+d2
  test3=(test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter=iter+1.2
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ccarr.frm
}
 
Carr2158 {; Modified Sylvie Gallet frm.
  p0 = 1/pixel, c = conj(pixel)/(flip(p0)-conj(p0))
  z = (p0)/(3*pixel-flip(p0)-conj(p0))
  iter=1, rad=6, center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0, d1=conj(0.0005455/pixel):
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=conj(z-zn)*test2+conj(zn), z2=z*z, z4=z2*z2
  z1=((z4*z-1)/(imag(p1)*z4+(z4==0)))+d1
  z=(z2+c)*test1+(z-z1)*(1-test1)
  test3=(test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter=iter+(2.099,0.0)
  ((|sqr(z)| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ccarr.frm
}
 
Carr2159 {; Modified Sylvie Gallet frm.
  z=flip(1-pixel)^1.8/(flip(asinh(pixel+1.5)))
  c=(-0.3,-0.625)
  iter=1, rad=6, center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0, d1=conj(0.0005455/pixel):
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+zn, z2=z*z, z4=z2*z2
  z1=((z4*z-1)/(imag(p1)*z4+(z4==0)))+d1
  z=(z2+c)*test1+(z-z1)*(1-test1)
  test3=(test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter=iter+(2.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ccarr.frm
}
 
Carr2160 {; Modified Sylvie Gallet frm.
  c=(-0.7456,-0.132)
  z=(log((pixel+4/pixel)^1.8)/(1/asin(1-pixel)))
  iter=1, rad=6, center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0, d1=conj(0.0005455/pixel):
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+zn, z2=z*z, z4=z2*z2
  z1=((z4*z-1)/(imag(p1)*z4+(z4==0)))+d1
  z=(z2+c)*test1+(z-z1)*(1-test1)
  test3=(test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter=iter+(0.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ccarr.frm
}
 
Carr2161 {; Modified Sylvie Gallet frm.
  z=c=(pixel*tanh(conj(1.9/pixel-1/pixel)))
  iter=1, rad=6, center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0, d1=conj(0.0005455/pixel):
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+zn, z2=z*z, z4=z2*z2
  z1=((z4*z-1)/(imag(p1)*z4+(z4==0)))+d1
  z=(z2+c)*test1+(z-z1)*(1-test1)
  test3=(test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter=iter+(2.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ccarr.frm
}
 
Carr2163 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=1/((pixel+pixel)+flip(1/pixel)-conj(1/pixel))
  c=sin(conj(-0.81256,-0.1895))
  d1 = conj(0.000004550/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2165 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=sqr(1/((pixel+tan(pixel))+flip(0.0010/pixel)-conj(0.010/pixel)))
  c=1/(pixel+flip(1/pixel)-conj(1/pixel)-sin(1/pixel))
  d1 = conj(0.000004550/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2166 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=sinh((-0.7456,0.2)*pixel)*sqr(pixel)\
        -conj(0.1/pixel)-flip(0.1/pixel)
  d1 = conj(0.000004550/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = (c-0.00625)*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2168 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel
  z=flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  d1 = conj(0.0000455/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*sin(t+ct), c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr1982 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=pixel, p10=10*pixel, th1 = tanh(1)
  iter = 1, dit=-1/pixel+(1.099,0.0), rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter + dit
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
 
Carr1987 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=1/pixel, c=1/pixel, p10=10*pixel, th1=tanh(1)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter+tan(z1)+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
 
Carr2039 {; Modified Sylvie Gallet frm.
  z = pixel+1/log(10*pixel)
  c = (-0.7456,-0.13)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+1.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
 
Carr2044 {; Modified Sylvie Gallet frm.
  z=pixel-conj(0.010/pixel)-flip(0.010/pixel),
  c=(0.3,0.6)-(0.0165/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0)), z5=z4*z2-1
  z = (z2+c/z5)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
 
Carr2047 {; Modified Sylvie Gallet frm. 
  z=pixel*sqr(pixel)-conj(0.010/pixel)-flip(0.010/pixel)
  c=(-0.7456,-0.13)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}
 
Carr2048 {; Modified Sylvie Gallet frm. 
  z=conj((0.3,0.6)*(pixel))*sqr(pixel)-conj(0.010/pixel)-flip(0.010/pixel)
  c=(-0.7456,-0.13)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}
 
Carr2049 {; Modified Sylvie Gallet frm. 
  z=c=conj((0.3,0.6)*(pixel))*sqr(pixel)\
       -conj(0.010/pixel)-flip(0.010/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}
 
Carr2052 {; Modified Sylvie Gallet frm.
  z=c=tanh(pixel)-(((0.3,0.6)+pixel)/(0.20/-pixel))
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  p=(-0.745680900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}
 
Carr2053 {; Modified Sylvie Gallet frm.
  z=c=sinh((-0.7456,0.2)*(pixel))*sqr(pixel)\
     -conj(0.10/pixel)-flip(0.10/pixel)
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  p=(-0.745680900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}
 
Carr2054 {; Modified Sylvie Gallet frm.
  z=pixel*sqr(pixel)+conj(0.010/pixel)+flip(0.010/pixel)+tanh(0.010/pixel)
  c=(-0.7456,-0.13)-conj(0.001/pixel)
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  p=(-0.745680900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}
 
Carr2056 {; Modified Sylvie Gallet frm.
  z=sqr(sqr(conj(pixel)))-(tan(0.00020/pixel))-(sin(0.00020/pixel))
  c=(-0.7456,-0.03)+0.009/pixel
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  p=(-0.745680900000982,-0.131850030300002):
  test=(compt<limit)
  c=(c*test+p*(1-test))
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}
 
Carr2103 {; Modified Sylvie Gallet frm. 
  z=c=(pixel)-0.5/((log(conj(pixel))^12)+pixel)+conj(0.040/pixel)
  compt=0, limit=real(p1*cos(pixel/5)), bailout=4
  p=(-0.743380900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}
 
Carr2108 {; Modified Sylvie Gallet frm.
  z=c=pixel-1/(tanh(0.10/pixel)-sqr(sinh(0.0250/pixel)))^6
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn, z2 = z*z, z4 = z2*z2 
  z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter = iter+1.2
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ccarr.frm
}
 
