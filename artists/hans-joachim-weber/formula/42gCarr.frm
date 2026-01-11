Carr2287 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=newpixel/(tanh(0.3/newpixel)), c=newpixel
  d1 = 0.0009235/newpixel, d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2288 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = newpixel-asin(newpixel)
  d1 = conj(0.0038935/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2289 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Modified for if..else logic 3/17/97 by Sylvie Gallet
                  ; Added variable "newpixel". G.Martin 6/15/99
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter
   ; periodicity=0
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = newpixel + newpixel - flip(0.001/newpixel) - conj(0.01/newpixel)
  z = zorig = newpixel - conj(asin(newpixel+newpixel+0.32))
  d1 = flip(-0.0005935/newpixel), d4 = 4 * d1, d5 = d1 + d4
  bailout = 4, iter = 0 :
  IF (iter == p1)
    z = c = 1.5 * zorig + d5
  ELSEIF (iter == imag(p1))
    z = c = 2.25 * zorig + d5
  ELSEIF (iter == p2)
    z = c = 3.375 * zorig + d5
  ELSEIF (iter == imag(p2))
    z = c = 5.0625 * zorig + d5
  ELSE
    z = z + d4, c = c + d4
  ENDIF
  z = z*z + c
  iter = iter + 1
  abs(z) <= bailout
  ;SOURCE: fract196.frm
}

