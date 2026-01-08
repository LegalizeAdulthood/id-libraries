Carr2929{ ; Modified OK-42
;passes=1 needs to be used with this PHC formula.
b5=1/pixel,
p1x=real(p1)+1,p1y=imag(p1)+1,
p2x=real(p2)+1,p2y=imag(p2)+1
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
zx=real(z),zy=imag(z),
x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y),
y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x),
z=x+flip(y),
|z|<=20
}
MandNewt06 {; Jim Muth
z=c=(pixel*p1):
a=z^3+(c-p2)*z-c
b=p3*z^2+c-1
z=z-1*a/b
0.000000000000000000000000000001 <= |a|
}
MandelbrotMix4 {; Jim Muth
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
g=1/f, h=1/d, j=1/(f-b), z=(-a*b*g*h)^j,
k=real(p3)+1, l=imag(p3)+100, c=fn1(pixel):
z=k*((a*(z^b))+(d*(z^f)))+c,
|z| < l
}
Carr2932{ ; Modified OK-42
;passes=1 needs to be used with this PHC formula.
b5=pixel,
p1x=real(p1)+1,p1y=imag(p1)+1,
p2x=real(p2)+1,p2y=imag(p2)+1
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
zx=real(z),zy=imag(z),
x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y),
y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x),
z=(|x+flip(y)|)+(x+flip(y))+(-0.7456,-0.132)+(x+flip(y))/10,
|z|<=4
}
Carr2931{ ; Modified OK-42
;passes=1 needs to be used with this PHC formula.
b5=pixel,
p1x=real(p1)+1,p1y=imag(p1)+1,
p2x=real(p2)+1,p2y=imag(p2)+1
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
zx=real(z),zy=imag(z),
x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y),
y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x),
z=x+flip(y)+(-0.7456,-0.132)+(x+flip(y))/10,
|z|<=4
}
Carr2926{; Modified-inandout04 
  ;passes=1 needs to be used with this PHC formula.
  k=((1)*(|p1|<=0)+p1)
  test=(4*(real(p2)<=0)+real(p2)*(0<p2))
  b4=cabs(pixel*2)-log(conj(0.5/pixel)),
  b5=oldz=pixel-conj(pixel-1/log(tan(1/pixel))-1/log(2/pixel))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
  a=(|z|<=|oldz|)*(c)
  b=(|oldz|<|z|)*(c*k)
  c=(a+b)
  oldz=z
  z=z*z+c
  |z|<=test
  }
Carr2926 {; Modified-inandout04 
          ; passes=1 needs to be used with this PHC formula.
  k=((1)*(|p1|<=0)+p1)
  test=(4*(real(p2)<=0)+real(p2)*(0<p2))
  b4=cabs(pixel*2)-log(conj(0.5/pixel))
  b5=oldz=pixel-conj(pixel-1/log(tan(1/pixel))-1/log(2/pixel))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
  a=(|z|<=|oldz|)*(c)
  b=(|oldz|<|z|)*(c*k)
  c=(a+b)
  oldz=z
  z=z*z+c
  |z|<=test
}

Carr2891 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel-conj(0.1/pixel)-flip(0.01/pixel)
  b3=|cos(conj(conj(pixel^30.5)))|
  b4=(conj(conj(0.15/log(exp(conj(conj(pixel^450))\
      -b3-0.4)-0.8))))+|flip(flip(2*b5^4))|
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}

Carr2939{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=flip(flip(pixel/2))^5-conj(0.13/pixel)-flip(0.1/pixel)+0.3,
b4=pixel^3-conj(0.13/pixel-cabs(0.1/pixel))
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=0.2*z^3+z^2+(-0.7656,-0.232)+c/10+c,
iter=iter+1
imag(flip(z))<=bailout
}
Carr2930{ ; Modified OK-42
;passes=1 needs to be used with this PHC formula.
b5=pixel,
p1x=real(p1)+1,p1y=imag(p1)+1,
p2x=real(p2)+1,p2y=imag(p2)+1
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
zx=real(z),zy=imag(z),
x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y),
y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x),
z=x+flip(y),
|z|<=4
}
