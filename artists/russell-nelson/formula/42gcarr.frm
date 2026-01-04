To see examples of images these formulas can create, download
42GCARR.PAR

I can be contacted on CompuServe: 73753,2420 or on America Online:
Genealogy1.

If you have comments or questions please feel free to contact me.

--Bob Carr--


}

Carr2287 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z=pixel/(tanh(0.3/pixel)) , c=pixel
d1 = 0.0009235/pixel , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2288 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = c = pixel-asin(pixel)
d1 = conj(0.0038935/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2289 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
c=(pixel)+(pixel-flip(0.001/pixel)-conj(0.01/pixel))
z=(pixel-conj(asin(pixel+pixel+0.32))),
d1 = flip(-0.0005935/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2290 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
c=(pixel)+(pixel-flip(0.001/pixel)-conj(0.01/pixel))
z=((pixel)-conj(asin(pixel+pixel+0.39))),
d1 = conj(0.0003775/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2291 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z=c=(0.33-cos(pixel))/(0.33-tan(2*pixel))+0.5
d1 = cabs(0.0005955/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2292 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z=c=conj(0.33-cos(pixel))/(0.33-tan(2*pixel))+0.5
d1 = cabs(0.0010055/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2293 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z=c=sinh(tanh(0.63-cos(pixel)))/(conj(2*pixel+0.6))
d1 = abs(0.0010055/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2294 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z=c=flip(conj(abs((pixel*pixel)))),
d1 = real(0.0016055/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c-c/25,
iter = iter + 1
|real(z)| <= bailout
}

Carr2295 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = pixel , c = (-0.3,0.3)
d1 = flip(0.0014355/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2296 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = c = pixel-conj(0.01/pixel)-flip(0.1/pixel),
d1 = 0.0015355/pixel , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2297 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
j = (1-pixel)^1.8/flip(asinh(pixel))
z = c = pixel/j-conj(0.01/pixel)-flip(0.1/pixel),
d1 = flip(0.1095355/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2298 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = conj(flip(pixel)-sinh(2*pixel))-0.3
c = conj(pixel)-tan(flip(1.4*pixel+0.2))
d1 = flip(0.0007355/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2299 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z=c=tanh(pixel)-(((0.3,0.6)+pixel)/(0.2/pixel)),
d1 = real(0.0009055/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2300 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = c = flip(0.8*pixel) - 5*((0.3,0.6)+pixel)*pixel
d1 = real(0.0009055/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2301 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = c = flip(0.65*pixel) - 5*((0.3,0.6)+pixel)*pixel + conj(0.065/pixel)
d1 = real(0.0009055/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2302 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z=pixel*sqr(pixel)-conj(0.01/pixel)-flip(0.015/pixel),
c = (-0.6256,-0.090) , q = pixel/4.375
d1 = 0.0007155/pixel , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z^2.3 + c - q
iter = iter + 1
|real(z)| <= bailout
}

Carr2303 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z=pixel+(pixel^2.18)+conj(0.13/pixel)+flip(0.02/pixel)+tanh(0.01/pixel),
c=(-0.6256,-0.490),
d1 =0.0003055/pixel , d7 = 7*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d7
z = z*t , c = c*t + ct
z=z^2.3+c,
iter = iter + 1
|real(z)| <= bailout
}

Carr2304 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = sqr(sqr(conj(pixel))) - conj(0.05/pixel) - flip(0.029/pixel)
c = sqr(sqr(flip(pixel))) - conj(0.02/pixel) - flip(0.02/pixel)
d1 = -tanh(0.0014095/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2305 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = sqr(sqr(conj(pixel))) - conj(0.05/pixel) - flip(0.029/pixel)
c = sqr(sqr(flip(pixel))) + conj(0.02/pixel) + flip(0.02/pixel)
d1 = sinh(conj(0.0014095/pixel-flip(0.001/pixel))) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2306 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = pixel^2.8 - conj(pixel/5) , c = (-0.7456,0.18)
d1 = sinh(conj(0.0005095/pixel-flip(0.001/pixel))) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2307 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = c = pixel + pixel + 1.5/log(pixel)
d1 = sinh(conj(0.0004295/pixel-cabs(0.0001/pixel))) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2308 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = pixel + pixel^2.5 ;;; - flip(pixel)^2 - conj(pixel^2)
                      ;;;  flip(pixel)^2 + conj(pixel^2) == 0 !!!
c = sin(-0.82456,0.189)
d1 = -0.0002395/pixel + tanh(0.0001/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2309 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = 0.25*pixel + cabs(pixel^2.5) - tan(pixel)^2 - conj(pixel^2)
c = sin(-0.87646,0.189)
d1 = -0.0003095/pixel + tanh(0.0001/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2310 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
m1 = 1/pixel , m = conj(m1) , m2 = 0.125*pixel + cabs(pixel^4.9)
z = m2 - tanh(pixel/3)^2 - conj(sinh(pixel^2.3)) + sqr(m/(1.5*m1))
c = sin(-0.87446,0.189)
d1 =-0.0003495/pixel + tanh(0.0001/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2311 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
m1 = 1/pixel , m = conj(m1) , m2 = sqr(sqr(0.125*pixel + cabs(pixel^4.9)))
z = m2 - tanh(pixel/3)^2 - conj(tan(pixel^4.3)) + sqr(m/(1.5*m1))
c = sin(-0.87446,0.189)
d1 = -0.0003495/pixel + tanh(0.0001/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2312 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
m1 = 1/pixel , m = conj(m1)
m2 = sqr(sqr(1.125*pixel + cabs(pixel^4.9))) - 0.6
z = m2 - tanh(pixel)^2 - conj(tan(pixel^4.3)) + sqr(cos(m/6)/sin(m1/4))
c = sin(-0.88946,0.219)
d1 = -0.0003495/pixel + conj(0.0001/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2313 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
m1 = 1/pixel , m = conj(m1)
z = conj(abs(tan(pixel*pixel))) + 0.25*m + m1/6
c = sin(-0.8556,0.1728)
d1 = -0.0005395/pixel + conj(0.0001/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2314 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
m1 = 1/pixel , m = conj(m1)
z = (0.25-pixel) / ((m+m1) * sqr(tan(1.5/pixel)))
c = sin(-0.7956,0.297)
d1 = -0.0005395/pixel + conj(0.0001/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2315 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
c = pixel + pixel - 1/log(pixel+log(100*pixel))
z = sqr(0.9*pixel) - conj(0.01/pixel) - flip(0.001/pixel)
d1 = -0.00039795/pixel + conj(0.0001/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z=(z-0.25*c)*t + ct , c = c*t + ct
z=z^2.4+c,
iter = iter + 1
|real(z)| <= bailout
}

Carr2316 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
c = sin(pixel)*sqr(pixel) - conj(0.1/pixel) - flip(0.01/pixel) - 0.05
z = 0.5*pixel
d1 = -0.0010913/pixel + conj(0.0001/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2317 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
b = 0.01/pixel , b2 = sqr(b)
z = 3.5*pixel^5 - sinh(0.1*b-tan(b)) + conj(10*b) + 0.135
c = sin(-0.515,0.4099)
d1 = tanh(tanh(0.0008013/-pixel+conj(0.0001/pixel))) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+b2)*t + ct , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2318 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
r = 17*pixel/24
z=c=(2*pixel^4)-r-sin(0.8*pixel-flip(0.01/pixel))+conj(0.1275/pixel)+0.117,
d1=tanh(tanh(0.0003913/-pixel+conj(0.0001/pixel))) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c+sinh(z/2),
iter = iter + 1
|real(z)| <= bailout
}

Carr2319 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z = flip(abs(sin(pixel))) - pixel + conj(0.035/pixel) - flip(0.001/pixel)
c = 4.25*pixel - conj(0.01/pixel - flip(0.001/pixel))
d1 = tanh(tanh(0.00021217/-pixel+conj(0.0001/pixel))) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c + flip(z)
iter = iter + 1
|real(z)| <= bailout
}

Carr2320 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
r = conj(tanh(pixel/5+pixel/7))
z = c = 2*pixel^7-r-sin(0.0001/pixel-flip(0.009/pixel))+conj(0.1873/pixel)+0.117,
d1 = tanh(tanh(0.00084217/-pixel+conj(0.0001/pixel))) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z^1.9 + c + flip(z/1.9)
iter = iter + 1
|real(z)| <= bailout
}

Carr2321 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
r = sinh(pixel/5+pixel/7)
z=c=(3*pixel)^5+r-flip(sqr(pixel)-conj(0.01/pixel)+flip(0.01/pixel))-0.25,
d1 = -0.00035217/pixel + flip(0.0001/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z^1.9 + c + flip(z/1.9)
iter = iter + 1
|real(z)| <= bailout
}

Carr2322 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
c = 0.2*pixel/(conj(0.073*pixel-cos(1/pixel)-conj(1/pixel)))
z = pixel - conj(0.1/pixel) - flip(0.01/pixel)
d1 = -0.00030217/pixel + flip(0.0001/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c + tan(0.5*z)
iter = iter + 1
|real(z)| <= bailout
}

Carr2323 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
c = sqr(0.1*pixel/(conj(0.009*pixel-cos(1/pixel)-conj(1/pixel))))
z = pixel - conj(0.1/pixel) - flip(0.01/pixel)
d1 = -0.00030217/pixel + flip(0.0001/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c + tan(0.5*z)
iter = iter + 1
|real(z)| <= bailout
}

Carr2324 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
z=c=tan(pixel+pixel)/(flip(1/pixel)-conj(1/pixel))+0.2,
d1 = -0.00230217/pixel + flip(0.0001/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c + sinh(0.25*z)
iter = iter + 1
|real(z)| <= bailout
}

Carr2325 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
c = sqr(0.1*pixel/(conj(0.009*pixel-cos(1/pixel)-conj(1/pixel))))
z = sqr(conj(pixel+pixel))/(conj(1.5/pixel)-flip(4/pixel)),
d1 = -0.00064217/pixel + flip(0.0001/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z = z*z + c + sinh(0.25*z)
iter = iter + 1
|real(z)| <= bailout
}

Carr2326 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
c = sqr(0.1*pixel/(conj(0.009*pixel-cos(1/pixel)-conj(1/pixel))))-0.15
z = sin(43*pixel/60)/(sin(1.5/pixel) - conj(0.1/pixel)) - 0.55
d1 = -0.00149917/pixel + flip(0.0001/pixel) , d5 = 5*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
z5 = 7.59375*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2) , l5 = 300
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4 , t5 = iter==l5
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + d5
z = z*t + ct , c = c*t + ct
z = z^2.2 + c + sinh(0.25*z)
iter = iter + 1
|real(z)| <= bailout
}

Carr2327 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
c = sqr(0.1*pixel/conj(0.009*pixel-cos(1/pixel)-conj(1/pixel)))-0.35,
z = abs(pixel*8)/(sqr(2*pixel)-flip(5/pixel)+1/pixel+conj(1/pixel))-0.15
d1 = -0.00499917/pixel + flip(0.0001/pixel) , d5 = 5*d1
z1 = z+d1 , z2 = 1.5*z+d1 , z3 = 2.25*z+d1 , z4 = 3.375*z+d1 , z5 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2) , l5 = 300
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4 , t5 = iter==l5
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + d5
z = z*t + ct , c = c*t + ct
z = z*z + c + sinh(0.25*z)
iter = iter + 1
|real(z)| <= bailout
}

Carr2328 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel)) , th1 = tanh(1)
z = pixel - flip(0.01/pixel)-conj(0.1/pixel) + 0.285
c = conj(flip(sqr(sqr(pixel-conj(0.15/pixel)))))
d1 = -0.0013899/pixel + flip(0.0001/pixel) , d5 = 5*d1 , d2 = 2*d1
z1 = z+d1 , z2 = 1.5*z+d1 , z3 = 2.25*z+d1 , z4 = 3.375*z+d1 , z5 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2) , l5 = 300
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4 , t5 = iter==l5
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + d5
z = z*th1*t + ct - d2 , c = c*t + ct
z = z*z + c + sinh(0.25*z)
iter = iter + 1
|real(z)| <= bailout
}

Carr2329 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
m = sin(pixel) + sinh(pixel) + cabs(pixel) + conj(pixel)
z = m + flip(pixel) , c = 2*pixel
d1 = -0.0005045/pixel + tanh(0.0001/pixel) , d5 = 5*d1 , d2 = 2*d1
z1 = z+d1 , z2 = 1.5*z+d1 , z3 = 2.25*z+d1 , z4 = 3.375*z+d1 , z5 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2) , l5 = 300
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4 , t5 = iter==l5
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + d5
z = z*t + ct - d2 , c = c*t + ct
z = z*z + c
iter = iter + 1
|real(z)| <= bailout
}

Carr2330 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
m = tan(pixel) - tanh(pixel)
z = 2*m + flip(pixel) , c = (-0.7,0.2)
d1 = -0.0003545/pixel + tanh(0.0001/pixel) , d5 = 5*d1 , d2 = 2*d1
z1 = z+d1 , z2 = 1.5*z+d1 , z3 = 2.25*z+d1 , z4 = 3.375*z+d1 , z5 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2) , l5 = 300
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4 , t5 = iter==l5
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + d5
z = z*t + ct - d2 , c = c*t + ct
z = z^2.45 + c + sinh(z/6)
iter = iter + 1
|real(z)| <= bailout
}

Carr2331 (YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel = -abs(real(pixel)) + flip(imag(pixel))
m = sqr(cosh(pixel)) - sqr(cos(pixel))
z = 2*m + flip(pixel) , c = (-0.7,0.2)
d1 = -0.0003545/pixel + tanh(0.0001/pixel) , d5 = 5*d1 , d2 = 2*d1
z1 = z+d1 , z2 = 1.5*z+d1 , z3 = 2.25*z+d1 , z4 = 3.375*z+d1 , z5 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2) , l5 = 300
bailout = 16 , iter = 0 :
t1 = iter==l1 , t2 = iter==l2 , t3 = iter==l3 , t4 = iter==l4 , t5 = iter==l5
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + d5
z = z*t + ct - d2 , c = c*t + ct
z = z^2.45 + c + sinh(z/6)
iter = iter + 1
|real(z)| <= bailout
}
