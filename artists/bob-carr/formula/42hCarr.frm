Carr2332 {; Modified Sylvie Gallet frm.
  z = pixel, c = sqr(cos(pixel))-cosh(pixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3)
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2333 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = newpixel/(tanh(0.3/newpixel)) + 0.3
  c = newpixel
  d1 = -0.0003299/newpixel + flip(0.00010/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test) + d1
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2334 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = newpixel - flip(0.01/newpixel) - conj(0.1/newpixel) + 0.285
  c = conj(flip(sqr(sqr(newpixel-conj(0.15/newpixel)))))
  d1 = -0.0008099/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test) + d1
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2335 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=c=flip(conj(abs((newpixel*newpixel)))), th1 = tanh(1)
  d1 = -0.0032556/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*th1*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2336 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = flip(conj(abs((newpixel*newpixel)))) + 0.4
  d1 = -0.0030556/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*flip(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2337 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = newpixel + newpixel - flip(0.001/newpixel) - conj(0.01/newpixel)
  z = newpixel - conj(asin(newpixel+newpixel+0.32))
  d1 = -0.00033556/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2338 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = flip(conj(abs((newpixel))))
  c = 3*z - 0.8
  d1 = -0.00003556/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2339 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = conj(0.1/newpixel) + flip(0.01/newpixel)
  z = c = newpixel - m
  d1 = -0.0004056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2340 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = conj(newpixel*newpixel) / flip(1-newpixel)
  d1 = -0.0008056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2341 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = (1+1.5/newpixel)/(cosxx(2/newpixel-0.25))
  d1 = -0.0008056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2342 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = conj(1+0.5*newpixel) / (cos(2/newpixel-0.25)) - 0.275
  d1 = -0.0010056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2343 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = newpixel - flip(sin(0.1/newpixel)) - conj(sin(0.01/newpixel)) - 0.3
  d1 = -0.0013056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2344 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = (0.33-cos(newpixel))/(0.33-tan(2*newpixel)) + 0.5
  d1 = -0.00039056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2345 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = flip(conj(cabs((newpixel))))
  d1 = -0.00089056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2346 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = (-0.3,0.3), z = flip(conj(cabs((newpixel+newpixel))))
  d1 = -0.00049056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2347 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = flip(conj(cabs((newpixel+newpixel))))
  c = newpixel - conj(0.01/newpixel) - flip(0.1/newpixel)
  d1 = -0.00046056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2348 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = conj(flip(newpixel)-sinh(2*newpixel)) - 0.4
  c = conj(newpixel) - tan(flip(1.4*newpixel+0.2))
  d1 = -0.00046056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2349 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = tanh(newpixel) - 5*newpixel*((0.3,0.6)+newpixel)
  d1 = -0.00046056/newpixel + flip(0.0001/newpixel), sh1 = sinh(1)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*sh1*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2350 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = newpixel^2.18+conj(0.13/newpixel)+flip(0.02/newpixel)+tanh(0.01/newpixel)
  z = c = newpixel + m
  d1 = -0.00028056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2351 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = conj(0.013/newpixel) + flip(0.002/newpixel) + tanh(0.001/newpixel)
  z = newpixel + newpixel^2.18 + m^6 - 0.5
  c = cabs(sqr(2*newpixel-m))
  d1 = -0.00039056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2352 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = conj(0.013/newpixel) + flip(0.002/newpixel) + tanh(0.001/newpixel)
  c = newpixel + newpixel^2.18 + m^6 - 0.45
  z = cabs(sqr(3.5*newpixel/1.5-m))
  d1 = -0.00034056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2353 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1), m2 = 0.125*newpixel + cabs(newpixel^4.9) + 0.23
  z = m2 - tanh(newpixel/3)^2 - conj(sinh(newpixel^2.3)) + sqr(sqr(0.5*m/m1))
  c = z/3.3
  d1 = -0.00038056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1.5-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2354 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = flip(m1), m2 = newpixel + cabs(newpixel^4.9) + 0.09
  c = m2 - sinh(newpixel/3)^2 - conj(sinh(newpixel^1.7))+sqr(sqr(m/(2.4*m1)))
  z=conj(conj(c))-(conj(0.01/newpixel)+flip(0.001/newpixel))
  d1 = -0.00020056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1.5-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2355 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = sqr(sqr(conj(newpixel)))-conj(0.05/newpixel)-flip(0.029/newpixel)-0.25
  c = sqr(sqr(flip(newpixel)))-conj(0.02/newpixel)-flip(0.02/newpixel)-0.15
  d1 = -0.00035056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1.5-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2356 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1)
  m2 = sqr(sqr(1.125*newpixel + cabs(newpixel^4.9))) - 0.3
  z = c = m2 - tanh(newpixel)^2 - conj(tan(newpixel^4.3))\
          + sqr(cos(m/6)/sin(m1/4))
  d1 = -0.00035056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1.5-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2357 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1)
  m2 = sqr(sqr(1.125*newpixel + cabs(newpixel^4.9))) - 0.3
  z = c = m2 - tanh(newpixel)^2 - conj(tan(newpixel^4.3))\
          + sqr(cos(m/6)/sin(m1/4))
  d1 = -0.00035056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2358 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1)
  m2 = sqr(sqr(1.125*newpixel + cabs(newpixel^4.9))) - 0.3
  z = m2 - tanh(newpixel)^2 - conj(tan(newpixel^4.3))\
      + sqr(cos(m/6)/sin(m1/4))
  c = m2 - sinh(newpixel)*2 - flip(sin(newpixel^4.3))\
      + sqr(cotan(m/6)/flip(m1/4))
  d1 = -0.00035056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2359 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1)
  m2 = sqr(sqr(1.125*newpixel + cabs(newpixel^4.9))) - 0.6
  m3 = sqr(cotan(m/6)/flip(m1/4))
  z = c = 1.6*m2 - sinh(newpixel/3.3)*2.3 - flip(imag(newpixel^4.3))\
          + m3 - 0.2
  d1 = -0.00035056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2360 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1)
  m2 = sqr(sqr(1.125*newpixel + abs(newpixel^4.9))) - 0.6
  m3 = sqr(tan(m/6)/conj(m1/4)) + 0.4
  z=c=1.6*m2/0.67-sqr(newpixel/0.75)*2.3-sinh(tanh(newpixel/3))+m3
  d1 = -0.00035056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2361 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = conj(0.1/newpixel) + 0.135
  z = c = 3.5*newpixel^5 - sinh(0.001/newpixel-tan(0.01/newpixel)) + m
  d1 = -0.00095056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2362 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = newpixel^5 - tanh(0.01/newpixel)
  c = 3.5*newpixel^10 - sinh(0.001/newpixel-tan(0.01/newpixel)) + 0.135
  d1 = -0.00045056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2363 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = cabs(newpixel)
  c = cabs(3.5*newpixel^10) - sinh(0.001/newpixel-tan(0.01/newpixel)) + 0.135
  d1 = -0.00045056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2364 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = cabs(newpixel)^5
  c = cabs(3.5*newpixel^10) - sinh(0.001/newpixel-tan(0.01/newpixel))
  d1 = -0.00045056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2365 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = sinh(newpixel^2)\
          - cabs(4*newpixel-conj(1/(newpixel*150))-flip(0.001/newpixel))
  d1 = -0.00075056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2366 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = tanh(newpixel) - cabs(newpixel/1.3-conj(0.01/newpixel)-flip(0.001/newpixel))
  c = sinh(newpixel/2)\
      - cabs(newpixel-conj(1/(newpixel*15))-flip(0.001/newpixel)) + 0.3
  d1 = -0.00095056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2367 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  j = 2*newpixel
  z = conj(newpixel/5.6) - j + conj(0.01/newpixel) + flip(0.001/newpixel)
  c = cabs(2*newpixel - conj(0.01/newpixel) - flip(conj(0.001/newpixel)))
  d1 = -0.00015956/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2368 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  j = 2*newpixel
  z = sqr(flip(newpixel/5.6) - j + conj(0.01/newpixel) + flip(0.001/newpixel))
  c = sqr(cabs(2*newpixel - conj(0.01/newpixel) - flip(conj(0.001/newpixel))))
  d1 = -0.00009956/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2369 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = sqr(cabs(newpixel+newpixel)-1/log(newpixel-1/tan(0.001/newpixel))^3.8)-0.2
  z = newpixel + cabs(cabs(0.5*newpixel))
  d1 = -0.00002956/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2370 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = sqr(cabs(newpixel/1.3+sinh(newpixel))\
          -1/sqrt(newpixel-1/tan(0.001/newpixel))^3.8)-0.2
  z = c + cosxx(c/1.8)
  d1 = -0.00002956/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2371 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = conj(tanh(conj(sinh(newpixel+flip(0.0035/newpixel)))))
  c = cabs(newpixel+flip(0.0055/newpixel))\
      - 1/log(newpixel-1/tan(0.001/newpixel))^4.8
  z = 2*m + newpixel - flip(0.0035/newpixel)
  d1 = -0.00015956/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2372 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = conj(tanh(conj(sinh(newpixel/3+flip(0.0035/newpixel)))))
  c = sin(conj(-0.485,-0.0959))
  z = flip(m) + 4*newpixel + flip(0.0535/newpixel) + 0.3
  d1 = flip(-0.00005156/newpixel) + 0.0001/newpixel
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2373 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = 4*newpixel/tan(0.125/newpixel)+0.3
  c = tanh(-0.695,0.0959)
  d1 = flip(-0.00003356/newpixel) + 0.0001/newpixel
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2374 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = cabs((newpixel-flip(0.001/newpixel)-conj(0.01/newpixel)))
  c = cabs(sqr(sqr(newpixel-conj(0.1/newpixel))))
  d1 = flip(-0.00006756/newpixel) + 0.0001/newpixel
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2375 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = ((conj(newpixel/2.5)+flip(0.001/newpixel)+conj(0.01/newpixel)))
  c = abs(sqr(sqr(newpixel/1.25)))
  d1 = flip(-0.00007756/newpixel) + 0.00010/newpixel
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2376 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = sinh(newpixel+flip(0.0035/newpixel))
  z = 2.5*tanh(newpixel^3.5)\
      - sin(0.001/newpixel-tan(0.01/newpixel))+conj(0.001/newpixel)+0.135
  c = m + 3*tan(newpixel-flip(0.0035/newpixel))
  d1 = flip(-0.00014756/newpixel) + 0.0001/newpixel
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2377 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  b = conj(0.01/newpixel) + flip(0.1/newpixel)
  z = 1/log(0.2*(newpixel-b)) + (newpixel-b)/3 + (newpixel/2)^8 - 0.1
  c = (-0.7406,-0.122)
  d1 = flip(-0.00030756/newpixel) + 0.0001/newpixel
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2378 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = abs(newpixel) - 0.1
  c = (-0.7456,-0.127)
  d1 = flip(-0.00079756/newpixel) + 0.0001/newpixel
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2379 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = (-0.7806,-0.135)
  z = (newpixel/2)^1.25\
      - 1/(atan(0.1/newpixel) - sqr(acos(0.025/newpixel)))^3 + 0.15
  d1 = flip(-0.00029756/newpixel) + 0.0001/newpixel
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
Carr2380 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = (-0.7906,-0.149), m3 = newpixel*cabs(newpixel^2.33)
  z = m3 - sinh(0.1/newpixel) - sqr(flip(0.0051/newpixel)) - 0.2
  d1 = flip(-0.00045756/newpixel) + 0.0001/newpixel
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
