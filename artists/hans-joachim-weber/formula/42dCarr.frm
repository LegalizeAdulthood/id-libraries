Carr2171 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(conj(0.5-pixel)*conj((pixel))-sinh(0.10/pixel)-flip(0.010/pixel))
  z=(flip(imag(1-pixel))*conj(tan(pixel))\
        -conj(0.10/pixel)-flip(0.010/pixel))
  d1=(conj(0.00004550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*sin(t+ct), c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2172 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(conj(0.5-pixel)*conj(pixel)-sinh(0.10/pixel)-flip(0.010/pixel))
  z=(flip(imag(1-pixel))/log(tan(pixel))\
       -conj(0.10/pixel)-flip(0.010/pixel))
  d1=(conj(0.00004550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*sin(t+ct), c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2175 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=acos(1-pixel+pixel)^2-(conj(0.10/pixel))-(flip(0.010/pixel))
  c=(-1.099,-0.63659)
  d1=(conj(0.00004550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*tanh(t+ct), c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2179 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(pixel+pixel)-1/log(pixel-1/tan(0.0010/pixel))^2.5
  c=sin(conj(-0.655,-0.3509))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/6)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2181 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel-((tan(pixel)+sin(pixel)-1/pixel))
  c=pixel-1/log(pixel-((tan(pixel)+sin(pixel)-1/pixel)))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=1:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: 42dcarr.frm
}

Carr2186 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=z5, z5=(pixel+pixel)-1/log(flip(pixel-1/sin(conj(0.010/pixel))))^2.5
  c=(pixel+pixel)-1/log(flip(pixel-1/sin(conj(0.010/pixel))))^2.5
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t+ct, c = c*t+ct
  z=(z^2+(-0.7406,-0.13)+(c/7*flip(pixel)))
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: 42dcarr.frm
}

Carr2187 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=z5, z5=(pixel+pixel)-1/log(flip(pixel-1/sin(conj(0.010/pixel))))^2.5
  c=flip(pixel+pixel)-1/log(flip(pixel-1/sin(conj(0.010/pixel))))^2.5
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t+ct, c = c*t+ct
  z=(z^2+(-0.6706,-0.13)+(c/5*exp(pixel)))
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: 42dcarr.frm
}

Carr2188 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel-sqrt(sqrt(pixel-conj(0.10/pixel)-flip(0.010/pixel)))
  c=sin(conj(-0.5545,-0.30009))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=8.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=1:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/10)*t+ct, c = c*t+ct
  z=z^2+(-0.7106,-0.13)+c/6
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: 42dcarr.frm
}

