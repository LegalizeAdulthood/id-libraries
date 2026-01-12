Carr2480 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=newpixel/2+1/log(newpixel)
  z=newpixel-1/log(newpixel-1/log(tan(1/newpixel))-1/log(2/newpixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2481 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=cabs(newpixel*2)-1/log(conj(0.5/newpixel))
  c=(newpixel)-1/log(conj(0.5/newpixel-1))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.006
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2482 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(conj(newpixel))-conj(conj(0.5/newpixel))
  c=(-0.7456,-0.132)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0033
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2483 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=conj(conj(pixel^3))-conj(conj(0.5/pixel))^8
  c=(-0.7456,-0.132)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0075
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2484 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(conj(newpixel^1.75))-conj(conj(0.5/newpixel))^4
  c=(-0.7456,-0.132)/2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0065
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2485 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=flip(flip(newpixel^1.75))-conj(conj(0.1/newpixel))^4
  c=(-0.7456,-0.132)/2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0064
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2486 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=newpixel+1/log(cos(0.1/newpixel-0.025))*(tan(0.1/newpixel-0.025))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0155
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2487 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel+1/log(cos(0.1/newpixel-0.025))*(tan(0.1/newpixel-0.025))
  c=newpixel+1/log(cosxx(0.1/newpixel-0.025))*(tan(0.1/newpixel-0.025))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0105
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2488 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel^2+1/log(cos(0.1/newpixel-0.025))*(tan(0.1/newpixel-0.025))
  c=cabs(newpixel)+1/log(cosxx(0.1/newpixel-0.025))*(tan(0.1/newpixel-0.025))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0105
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2489 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel+1/log(cos(0.1/newpixel-0.025))*(tan(0.1/newpixel-0.025))
  c=(-0.7456,-0.122)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0065
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2490 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=tanh(newpixel)-(((0.3,0.6)+newpixel)/(0.20/-newpixel))
  c=(-0.7586,-0.132)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00375
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2491 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=tanh(2*newpixel)-(((0.3,-0.6)+newpixel^4)-(conj(0.20/newpixel)))
  c=(-0.7456,-0.132)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00475
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2492 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=sqr(sqr(conj(newpixel)))-(conj(0.10/newpixel))-(flip(0.020/newpixel))
  c=(-0.7456,0.13)+0.009/newpixel
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00575
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2493 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=newpixel
  z=conj(newpixel)*newpixel^2-conj(conj(0.10/newpixel))^(-3*newpixel)\
    -flip(flip(0.010/newpixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00575
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2494 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel
  c=conj(newpixel)*newpixel^2-conj(conj(0.10/newpixel))^(-3*newpixel)\
    -flip(flip(0.010/newpixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00675
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2495 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(newpixel)*newpixel^2-sinh(0.10/newpixel)^(-3*newpixel)-flip(0.0010/newpixel)
     ; c=conj(newpixel)*newpixel^2-conj(conj(0.10/newpixel))^(-3*newpixel)-flip(flip(0.010/newpixel))
  c=(-0.7556,-0.122)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0044
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2496 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(newpixel)*newpixel^2-sinh(0.10/newpixel)^(-3*newpixel)-flip(0.0010/newpixel)
  c=(-0.7556,-0.122)/1.33
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0035
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2497 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=flip(abs(1-newpixel))*sqr(newpixel)-conj(0.10/newpixel)-flip(0.010/newpixel)-0.3
  c=(-0.7456,-0.110)/1.15
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0024
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2498 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=flip(flip(1-newpixel))*conj(newpixel^2)-conj(0.10/newpixel)\
    -flip(0.010/newpixel)-0.3
  c=(-0.7456,-0.110)/1.35
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0032
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2499 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=conj(newpixel)*cabs(newpixel^4+0.25)-(conj(0.10/newpixel))\
      -sqr(flip(0.010/newpixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0032
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2500 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
     ; Edited for Fractint v. 20 by George Martin, 10/98
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  m3=cabs(newpixel^(-(2/newpixel/2)))
  z=conj(newpixel)*m3-(conj(0.10/newpixel))-sqr(flip(0.010/newpixel))-0.1
  c=(-0.9359,-0.09659)/2.1
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0051
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2501 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(-0.8006,-0.116), m4=(conj(0.005/newpixel))-sqr(flip(0.09/newpixel))
  z=flip(1/atan(1-newpixel))*sqr(newpixel)-m4
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0061
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2502 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=(-0.8006,-0.149)/1.2
  z=newpixel-0.25/(atan(0.10/-newpixel)-sqr(acos(0.250/-newpixel))^3.7)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.002
  z=z^2+c
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2503 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=(-0.3,-0.589)
  z=cotanh(1-newpixel)^1.5*newpixel^4-(1/log(conj(0.10/newpixel+1.25)))^2.5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.002
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2504 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=(-0.3,-0.589)/1.18
  z=(cosxx(1-newpixel*2)^3.5*conj(newpixel^4)\
    -(1/sqrt(conj(0.10/newpixel+1.25)))^2.5)+0.4
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.002
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2505 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=cotanh(1-newpixel)^1.5*newpixel^4-(1/log(conj(0.10/newpixel+1.25)))^2.5
  c=(newpixel^2.33)/log(1.667-newpixel)^2.87\
    -(1/log(conj(0.10/newpixel+1.25)))^2.95
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.00375
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2506 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=(1/newpixel)-1/log(newpixel-1/cos(0.010/newpixel))^2.5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.00495
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2507 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=(1/newpixel)-1/log(newpixel-1/cos(0.10/newpixel))^2.5-(conj(0.10/newpixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.00895
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2508 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(flip(conj(abs((newpixel*sin(newpixel+1))))))
  c=flip(conj(abs((newpixel*newpixel))))-conj(0.10/newpixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-0.1/c, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4\
    +pp2+0.000995
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2509 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(flip(conj(abs((newpixel*cosxx(newpixel-1))))))+0.3
  c=flip(conj(abs((newpixel^3))))-conj(0.10/newpixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-0.1/c, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4\
    +pp2+0.000995
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2510 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)+flip(abs(imag(pixel)))
  z=flip(conj(abs((newpixel^3))))-conj(0.10/newpixel)
  c=(-0.7456,-0.132)/1.25
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.000995
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2511 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(real(2*newpixel-0.124)+flip(imag(newpixel-0.224)*1.224))-0.35
  c=1/(2.224+1.224*real(newpixel)+flip(abs(newpixel)))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.000995
  z=(z*z+c)
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2512 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(real(2*newpixel-0.124)+flip(imag(newpixel-0.224)*1.224))
  c=1/(2.224+1.224*real(newpixel)+flip(abs(newpixel)))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.000995
  z=(z*z+c)+0.1/c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2513 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(imag(newpixel-0.124)+flip(real(newpixel-0.224)*1.224))
  c=1/(0.224+1.224*real(0.5*newpixel)+flip(abs(newpixel)))-conj(0.10/newpixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.001095
  z=(z*z+c)+0.1/c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2514 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(conj(imag(newpixel-0.124))+flip(real(newpixel-0.224)*1.224))-0.4
  c=1/(0.224+1.224*real(0.5*newpixel)+flip(abs(newpixel)))-conj(0.10/newpixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.001095
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2515 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(conj(1/(conj(imag(newpixel-0.124))+\
    flip(real(newpixel-0.224)*1.224))))
  c=conj(1/(0.224+1.224*real(0.5*newpixel)+\
    flip(abs(newpixel)))-conj(0.10/newpixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.001995
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2516 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(conj(1/(conj(imag(newpixel-0.124))\
    +flip(real(newpixel-0.224)*1.224))))
  c=conj(1/(0.224+1.224*real(0.5*newpixel)\
    +flip(abs(newpixel)))-conj(0.10/newpixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.001995
  z=z*z*z/5+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2517 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel)), m4=conj(0.10/newpixel)
  z=conj(sin(1/(conj(imag(newpixel-0.124))\
    +flip(real(newpixel-0.224)*1.224))))-0.5
  c=tanh(sinh(1/(0.224+1.224*real(0.5*newpixel)\
    +flip(abs(newpixel)))-m4))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.001995
  z=real(z*z)*z/5+z*z+c+0.10/(c+z)
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2518 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel)), m4=conj(0.10/newpixel)
  z=conj(sin(1/(conj(imag(newpixel-0.124))\
    +flip(real(newpixel-0.224)*1.224))))-0.6
  c=tanh(sinh(1.5/(0.224+1.224*real(0.5*newpixel)+flip(abs(newpixel)))-m4))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.001995
  z=(real(z*z)*z/5)+z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2519 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=real((1/newpixel)/1.91)/(5.7,-1.3)/2
  c=(1/newpixel*0.91/newpixel)+conj(0.10/newpixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.001995
  z=(real(z*z)*z/5)+z*z+c-0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2520 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(real(newpixel)+flip(imag(newpixel)*2.924))
  c=1/(real(newpixel*1.45)+flip(imag(newpixel)*1.624))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0003995
  z=(z*z*z/5)+z*z+c-0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2521 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(tan(newpixel)+flip(conj(newpixel)*2.924))
  c=1/(real(newpixel*1.45)+flip(imag(newpixel)*1.624))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0003995
  z=(z*z*z/5)+z*z+c-0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2522 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(tan(newpixel)+flip(conj(newpixel)*2.924))
  c=0.75/(conj(conj(newpixel*1.45))+flip(imag(newpixel)*1.624))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0003995
  z=(z*z*z/5)+z*z+c-0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2523 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(sinh(newpixel)+tanh(conj(newpixel)*2.924))
  c=0.75/(conj(conj(newpixel*1.45))+flip(imag(newpixel)*1.624))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0023995
  z=(z*z*z/5)+z*z+c-0.22/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2524 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=(conj(0.30/newpixel)+flip(0.010/newpixel))-0.5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0023995
  z=(z*z*z/5)+z*z+c-0.22/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2525 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=0.8*(1/newpixel), c=cosxx(z^z/newpixel-2)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0016995
  z=(z*z*z/5)+z*z+c-0.2/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2526 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=0.8*(1/newpixel), c=cotanh(z^z/newpixel-2)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0016995
  z=(z*z*z/5)+z*z+c-0.275/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2527 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=sin(1/newpixel)/cosxx(1/newpixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0010995
  z=(z*z*z/5)+z*z+c-0.59/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2528 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=sinh(2/newpixel)/cosh(1/newpixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0010995
  z=(z*z*z/5)+z*z+c-0.59/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2529 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=0.1/(newpixel)/(flip(0.88/newpixel))-conj(0.6/newpixel)
  c=((2.9/newpixel)/cosxx(z*z-2.2/newpixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0010995
  z=(z*z*z/5)+z*z+c-0.79/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2530 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=0.1/(newpixel)/(flip(1/newpixel*0.88/newpixel))-0.3
  c=0.1/(newpixel)/(flip(1/newpixel*0.88/newpixel))
  c1=1.5*z, c2=2.25*|z|, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0010995
  z=(z*z*z/5)+z*z+c-0.79/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2531 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b=conj(0.10/newpixel), b1=flip(0.010/newpixel)
  c=((0.75*newpixel-1/cotan(newpixel)-1/cos(newpixel+0.2)))-b-b1
  z=(0.85*newpixel-sinh(0.10/newpixel))/b*b1-0.2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*|z|
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0003995
  z=(z*z*z/5)+z*z+c-0.39/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2532 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=(1.5/(0.77*newpixel-cosxx(2/newpixel)-cos(2/newpixel)))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0003995
  z=(z*z*z/5)+z*z+c-0.59/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2533 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(tan(0.75/newpixel)^1.75)-conj(0.10/newpixel)
  c=(tan(0.75/newpixel)^1.65)-conj(0.10/newpixel)
  c1=1.05*z, c2=2.25*z, c3=3.375*z, c4=5.0625*|z|
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0010995
  z=(|z|/5)+z*z+c-0.24/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2534 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=(1/newpixel+1.15/newpixel)+0.1*(tan(cosxx(7/newpixel-real(3.5/newpixel))))
  z=1/((newpixel-0.5)-tan(2.5/newpixel)-conj(5/newpixel))
  c1=0.95*z, c2=2.25*z, c3=3.375*conj(z/2), c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0013995
  z=(|z|/5)+z*z+c-0.49/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2535 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(|0.75/newpixel|)+1/newpixel+0.0487
  c=1/(newpixel-(0.124/z*(0.524/newpixel/z)))
  c1=0.95*z, c2=2.25*z, c3=3.375*conj(z/2), c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.29/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
Carr2536 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(0.75*newpixel-(|newpixel|+cos(sqr(|newpixel|*1/(newpixel-0.124)))))
  c=1/(newpixel-(|newpixel|+cos(sqr(|newpixel|*1/(newpixel-0.124)))))
  c1=0.95*z, c2=2.25*z, c3=3.375*conj(z/2), c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0013995
  z=(|z|/5)+z*z+c-0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}
