
BackwardBrot   { ; Jim Muth
z=c=pixel:
z=p1^(z^p2)+(p3*c),
|z| <16 }

Elliptic {; Jim Muth
  imag(z),real(c)
z=flip(imag(pixel))+p1,
c=real(pixel)+p2:
z=sqr(z)+c,
|z| <= 16
}

HyperMandelbrot {; periodicity must be turned off
a=(p1),b=(0,0):
q=sqr(a)-sqr(b)+pixel,
b=(p2+2)*a*b+p3,
a=q,
|a|+|b| <= 100
}

JimsCompMand {; Jim Muth
z=c=pixel:
z=z^p1*(c^p2)+c,
|z| <= p3+100
}

Klein_tri_lattice(XYAXIS){
ang=pi/3
r=1/2
rr=r*r
z=pixel
t1=sin(ang)
t2=tan(ang)
t3=exp(flip(ang))
:
inside=0
m = round(imag(z)/t1)
n = round(real(z)-imag(z)/t2)
c0=n+m*t3
c1=n+(m-1)*t3
c2=n+(m+1)*t3
c3=(n-1)+m*t3
c4=(n+1)+m*t3
if(|z-c0|<rr)
         z=r*conj(r/(z-c0))+c0
         inside=1
elseif(|z-c1|<rr)
         z=r*conj(r/(z-c1))+c1
         inside=1
elseif(|z-c2|<rr)
         z=r*conj(r/(z-c2))+c2
         inside=1
elseif(|z-c3|<rr)
         z=r*conj(r/(z-c3))+c3
         inside=1
elseif(|z-c4|<rr)
         z=r*conj(r/(z-c4))+c4
         inside=1
endif
inside}

MandelbrotBC  { ; Formula by Andrew Coppin
  e=p1
  p=real(p2)+PI
  q=2*PI*trunc(p/(2*PI))
  r=real(p2)-q
  Z=C=Pixel:
    Z=log(Z)
    IF(imag(Z)>r)
      Z=Z+flip(2*PI)
    ENDIF
    Z=exp(e*(Z+flip(q)))+C
  |Z|<100
}

MandelbrotBC1   { ; by several Fractint users
  e=p1, a=imag(p2)+100
  p=real(p2)+PI
  q=2*PI*fn1(p/(2*PI))
  r=real(p2)-q
  Z=C=Pixel:
    Z=log(Z)
    IF(imag(Z)>r)
      Z=Z+flip(2*PI)
    ENDIF
    Z=exp(e*(Z+flip(q)))+C
  |Z|<a
}

MandelbrotCube {; Jim Muth  real(c),imag(c)
z=p1, c=pixel+p2:
z=z*(sqr(z))+c,
|z| <= 16 }

MandelbrotMiN {; Jim Muth
b=p1, z=p2, c=p3+pixel:
z=(-z)^(b)+c,
|z| <= 16
}

MandelbrotMix2 {; Jim Muth
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
g=1/f, h=1/d, j=1/(f-b), z=(((-a*b*g*h)^j)+(p4)),
k=real(p3)+1, l=imag(p3)+100, c=fn1(pixel):
z=k*((a*(z^b))+(d*(z^f)))+c,
|z| < l
}

MandelbrotMix3 {; Jim Muth
z=real(p5), c=fn1(pixel), a=real(p1), b=imag(p1),
d=real(p2), f=imag(p2), g=real(p3), h=imag(p3),
j=real(p4), k=imag(p4), l=imag(p5)+100:
z=(a*(z^b))+(d*(z^f))+(g*(z^h))+(j*(z^k))+c,
|z| <=l }

MandelbrotMix4 {; Jim Muth
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
g=1/f, h=1/d, j=1/(f-b), z=(-a*b*g*h)^j,
k=real(p3)+1, l=imag(p3)+100, c=fn1(pixel):
z=k*((a*(z^b))+(d*(z^f)))+c,
|z| < l
}

MandelbrotN {; Jim Muth
b=p1, z=p2, c=p3+pixel:
z=z^(b)+c,
|z| <= 16
}

MandelbrotN7 {; Jim Muth
z=p1, c=p2+pixel:
z=z*z*z*z*z*z*z+c,
|z| <= 16
}

MandelbrotVE {; Jim M.  (variable escape radius)
z=p1, c=pixel+p2,
b=sqr(real(p3)):
z=sqr(z)+c,
|z| <= b
}

MandNewt01 {; Jim Muth
z=c=pixel:
a=z^3+(c-1)*z-(p1*c)
b=3*z^2+(p2*c-1)
z=z-p3*a/b
.00005 <= |a|
}

MandNewt04 {; Jim Muth
z=c=pixel:
a=z^3+(c-1)*z-c
b=p1*z^2+c-1
z=z-p2*a/b
p3 <= |a|
}

MandNewt05 {; Jim Muth
z=c=fn1(pixel):
a=z^2+(c-p1)*z-c
b=p2*z^2+c-1
z=z-1*a/b
p3 <= |a|
}

MandNewt06 {; Jim Muth
z=c=(pixel*p1):
a=z^3+(c-p2)*z-c
b=p3*z^2+c-1
z=z-1*a/b
0.000000000000000000000000000001 <= |a|
}

