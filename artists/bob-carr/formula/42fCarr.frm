Carr2257 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = conj(newpixel/2), p5 = 0.1*r+newpixel/30
  z=c=(3.5*newpixel^5)-r-sin(0.08-flip(0.01/newpixel))+conj(0.0535/newpixel)+0.097
  d1 = conj(0.00044550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.1*c)*t + ct, c = c*t + ct
  z = z*z + 0.96*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2258 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = flip(newpixel/4+newpixel/3), p5 = 0.1*r-newpixel/30
  z=c=(2*newpixel^4)-r-sin(0.8*newpixel-flip(0.01/newpixel))+conj(0.1275/newpixel)+0.117
  d1 = conj(0.00044550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.1*c)*t + ct, c = c*t + ct
  z = z*z + 0.96*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2259 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = tanh(newpixel/5+newpixel/7), p5 = 0.1*r-newpixel/30
  z=c=(2*newpixel^7)-conj(r)-sin(0.0001/newpixel-flip(0.009/newpixel))\
      +conj(0.1873/newpixel)+0.117
  d1 = conj(0.00044550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.1*c)*t + ct, c = c*t + ct
  z = z*z + 0.96*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2260 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = tanh(newpixel/5+newpixel/7), p5 = 0.025*(r-newpixel)
  z=c=(3*newpixel)^10+r-flip(sqr(newpixel)\
         -conj(0.010/newpixel)-flip(0.010/-newpixel))-0.25
  d1 = conj(0.00044550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.1*c)*t + ct, c = c*t + ct
  z = z*z + 0.975*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2261 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, p5 = 0.175*newpixel
  z=c=sinh(newpixel)-1/log(4*newpixel-conj(0.01/newpixel/1.5)\
        -flip(0.0010/newpixel)+0.6/r)
  d1=(conj(0.00199550/newpixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.1*c)*t + ct, c = c*t + ct
  z = z*z + 0.975*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2262 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, p5 = r/13.5 - 0.1*newpixel
  z=c=sinh(newpixel)-1/log(4*flip(newpixel)-conj(0.01/newpixel)\
        -flip(0.0010/newpixel)+4.6/r)
  d1 = conj(0.00199550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.1*c)*t + ct, c = c*t + ct
  z = z*z + 0.9*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2263 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = 8*newpixel, j =  newpixel, p5 = 0.7*newpixel
  z=c=sinh(newpixel)-1/log(2*j+0.0450/j-conj(0.010/-newpixel)\
        -flip(0.050/newpixel)+4.6/r)
  d1 = conj(0.00129550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.1*c)*t + ct, c = c*t + ct
  z = z*z + 0.9*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2264 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j = 2*newpixel, p5 = 0.45*newpixel
  z=c=sinh(newpixel)-1/sqrt(j+0.3550/j-conj(0.010/newpixel)\
        -flip(0.0250/newpixel)+2/r)
  d1=(conj(0.00044550/newpixel)), d4 = 4*d1
  z1=c1=(1.5*z+d1), z2=c2=(2.25*z+d1), z3=c3=(3.375*z+d1)
  z4=c4=(5.0625*z+d1)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.125*c)*t + ct, c = c*t + ct
  z = z*z + 0.95*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2265 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j = newpixel, p5 = 0.45*newpixel
  z=c=tanh(newpixel+newpixel/0.9)-1/sqrt(j+0.3550/j-conj(0.010/newpixel)\
        -flip(0.0250/newpixel)+2/r)
  d1 = conj(0.00044550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.125*c)*t + ct, c = c*t + ct
  z = z*z + 0.95*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2266 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j = 2*newpixel, p5 = 0.45*newpixel
  z=tanh(4.33*newpixel)-1/sqrt(j+0.3550/j-conj(0.030/newpixel)\
      -flip(0.0550/newpixel)+2/r)
  c=2*newpixel+(-0.099,-0.2249)
  d1 = conj(0.00044550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.125*c)*t + ct, c = c*t + ct
  z = z*z + 0.95*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2267 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j = flip(3.5*newpixel-0.5)+conj(newpixel-0.6)
  p5 = 0.45*newpixel
  z=tanh(newpixel)-1/sqrt(j+0.5550/j-conj(0.030/newpixel)\
      -flip(0.0550/newpixel)+2/r)
  c=2*newpixel+(-0.099,-0.2249)
  d1 = conj(0.00044550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.125*c)*t + ct, c = c*t + ct
  z = z*z + 0.95*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2268 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j = flip(3.5*newpixel-0.9)+conj(newpixel-0.9)
  p5 = 0.18*newpixel
  z=tanh(2*newpixel)-1/sqrt(j+0.5550/j-conj(0.030/newpixel)\
      -flip(0.0550/newpixel)+2/r)
  c=2*newpixel+(-0.099,-0.2249)
  d1 = conj(0.00039550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.125*c)*t + ct, c = c*t + ct
  z = z*z + 0.98*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2269 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j = flip(3.5*newpixel-0.9)+conj(newpixel-0.9)
  p5 = 0.18*newpixel
  z=conj(flip(2*newpixel))-1/sqrt(j+0.5550/j-conj(0.030/newpixel)\
     -flip(0.0550/newpixel)+2/r)
  c=2*newpixel+(-0.099,-0.2249)
  d1 = conj(0.00039550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.125*c)*t + ct, c = c*t + ct
  z = z*z + 0.98*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2270 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*4, j = flip(3.5*newpixel-0.9)+conj(newpixel-0.9), p5 = newpixel/6
  c=conj(flip(2*newpixel))-1/sqrt(j+0.5550/j-conj(0.030/newpixel)\
     -flip(0.0550/newpixel)+2/r)
  z = 2*conj(newpixel+0.15)
  d1 = conj(0.00110550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.125*c)*t + ct, c = c*t + ct
  z = z*z + c-c/30 - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2271 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j = sin(sinh(sin(newpixel)))+tan(tanh(tan(newpixel)))
  z = 2*conj(newpixel), p5 = 0.225*newpixel
  c = z-(j-conj(0.010/newpixel)-flip(0.0010/newpixel))
  d1 = conj(0.00110550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.125*c)*t + ct, c = c*t + ct
  z = z*z + 0.975*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2272 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j=conj(sinh(sin(newpixel)))+flip(tanh(tan(newpixel)))
  c=conj(2*newpixel)-(j-conj(0.010/newpixel)-flip(0.0010/newpixel))
  z=1/log(2*conj(newpixel+0.2)), p5 = 0.3*newpixel
  d1 = conj(0.00080550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.125*c)*t + ct, c = c*t + ct
  z = z*z + c-c/30 - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2273 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j=conj(sinh(sin(newpixel)))+flip(tanh(tan(newpixel)))
  z=conj(2*newpixel)-(j-conj(0.010/newpixel)-flip(0.0010/newpixel))
  c=1/(2*newpixel-(conj(0.10/newpixel)+flip(conj(0.010/newpixel)))^4)
  d1 = conj(0.00029550/newpixel), d4 = 4*d1, p5 = 0.3*newpixel
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.1*c)*t + ct, c = c*t + ct
  z = z*z + c-c/30 - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2274 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j=1.8*newpixel, p5 = 0.225*newpixel
  z=conj(2*newpixel)-(j-conj(0.010/newpixel)-flip(0.0010/newpixel))
  c=1/(2*newpixel-(conj(0.10/newpixel)+flip(conj(0.010/newpixel)))^4.1)
  d1 = conj(0.00029550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.125*c)*t + ct, c = c*t + ct
  z = z*z + 0.975*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2275 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j=flip(3.8*newpixel), p5 = 0.3*newpixel
  z=(1.8*newpixel)-(j/6-conj(0.010/newpixel)-flip(0.0010/newpixel))
  c = (0.4,0.2) + newpixel + conj(newpixel) + flip(newpixel)
  d1 = conj(0.00059550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z=(z-c/6)*t + ct, c = c*t + ct
  z = z*z + c-c/30 - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2276 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, p5 = 0.225*newpixel
  c=(newpixel+newpixel)-1/log(newpixel-1/tan(0.001/newpixel))^3.8
  z = newpixel+conj(flip(newpixel))+flip(tanh(newpixel))
  d1 = conj(0.00060350/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z=(z-c/6)*t + ct, c = c*t + ct
  z = z*z + 0.975*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2277 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, p5 = 0.225*newpixel
  c=(newpixel+newpixel)-1/log(newpixel-1/tan(0.001/newpixel))^3.8
  z = newpixel+conj(flip(newpixel))+flip(tanh(conj(sinh(newpixel))))
  d1 = conj(0.00060350/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z=(z-c/6)*t + ct, c = c*t + ct
  z = z*z + 0.975*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2278 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel)), p0 = 0.2*newpixel
  r = newpixel*8, m=conj(tanh(conj(sinh(newpixel+flip(0.0035/newpixel)))))
  c=(6*newpixel+flip(0.0055/newpixel))-1/log(newpixel-1/tan(0.001/newpixel))^4.8
  z=2*(m)+3*newpixel-flip(0.0035/newpixel), p5 = r/30 + 0.025*newpixel
  d1 = 0.00034150/newpixel, d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  z6 = z4^6, bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3  + d4
  z = (z-p0)*t + z4*t4 + ct, c = c*t + z6*t4 + ct
  z = z*z + 0.975*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2279 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel)), p0 = 0.2*newpixel
  r = newpixel*8, m=conj(tanh(conj(sinh(newpixel+flip(0.0035/newpixel)))))
  c=sin(conj(-0.515,-0.0959)), p5 = 0.225*newpixel
  z=2*(m)+3*newpixel-flip(0.0035/newpixel)
  d1 = imag(0.00145150/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  z6 = z4^6, bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + d4
  z = (z-p0)*t + z4*t4 + ct, c = c*t + z6*t4 + ct
  z = z*z + 0.975*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2280 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel)), p0 = 0.2*newpixel
  r = newpixel*8, m=conj(tanh(conj(sinh(newpixel+flip(0.0035/newpixel)))))
  c=(6*newpixel+flip(0.0055/newpixel))-1/log(newpixel-1/tan(0.001/newpixel))^4.8
  z=2*(m)+3*newpixel-flip(0.0035/newpixel), p5 = 0.225*newpixel
  d1 = imag(0.00025150/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  z6 = z4^6, bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + d4
  z = (z-p0)*t + z4*t4 + ct, c = c*t + z6*t4 + ct
  z = z*z + 0.975*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2281 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, m=conj(tanh(conj(sinh(newpixel+flip(0.0035/newpixel)))))
  z=(3.5*newpixel^5)-sin(0.001/newpixel-tan(0.01/newpixel))\
       +conj(0.0010/newpixel)+0.135
  c=2*(m)+3*newpixel-flip(0.0035/newpixel), p5 = 0.36*newpixel
  d1 = imag(0.00056150/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  z6 = z4^6, bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + d4
  z = (z-0.125*c)*t + z4*t4 + ct, c = c*t + z6*t4 + ct
  z = z*z + 0.96*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2282 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, m=conj(tanh(conj(sinh(newpixel+flip(0.0035/newpixel)))))
  z=(2.5*newpixel^3.5)-sin(0.001/newpixel-tan(0.01/newpixel))\
      +conj(0.0010/newpixel)+0.135
  c=(m)+3*conj(newpixel-flip(0.0035/newpixel)), p5 = 0.36*newpixel
  d1 = imag(0.00062350/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  z6 = z4^6, bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + d4
  z = (z-0.125*c)*t + z4*t4 + ct, c = c*t + z6*t4 + ct
  z = z*z + 0.96*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2283 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, m = sinh(newpixel+flip(0.0035/newpixel))
  z=(2.5*tanh(newpixel^3.5))-sin(0.001/newpixel-tan(0.01/newpixel))\
       +conj(0.0010/newpixel)+0.135
  c=(m)+3*tan(newpixel-flip(0.0035/newpixel)), p5 = 0.36*newpixel
  d1 = tan(abs(sinh(imag(0.00062350/newpixel)))), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + d4
  z = (z-0.125*c)*t + z4*t4 + ct, c = c*t + z6*t4 + ct
  z = z*z + 0.96*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2284 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, m=(flip(newpixel/4+newpixel/3)), p5 = 0.36*newpixel
  z=(2*newpixel^4)-m-sin(0.8*newpixel-flip(0.01/newpixel))+conj(0.1275/newpixel)-0.3
  c=(4*newpixel^4)-m-sin(newpixel-flip(0.01/newpixel))+conj(0.1275/newpixel)-0.3
  d1 = tan(abs(sinh(imag(0.00152350/newpixel)))), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.125*c)*t + ct, c = c*t + ct
  z = z*z + 0.96*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2285 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, m=(flip(newpixel/4+newpixel/5)), p5 = (r+newpixel)/35
  z=conj(2*newpixel^4)-m-sin(0.8*newpixel-flip(0.01/newpixel))\
      +conj(0.1275/newpixel)-0.3
  c=flip(4*newpixel^4)-m-sin(newpixel-flip(0.01/newpixel))+conj(0.1275/newpixel)-0.3
  d1 = tan(abs(sinh(imag(0.00192350/newpixel)))), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.125*c)*t + ct, c = c*t + ct
  z = z*z + c-c/35 - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
Carr2286 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, m=(flip(newpixel/4+newpixel/5)), p5 = (r+newpixel)/35
  z=conj(conj(2*newpixel^4))-m-sin(0.8*newpixel-flip(0.01/newpixel))\
      +conj(0.1275/newpixel)-0.3
  c=conj(flip(4*newpixel^4))-m-sin(newpixel-flip(0.02/newpixel))\
      +conj(0.01275/newpixel)-0.5
  d1 = conj(0.00192350/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.125*c)*t + ct, c = c*t + ct
  z = z*z + c-c/35 - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}
