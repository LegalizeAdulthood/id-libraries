JoWe_26_28_PHC {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=fn1(sqr(cos(z))-sqr(sin(z))\
    +tan(z))*whitesq+fn2(log(1-sqr(z)))*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_28_PHC_1 {; Jo Weber [100424,35] 11/1996
               ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=log(1-sqr(pixel))
  z=newpixel
  bailout=p3:
  z=fn1(z)*whitesq+fn2(z)*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_28_PHC_2 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=log(1-sqr(z))
  z=fn1(z)*(whitesq==0)+fn2(z)*whitesq
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_35_1_PHC {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=3*fn1(z)*whitesq-5*fn2(fn2(fn3(z)))*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_35_2_PHC {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=p1*fn1(z)*whitesq-p2*fn2(fn2(fn3(z)))*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_37_PHC {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  qad=sqr(tan(z))
  z=sqr(qad)-2*qad*tan(z)+4*qad+tan(2*z)
  z=fn1(z)*whitesq+fn2(z)*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_38_PHC {; Jo Weber [100424,35] 11/1996
  z=c=pixel
  bailout=p3:
  z=(p1*fn1(z)+c)*whitesq+(p2*(fn2(z)/fn3(z)))*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_40_PHC {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=p1*log(sin(p2*z))
  z=fn1(z)*(whitesq==0)+fn2(z)*whitesq
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_54_PHC {; Jo Weber [100424,35] 11/1996
             ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=fn2(fn1((1-pixel*pixel)/(p1*pixel)))
  z=c=newpixel:
  z=z*z*whitesq+c+((z<0)+newpixel)*(whitesq==0)
  |real(z)|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_54_PHC {; Jo Weber [100424,35] 11/1996
             ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=fn2(fn1((1-pixel*pixel)/(p1*pixel)))
  z=c=newpixel:
  z=z*z*whitesq+c+((z<0)+newpixel)*(whitesq==0)
  |real(z)|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_55_PHC {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  a=fn1(1+tan(z))
  b=fn2(tan(z)^2)
  z=a*(whitesq==0)+b*whitesq
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_C_28_PHC {; Jo Weber [100424,35] 11/1996
  bailout=p3
  z=pixel
  z=log(1-z)
  z=fn3(p1/fn1(z)+p2/fn2(z))
  c=(flip(imag(0.33-pixel))*sqr(pixel)\
    -conj(0.10/pixel)-flip(0.010/pixel)):
  z=z*z*whitesq+(c+pixel)*(whitesq==0)
  (|real(z)|+|imag(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_C_28_PHC2 {; Jo Weber [100424,35] 11/1996
  bailout=p3
  z=pixel
  z=log(1-z)
  z=fn3(p1/fn1(z)+p2/fn2(z))
  c=(flip(imag(0.33-pixel))*sqr(pixel)\
    -conj(0.10/pixel)-flip(0.010/pixel)):
  z=z*z*whitesq+c+pixel*(whitesq==0)
  (|real(z)|+|imag(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_C_28_PHC3 {; Jo Weber [100424,35] 11/1996
  bailout=p3
  z=pixel
  z=log(1-z)
  z=fn3(p1/fn1(z)+p2/fn2(z))
  c=(flip(imag(0.33-pixel))*sqr(pixel)\
    -conj(0.10/pixel)-flip(0.010/pixel)):
  z=log(z*z)*whitesq+c+pixel*(whitesq==0)
  (|real(z)|+|imag(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_XY_25_PHC {; Jo Weber [100424,35] 11/1996
                ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=0.5*tan(pixel)-2*sin(pixel)
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=atanh(z)*whitesq+log(z)*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_XY_28_PHC {; Jo Weber [100424,35] 11/1996
                ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=log(1-sqr(pixel))
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=fn1(z)*whitesq+fn2(z)*(whitesq==0)
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_XY_31_PHC {; Jo Weber [100424,35] 11/1996
                ; Added variable "newpixel". G. Martin 6/27/99
  qad=sqr(pixel)
  newpixel=exp(2*pixel)*(sqr(qad)-3*qad+6*pixel)
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=z*whitesq+fn3(z)*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_24 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=sin(sqr(cos(p1*z+p2)))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_25 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=p1*tan(z)-p2*sin(z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_28 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=log(1-sqr(z))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_28_2 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=log(1-sqr(z))
  z=2*fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_28_3 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=log(1-sqr(z))
  z=p1*fn1(z)+p2*fn2(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_28_5 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=log(1-sqr(z))
  z=p1*fn1(z)+p2*fn2(z)
  z=fn3(z)-(z>=0)+(z<0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

jowe_29m {; by Jo Weber, 100424,35 10/96
          ; bailout is p3
  z=pixel
  bailout=p3:
  z=fn1(fn2((p1-z)/(p2+z)))
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: 96msg.frm
}

JoWe_30 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=exp(z)*z^2/(p1-z)
  z=p2*fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_32 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  qwurz=sqrt(z)
  su=p1^qwurz
  z=log((1+su)/(1-su))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_33 {; Jo Weber [100424,35] 11/1996
         ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=pixel*pixel-(1-pixel)
  z=c=newpixel
  bailout=p3 :
  z=sqrt(p1*exp(z)+c)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_33_1 {; Jo Weber [100424,35] 11/1996
           ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=pixel*pixel-(1-pixel)
  z=c=newpixel
  bailout=p3 :
  z=sqr(p1*exp(z)+c)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_33_2 {; Jo Weber [100424,35] 11/1996
          ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=pixel*pixel-(1-pixel*pixel)
  z=c=newpixel
  bailout=p3:
  z=fn1(p1*fn2(z))+c
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_34_1 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=(exp(z)+1)/(exp(z)-1)
  z=fn1(z)-(z>=0)+(z<0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_35 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=3*sin(z)-5*sqr(sqr(sin(z)))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_35_1 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=3*fn1(z)-5*fn2(fn2(fn3(z)))
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_36 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=z/4-p1*sin(p2*z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_38 {; Jo Weber [100424,35] 11/1996
  z=c=pixel
  bailout=p3:
  z=p2*(fn1(z)/fn2(z))
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_38_1 {; Jo Weber [100424,35] 11/1996
  z=c=pixel
  bailout=p3:
  z=p2*fn1(z)+c-(z>=0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_39 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=3/8*z+0.25*sin(p1*z)+1/32*sin(p2*z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_41 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=(z+sqrt(z+1))/(z-sqrt(z-1))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_44 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=(p1*z+sqrt(p2*z))/sqrt(z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_45 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=p1/sqrt(p2*z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_46 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=p1/(p2*sqr(z)*z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_47 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=sqr(z)*z*sqrt(z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_51m {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=fn1(fn2((p1-z)/(p2+z)))
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_52 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  h=fn1(z)+p1
  z=z*(h+z)/h
  z=p2*fn2(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_53 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  h=fn1(z)+p1
  z=z*(h+z)/h
  z=z-(z>=0)+(z<0)
  z=p2*fn2(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_54_1 {; Jo Weber [100424,35] 11/1996
           ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=fn2(fn1((1-pixel*pixel)/(p1*pixel)))
  z=c=newpixel:
  z=z*z+c
  |real(z)|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_56 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=sin(z)^3+3*sin(z)^2*cos(z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_58 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=log(z)/z
  z=fn1(z)+real(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_59 {; Jo Weber [100424,35] 11/1996
  z=pixel
  a=p1-1, b=p2-2
  bailout=p3:
  z=log(z)/z
  z1=fn1(z)+real(z)
  z2=fn2(z)-real(z)
  z=a*flip(z1)/z1+b*conj(z2)/z2
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_C_01 {; Modified Sylvie Gallet frm. [101324,3444]
           ; Jo Weber [100424,35] 11/1996
           ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=exp(2*pixel)*(sqr(sqr(pixel))-3*sqr(pixel)+6*pixel)
  z=(exp(conj(conj(newpixel^450))-cosh(conj(conj(newpixel^20.5)))-0.4)-0.5)
  c=(flip(imag(0.33-newpixel))*sqr(newpixel)\
    -conj(0.10/newpixel)-flip(0.010/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_C_02 {; Modified Sylvie Gallet frm. [101324,3444]
           ; Jo Weber [100424,35] 11/1996
           ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=1+1/(1+1/(1+1/pixel))
  z=(exp(conj(conj(newpixel^450))-cosh(conj(conj(newpixel^20.5)))-0.4)-0.5)
  c=(flip(imag(0.33-newpixel))*sqr(newpixel)\
    -conj(0.10/newpixel)-flip(0.010/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_C_03 {; Modified Sylvie Gallet frm. [101324,3444]
           ; Jo Weber [100424,35] 11/1996
           ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=1+1/(1+1/(1+1/pixel))
  z=(exp(conj(conj(newpixel^150))-cosh(conj(conj(newpixel^10.5)))-0.4)-0.5)
  c=(flip(imag(0.33-newpixel))*sqr(newpixel)\
    -conj(0.10/newpixel)-flip(0.010/newpixel))
  c1=0.75*z, c2=1.25*z, c3=2.375*z, c4=3.0625*z, c5=4.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.3
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_C_04 {; Modified Sylvie Gallet frm. [101324,3444]
           ; Jo Weber [100424,35] 11/1996
           ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=1+1/pixel
  z=(fn1(conj(conj(newpixel^400))-fn2(conj(conj(newpixel^10.5)))-0.4)-0.5)
  c=(flip(imag(0.33-newpixel))*sqr(newpixel)\
    -conj(0.10/newpixel)-flip(0.010/newpixel))
  c1=0.75*z, c2=1.25*z, c3=2.375*z, c4=3.0625*z, c5=4.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.3
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_C_28_5 {; Jo Weber [100424,35] 11/1996
  bailout=p3
  z=pixel
  z=log(1-z)
  z=fn3(p1/fn1(z)+p2/fn2(z))
  c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)):
  z=z*z+c+0.2*pixel
  (|real(z)|) <= bailout
  ;SOURCE: 96msg.frm
}

JoWe_C_28_5_1 {; Jo Weber [100424,35] 11/1996
  bailout=p3
  z=pixel
  z=log(1-z)
  z=fn3(p1/fn1(z)+p2/fn2(z))
  c=(flip(imag(0.33-pixel))*sqr(pixel)\
    -conj(0.10/pixel)-flip(0.010/pixel)):
  z=z*z+c+pixel
  (|imag(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_XY_25 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=0.5*tan(pixel)-2*sin(pixel)
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_XY_27 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=(1+sqrt(pixel))/(2*pixel-1)
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_XY_31 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  qad=sqr(pixel)
  newpixel=exp(2*pixel)*(sqr(qad)-3*qad+6*pixel)
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_XY_40 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=p1*log(sin(p2*pixel))
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1+fn1(x1+fn2(x1))
  y1=y1+fn1(y1+fn2(y1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_XY_41 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=(pixel+sqrt(pixel+1))/(pixel-sqrt(pixel-1))
  z=newpixel
  bailout=p3:
  x=real(z), y=imag(z)
  x=x+fn1(x+fn2(x))
  y=y+fn1(y+fn2(y))
  z=p1*x+p2*y
  z=x+y
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_XY_42 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=sqr(sqr(pixel)-sqrt(sqr(pixel)-1))
  z=newpixel
  bailout=p3:
  x=real(z), y=imag(z)
  x=x+fn1(x-fn2(x))
  y=y+fn1(y-fn2(y))
  z=(p1*x+p2*y)/2
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_XY_46 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=0.1+1/pixel
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1+fn1(x1+fn2(x1))
  y1=y1+fn1(y1+fn2(y1))
  z=p1*x1+p2*y1
  z=1/fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_XY_51m {; Jo Weber [100424,35] 11/1996
             ; Added variable "newpixel". G. Martin 6/27/99
  k=(6, 4), l = (0, 4)
  newpixel=cos(sin((k-pixel)/(l+pixel)))
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_XY_54 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=fn2(fn1((1-pixel*pixel)/(p1*pixel)))
  z=c=newpixel:
  x=real(z), y=imag(z)
  r1=x*y, r2=p2*x/y, r3=x+y
  x=r1-r2, y=r2-r3
  z=(x+y)/2+(z>0)+newpixel
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_37 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  qad=sqr(tan(z))
  z=sqr(qad)-2*qad*tan(z)+4*qad+tan(2*z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_26 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=sqr(cos(z))-sqr(sin(z))+tan(z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_27 {; Jo Weber [100424,35] 9/1996
  z = pixel
  bailout=p3:
  z=fn1((p1+sqrt(z))/(p2*z-1))
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_27_PHC_1 {; Jo Weber [100424,35] 11/1996
  z=pixel:
  a=sqr((p1+sqrt(z))/(p2*z-1))
  b=sqrt((p3+sqrt(z))/(p2*z-1))
  z=a*whitesq+b*(whitesq==0)
  |z|<=25
  ;SOURCE: jo_we_50.frm
}

JoWe_28_4 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=log(1-sqr(z))
  z=p1*fn1(z)+p2*fn2(z)
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_29 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=log(sqrt((1-z)/(1+z)))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_34 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=(exp(z)+1)/(exp(z)-1)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_35_2 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=p1*fn1(z)-p2*fn2(fn2(fn3(z)))
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_42 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  qad=sqr(z)
  z=sqr(qad-sqrt(qad-1))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

jowe_43 {; by Jo Weber, 100424,35 10/96
         ; bailout is p3
  z=c=pixel
  bailout=p3:
  qad=sqr(z)
  z=sqrt(qad/(qad-p1*c))
  z=p2*fn1(z)
  |z|<=bailout
  ;SOURCE: 96msg.frm
}

JoWe_54 {; Jo Weber [100424,35] 11/1996
         ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=fn2(fn1((1-pixel*pixel)/(p1*pixel)))
  z=c=newpixel:
  z=c+(z<0)+newpixel
  |real(z)|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_55 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=1+tan(z)+tan(z)^2
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_57 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=(1+tan(z)^2)/(-1-cotan(z)^2)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_60 {; Jo Weber [100424,35] 11/1996
  z=pixel
  a=p1-1, b=p2-2
  bailout=p3:
  z=(1-log(z))/z^2
  z1=fn1(z)+real(z)
  r1=real(z1)
  i1=imag(z1)
  z2=fn2(z)-real(z)
  r2=real(z2)
  i2=imag(z2)
  z=a*|z1+r1-r2|+b*(cabs(z2)-i1+i2)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}

JoWe_61 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z1=sqr(sin(z))
  z=fn1(sin(z)*(3*cos(z)*(sin(z)+2*cos(z))-z1))
  |z|<=bailout
  ;SOURCE: jowe49.frm
}

JoWe_C_28_5_2 {; Jo Weber [100424,35] 11/1996
  bailout=p3
  z=pixel
  z=log(1-z)
  z=fn3(p1/fn1(z)+p2/fn2(z))
  c=(flip(imag(0.33-pixel))*sqr(pixel)\
    -conj(0.10/pixel)-flip(0.010/pixel)):
  z=z*z+c+pixel
  (|real(z)|+|imag(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}