Carr2189 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=sqr(flip(2*(1-pixel))\
      -sqrt(sqrt(3*pixel-(0.10/pixel)-flip(0.010/pixel))))
  c=sin(conj(-0.5545,-0.30009))
  d1=(conj(0.002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=4.375*z+d1, z4=8.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=1:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = (z-c/10)*t + ct, c = c*t + ct+d4
  z=z^2+(-0.3,-0.613)+c/6
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: 42dcarr.frm
}

Carr2190 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(2*pixel+0.72)-1/log(pixel-1/sin(0.010/pixel))
  c=sin(conj(-0.81256,-0.3095))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/10)*t+ct, c = c*t+1.5*ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2193 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=(2*pixel+0.4)-1/log(pixel-log(0.010/pixel))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=6.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/4)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2194 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(3*pixel+0.4)-(1/log(4*pixel-log(0.010/pixel)))
  c=sin((pixel+0.4)-(1/log(pixel-log(0.010/pixel))))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=6.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2196 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(acos(1-pixel+pixel)^2-(conj(0.10/pixel))-(flip(0.001250/pixel)))
  c=sin(conj(-0.763,-0.3509))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=5.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/10)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2198 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel-tanh(pixel)/(sqrt(log((tan(pixel)+sin(pixel-1)-2.75/pixel))))
  z=(acos(1-pixel+pixel)^2-(conj(0.10/pixel))-(tanh(0.00025250/pixel)))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=5.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+c/8)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2203 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel^2.3/(sqrt(log((tan(1-pixel)+sin(pixel-1)-2.75/pixel))))
  z=(acos(1-pixel+pixel)^2-(conj(0.10/pixel))-(tanh(0.0025250/pixel)))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=5.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+c/8)*t+ct, c = c*t+ct
  z = z*z+c-1.15-c/5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2173 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-1.099,-0.2149)
  z=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00010/pixel))
  d1=(conj(0.00004550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*(t+ct), c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2174 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-1.099,-0.2249)
  z=abs(pixel)*(sqr(pixel))-sinh(0.10/pixel)-sqr(flip(0.00010/pixel))
  d1=(conj(0.00004550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*(t+ct), c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2175 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=acos(1-pixel+pixel)^2-(conj(0.10/pixel))-(flip(0.010/pixel))
  c=(-1.099,-0.63659)
  d1=(conj(0.00004550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*tanh(t+ct), c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2176 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=(pixel)-0.5/((log(conj(pixel))^12)+pixel)+conj(0.040/pixel)
  d1=(conj(0.00004550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2177 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(pixel+pixel)-1/log(pixel-flip(0.010/pixel)-conj(0.10/pixel)+2/pixel)
  c=pixel+pixel
  d1=(conj(0.00004550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2178 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(pixel+pixel)-1/log(pixel-1/sin(0.010/pixel))^2.5
  c=sin(conj(-0.81256,-0.2495))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/6)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2180 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(3*pixel)-1/log(pixel-1/tan(0.0010/pixel))^3.5
  c=sin(conj(-0.7445,-0.3509))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/5)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

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

Carr2183 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel
  c=(1-pixel)*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/10)*t+ct, c = c*t+ct
  z=(z^2+(-0.7356,0.10)+(c/7*pixel))
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: 42dcarr.frm
}

Carr2184 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel+pixel
  z=(1-pixel)*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t+ct, c = c*t+ct
  z=(z^2+(-0.7356,0.10)+(c/9*pixel))
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: 42dcarr.frm
}

Carr2185 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=sqrt(pixel)+pixel
  z=z5, z5=flip(1-pixel)*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  c=sin(conj(-0.81256,-0.2495))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t+ct, c = c*t+ct
  z=(z^2+(-0.7456,-0.13)+(c/7*pixel))
  c=z+c/2.125
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: 42dcarr.frm
}

Carr2191 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(2*pixel+0.72)-1/log(pixel-1/sin(0.010/pixel))
  c=sin(conj(-0.81256,-0.3095))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/6)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2192 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=(2*pixel+0.4)-1/log(pixel-log(0.010/pixel))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=6.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2195 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=acos(1-pixel+pixel)^2-(conj(0.10/pixel))-(flip(0.0060/pixel))
  c=((2*pixel)-0.45/log(sin(pixel-log(1/log(0.005550/pixel)))))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=6.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/10)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2196 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(acos(1-pixel+pixel)^2-(conj(0.10/pixel))-(flip(0.001250/pixel)))
  c=sin(conj(-0.763,-0.3509))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=5.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/10)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2197 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel-tanh(pixel)/log((tan(pixel)+sin(pixel-1)-2.75/pixel))
  z=(acos(1-pixel+pixel)^2-(conj(0.10/pixel))-(tanh(0.00025250/pixel)))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=5.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+c/8)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2199 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(acos(1-pixel+pixel)^2-(conj(0.10/pixel))-(tanh(0.0025250/pixel)))
  c=(conj(pixel)+flip(pixel))-1/log(pixel-1/sin(0.010/pixel))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=5.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+c/8)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2200 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=pixel-tanh(pixel)/(sqrt(log((tan(pixel)+sin(pixel-1)-2.75/pixel))))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=5.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+c/8)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2201 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=pixel-tanh(pixel)/(sqrt(log((tan(pixel)+sin(pixel-1)-2.75/pixel))))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=5.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+c/8)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2202 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel*cabs(pixel)/(sqrt(log((tan(1-pixel)+sin(pixel-1)-2.75/pixel))))
  z=(acos(1-pixel+pixel)^2-(conj(0.10/pixel))-(tanh(0.0025250/pixel)))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=5.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+c/8)*t+ct, c = c*t+ct
  z = z*z+c-1.15-c/5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

Carr2204 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=tan(pixel+0.72)*conj(pixel)-1/log(pixel-1/sin(0.0010/pixel))
  c=pixel-conj(0.010/pixel)-flip(0.010/pixel)
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=5.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+c/8)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}

