Carr2537 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(0.75*newpixel-(|newpixel|+cos(sqr(|newpixel|*1/(newpixel-0.124)))))+0.5
  c=1/(conj(conj(newpixel))-(|0.67*newpixel|\
       +cos(sqr(|newpixel|*1/(newpixel-0.124)))))
  c1=0.95*z, c2=2.25*z, c3=3.375*|z|, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0013995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2538 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=tanh(1/newpixel)-0.1
  c=1/(newpixel-conj(z/(conj(newpixel))*z/newpixel+newpixel/z))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0005995
  z=(|z|/5)+z*z+c-0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2539 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=tanh(1/newpixel)-0.1
  z=2/(newpixel-conj(b3/(conj(newpixel))*b3/newpixel+newpixel/b3))
  c=1/(0.8*newpixel-conj((b3+0.8)/(conj(newpixel))*b3/newpixel+newpixel/(b3)))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0005995
  z=(|z|/5)+z*z+c-0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2540 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=conj(1/newpixel)+flip(1/newpixel)
  z=1/(newpixel-sqrt(1/newpixel)-log(1/newpixel)-(|b1|))
  c=1/(newpixel-sqrt(3/newpixel))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0005995
  z=(|z|/5)+z*z+c-0.49/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2541 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(conj(0.7*newpixel)-(cos(7/newpixel-0.524)+sin(1/newpixel)-conj(1/newpixel)))
  c=1/(newpixel*real(5/newpixel-1.724))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c-0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2542 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(conj(newpixel)-(cos(7/newpixel-0.524)+sin(1/newpixel)-conj(1/newpixel)))
  c=1/(newpixel-conj(z-1.1)*|z|*z^conj(cotanh(newpixel-0.2)))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c-0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2543 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(conj(newpixel)-(cos(7/newpixel-0.524)+sin(1/newpixel)\
    -conj(0.1/newpixel)))+0.11
  c=1/(newpixel-conj(z-1.1)*z*z^conj(cotanh(5/newpixel-0.2)))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c-0.59/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2544 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=1/(conj(newpixel)-(cos(7/newpixel-0.524)+sin(1/newpixel)\
     -conj(0.1/newpixel)))+0.11
  z=1/(newpixel-conj(b1-1.9)*b1*b1*b1^conj(cotanh(0.7/newpixel-0.4)))
  c=1/(newpixel-conj(b1-1.9)*b1*b1*b1^conj(cosxx(0.7/newpixel-0.2)))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c-0.59/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2545 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=(conj(1/newpixel)/exp(1/newpixel))
  z=c=1/(newpixel-(atan(1/newpixel-(conj(b1))))+conj(1/newpixel)+flip(1/newpixel))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c+0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2546 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=(conj(1/newpixel)/exp(1/newpixel))
  z=1/(newpixel-(atan(1/newpixel-(conj(b1))))+conj(1/newpixel)+flip(1/newpixel))
  c=1/(newpixel-(cos(1/newpixel-(conj(b1))))+conj(1/newpixel)+flip(1/newpixel))/b1
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c+0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2547 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=(conj(1/newpixel)/exp(1/newpixel))
  z=1/(newpixel-(atan(1/newpixel-(conj(b1))))+conj(1/newpixel)+flip(1/newpixel))
  c=1/(newpixel-(cos(1/newpixel-(conj(b1))))+conj(1/newpixel)\
    +flip(1/newpixel))/(newpixel-b1)
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-flip(flip(0.099/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2548 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-flip(1/newpixel)-tan(|1/newpixel|)-conj(1/newpixel))
  c=1/(newpixel-atan(1/newpixel-cosh(|z|)-conj(|z|))\
      -conj(1/(exp(newpixel-0.85))))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-flip(flip(0.099/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2549 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-exp(1/newpixel)-tan(|1/newpixel|)-conj(0.10/newpixel))
  c=1/(newpixel-asinh(1/newpixel-cosxx(|z|)-conj(|z|))\
      -conj(1/(exp(newpixel-0.85))))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-flip(flip(0.099/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c-0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2550 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=|conj(newpixel)|, b4=|flip(newpixel)|
  z=((tan(newpixel*3)/tanh(newpixel+conj(0.1/newpixel)+flip(0.01/newpixel)))/b4)-0.3
  c=((newpixel-z^3)/(b3+z))/2
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-flip(flip(0.099/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c+0.39/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2551 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=1/(newpixel-sin(1/newpixel)-cos(2.5/newpixel))
  c=((newpixel-conj(0.1/newpixel)-flip(0.01/newpixel)-b1))
  z=(newpixel-b1-c-flip(0.09/c))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-flip(flip(0.099/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c+0.14/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2552 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(1/(newpixel-conj(1/(conj(newpixel)))-flip(1/(conj(newpixel)))))
  c=1/(tan(newpixel)*conj(5/newpixel-0.724))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-flip(flip(0.099/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c+0.5/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2553 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(1/(newpixel-conj(1.5/(conj(newpixel)))-flip(1.5/(conj(newpixel)))))
  c=1/(tan(newpixel)*conj(2/newpixel-0.924))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-flip(flip(0.099/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c+0.5/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2554 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=(1/(newpixel-conj(1.5/(conj(newpixel)))-flip(1.5/(conj(newpixel)))))
  z=1/(tan(newpixel)*conj(2/newpixel-0.924))+0.3
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-flip(flip(0.099/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c+0.5/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2555 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=newpixel-cosh(0.25/newpixel)-conj(0.01/newpixel)+0.75
  z=(newpixel*(newpixel-flip(0.010/newpixel)-conj(0.10/newpixel)))+(0.0001/newpixel)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.1/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
  z=(|z|/5)+z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2556 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(newpixel*(newpixel-flip(0.010/newpixel)-conj(0.10/newpixel)))+(0.0001/newpixel)
  c=(-0.7556,-0.242)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
  z=(|z|/5)+z*z+c+0.09/newpixel
   ;z=z*z*z/5+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2557 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(newpixel/3*cos(newpixel-flip(0.010/newpixel)-conj(0.10/newpixel)))
  c=(-0.7456,-0.132)/1.2
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
  z=(|z|/5)+z*z+c+0.35/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2558 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=1/(newpixel-sqrt(conj(newpixel))-log(newpixel))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
  z=(|z|/5)+z*z+c+0.35/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2559 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-log(conj(newpixel))-log(cosh(newpixel)))
  c=1/(newpixel-sqrt(conj(newpixel))-log(newpixel))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
  z=(|z|/5)+z*z+c+0.59/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2560 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-log(conj(newpixel))-sqrt(tan(2*newpixel)))
  c=1/(newpixel-sqrt(conj(newpixel))-log(newpixel))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
  z=(|z|/5)+z*z+c+0.69/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2561 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(1/(newpixel/0.7-log(conj(newpixel))-sqrt(conj(tan(newpixel)))))-0.2
  c=1/((conj(newpixel)-sqrt(conj(newpixel))-sqrt(newpixel)))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0009995
  z=(|z|/5)+z*z+c+0.39/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2562  (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(1.9*newpixel-real(1/newpixel)-cos(imag(1/newpixel)))
  c=1/(newpixel/0.5-sin(1/newpixel)-cosxx(0.25/newpixel))-0.3
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*2*(|z|)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
  z=(|z|/5)+z*z+c+0.59/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2563 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=1/(newpixel/0.8-conj(0.1/newpixel)+exp(0.06/newpixel))
  z=1/(newpixel-abs(cos(c^2)-conj(c))+flip(cabs(tanh(c)-conj(c))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*2*(|z|)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.12/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0004995
  z=(|z|/5)+z*z+c+0.49/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2564 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=1/(newpixel-conj(1/newpixel)+exp(0.045/newpixel)-flip(1/newpixel))
  z=1/(newpixel-(3/c-c/4)-conj(1/newpixel))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*2*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0004995
  z=(|z|/5)+z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2565 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=1/(newpixel-conj(1/newpixel)+exp(0.045/newpixel)-flip(1/newpixel))
  z=c=1/(newpixel-(3/b3-b3/4)-conj(0.1/newpixel)+exp(0.050/(|newpixel|)))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*2*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0004995
  z=(|z|/5)+z*z+c+0.45/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2566 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel-(conj(0.10/newpixel)+(exp(0.0250/newpixel)))
  c=newpixel-(tanh(0.010/newpixel)+(exp(0.0250/newpixel)))+0.1
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*(|z|)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.1/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0004995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2567 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=flip(imag(sqr(newpixel)))
  c=newpixel*sqr(newpixel)-conj(0.10/newpixel)-flip(0.010/newpixel)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0010995
  z=(|z|/5)+z*z+c+0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2568 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=flip(imag(sqr(newpixel)))
  c=(newpixel)-conj(0.10/newpixel)-flip(0.010/newpixel)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0010995
  z=(|z|/5)+z*z+c+0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2569 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  p5=exp(0.035/newpixel)
  z=sinh(newpixel^2)-1/log(newpixel-(15*p5)-flip(0.75*p5))
  c=z-0.0325
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=400
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0010995
  z=(|z|/5)+z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2570 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel*(newpixel-0.2)-1/log(0.10/newpixel)-cos(0.010/newpixel)\
    +conj(0.10/newpixel)+0.45
  c=newpixel*(newpixel-0.2)-1/log(0.10/newpixel)-cos(0.010/newpixel)\
    +conj(0.08/newpixel)+0.1
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.009/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2571 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=newpixel
  z=flip(imag(1-newpixel))*conj(newpixel^2)-conj(0.10/newpixel)-flip(0.010/newpixel)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.019/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2572 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=newpixel-conj(0.1/newpixel)-flip(0.02/newpixel)
  z=flip(imag(1-newpixel))*conj(newpixel^5)-conj(0.10/newpixel)-flip(0.010/newpixel)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.06/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.059/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2573 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=flip(imag(1-newpixel))
  c=newpixel
  z=b3*(newpixel^2)-conj(0.10/newpixel)-flip(0.010/newpixel)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.06/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.059/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2574 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(newpixel-conj(0.1/newpixel)-flip(0.011/newpixel))
  c=1/(newpixel-acosh(1/newpixel-cosxx(|z|)-conj(|z|))\
    -conj(1/(exp(newpixel+1.85))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.13/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2575 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(newpixel-conj(0.1/newpixel)-flip(0.051/newpixel))
  c=1/(newpixel-acosh(1/newpixel-cotan(|z|)-conj(|z|))-conj(1/(exp(newpixel+1.85))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.13/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2576 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-conj(0.1/newpixel)-exp(0.25/newpixel))
  c=1/(newpixel+cosxx(1/(sqr(cos(newpixel+conj(newpixel))))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2577 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-log(conj(newpixel))-log(cosh(newpixel)))
  c=1/(newpixel+cosxx(1/(sqr(cos(newpixel+conj(newpixel))))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2578 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-sqrt(conj(newpixel))-log(cotan(newpixel)))
  c=1/(newpixel+cosxx(1/(sqr(cos(newpixel+conj(newpixel))))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2579 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-conj(conj(0.10/newpixel))-cotan(cotan(1/newpixel)))
  c=1/(newpixel+cosxx(1.5/(sqr(cos(newpixel+conj(newpixel))))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.49/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 96msg.frm
}
 
Carr2580 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(1/(newpixel-conj(conj(0.10/newpixel))\
    -cotan(cotan(1/newpixel))))/(1.33+1/newpixel)
  c=1/(newpixel+cos(1.5/(sqr(cos(newpixel+conj(newpixel))))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.49/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2581 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-flip(flip(0.1/newpixel))-conj(conj(flip(0.25/newpixel))))
  c=1/(newpixel+cos(1.5/(sqr(cos(newpixel+conj(newpixel))))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.49/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2582 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-flip(flip(0.1/newpixel))-conj(conj(flip(0.25/newpixel))))
  c=1/(newpixel+cos(1.5/(sqr(cos(newpixel+conj(newpixel))))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.12/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0013995
  z=(|z|/5)+z*z+c-0.49/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
 
Carr2584 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/((newpixel)-(flip(imag(0.1/newpixel))-(flip(real(0.25/newpixel))))^4)+0.2
  c=1/(flip(imag(newpixel))+cos(1.5/(sqr(cos(newpixel+conj(newpixel))))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2585 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-(tanh(0.10/newpixel)-sqr(sinh(0.0250/newpixel)))^6)
  c=1/(newpixel+cos(3.5/(sqr(cos(newpixel+conj(newpixel))))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2586 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel*(3*newpixel-flip(0.01/newpixel)-conj(0.1/newpixel)))
  c=1.3/(newpixel*(cabs(2.15*newpixel-flip(0.010/newpixel)-conj(0.10/newpixel))))-0.1
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.10/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2587 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel*(3*sinh(newpixel)-flip(0.01/newpixel)-conj(0.1/newpixel)))
  c=0.83/(newpixel*(cabs(2.15*newpixel-flip(0.10/newpixel)-conj(0.010/newpixel))))-0.1
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.10/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2588 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=0.85/(newpixel-asin(0.5/newpixel)-exp(0.0250/newpixel))
  c=0.83/(newpixel*(cabs(2.15*newpixel-flip(0.10/newpixel)-conj(0.010/newpixel))))-0.1
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.10/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
Carr2583 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-(flip(flip(0.1/newpixel))-conj(conj(flip(0.25/newpixel))))^4)+0.2
  c=1/(newpixel+cos(1.5/(sqr(cos(newpixel+conj(newpixel))))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}
 
