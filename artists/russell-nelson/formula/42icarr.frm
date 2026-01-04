To see examples of images these formulas can create, download
42ICARR.PAR

I can be contacted on CompuServe: 73753,2420 or on America Online:
Genealogy1.

If you have comments or questions please feel free to contact me.

--Bob Carr--
}

Carr2381(YAXIS){;Modified Sylvie Gallet frm.
pixel=-abs(real(pixel))+flip(imag(pixel)),
m3=cabs(pixel+0.5)*conj(conj(pixel^7))
z=(m3-conj(0.10/pixel)-sqr(flip(0.00510/pixel)))-0.25,
c=(-1.099,-0.0049)/2,
d1=(0.00075756/-pixel)+(flip(0.00010/pixel)),
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test), 
c=c*(1-test)+flip(d1)+test*(p2*c+p3)
z=z^2+c,
iter=iter+1
|z|<=16
}

Carr2382(YAXIS){;Modified Sylvie Gallet frm.
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=(-0.8006,-0.1645)
z=(flip(flip(pixel))^6-1/(atan(1/pixel)-cabs(acos(2/pixel)))^6)-0.09,
d1=(0.00060756/-pixel)+(flip(0.00010/pixel)),
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test), 
c=c*(1-test)+flip(d1)+test*(p2*c+p3)
z=z^2+c,
iter=iter+1
|z|<=16
}

Carr2383(YAXIS){;Modified Sylvie Gallet frm.
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=(-0.372,-0.625)
z=cotanh(1-pixel)^1.5*pixel^4-(1/log(conj(0.10/pixel+1.25)))^2.5,
d1=(0.00020756/-pixel)+(flip(0.00010/pixel)),
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test), 
c=c*(1-test)+flip(d1)+test*(p2*c+p3)
z=z^2+c,
iter=iter+1
|z|<=16
}

Carr2384(YAXIS){;Modified Sylvie Gallet frm.
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(flip(abs(pixel))^4/(flip(asinh(pixel))))-0.2,
c=(-0.3009,-0.645)
d1=(0.00080756/-pixel)+(flip(0.00010/pixel)),
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test), 
c=c*(1-test)+flip(d1)+test*(p2*c+p3)
z=z^2+c,
iter=iter+1
|z|<=16
}

Carr2385(YAXIS){;Modified Sylvie Gallet frm.
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=c=(flip(abs(pixel))^8/(flip(asinh(pixel))))-0.2,
d1=(0.00099756/-pixel)+(flip(0.00010/pixel)),
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test), 
c=c*(1-test)+flip(d1)+test*(p2*c+p3)
z=z^2+c,
iter=iter+1
|z|<=16
}

Carr2386(YAXIS){;Modified Sylvie Gallet frm.
pixel=-abs(real(pixel))+flip(imag(pixel)),
m3=conj(0.10/pixel),m4=flip(flip(0.10/pixel))
z=2*pixel-flip(m3^6),c=pixel-cabs(m4-0.1),
d1=(0.00059756/-pixel)+(flip(0.00010/pixel)),
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test), 
c=c*(1-test)+flip(d1)+test*(p2*c+p3)
z=z^2+c,
iter=iter+1
|z|<=16
}

Carr2387(YAXIS){;Modified Sylvie Gallet frm.
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=abs(cabs(pixel))-0.15,
c=(1/z^z*z+z)^3,
d1=(0.00020975/-pixel)+(flip(0.00010/pixel)),
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test), 
c=c*(1-test)+flip(d1)+test*(p2*c+p3)
z=z^2+c,
iter=iter+1
|z|<=16
}

Carr2388(YAXIS){;Modified Sylvie Gallet frm.
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=cabs(tan(pixel*pixel+flip(0.10/pixel))),
c=0.04*cabs(z*z+1/z)+pixel
d1=(0.00070475/-pixel)+(flip(0.00010/pixel)),
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test), 
c=c*(1-test)+flip(d1)+test*(p2*c+p3)
z=z^2+c,
iter=iter+1
|z|<=16
}

