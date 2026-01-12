Carr2381 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  m3=cabs(newpixel+0.5)*conj(conj(newpixel^7))
  z=(m3-conj(0.10/newpixel)-sqr(flip(0.00510/newpixel)))-0.25
  c=(-1.099,-0.0049)/2
  d1=(0.00075756/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)
  c=c*(1-test)+flip(d1)+test*(p2*c+p3)
  z=z^2+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2382 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=(-0.8006,-0.1645)
  z=(flip(flip(newpixel))^6-1/(atan(1/newpixel)-cabs(acos(2/newpixel)))^6)-0.09
  d1=(0.00060756/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)
  c=c*(1-test)+flip(d1)+test*(p2*c+p3)
  z=z^2+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2383 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=(-0.372,-0.625)
  z=cotanh(1-newpixel)^1.5*newpixel^4-(1/log(conj(0.10/newpixel+1.25)))^2.5
  d1=(0.00020756/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)
  c=c*(1-test)+flip(d1)+test*(p2*c+p3)
  z=z^2+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2384 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(flip(abs(newpixel))^4/(flip(asinh(newpixel))))-0.2
  c=(-0.3009,-0.645)
  d1=(0.00080756/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)
  c=c*(1-test)+flip(d1)+test*(p2*c+p3)
  z=z^2+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2385 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=(flip(abs(newpixel))^8/(flip(asinh(newpixel))))-0.2
  d1=(0.00099756/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)
  c=c*(1-test)+flip(d1)+test*(p2*c+p3)
  z=z^2+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2386 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  m3=conj(0.10/newpixel), m4=flip(flip(0.10/newpixel))
  z=2*newpixel-flip(m3^6), c=newpixel-cabs(m4-0.1)
  d1=(0.00059756/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)
  c=c*(1-test)+flip(d1)+test*(p2*c+p3)
  z=z^2+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2387 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=abs(cabs(newpixel))-0.15
  c=(1/z^z*z+z)^3
  d1=(0.00020975/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)
  c=c*(1-test)+flip(d1)+test*(p2*c+p3)
  z=z^2+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2388 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=cabs(tan(newpixel*newpixel+flip(0.10/newpixel)))
  c=0.04*cabs(z*z+1/z)+newpixel
  d1=(0.00070475/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)
  c=c*(1-test)+flip(d1)+test*(p2*c+p3)
  z=z^2+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2389 (YAXIS) {; Modified Brian Jones frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel
  c=(-0.7456,-0.112)
  x=real(z), y=imag(z), x1=x-p2*fn1(y*y+p3*fn2(y))
  coracao=x1+flip(y1)
  y1=y-p2*fn1(x*x+p3*fn2(x))
  z1=c1=1.5*z, z2=c2=fn3((coracao)*newpixel)
  l1= real(p1), l2=imag(p1)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2)
  z=z*(1-(t1||t2))+(z1*t1)+(z2*t2)
  c=c*(1-(t1||t2))+(c1*t1)+(c2*t2)
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42icarr.frm
}
Carr2390 (YAXIS) {; Modified Brian Jones frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel/(cabs(0.3/newpixel))
  c=newpixel
  x=real(z), y=imag(z), x1=x-p2*fn1(y*y+p3*fn2(y))
  coracao=x1+flip(y1)
  y1=y-p2*fn1(x*x+p3*fn2(x))
  z1=c1=1.5*z, z2=c2=fn3((coracao)*newpixel)
  l1= real(p1), l2=imag(p1)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2)
  z=z*(1-(t1||t2))+(z1*t1)+(z2*t2)
  c=c*(1-(t1||t2))+(c1*t1)+(c2*t2)
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42icarr.frm
}
Carr2391 (YAXIS) {; Modified Brian Jones frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=sinh(newpixel^2)-1/log(newpixel-conj(0.10/newpixel)-flip(0.010/newpixel))
  c=sin(conj(-0.7896,-0.1309))
  x=real(z), y=imag(z), x1=x-p2*fn1(y*y+p3*fn2(y))
  coracao=x1+flip(y1)
  y1=y-p2*fn1(x*x+p3*fn2(x))
  z1=c1=1.5*z, z2=c2=fn3((coracao)*newpixel)
  l1= real(p1), l2=imag(p1)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2)
  z=z*(1-(t1||t2))+(z1*t1)+(z2*t2)
  c=c*(1-(t1||t2))+(c1*t1)+(c2*t2)
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42icarr.frm
}
Carr2392 {; Modified Brian Jones frm.
  z=d, d=(pixel-conj(0.10/pixel-flip(0.010/pixel)))
  c=pixel
  x=real(z), y=imag(z), x1=x-p2*fn1(y*y+p3*fn2(y))
  coracao=x1+flip(y1)
  y1=y-p2*fn1(x*x+p3*fn2(x))
  z1=c1=1.5*z, z2=c2=fn3((coracao)*pixel)
  l1= real(p1), l2=imag(p1)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2)
  z=z*(1-(t1||t2))+(z1*t1)+(z2*t2)
  c=c*(1-(t1||t2))+(c1*t1)+(c2*t2)
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42icarr.frm
}
Carr2393 {; Modified Brian Jones frm.
  z=c=real(pixel)+flip(imag(pixel))-conj(0.10/pixel)-flip(0.10/pixel)
  x=real(z), y=imag(z), x1=x-p2*fn1(y*y+p3*fn2(y))
  coracao=x1+flip(y1)
  y1=y-p2*fn1(x*x+p3*fn2(x))
  z1=c1=1.5*z, z2=c2=fn3((coracao)*pixel)
  l1=real(p1), l2=imag(p1)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2)
  z=z*(1-(t1||t2))+(z1*t1)+(z2*t2)
  c=c*(1-(t1||t2))+(c1*t1)+(c2*t2)
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42icarr.frm
}
Carr2394 (YAXIS) {; Modified Brian Jones frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(flip(2*newpixel)-sinh(newpixel))
  c=(-0.7456,-0.132)
  x=real(z), y=imag(z), x1=x-p2*fn1(y*y+p3*fn2(y))
  coracao=x1+flip(y1)
  y1=y-p2*fn1(x*x+p3*fn2(x))
  z1=c1=1.5*z, z2=c2=fn3((coracao)*newpixel)
  l1=real(p1), l2=imag(p1)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2)
  z=z*(1-(t1||t2))+(z1*t1)+(z2*t2)
  c=c*(1-(t1||t2))+(c1*t1)+(c2*t2)
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42icarr.frm
}
Carr2395 (YAXIS) {; Modified Brian Jones frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=tan(newpixel)-(((0.3,0.6)+newpixel)/(0.20/newpixel))
  c=newpixel
  x=real(z), y=imag(z), x1=x-p2*fn1(y*y+p3*fn2(y))
  coracao=x1+flip(y1)
  y1=y-p2*fn1(x*x+p3*fn2(x))
  z1=c1=1.5*z, z2=c2=fn3((coracao)*newpixel)
  l1=real(p1), l2=imag(p1)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2)
  z=z*(1-(t1||t2))+(z1*t1)+(z2*t2)
  c=c*(1-(t1||t2))+(c1*t1)+(c2*t2)
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42icarr.frm
}
Carr2396 (YAXIS) {; Modified Brian Jones frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=cabs(newpixel)-(((0.3,0.6)+newpixel)/(0.20/newpixel))
  c=newpixel
  x=real(z), y=imag(z), x1=x-p2*fn1(y*y+p3*fn2(y))
  coracao=x1+flip(y1)
  y1=y-p2*fn1(x*x+p3*fn2(x))
  z1=c1=1.5*z, z2=c2=fn3((coracao)*newpixel)
  l1=real(p1), l2=imag(p1)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2)
  z=z*(1-(t1||t2))+(z1*t1)+(z2*t2)
  c=c*(1-(t1||t2))+(c1*t1)+(c2*t2)
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42icarr.frm
}
Carr2397 {; Modified Brian E. Jones frm. mans-galore-012
  z=c=conj(flip(2*pixel))
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2398 {; Modified Brian E. Jones frm. mans-galore-012
  z=c=(pixel-(conj(0.050/pixel)+flip(conj(0.0010/pixel)))^4)
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2399 {; Modified Brian E. Jones frm. mans-galore-012
  z=c=conj(pixel/2)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel))
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2400 {; Modified Brian E. Jones frm. mans-galore-012
  z=pixel-(conj(0.10/pixel)+flip(conj(0.010/pixel)))
  c=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel))
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2401 {; Modified Brian E. Jones frm. mans-galore-012
  z=pixel
  c=atan(pixel)*2+conj(pixel/3)
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2402 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel
  c=atan(newpixel)*2+conj(newpixel/3)
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
    ; c=log(1+z)
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2403 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=newpixel
  z=atan(newpixel)*2+conj(newpixel/3)
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2404 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(newpixel)*sqr(newpixel)-sqr(flip(0.00510/newpixel))
  c=newpixel^2-0.25
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2405 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(newpixel)*sqr(newpixel)-sinh(0.10/newpixel)-sqr(flip(0.00510/newpixel))
  c=newpixel^8+0.196
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2406 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(newpixel)*sqr(newpixel)-conj(0.10/newpixel)-sqr(flip(0.00510/newpixel))
  c=newpixel^8+0.296
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2407 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=((newpixel)*sqr(newpixel)-conj(0.10/newpixel)-flip(0.010/newpixel))
  z=newpixel/5+newpixel/3+(newpixel/2)^4
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2408 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=(3*newpixel)+conj(newpixel-flip(0.010/newpixel))
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2409 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=(3*newpixel)+conj(newpixel-conj(0.020/newpixel))
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2410 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(newpixel-asin(newpixel))
  c=(newpixel-asin(newpixel))
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2411 {; Modified Brian E. Jones frm. mans-galore-012
  z=d3, d3=pixel*2
  c=pixel*2
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2412 {; Modified Brian E. Jones frm. mans-galore-012
          ; Corrected typo (0.08pixel to 0.08*pixel) G. Martin 10/98
  r=(conj(pixel/2))
  z=c=(3.5*pixel^5)-r-sin(0.08*pixel-flip(0.01/pixel))\
      +conj(0.0535/pixel)+0.05
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2413 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
    ; Corrected typo (0.08pixel to 0.08*pixel) G. Martin 10/98
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=(conj(newpixel/2))
  z=(2.5*newpixel^3)-r-sin(0.08*newpixel-flip(0.01/newpixel))\
    +conj(0.0535/newpixel)+0.05
  c=(3.5*newpixel^5)-r-sin(0.08*newpixel-flip(0.01/newpixel))\
    +conj(0.0535/newpixel)+0.05
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2414 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
      ; Corrected typo (0.08pixel to 0.08*pixel) G. Martin 10/98
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=(conj(newpixel/2))
  z=(1.5*newpixel^6)-r-sin(0.08*newpixel-flip(0.01/newpixel))+conj(0.0535/newpixel)
  c=(3.5*newpixel^5)-r-sin(0.08*newpixel-flip(0.01/newpixel))\
    +conj(0.0535/newpixel)+0.05
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2415 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
    ; Corrected typo (0.08pixel to 0.08*pixel) G. Martin 10/98
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=(cabs(newpixel/2))
  z=(1.5*newpixel^6)-r-sin(0.08*newpixel-flip(0.01/newpixel))+conj(0.0535/newpixel)
  c=(3.5*newpixel^5)-r-sin(0.08*newpixel-flip(0.01/newpixel))\
    +conj(0.0535/newpixel)+0.05
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2416 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
     ; Corrected typo (0.08pixel to 0.08*pixel) G. Martin 10/98
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=(cabs(newpixel/2))
  z=(1.5*newpixel^9)-r-cabs(0.08*newpixel-flip(0.01/newpixel))\
    +conj(0.0535/newpixel)+0.09
  c=(1.5*newpixel^5)-r-cabs(0.08*newpixel-flip(0.01/newpixel))\
    +conj(0.0535/newpixel)+0.1
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2417 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=(flip(newpixel/4+newpixel/3))
  z=(2*newpixel^4)-r-sin(0.8*newpixel-flip(0.01/newpixel))\
    +conj(0.1275/newpixel)-0.2
  c=(2*newpixel^4)-r-sin(0.8*newpixel-flip(0.01/newpixel))+conj(0.1275/newpixel)
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2418 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=cabs(newpixel), j=flip(flip(3.5*newpixel))+conj(conj(newpixel))
  z=tanh(newpixel)\
    -1/sqrt(j+0.5550/j-conj(0.030/newpixel)-flip(0.0550/newpixel)+2/r)
  c=2*newpixel+(-0.099,-0.2249)
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*cotan(fn1(y+p3*fn2(y)))
  y1=y-p2*cotan(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2419 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=cabs(newpixel), j=flip(flip(3.5*newpixel))+conj(conj(newpixel))
  z=cabs(newpixel)\
    -1/sqrt(j+0.5550/j-conj(0.030/newpixel)-flip(0.0550/newpixel)+2/r)
  c=3*(newpixel)+(-0.099,-0.2249)
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2420 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=cabs(newpixel), j=flip(flip(0.5*newpixel))+conj(conj(newpixel))
  z=cabs(newpixel*2)\
    -1/sqrt(j+0.5550/j-conj(0.030/newpixel)-flip(0.0550/newpixel)+2/r)
  c=3*(newpixel)+(-0.099,-0.2249)
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2421 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=cabs(newpixel), j=(flip(flip(0.5*newpixel))+conj(conj(newpixel)))^4
  z=1.5*(newpixel)\
    -1/sqrt(j+0.5550/j-conj(0.080/newpixel)-flip(0.0950/newpixel)+2/r)
  c=3*(newpixel)+(-0.099,-0.0249)
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2422 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=(newpixel+newpixel)-1/log(newpixel-1/tan(0.001/newpixel))^3.8
  z=conj(conj(newpixel))+conj(flip(newpixel))+flip(tanh(newpixel))
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2423 {; Modified Sylvie Gallet frm.
  z=c=pixel
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=(z*(1-test))+flip(imag(0.03750/pixel))
  c=c*(1-test)+test*(p2*c+p3)
  z=z^2+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2424 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  m=(cabs(newpixel/4+newpixel/3))
  z=(2*newpixel^4)-m-sin(0.8*newpixel-flip(0.01/newpixel))+conj(0.1275/newpixel)
  c=(4*newpixel^4)-m-sin(newpixel-flip(0.01/newpixel))+conj(0.1275/newpixel)
  iter=0, x=(real(z)), y=(imag(z))
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2425 {; Modified Brian E. Jones frm. mans-galore-012
  m=(cabs(pixel/4+pixel/3))
  z=(2*pixel^4)-m-sin(0.8*pixel-flip(0.01/pixel))+conj(0.1275/pixel)
  c=(4*pixel^4)-m-sin(pixel-flip(0.01/pixel))+conj(0.1275/pixel)
  iter=0, x=(real(z)), y=(imag(z))
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
Carr2426 {; Modified Brian E. Jones frm. mans-galore-012
  z=pixel/(cabs(0.3/pixel))
  c=pixel*2
  iter=0, x=(real(z)), y=(imag(z))
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=(z*z+c)-(conj(0.120/pixel))
     ; z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}
