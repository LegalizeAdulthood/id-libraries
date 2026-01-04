To see examples of images these formulas can create, download
42FCARR.PAR

I can be contacted on CompuServe: 73753,2420 or on America Online:
Genealogy1.

If you have comments or questions please feel free to contact me.

--Bob Carr--



}

Carr2257(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = conj(pixel/2) , p5 = 0.1*r+pixel/30
z=c=(3.5*pixel^5)-r-sin(0.08-flip(0.01/pixel))+conj(0.0535/pixel)+0.097,
d1 = conj(0.00044550/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+0.1*c)*t + ct , c = c*t + ct
z = z*z + 0.96*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2258(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = flip(pixel/4+pixel/3) , p5 = 0.1*r-pixel/30
z=c=(2*pixel^4)-r-sin(0.8*pixel-flip(0.01/pixel))+conj(0.1275/pixel)+0.117,
d1 = conj(0.00044550/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+0.1*c)*t + ct , c = c*t + ct
z = z*z + 0.96*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2259(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = tanh(pixel/5+pixel/7) , p5 = 0.1*r-pixel/30
z=c=(2*pixel^7)-conj(r)-sin(0.0001/pixel-flip(0.009/pixel))+conj(0.1873/pixel)+0.117,
d1 = conj(0.00044550/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+0.1*c)*t + ct , c = c*t + ct
z = z*z + 0.96*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2260(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = tanh(pixel/5+pixel/7) , p5 = 0.025*(r-pixel)
z=c=(3*pixel)^10+r-flip(sqr(pixel)-conj(0.010/pixel)-flip(0.010/-pixel))-0.25,
d1 = conj(0.00044550/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+0.1*c)*t + ct , c = c*t + ct
z = z*z + 0.975*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2261(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*8 , p5 = 0.175*pixel
z=c=sinh(pixel)-1/log(4*pixel-conj(0.01/pixel/1.5)-flip(0.0010/pixel)+0.6/r),
d1=(conj(0.00199550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+0.1*c)*t + ct , c = c*t + ct
z = z*z + 0.975*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2262(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*8 , p5 = r/13.5 - 0.1*pixel
z=c=sinh(pixel)-1/log(4*flip(pixel)-conj(0.01/pixel)-flip(0.0010/pixel)+4.6/r),
d1 = conj(0.00199550/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+0.1*c)*t + ct , c = c*t + ct
z = z*z + 0.9*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2263(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = 8*pixel , j =  pixel , p5 = 0.7*pixel
z=c=sinh(pixel)-1/log(2*j+0.0450/j-conj(0.010/-pixel)-flip(0.050/pixel)+4.6/r),
d1 = conj(0.00129550/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+0.1*c)*t + ct , c = c*t + ct
z = z*z + 0.9*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2264(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*8 , j = 2*pixel , p5 = 0.45*pixel
z=c=sinh(pixel)-1/sqrt(j+0.3550/j-conj(0.010/pixel)-flip(0.0250/pixel)+2/r),
d1=(conj(0.00044550/pixel)) , d4 = 4*d1
z1=c1=(1.5*z+d1),z2=c2=(2.25*z+d1),z3=c3=(3.375*z+d1),z4=c4=(5.0625*z+d1),
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+0.125*c)*t + ct , c = c*t + ct
z = z*z + 0.95*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2265(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*8 , j = pixel , p5 = 0.45*pixel
z=c=tanh(pixel+pixel/0.9)-1/sqrt(j+0.3550/j-conj(0.010/pixel)-flip(0.0250/pixel)+2/r),
d1 = conj(0.00044550/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+0.125*c)*t + ct , c = c*t + ct
z = z*z + 0.95*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2266(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*8 , j = 2*pixel , p5 = 0.45*pixel
z=tanh(4.33*pixel)-1/sqrt(j+0.3550/j-conj(0.030/pixel)-flip(0.0550/pixel)+2/r),
c=2*pixel+(-0.099,-0.2249)
d1 = conj(0.00044550/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+0.125*c)*t + ct , c = c*t + ct
z = z*z + 0.95*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2267(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*8 , j = flip(3.5*pixel-0.5)+conj(pixel-0.6) , p5 = 0.45*pixel
z=tanh(pixel)-1/sqrt(j+0.5550/j-conj(0.030/pixel)-flip(0.0550/pixel)+2/r),
c=2*pixel+(-0.099,-0.2249)
d1 = conj(0.00044550/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+0.125*c)*t + ct , c = c*t + ct
z = z*z + 0.95*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2268(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*8 , j = flip(3.5*pixel-0.9)+conj(pixel-0.9) , p5 = 0.18*pixel
z=tanh(2*pixel)-1/sqrt(j+0.5550/j-conj(0.030/pixel)-flip(0.0550/pixel)+2/r),
c=2*pixel+(-0.099,-0.2249)
d1 = conj(0.00039550/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+0.125*c)*t + ct , c = c*t + ct
z = z*z + 0.98*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2269(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*8 , j = flip(3.5*pixel-0.9)+conj(pixel-0.9) , p5 = 0.18*pixel
z=conj(flip(2*pixel))-1/sqrt(j+0.5550/j-conj(0.030/pixel)-flip(0.0550/pixel)+2/r),
c=2*pixel+(-0.099,-0.2249)
d1 = conj(0.00039550/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+0.125*c)*t + ct , c = c*t + ct
z = z*z + 0.98*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2270(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*4 , j = flip(3.5*pixel-0.9)+conj(pixel-0.9) , p5 = pixel/6
c=conj(flip(2*pixel))-1/sqrt(j+0.5550/j-conj(0.030/pixel)-flip(0.0550/pixel)+2/r),
z = 2*conj(pixel+0.15)
d1 = conj(0.00110550/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+0.125*c)*t + ct , c = c*t + ct
z = z*z + c-c/30 - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2271(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*8 , j = sin(sinh(sin(pixel)))+tan(tanh(tan(pixel))),
z = 2*conj(pixel) , p5 = 0.225*pixel
c = z-(j-conj(0.010/pixel)-flip(0.0010/pixel)),
d1 = conj(0.00110550/pixel)  , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+0.125*c)*t + ct , c = c*t + ct
z = z*z + 0.975*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2272(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*8 ,j=conj(sinh(sin(pixel)))+flip(tanh(tan(pixel))),
c=conj(2*pixel)-(j-conj(0.010/pixel)-flip(0.0010/pixel)),
z=1/log(2*conj(pixel+0.2)) , p5 = 0.3*pixel
d1 = conj(0.00080550/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+0.125*c)*t + ct , c = c*t + ct
z = z*z + c-c/30 - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2273(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*8 ,j=conj(sinh(sin(pixel)))+flip(tanh(tan(pixel))),
z=conj(2*pixel)-(j-conj(0.010/pixel)-flip(0.0010/pixel)),
c=1/(2*pixel-(conj(0.10/pixel)+flip(conj(0.010/pixel)))^4),
d1 = conj(0.00029550/pixel) , d4 = 4*d1 , p5 = 0.3*pixel
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z-0.1*c)*t + ct , c = c*t + ct
z = z*z + c-c/30 - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2274(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*8 ,j=1.8*pixel , p5 = 0.225*pixel
z=conj(2*pixel)-(j-conj(0.010/pixel)-flip(0.0010/pixel)),
c=1/(2*pixel-(conj(0.10/pixel)+flip(conj(0.010/pixel)))^4.1),
d1 = conj(0.00029550/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z-0.125*c)*t + ct , c = c*t + ct
z = z*z + 0.975*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2275(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*8 ,j=flip(3.8*pixel) , p5 = 0.3*pixel
z=(1.8*pixel)-(j/6-conj(0.010/pixel)-flip(0.0010/pixel)),
c = (0.4,0.2) + pixel + conj(pixel) + flip(pixel)
d1 = conj(0.00059550/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z=(z-c/6)*t + ct , c = c*t + ct
z = z*z + c-c/30 - p5,
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2276(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*8 , p5 = 0.225*pixel
c=(pixel+pixel)-1/log(pixel-1/tan(0.001/pixel))^3.8,
z = pixel+conj(flip(pixel))+flip(tanh(pixel)),
d1 = conj(0.00060350/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z=(z-c/6)*t + ct , c = c*t + ct
z = z*z + 0.975*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2277(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*8 , p5 = 0.225*pixel
c=(pixel+pixel)-1/log(pixel-1/tan(0.001/pixel))^3.8,
z = pixel+conj(flip(pixel))+flip(tanh(conj(sinh(pixel)))),
d1 = conj(0.00060350/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z=(z-c/6)*t + ct , c = c*t + ct
z = z*z + 0.975*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2278(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)) , p0 = 0.2*pixel
r = pixel*8 ,m=conj(tanh(conj(sinh(pixel+flip(0.0035/pixel))))),
c=(6*pixel+flip(0.0055/pixel))-1/log(pixel-1/tan(0.001/pixel))^4.8,
z=2*(m)+3*pixel-flip(0.0035/pixel) , p5 = r/30 + 0.025*pixel
d1 = 0.00034150/pixel , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
z6 = z4^6 , bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3  + d4
z = (z-p0)*t + z4*t4 + ct , c = c*t + z6*t4 + ct
z = z*z + 0.975*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2279(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)) , p0 = 0.2*pixel
r = pixel*8 ,m=conj(tanh(conj(sinh(pixel+flip(0.0035/pixel))))),
c=sin(conj(-0.515,-0.0959)) , p5 = 0.225*pixel
z=2*(m)+3*pixel-flip(0.0035/pixel),
d1 = imag(0.00145150/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
z6 = z4^6 , bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + d4
z = (z-p0)*t + z4*t4 + ct , c = c*t + z6*t4 + ct
z = z*z + 0.975*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2280(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)) , p0 = 0.2*pixel
r = pixel*8 ,m=conj(tanh(conj(sinh(pixel+flip(0.0035/pixel))))),
c=(6*pixel+flip(0.0055/pixel))-1/log(pixel-1/tan(0.001/pixel))^4.8,
z=2*(m)+3*pixel-flip(0.0035/pixel) , p5 = 0.225*pixel
d1 = imag(0.00025150/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
z6 = z4^6 , bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + d4
z = (z-p0)*t + z4*t4 + ct , c = c*t + z6*t4 + ct
z = z*z + 0.975*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2281(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*8 ,m=conj(tanh(conj(sinh(pixel+flip(0.0035/pixel))))),
z=(3.5*pixel^5)-sin(0.001/pixel-tan(0.01/pixel))+conj(0.0010/pixel)+0.135,
c=2*(m)+3*pixel-flip(0.0035/pixel) , p5 = 0.36*pixel
d1 = imag(0.00056150/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
z6 = z4^6 , bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + d4
z = (z-0.125*c)*t + z4*t4 + ct , c = c*t + z6*t4 + ct
z = z*z + 0.96*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2282(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*8 ,m=conj(tanh(conj(sinh(pixel+flip(0.0035/pixel))))),
z=(2.5*pixel^3.5)-sin(0.001/pixel-tan(0.01/pixel))+conj(0.0010/pixel)+0.135,
c=(m)+3*conj(pixel-flip(0.0035/pixel)) , p5 = 0.36*pixel
d1 = imag(0.00062350/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
z6 = z4^6 , bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + d4
z = (z-0.125*c)*t + z4*t4 + ct , c = c*t + z6*t4 + ct
z = z*z + 0.96*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2283(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*8 ,m = sinh(pixel+flip(0.0035/pixel)),
z=(2.5*tanh(pixel^3.5))-sin(0.001/pixel-tan(0.01/pixel))+conj(0.0010/pixel)+0.135,
c=(m)+3*tan(pixel-flip(0.0035/pixel)) , p5 = 0.36*pixel
d1 = tan(abs(sinh(imag(0.00062350/pixel)))) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + d4
z = (z-0.125*c)*t + z4*t4 + ct , c = c*t + z6*t4 + ct
z = z*z + 0.96*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2284(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*8 ,m=(flip(pixel/4+pixel/3)) , p5 = 0.36*pixel
z=(2*pixel^4)-m-sin(0.8*pixel-flip(0.01/pixel))+conj(0.1275/pixel)-0.3,
c=(4*pixel^4)-m-sin(pixel-flip(0.01/pixel))+conj(0.1275/pixel)-0.3,
d1 = tan(abs(sinh(imag(0.00152350/pixel)))) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z-0.125*c)*t + ct , c = c*t + ct
z = z*z + 0.96*c - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2285(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*8 ,m=(flip(pixel/4+pixel/5)) , p5 = (r+pixel)/35
z=conj(2*pixel^4)-m-sin(0.8*pixel-flip(0.01/pixel))+conj(0.1275/pixel)-0.3,
c=flip(4*pixel^4)-m-sin(pixel-flip(0.01/pixel))+conj(0.1275/pixel)-0.3,
d1 = tan(abs(sinh(imag(0.00192350/pixel)))) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z-0.125*c)*t + ct , c = c*t + ct
z = z*z + c-c/35 - p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2286(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel*8 ,m=(flip(pixel/4+pixel/5)) , p5 = (r+pixel)/35
z=conj(conj(2*pixel^4))-m-sin(0.8*pixel-flip(0.01/pixel))+conj(0.1275/pixel)-0.3,
c=conj(flip(4*pixel^4))-m-sin(pixel-flip(0.02/pixel))+conj(0.01275/pixel)-0.5,
d1 = conj(0.00192350/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1,
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1 - (t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z-0.125*c)*t + ct , c = c*t + ct
z = z*z + c-c/35 - p5
iter=iter+1,
(|real(z)|) <= bailout
}