Carr2389(YAXIS){;Modified Brian Jones frm.
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=pixel,
c=(-0.7456,-0.112),
x=real(z),y=imag(z),x1=x-p2*fn1(y*y+p3*fn2(y)),
coracao=x1+flip(y1)
y1=y-p2*fn1(x*x+p3*fn2(x))
z1=c1=1.5*z,z2=c2=fn3((coracao)*pixel),
l1= real(p1),l2=imag(p1),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2), 
z=z*(1-(t1||t2))+(z1*t1)+(z2*t2) 
c=c*(1-(t1||t2))+(c1*t1)+(c2*t2) 
z=z*z+c
iter=iter+1
|z|<=bailout
}

Carr2390(YAXIS){;Modified Brian Jones frm.
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=pixel/(cabs(0.3/pixel))
c=pixel
x=real(z),y=imag(z),x1=x-p2*fn1(y*y+p3*fn2(y)),
coracao=x1+flip(y1)
y1=y-p2*fn1(x*x+p3*fn2(x))
z1=c1=1.5*z,z2=c2=fn3((coracao)*pixel),
l1= real(p1),l2=imag(p1),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2), 
z=z*(1-(t1||t2))+(z1*t1)+(z2*t2) 
c=c*(1-(t1||t2))+(c1*t1)+(c2*t2) 
z=z*z+c
iter=iter+1
|z|<=bailout
}

Carr2391(YAXIS){;Modified Brian Jones frm.
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=sinh(pixel^2)-1/log(pixel-conj(0.10/pixel)-flip(0.010/pixel)),
c=sin(conj(-0.7896,-0.1309)),
x=real(z),y=imag(z),x1=x-p2*fn1(y*y+p3*fn2(y)),
coracao=x1+flip(y1)
y1=y-p2*fn1(x*x+p3*fn2(x))
z1=c1=1.5*z,z2=c2=fn3((coracao)*pixel),
l1= real(p1),l2=imag(p1),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2), 
z=z*(1-(t1||t2))+(z1*t1)+(z2*t2) 
c=c*(1-(t1||t2))+(c1*t1)+(c2*t2) 
z=z*z+c
iter=iter+1
|z|<=bailout
}

Carr2392{;Modified Brian Jones frm.
z=d,d=(pixel-conj(0.10/pixel-flip(0.010/pixel))),
c=pixel
x=real(z),y=imag(z),x1=x-p2*fn1(y*y+p3*fn2(y)),
coracao=x1+flip(y1)
y1=y-p2*fn1(x*x+p3*fn2(x))
z1=c1=1.5*z,z2=c2=fn3((coracao)*pixel),
l1= real(p1),l2=imag(p1),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2), 
z=z*(1-(t1||t2))+(z1*t1)+(z2*t2) 
c=c*(1-(t1||t2))+(c1*t1)+(c2*t2) 
z=z*z+c
iter=iter+1
|z|<=bailout
}

Carr2393{;Modified Brian Jones frm.
z=c=real(pixel)+flip(imag(pixel))-conj(0.10/pixel)-flip(0.10/pixel),
x=real(z),y=imag(z),x1=x-p2*fn1(y*y+p3*fn2(y)),
coracao=x1+flip(y1)
y1=y-p2*fn1(x*x+p3*fn2(x))
z1=c1=1.5*z,z2=c2=fn3((coracao)*pixel),
l1=real(p1),l2=imag(p1),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),
z=z*(1-(t1||t2))+(z1*t1)+(z2*t2)
c=c*(1-(t1||t2))+(c1*t1)+(c2*t2)
z=z*z+c
iter=iter+1
|z|<=bailout
}