Carr2290 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c=(newpixel)+(newpixel-flip(0.001/newpixel)-conj(0.01/newpixel))
  z=((newpixel)-conj(asin(newpixel+newpixel+0.39)))
  d1 = conj(0.0003775/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2291 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=c=(0.33-cos(newpixel))/(0.33-tan(2*newpixel))+0.5
  d1 = cabs(0.0005955/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2292 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=c=conj(0.33-cos(newpixel))/(0.33-tan(2*newpixel))+0.5
  d1 = cabs(0.0010055/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2293 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=c=sinh(tanh(0.63-cos(newpixel)))/(conj(2*newpixel+0.6))
  d1 = abs(0.0010055/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2294 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=c=flip(conj(abs((newpixel*newpixel))))
  d1 = real(0.0016055/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c-c/25
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2295 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = newpixel, c = (-0.3,0.3)
  d1 = flip(0.0014355/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2296 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = newpixel-conj(0.01/newpixel)-flip(0.1/newpixel)
  d1 = 0.0015355/newpixel, d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2297 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  j = (1-newpixel)^1.8/flip(asinh(newpixel))
  z = c = newpixel/j-conj(0.01/newpixel)-flip(0.1/newpixel)
  d1 = flip(0.1095355/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2298 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = conj(flip(newpixel)-sinh(2*newpixel))-0.3
  c = conj(newpixel)-tan(flip(1.4*newpixel+0.2))
  d1 = flip(0.0007355/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2299 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=c=tanh(newpixel)-(((0.3,0.6)+newpixel)/(0.2/newpixel))
  d1 = real(0.0009055/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2300 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = flip(0.8*newpixel) - 5*((0.3,0.6)+newpixel)*newpixel
  d1 = real(0.0009055/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2301 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=c= flip(0.65*newpixel) - 5*((0.3,0.6)+newpixel)*newpixel + conj(0.065/newpixel)
  d1 = real(0.0009055/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2302 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=newpixel*sqr(newpixel)-conj(0.01/newpixel)-flip(0.015/newpixel)
  c = (-0.6256,-0.090), q = newpixel/4.375
  d1 = 0.0007155/newpixel, d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z^2.3 + c - q
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2303 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=newpixel+(newpixel^2.18)+conj(0.13/newpixel)+flip(0.02/newpixel)+tanh(0.01/newpixel)
  c=(-0.6256,-0.490)
  d1 =0.0003055/newpixel, d7 = 7*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d7
  z = z*t, c = c*t + ct
  z=z^2.3+c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2304 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = sqr(sqr(conj(newpixel))) - conj(0.05/newpixel) - flip(0.029/newpixel)
  c = sqr(sqr(flip(newpixel))) - conj(0.02/newpixel) - flip(0.02/newpixel)
  d1 = -tanh(0.0014095/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2305 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = sqr(sqr(conj(newpixel))) - conj(0.05/newpixel) - flip(0.029/newpixel)
  c = sqr(sqr(flip(newpixel))) + conj(0.02/newpixel) + flip(0.02/newpixel)
  d1 = sinh(conj(0.0014095/newpixel-flip(0.001/newpixel))), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2306 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = newpixel^2.8 - conj(newpixel/5), c = (-0.7456,0.18)
  d1 = sinh(conj(0.0005095/newpixel-flip(0.001/newpixel))), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2307 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = newpixel + newpixel + 1.5/log(newpixel)
  d1 = sinh(conj(0.0004295/newpixel-cabs(0.0001/newpixel))), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2308 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = newpixel + newpixel^2.5 ; - flip(newpixel)^2 - conj(newpixel^2)
                        ;  flip(newpixel)^2 + conj(newpixel^2) == 0 !!!
  c = sin(-0.82456,0.189)
  d1 = -0.0002395/newpixel + tanh(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2309 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = 0.25*newpixel + cabs(newpixel^2.5) - tan(newpixel)^2 - conj(newpixel^2)
  c = sin(-0.87646,0.189)
  d1 = -0.0003095/newpixel + tanh(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2310 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1), m2 = 0.125*newpixel + cabs(newpixel^4.9)
  z = m2 - tanh(newpixel/3)^2 - conj(sinh(newpixel^2.3)) + sqr(m/(1.5*m1))
  c = sin(-0.87446,0.189)
  d1 =-0.0003495/newpixel + tanh(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2311 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1)
  m2 = sqr(sqr(0.125*newpixel + cabs(newpixel^4.9)))
  z = m2 - tanh(newpixel/3)^2 - conj(tan(newpixel^4.3)) + sqr(m/(1.5*m1))
  c = sin(-0.87446,0.189)
  d1 = -0.0003495/newpixel + tanh(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2312 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1)
  m2 = sqr(sqr(1.125*newpixel + cabs(newpixel^4.9))) - 0.6
  z = m2 - tanh(newpixel)^2 - conj(tan(newpixel^4.3)) + sqr(cos(m/6)/sin(m1/4))
  c = sin(-0.88946,0.219)
  d1 = -0.0003495/newpixel + conj(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2313 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1)
  z = conj(abs(tan(newpixel*newpixel))) + 0.25*m + m1/6
  c = sin(-0.8556,0.1728)
  d1 = -0.0005395/newpixel + conj(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2314 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1)
  z = (0.25-newpixel) / ((m+m1) * sqr(tan(1.5/newpixel)))
  c = sin(-0.7956,0.297)
  d1 = -0.0005395/newpixel + conj(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2315 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = newpixel + newpixel - 1/log(newpixel+log(100*newpixel))
  z = sqr(0.9*newpixel) - conj(0.01/newpixel) - flip(0.001/newpixel)
  d1 = -0.00039795/newpixel + conj(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z=(z-0.25*c)*t + ct, c = c*t + ct
  z=z^2.4+c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2316 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = sin(newpixel)*sqr(newpixel) - conj(0.1/newpixel) - flip(0.01/newpixel) - 0.05
  z = 0.5*newpixel
  d1 = -0.0010913/newpixel + conj(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2317 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  b = 0.01/newpixel, b2 = sqr(b)
  z = 3.5*newpixel^5 - sinh(0.1*b-tan(b)) + conj(10*b) + 0.135
  c = sin(-0.515,0.4099)
  d1 = tanh(tanh(0.0008013/-newpixel+conj(0.0001/newpixel))), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+b2)*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2318 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  r = 17*newpixel/24
  z=c=(2*newpixel^4)-r-sin(0.8*newpixel-flip(0.01/newpixel))\
        +conj(0.1275/newpixel)+0.117
  d1=tanh(tanh(0.0003913/-newpixel+conj(0.0001/newpixel))), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c+sinh(z/2)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2319 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=flip(abs(sin(newpixel)))-newpixel+conj(0.035/newpixel)-flip(0.001/newpixel)
  c = 4.25*newpixel - conj(0.01/newpixel - flip(0.001/newpixel))
  d1 = tanh(tanh(0.00021217/-newpixel+conj(0.0001/newpixel))), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c + flip(z)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2320 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  r = conj(tanh(newpixel/5+newpixel/7))
  z=c=2*newpixel^7-r-sin(0.0001/newpixel-flip(0.009/newpixel))\
         +conj(0.1873/newpixel)+0.117
  d1 = tanh(tanh(0.00084217/-newpixel+conj(0.0001/newpixel))), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z^1.9 + c + flip(z/1.9)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2321 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  r = sinh(newpixel/5+newpixel/7)
  z=c=(3*newpixel)^5+r-flip(sqr(newpixel)-conj(0.01/newpixel)\
        +flip(0.01/newpixel))-0.25
  d1 = -0.00035217/newpixel + flip(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z^1.9 + c + flip(z/1.9)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2322 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = 0.2*newpixel/(conj(0.073*newpixel-cos(1/newpixel)-conj(1/newpixel)))
  z = newpixel - conj(0.1/newpixel) - flip(0.01/newpixel)
  d1 = -0.00030217/newpixel + flip(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c + tan(0.5*z)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2323 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = sqr(0.1*newpixel/(conj(0.009*newpixel-cos(1/newpixel)-conj(1/newpixel))))
  z = newpixel - conj(0.1/newpixel) - flip(0.01/newpixel)
  d1 = -0.00030217/newpixel + flip(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c + tan(0.5*z)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2324 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=c=tan(newpixel+newpixel)/(flip(1/newpixel)-conj(1/newpixel))+0.2
  d1 = -0.00230217/newpixel + flip(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c + sinh(0.25*z)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2325 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = sqr(0.1*newpixel/(conj(0.009*newpixel-cos(1/newpixel)-conj(1/newpixel))))
  z = sqr(conj(newpixel+newpixel))/(conj(1.5/newpixel)-flip(4/newpixel))
  d1 = -0.00064217/newpixel + flip(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c + sinh(0.25*z)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2326 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c=sqr(0.1*newpixel/(conj(0.009*newpixel-cos(1/newpixel)-conj(1/newpixel))))-0.15
  z = sin(43*newpixel/60)/(sin(1.5/newpixel) - conj(0.1/newpixel)) - 0.55
  d1 = -0.00149917/newpixel + flip(0.0001/newpixel), d5 = 5*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  z5 = 7.59375*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2), l5 = 300
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3
  t4 = iter==l4, t5 = iter==l5
  t = 1-(t1||t2||t3||t4)
  ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + d5
  z = z*t + ct, c = c*t + ct
  z = z^2.2 + c + sinh(0.25*z)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2327 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = sqr(0.1*newpixel/conj(0.009*newpixel-cos(1/newpixel)-conj(1/newpixel)))-0.35
  z=abs(newpixel*8)/(sqr(2*newpixel)-flip(5/newpixel)+1/newpixel+conj(1/newpixel))-0.15
  d1 = -0.00499917/newpixel + flip(0.0001/newpixel), d5 = 5*d1
  z1 = z+d1, z2 = 1.5*z+d1, z3 = 2.25*z+d1
  z4 = 3.375*z+d1, z5 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2)
  l4 = imag(p2), l5 = 300
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3
  t4 = iter==l4, t5 = iter==l5
  t = 1-(t1||t2||t3||t4)
  ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + d5
  z = z*t + ct, c = c*t + ct
  z = z*z + c + sinh(0.25*z)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2328 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel)), th1 = tanh(1)
  z = newpixel - flip(0.01/newpixel)-conj(0.1/newpixel) + 0.285
  c = conj(flip(sqr(sqr(newpixel-conj(0.15/newpixel)))))
  d1 = -0.0013899/newpixel + flip(0.0001/newpixel), d5 = 5*d1, d2 = 2*d1
  z1 = z+d1, z2 = 1.5*z+d1, z3 = 2.25*z+d1
  z4 = 3.375*z+d1, z5 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2)
  l4 = imag(p2), l5 = 300
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3
  t4 = iter==l4, t5 = iter==l5
  t = 1-(t1||t2||t3||t4)
  ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + d5
  z = z*th1*t + ct - d2, c = c*t + ct
  z = z*z + c + sinh(0.25*z)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2329 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = sin(newpixel) + sinh(newpixel) + cabs(newpixel) + conj(newpixel)
  z = m + flip(newpixel), c = 2*newpixel
  d1 = -0.0005045/newpixel + tanh(0.0001/newpixel), d5 = 5*d1, d2 = 2*d1
  z1 = z+d1, z2 = 1.5*z+d1, z3 = 2.25*z+d1
  z4 = 3.375*z+d1, z5 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2)
  l4 = imag(p2), l5 = 300
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3
  t4 = iter==l4, t5 = iter==l5
  t = 1-(t1||t2||t3||t4)
  ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + d5
  z = z*t + ct - d2, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2330 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = tan(newpixel) - tanh(newpixel)
  z = 2*m + flip(newpixel), c = (-0.7,0.2)
  d1 = -0.0003545/newpixel + tanh(0.0001/newpixel), d5 = 5*d1, d2 = 2*d1
  z1 = z+d1, z2 = 1.5*z+d1, z3 = 2.25*z+d1
  z4 = 3.375*z+d1, z5 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2)
  l4 = imag(p2), l5 = 300
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3
  t4 = iter==l4, t5 = iter==l5
  t = 1-(t1||t2||t3||t4)
  ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + d5
  z = z*t + ct - d2, c = c*t + ct
  z = z^2.45 + c + sinh(z/6)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

Carr2331 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = sqr(cosh(newpixel)) - sqr(cos(newpixel))
  z = 2*m + flip(newpixel), c = (-0.7,0.2)
  d1 = -0.0003545/newpixel + tanh(0.0001/newpixel), d5 = 5*d1, d2 = 2*d1
  z1 = z+d1, z2 = 1.5*z+d1, z3 = 2.25*z+d1
  z4 = 3.375*z+d1, z5 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2), l5 = 300
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3
  t4 = iter==l4, t5 = iter==l5
  t = 1-(t1||t2||t3||t4)
  ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + d5
  z = z*t + ct - d2, c = c*t + ct
  z = z^2.45 + c + sinh(z/6)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}