MandNewt07 {; Jim Muth
z=c=(pixel*p1):
a=z^3+(c-p2)*z-c
b=3*z^2+c-1
z=z-p3*a/b
.000000000000000000000000000001 <= |a|
}

MandNewt08 {; Jim Muth
z=c=(pixel*p1):
a=z^p2+(c-1)*z-c
b=p3*z^2+c-1
z=z-1*a/b
0.000000000000000000000000000001 <= |a|
}

MandNewt11 {; Jim Muth
z=g=pixel, a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), e=real(p3), f=imag(p3):
h=z^a+(g-b)*z-f
j=c*z^d+g
z=z-e*h/j,
.0000000000000000000000000000005 <= |h|
}

MandNewt12 {; Jim Muth
z=g=pixel, a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), e=real(p3), f=imag(p3):
h=z^a+(g-1)*(z-b)
j=c*z^d+g
z=z-e*h/(f*j),
.0000000000000000000000000000005 <= |h|
}

MandNewt13 {; Jim Muth
z=g=pixel, a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), e=real(p3), f=imag(p3):
h=z^a+(g-b)*z-f
j=c*z^d+g
z=z-e*h/j,
0.000000000000000000000000000001 <= |h|
}

MandNewt14 {; Jim Muth
z=g=pixel, a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), e=real(p3), f=imag(p3):
h=z^a+(g-1)*(z-b)
j=c*z^d+g
z=z-e*h/(f*j),
0.000000000000000000000000000001 <= |h|
}

multirot-XY-ZW  {; Jim Muth
; draws 6 planes and many rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=sqr(z)+c,
|z| <= 36  }

multirot-XY-ZW-new  {; Jim Muth
; draws 6 planes and rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p3,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p4:
z=z^(p2)+c,
|z| <= 36  }

multirot-XY-ZW-VE  {; Jim Muth
; draws 6 planes and rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p3,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p4:
z=z^(p2)+c,
|z| <= sqr(p5) }

multirot-XZ-YW {; Jim Muth
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
z=f*real(pixel)+p2, c=e*imag(pixel)+p3:
z=sqr(z)+c,
|z| <= 36  }

multirot-XZ-YW-new {; Jim Muth
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
z=f*real(pixel)+p3, c=e*imag(pixel)+p4:
z=z^(p2)+c,
|z| <= 36  }

Mystic2 {; Jim Muth
a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), k=real(p3), f=imag(p3),
g=pixel, z=(pixel)^a+(b*(pixel))^c:
z=(fn1(z)+(d*(g)))^k+(f*(cos(g)))
g=sqr(g),
LastSqr <= 100
}

MytestAF     {; Jim Muth
z=c=pixel,
a=flip(real(p1)), b=flip(imag(p1)):
z=z^a+(-z)^b+c,
|z|<=100 }

Mytest08c  {; Jim Muth
z=fn1(pixel), a=real(p3),
b=imag(p3), c=a+(b*pixel):
z=(((z^p1)*z)^p2)^(-p2)+c,
|z|<=100
}

NewtonTest27 {; Jim Muth
a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), k=real(p3), f=imag(p3),
z=(pixel):
zx=(z^b)-a
zy=(c*z)^d
z=z-(k*zx/zy),
|zx| >= f
}

ObliqueManPlus {;Jim Muth
z=p1+pixel, c=p2+(p3*pixel):
z=sqr(z)+c,
|z| <=100
}

SliceJB-new {; from John R. H. Goering, July 1999
  pix=pixel, u=real(pix), v=imag(pix), a=pi*real(p1),
  b=pi*imag(p1), g=pi*real(p2), d=pi*imag(p2), ca=cos(a),
  cb=cos(b), sb=sin(b), cg=cos(g), sg=sin(g), cd=cos(d),
  sd=sin(d), p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd), r=u*sg+v*ca*sb*cg,
  s=v*sin(a), c=p+flip(q)+(p4), z=r+flip(s)+(p5):
  z=z^(p3)+c
  |z|<=9
  }

SliceJB-new-min {; by John R. H. Goering, July 1999
  pix=pixel, u=real(pix), v=imag(pix), a=pi*real(p1),
  b=pi*imag(p1), g=pi*real(p2), d=pi*imag(p2), ca=cos(a),
  cb=cos(b), sb=sin(b), cg=cos(g), sg=sin(g), cd=cos(d),
  sd=sin(d), p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd), r=u*sg+v*ca*sb*cg,
  s=v*sin(a), c=p+flip(q)+(p4), z=r+flip(s)+(p5):
  z=(-z)^(p3)+c
  |z|<=100
  }

TowerMinExp04a {; Jim Muth
z=pixel, c=p2+(p3*pixel):
z=z^fn1(z^fn2(-z^fn3(z^fn4(-z+p1))))+c,
|z| <= 100
}

triternion  {; Jim Muth
 ; adapted from Morgan Owens' formula
c1=real(pixel)+(p1),
c2=imag(pixel)+(p2),
c3=(p3),z1=z2=z3=0:
nz1=z1*z1+z2*z3+z3*z2+c1
nz2=z1*z2+z2*z1+z3*z3+c2
nz3=z1*z3+z2*z2+z3*z1+c3
z1=nz1,z2=nz2,z3=nz3
z=nz1+flip(nz2)
|z-pixel|<100 }