Carr2394(YAXIS){;Modified Brian Jones frm.
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(flip(2*pixel)-sinh(pixel)),
c=(-0.7456,-0.132),
x=real(z),y=imag(z),x1=x-p2*fn1(y*y+p3*fn2(y)),
coracao=x1+flip(y1)
y1=y-p2*fn1(x*x+p3*fn2(x))
z1=c1=1.5*z,z2=c2=fn3((coracao)*pixel),
l1=real(p1),l2=imag(p1),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),
z=z*(1-(t1||t2))+(z1*t1)+(z2*t2)
c=c*(1-(t1||t2))+(c1*t1)+(c2*t2)
z=z*z+c
iter=iter+1
|z|<=bailout
}

Carr2395(YAXIS){;Modified Brian Jones frm.
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=tan(pixel)-(((0.3,0.6)+pixel)/(0.20/pixel)),
c=pixel,
x=real(z),y=imag(z),x1=x-p2*fn1(y*y+p3*fn2(y)),
coracao=x1+flip(y1)
y1=y-p2*fn1(x*x+p3*fn2(x))
z1=c1=1.5*z,z2=c2=fn3((coracao)*pixel),
l1=real(p1),l2=imag(p1),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),
z=z*(1-(t1||t2))+(z1*t1)+(z2*t2)
c=c*(1-(t1||t2))+(c1*t1)+(c2*t2)
z=z*z+c
iter=iter+1
|z|<=bailout
}

Carr2396(YAXIS){;Modified Brian Jones frm.
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=cabs(pixel)-(((0.3,0.6)+pixel)/(0.20/pixel)),
c=pixel,
x=real(z),y=imag(z),x1=x-p2*fn1(y*y+p3*fn2(y)),
coracao=x1+flip(y1)
y1=y-p2*fn1(x*x+p3*fn2(x))
z1=c1=1.5*z,z2=c2=fn3((coracao)*pixel),
l1=real(p1),l2=imag(p1),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),
z=z*(1-(t1||t2))+(z1*t1)+(z2*t2)
c=c*(1-(t1||t2))+(c1*t1)+(c2*t2)
z=z*z+c
iter=iter+1
|z|<=bailout
}

Carr2397{;Modified Brian E. Jones frm. mans-galore-012 
z=c=conj(flip(2*pixel)),
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2398{;Modified Brian E. Jones frm. mans-galore-012 
z=c=(pixel-(conj(0.050/pixel)+flip(conj(0.0010/pixel)))^4),
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2399{;Modified Brian E. Jones frm. mans-galore-012
z=c=conj(pixel/2)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel)),
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2400{;Modified Brian E. Jones frm. mans-galore-012
z=pixel-(conj(0.10/pixel)+flip(conj(0.010/pixel))),
c=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel)),
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c,
iter=iter+1
|z|<=16
}

