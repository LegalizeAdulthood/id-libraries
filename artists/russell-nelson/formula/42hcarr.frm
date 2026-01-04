To see examples of images these formulas can create, download
42HCARR.PAR

I can be contacted on CompuServe: 73753,2420 or on America Online:
Genealogy1.

If you have comments or questions please feel free to contact me.

--Bob Carr--

Carr2332{ ;Modified Sylvie Gallet frm.
z = pixel , c = sqr(cos(pixel))-cosh(pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3)
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2333 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = pixel/(tanh(0.3/pixel)) + 0.3
c = pixel
d1 = -0.0003299/pixel + flip(0.00010/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test) + d1
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2334 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = pixel - flip(0.01/pixel) - conj(0.1/pixel) + 0.285
c = conj(flip(sqr(sqr(pixel-conj(0.15/pixel)))))
d1 = -0.0008099/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test) + d1
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2335 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z=c=flip(conj(abs((pixel*pixel)))), th1 = tanh(1)
d1 = -0.0032556/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*th1*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2336 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = c = flip(conj(abs((pixel*pixel)))) + 0.4,
d1 = -0.0030556/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*flip(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2337 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
c = pixel + pixel - flip(0.001/pixel) - conj(0.01/pixel)
z = pixel - conj(asin(pixel+pixel+0.32))
d1 = -0.00033556/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2338 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = flip(conj(abs((pixel))))
c = 3*z - 0.8
d1 = -0.00003556/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2339 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
m = conj(0.1/pixel) + flip(0.01/pixel)
z = c = pixel - m
d1 = -0.0004056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2340 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = c = conj(pixel*pixel) / flip(1-pixel)
d1 = -0.0008056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2341 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = c = (1+1.5/pixel)/(cosxx(2/pixel-0.25))
d1 = -0.0008056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2342 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = c = conj(1+0.5*pixel) / (cos(2/pixel-0.25)) - 0.275
d1 = -0.0010056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2343 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = c = pixel - flip(sin(0.1/pixel)) - conj(sin(0.01/pixel)) - 0.3
d1 = -0.0013056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2344 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = c = (0.33-cos(pixel))/(0.33-tan(2*pixel)) + 0.5
d1 = -0.00039056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2345 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = c = flip(conj(cabs((pixel))))
d1 = -0.00089056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2346 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
c = (-0.3,0.3) , z = flip(conj(cabs((pixel+pixel))))
d1 = -0.00049056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2347 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = flip(conj(cabs((pixel+pixel))))
c = pixel - conj(0.01/pixel) - flip(0.1/pixel)
d1 = -0.00046056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2348 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = conj(flip(pixel)-sinh(2*pixel)) - 0.4,
c = conj(pixel) - tan(flip(1.4*pixel+0.2))
d1 = -0.00046056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2349 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = c = tanh(pixel) - 5*pixel*((0.3,0.6)+pixel)
d1 = -0.00046056/pixel + flip(0.0001/pixel) , sh1 = sinh(1)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*sh1*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2350 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
m = pixel^2.18 + conj(0.13/pixel) + flip(0.02/pixel) + tanh(0.01/pixel)
z = c = pixel + m
d1 = -0.00028056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2351 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
m = conj(0.013/pixel) + flip(0.002/pixel) + tanh(0.001/pixel)
z = pixel + pixel^2.18 + m^6 - 0.5
c = cabs(sqr(2*pixel-m))
d1 = -0.00039056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2352 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
m = conj(0.013/pixel) + flip(0.002/pixel) + tanh(0.001/pixel)
c = pixel + pixel^2.18 + m^6 - 0.45
z = cabs(sqr(3.5*pixel/1.5-m))
d1 = -0.00034056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2353 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
m1 = 1/pixel , m = conj(m1) , m2 = 0.125*pixel + cabs(pixel^4.9) + 0.23
z = m2 - tanh(pixel/3)^2 - conj(sinh(pixel^2.3)) + sqr(sqr(0.5*m/m1))
c = z/3.3
d1 = -0.00038056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1.5-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2354 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
m1 = 1/pixel , m = flip(m1) , m2 = pixel + cabs(pixel^4.9) + 0.09
c = m2 - sinh(pixel/3)^2 - conj(sinh(pixel^1.7)) + sqr(sqr(m/(2.4*m1)))
z=conj(conj(c))-(conj(0.01/pixel)+flip(0.001/pixel)),
d1 = -0.00020056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1.5-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2355 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = sqr(sqr(conj(pixel))) - conj(0.05/pixel) - flip(0.029/pixel) - 0.25
c = sqr(sqr(flip(pixel))) - conj(0.02/pixel) - flip(0.02/pixel) - 0.15
d1 = -0.00035056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1.5-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2356 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
m1 = 1/pixel , m = conj(m1)
m2 = sqr(sqr(1.125*pixel + cabs(pixel^4.9))) - 0.3
z = c = m2 - tanh(pixel)^2 - conj(tan(pixel^4.3)) + sqr(cos(m/6)/sin(m1/4))
d1 = -0.00035056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1.5-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2357 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
m1 = 1/pixel , m = conj(m1)
m2 = sqr(sqr(1.125*pixel + cabs(pixel^4.9))) - 0.3
z = c = m2 - tanh(pixel)^2 - conj(tan(pixel^4.3)) + sqr(cos(m/6)/sin(m1/4))
d1 = -0.00035056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2358 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
m1 = 1/pixel , m = conj(m1)
m2 = sqr(sqr(1.125*pixel + cabs(pixel^4.9))) - 0.3
z = m2 - tanh(pixel)^2 - conj(tan(pixel^4.3)) + sqr(cos(m/6)/sin(m1/4))
c = m2 - sinh(pixel)*2 - flip(sin(pixel^4.3)) + sqr(cotan(m/6)/flip(m1/4))
d1 = -0.00035056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2359 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
m1 = 1/pixel , m = conj(m1)
m2 = sqr(sqr(1.125*pixel + cabs(pixel^4.9))) - 0.6
m3 = sqr(cotan(m/6)/flip(m1/4))
z = c = 1.6*m2 - sinh(pixel/3.3)*2.3 - flip(imag(pixel^4.3)) + m3 - 0.2
d1 = -0.00035056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2360 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
m1 = 1/pixel , m = conj(m1)
m2 = sqr(sqr(1.125*pixel + abs(pixel^4.9))) - 0.6
m3 = sqr(tan(m/6)/conj(m1/4)) + 0.4
z = c = 1.6*m2/0.67 - sqr(pixel/0.75)*2.3 - sinh(tanh(pixel/3)) + m3
d1 = -0.00035056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2361 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
m = conj(0.1/pixel) + 0.135
z = c = 3.5*pixel^5 - sinh(0.001/pixel-tan(0.01/pixel)) + m
d1 = -0.00095056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2362 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = pixel^5 - tanh(0.01/pixel)
c = 3.5*pixel^10 - sinh(0.001/pixel-tan(0.01/pixel)) + 0.135
d1 = -0.00045056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2363 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = cabs(pixel)
c = cabs(3.5*pixel^10) - sinh(0.001/pixel-tan(0.01/pixel)) + 0.135
d1 = -0.00045056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2364 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = cabs(pixel)^5
c = cabs(3.5*pixel^10) - sinh(0.001/pixel-tan(0.01/pixel))
d1 = -0.00045056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2365 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = c = sinh(pixel^2) - cabs(4*pixel-conj(1/(pixel*150))-flip(0.001/pixel))
d1 = -0.00075056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2366 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = tanh(pixel) - cabs(pixel/1.3-conj(0.01/pixel)-flip(0.001/pixel))
c = sinh(pixel/2) - cabs(pixel-conj(1/(pixel*15))-flip(0.001/pixel)) + 0.3
d1 = -0.00095056/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2367 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
j = 2*pixel
z = conj(pixel/5.6) - j + conj(0.01/pixel) + flip(0.001/pixel)
c = cabs(2*pixel - conj(0.01/pixel) - flip(conj(0.001/pixel)))
d1 = -0.00015956/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2368 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
j = 2*pixel
z = sqr(flip(pixel/5.6) - j + conj(0.01/pixel) + flip(0.001/pixel))
c = sqr(cabs(2*pixel - conj(0.01/pixel) - flip(conj(0.001/pixel))))
d1 = -0.00009956/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2369 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
c = sqr(cabs(pixel+pixel)-1/log(pixel-1/tan(0.001/pixel))^3.8)-0.2
z = pixel + cabs(cabs(0.5*pixel))
d1 = -0.00002956/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2370 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
c = sqr(cabs(pixel/1.3+sinh(pixel))-1/sqrt(pixel-1/tan(0.001/pixel))^3.8)-0.2,
z = c + cosxx(c/1.8)
d1 = -0.00002956/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2371 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
m = conj(tanh(conj(sinh(pixel+flip(0.0035/pixel)))))
c = cabs(pixel+flip(0.0055/pixel)) - 1/log(pixel-1/tan(0.001/pixel))^4.8
z = 2*m + pixel - flip(0.0035/pixel)
d1 = -0.00015956/pixel + flip(0.0001/pixel)
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2372 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
m = conj(tanh(conj(sinh(pixel/3+flip(0.0035/pixel)))))
c = sin(conj(-0.485,-0.0959))
z = flip(m) + 4*pixel + flip(0.0535/pixel) + 0.3
d1 = flip(-0.00005156/pixel) + 0.0001/pixel
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2373 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = 4*pixel/tan(0.125/pixel)+0.3
c = tanh(-0.695,0.0959)
d1 = flip(-0.00003356/pixel) + 0.0001/pixel
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2374 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = cabs((pixel-flip(0.001/pixel)-conj(0.01/pixel)))
c = cabs(sqr(sqr(pixel-conj(0.1/pixel))))
d1 = flip(-0.00006756/pixel) + 0.0001/pixel
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2375 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = ((conj(pixel/2.5)+flip(0.001/pixel)+conj(0.01/pixel))),
c = abs(sqr(sqr(pixel/1.25)))
d1 = flip(-0.00007756/pixel) + 0.00010/pixel
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2376 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
m = sinh(pixel+flip(0.0035/pixel))
z = 2.5*tanh(pixel^3.5) - sin(0.001/pixel-tan(0.01/pixel))+conj(0.001/pixel)+0.135,
c = m + 3*tan(pixel-flip(0.0035/pixel))
d1 = flip(-0.00014756/pixel) + 0.0001/pixel
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2377 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
b = conj(0.01/pixel) + flip(0.1/pixel)
z = 1/log(0.2*(pixel-b)) + (pixel-b)/3 + (pixel/2)^8 - 0.1
c = (-0.7406,-0.122)
d1 = flip(-0.00030756/pixel) + 0.0001/pixel
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2378 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = abs(pixel) - 0.1
c = (-0.7456,-0.127)
d1 = flip(-0.00079756/pixel) + 0.0001/pixel
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2379 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
c = (-0.7806,-0.135)
z = (pixel/2)^1.25 - 1/(atan(0.1/pixel) - sqr(acos(0.025/pixel)))^3 + 0.15
d1 = flip(-0.00029756/pixel) + 0.0001/pixel
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}

Carr2380 (YAXIS) { ;Modified Sylvie Gallet frm.
pixel = -abs(real(pixel)) + flip(imag(pixel))
c = (-0.7906,-0.149) , m3 = pixel*cabs(pixel^2.33)
z = m3 - sinh(0.1/pixel) - sqr(flip(0.0051/pixel)) - 0.2
d1 = flip(-0.00045756/pixel) + 0.0001/pixel
iter = 0 , nextzoom = iterspace = real(p1) :
test = iter==nextzoom
nextzoom = nextzoom + test*iterspace
z = z*(1-test)
c = c*(1-test) + test*(p2*c+p3) + d1
z = z*z + c
iter = iter + 1
|z| <= 16
}