Carr2401{;Modified Brian E. Jones frm. mans-galore-012
z=pixel,
c=atan(pixel)*2+conj(pixel/3),
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2402(YAXIS){;Modified Brian E. Jones frm. mans-galore-012
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=pixel,
c=atan(pixel)*2+conj(pixel/3),
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
;c=log(1+z); 
iter=iter+1
|z|<=16
}

Carr2403(YAXIS){;Modified Brian E. Jones frm. mans-galore-012
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=pixel,
z=atan(pixel)*2+conj(pixel/3),
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2404(YAXIS){;Modified Brian E. Jones frm. mans-galore-012
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(pixel)*sqr(pixel)-sqr(flip(0.00510/pixel)),
c=pixel^2-0.25
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2405(YAXIS){;Modified Brian E. Jones frm. mans-galore-012
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel)),
c=pixel^8+0.196
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2406(YAXIS){;Modified Brian E. Jones frm. mans-galore-012
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(pixel)*sqr(pixel)-conj(0.10/pixel)-sqr(flip(0.00510/pixel)),
c=pixel^8+0.296
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2407(YAXIS){;Modified Brian E. Jones frm. mans-galore-012
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=((pixel)*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)),
z=pixel/5+pixel/3+(pixel/2)^4
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2408(YAXIS){;Modified Brian E. Jones frm. mans-galore-012
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=c=(3*pixel)+conj(pixel-flip(0.010/pixel))
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2409(YAXIS){;Modified Brian E. Jones frm. mans-galore-012
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=c=(3*pixel)+conj(pixel-conj(0.020/pixel))
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2410(YAXIS){;Modified Brian E. Jones frm. mans-galore-012
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(pixel-asin(pixel)),
c=(pixel-asin(pixel)),
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2411{;Modified Brian E. Jones frm. mans-galore-012
z=d3,d3=pixel*2,
c=pixel*2,
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2412{;Modified Brian E. Jones frm. mans-galore-012
r=(conj(pixel/2)),
z=c=(3.5*pixel^5)-r-sin(0.08pixel-flip(0.01/pixel))+conj(0.0535/pixel)+0.05,
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2413(YAXIS){;Modified Brian E. Jones frm. mans-galore-012
pixel=-abs(real(pixel))+flip(imag(pixel)),
r=(conj(pixel/2)),
z=(2.5*pixel^3)-r-sin(0.08pixel-flip(0.01/pixel))+conj(0.0535/pixel)+0.05,
c=(3.5*pixel^5)-r-sin(0.08pixel-flip(0.01/pixel))+conj(0.0535/pixel)+0.05,
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2414(YAXIS){;Modified Brian E. Jones frm. mans-galore-012
pixel=-abs(real(pixel))+flip(imag(pixel)),
r=(conj(pixel/2)),
z=(1.5*pixel^6)-r-sin(0.08pixel-flip(0.01/pixel))+conj(0.0535/pixel),
c=(3.5*pixel^5)-r-sin(0.08pixel-flip(0.01/pixel))+conj(0.0535/pixel)+0.05,
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2415(YAXIS){;Modified Brian E. Jones frm. mans-galore-012
pixel=-abs(real(pixel))+flip(imag(pixel)),
r=(cabs(pixel/2)),
z=(1.5*pixel^6)-r-sin(0.08pixel-flip(0.01/pixel))+conj(0.0535/pixel),
c=(3.5*pixel^5)-r-sin(0.08pixel-flip(0.01/pixel))+conj(0.0535/pixel)+0.05,
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2416(YAXIS){;Modified Brian E. Jones frm. mans-galore-012
pixel=-abs(real(pixel))+flip(imag(pixel)),
r=(cabs(pixel/2)),
z=(1.5*pixel^9)-r-cabs(0.08pixel-flip(0.01/pixel))+conj(0.0535/pixel)+0.09,
c=(1.5*pixel^5)-r-cabs(0.08pixel-flip(0.01/pixel))+conj(0.0535/pixel)+0.1,
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2417(YAXIS){;Modified Brian E. Jones frm. mans-galore-012
pixel=-abs(real(pixel))+flip(imag(pixel)),
r=(flip(pixel/4+pixel/3)),
z=(2*pixel^4)-r-sin(0.8*pixel-flip(0.01/pixel))+conj(0.1275/pixel)-0.2,
c=(2*pixel^4)-r-sin(0.8*pixel-flip(0.01/pixel))+conj(0.1275/pixel),
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2418(YAXIS){;Modified Brian E. Jones frm. mans-galore-012
pixel=-abs(real(pixel))+flip(imag(pixel)),
r=cabs(pixel),j=flip(flip(3.5*pixel))+conj(conj(pixel)),
z=tanh(pixel)-1/sqrt(j+0.5550/j-conj(0.030/pixel)-flip(0.0550/pixel)+2/r),
c=2*pixel+(-0.099,-0.2249)
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*cotan(fn1(y+p3*fn2(y))),
y1=y-p2*cotan(fn1(x+p3*fn2(x))):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2419(YAXIS){;Modified Brian E. Jones frm. mans-galore-012
pixel=-abs(real(pixel))+flip(imag(pixel)),
r=cabs(pixel),j=flip(flip(3.5*pixel))+conj(conj(pixel)),
z=cabs(pixel)-1/sqrt(j+0.5550/j-conj(0.030/pixel)-flip(0.0550/pixel)+2/r),
c=3*(pixel)+(-0.099,-0.2249)
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*(fn1(y+p3*fn2(y))),
y1=y-p2*(fn1(x+p3*fn2(x))):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2420(YAXIS){;Modified Brian E. Jones frm. mans-galore-012
pixel=-abs(real(pixel))+flip(imag(pixel)),
r=cabs(pixel),j=flip(flip(0.5*pixel))+conj(conj(pixel)),
z=cabs(pixel*2)-1/sqrt(j+0.5550/j-conj(0.030/pixel)-flip(0.0550/pixel)+2/r),
c=3*(pixel)+(-0.099,-0.2249)
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*(fn1(y+p3*fn2(y))),
y1=y-p2*(fn1(x+p3*fn2(x))):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2421(YAXIS){;Modified Brian E. Jones frm. mans-galore-012
pixel=-abs(real(pixel))+flip(imag(pixel)),
r=cabs(pixel),j=(flip(flip(0.5*pixel))+conj(conj(pixel)))^4,
z=1.5*(pixel)-1/sqrt(j+0.5550/j-conj(0.080/pixel)-flip(0.0950/pixel)+2/r),
c=3*(pixel)+(-0.099,-0.0249)
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*(fn1(y+p3*fn2(y))),
y1=y-p2*(fn1(x+p3*fn2(x))):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2422(YAXIS){;Modified Brian E. Jones frm. mans-galore-012
pixel=-abs(real(pixel))+flip(imag(pixel)),
c=(pixel+pixel)-1/log(pixel-1/tan(0.001/pixel))^3.8,
z=conj(conj(pixel))+conj(flip(pixel))+flip(tanh(pixel)),
iter=0,x=real(z),y=imag(z)
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*(fn1(y+p3*fn2(y))),
y1=y-p2*(fn1(x+p3*fn2(x))):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2423{;Modified Sylvie Gallet frm.
z=c=pixel,
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=(z*(1-test))+flip(imag(0.03750/pixel)), 
c=c*(1-test)+test*(p2*c+p3)
z=z^2+c,
iter=iter+1
|z|<=16
}

Carr2424(YAXIS){;Modified Brian E. Jones frm. mans-galore-012
pixel=-abs(real(pixel))+flip(imag(pixel)),
m=(cabs(pixel/4+pixel/3)),
z=(2*pixel^4)-m-sin(0.8*pixel-flip(0.01/pixel))+conj(0.1275/pixel),
c=(4*pixel^4)-m-sin(pixel-flip(0.01/pixel))+conj(0.1275/pixel),
iter=0,x=(real(z)),y=(imag(z)),
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*(fn1(y+p3*fn2(y))),
y1=y-p2*(fn1(x+p3*fn2(x))):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2425{;Modified Brian E. Jones frm. mans-galore-012
m=(cabs(pixel/4+pixel/3)),
z=(2*pixel^4)-m-sin(0.8*pixel-flip(0.01/pixel))+conj(0.1275/pixel),
c=(4*pixel^4)-m-sin(pixel-flip(0.01/pixel))+conj(0.1275/pixel),
iter=0,x=(real(z)),y=(imag(z)),
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*(fn1(y+p3*fn2(y))),
y1=y-p2*(fn1(x+p3*fn2(x))):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2426{;Modified Brian E. Jones frm. mans-galore-012
z=pixel/(cabs(0.3/pixel))
c=pixel*2
iter=0,x=(real(z)),y=(imag(z)),
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*(fn1(y+p3*fn2(y))),
y1=y-p2*(fn1(x+p3*fn2(x))):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=(z*z+c)-(conj(0.120/pixel))
;z=z*z+c
iter=iter+1
|z|<=16
}










