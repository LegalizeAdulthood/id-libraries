MandelbrotCube {; Jim Muth  real(c),imag(c)
  z=p1, c=pixel+p2:
  z=z*(sqr(z))+c
  |z| <= 16
  ;SOURCE: 99msg.frm
}
 
MandelbrotMix4 {; Jim Muth
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f
  h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1
  l=imag(p3)+100, c=fn1(pixel):
  z=k*((a*(z^b))+(d*(z^f)))+c
  |z| < l
  ;SOURCE: 99msg.frm
}
 
MandelbrotMix4 {; Jim Muth
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f
  h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1
  l=imag(p3)+100, c=fn1(pixel):
  z=k*((a*(z^b))+(d*(z^f)))+c
  |z| < l
  ;SOURCE: 99msg.frm
}
 
JimsCompMand {; Jim Muth
  z=c=pixel:
  z=z^p1*(c^(p2-1))+c
  |z| <= p3+100
  ;SOURCE: 97msg.frm
}
 
MandelbrotBC1      { ; by several Fractint users
  e=p1, a=imag(p2)+100
  p=real(p2)+PI
  q=2*PI*fn1(p/(2*PI))
  r=real(p2)-q
  Z=C=Pixel:
    Z=log(Z)
    IF(imag(Z) > r)
      Z=Z+flip(2*PI)
    ENDIF
    Z=exp(e*(Z+flip(q)))+C
  |Z| < a
}
 
MandelbrotBC1   { ; by several Fractint users
  e=p1, a=imag(p2)+100
  p=real(p2)+PI
  q=2*PI*fn1(p/(2*PI))
  r=real(p2)-q
  Z=C=Pixel:
    Z=log(Z)
    IF(imag(Z) > r)
      Z=Z+flip(2*PI)
    ENDIF
    Z=exp(e*(Z+flip(q)))+C
  |Z| < a
}
 
MandelbrotBC1 {
  ; by several Fractint users
  f=p1, a=imag(p2)+100
  p=real(p2)+PI
  q=2*PI*fn1(p/(2*PI))
  r=real(p2)-q
  Z=C=Pixel:
  Z=log(Z)
  IF(imag(Z) > r)
    Z=Z+flip(2*PI)
  ENDIF
  Z=exp(f*(Z+flip(q)))+C
  |Z|
}
 
MandelbrotBC2      { ; originally by several Fractint users
                     ; and then modified by Jim Muth
  e=p1, a=imag(p2)+100
  p=real(p2)+PI
  q=2*PI*floor(p/(2*PI))
  r=real(p2)-q
  Z=C=Pixel:
    Z=log(Z)
    IF(imag(Z) > r)
      Z=Z+flip(2*PI)
    ENDIF
    Z=exp(e*(Z+flip(q)))+C
  |Z| < a
}
 
MandelbrotBC2 {
  ; by several Fractint users
  e=p1, a=imag(p2)+100
  p=real(p2)+PI
  q=2*PI*floor(p/(2*PI))
  r=real(p2)-q
  Z=C=Pixel:
    Z=log(Z)
    IF(imag(Z)>r)
      Z=Z+flip(2*PI)
    ENDIF
    Z=exp(e*(Z+flip(q)))+C
  |Z| < a 
}
 
MandelbrotMix2     { ; Jim Muth
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
  g=1/f, h=1/d, j=1/(f-b), z=(((-a*b*g*h)^j)+(p4)),
  k=real(p3)+1, l=imag(p3)+100, c=fn1(pixel):
  z=k*((a*(z^b))+(d*(z^f)))+c,
  |z| < l
}
 
MandelbrotMix2 {
  ; Jim Muth
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
  g=1/f, h=1/d, j=1/(f-b), z=(((-a*b*g*h)^j)+(p4)),
  k=real(p3)+1, l=imag(p3)+100, c=fn1(pixel):
  z=k*((a*(z^b))+(d*(z^f)))+c,
  |z| < l
}
 
MandelbrotMix3a    { ; Jim Muth
  z=real(p5), c=fn1(pixel), a=real(p1), b=imag(p1),
  d=real(p2), f=imag(p2), g=real(p3), h=imag(p3),
  j=real(p4), k=imag(p4), l=imag(p5)+100:
  z=(a*(z^b))+(d*(z^f))+(g*(z^h))+(j*(z^k))+c,
  |z| <= l
}
 
MandelbrotMix3a {
  ; Jim Muth
  z=real(p5), c=fn1(pixel), a=real(p1), b=imag(p1),
  d=real(p2), f=imag(p2), g=real(p3), h=imag(p3),
  j=real(p4), k=imag(p4), l=imag(p5)+100:
  z=(a*(z^b))+(d*(z^f))+(g*(z^h))+(j*(z^k))+c,
  |z| <=l
}
 
Multirot-XY-ZW-new { ; Jim Muth
      ; draws 6 planes and rotations
      ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
      ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p3,
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p4:
  z=z^(p2)+c,
  |z| <= 36
}
 
multirot-XY-ZW-new {; draws 6 planes and rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p3,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p4:
z=z^(p2)+c,
|z| <= 36  }
 
multirot-XY-ZW-new {; draws 6 planes and rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p3,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p4:
z=z^(p2)+c,
|z| <= 36  }
 
multirot-XY-ZW-new {
  ; draws 6 planes and rotations
  ;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
  ;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p3,
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p4:
  z=z^(p2)+c,
  |z| <= 36
}
 
Multirot-XZ-YW-new { ; Jim Muth
      ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
  e=exp(flip(real(p1*.01745329251994))),
  f=exp(flip(imag(p1*.01745329251994))),
  z=f*real(pixel)+p3, c=e*imag(pixel)+p4:
  z=z^(p2)+c,
  |z| <= 36
}
 
multirot-XZ-YW-new {; Jim Muth
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
z=f*real(pixel)+p3, c=e*imag(pixel)+p4:
z=z^(p2)+c,
|z| <= 36  }
 
multirot-XZ-YW-new {
  ; Jim Muth
  ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
  d=exp(flip(real(p1*.01745329251994))),
  f=exp(flip(imag(p1*.01745329251994))),
  z=f*real(pixel)+p3, c=d*imag(pixel)+p4:
  z=z^(p2)+c,
  |z| <= 36
}
 
OblateMix2         { ; Jim Muth
  z=real(pixel)+flip(real(p3)),
  c=fn1(flip(imag(pixel)))+imag(p3),
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
  z=(a*(z^b))+(d*(z^f))+c,
  |z| <= 100
}
 
SliceJulibrot2   { ; Hiram Berry <burningb@burningbridges.com>
                   ;  Fri, 5 Mar 2004 16:46:23 
                   ;  draws most slices of Julibrot
  pix=pixel, u=real(pix), v=imag(pix),
  a=pi*real(p1*0.0055555555555556),
  b=pi*imag(p1*0.0055555555555556),
  g=pi*real(p2*0.0055555555555556),
  d=pi*imag(p2*0.0055555555555556),
  ca=cos(a), cb=cos(b), sb=sin(b), cg=cos(g),
  sg=sin(g), cd=cos(d), sd=sin(d),
  p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd),
  r=u*sg+v*ca*sb*cg, s=v*sin(a),
  c=p+flip(q)+p3, z=r+flip(s)+p4:
  z=sqr(z)+c
  |z| <= 9 
}
 
SliceJulibrot2     { ; Jim Muth
                     ; draws most slices of Julibrot
  pix=pixel, u=real(pix), v=imag(pix),
  a=pi*real(p1*0.0055555555555556),
  b=pi*imag(p1*0.0055555555555556),
  g=pi*real(p2*0.0055555555555556),
  d=pi*imag(p2*0.0055555555555556),
  ca=cos(a), cb=cos(b), sb=sin(b), cg=cos(g),
  sg=sin(g), cd=cos(d), sd=sin(d),
  p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd),
  r=u*sg+v*ca*sb*cg, s=v*sin(a),
  c=p+flip(q)+p3, z=r+flip(s)+p4:
  z=sqr(z)+c
  |z| <= 9
}
 
SliceJulibrot2 {
  ; draws most slices of Julibrot
  pix=pixel, u=real(pix), v=imag(pix),
  a=pi*real(p1*0.0055555555555556),
  b=pi*imag(p1*0.0055555555555556),
  g=pi*real(p2*0.0055555555555556),
  d=pi*imag(p2*0.0055555555555556),
  ca=cos(a), cb=cos(b), sb=sin(b), cg=cos(g),
  sg=sin(g), cd=cos(d), sd=sin(d),
  p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd),
  r=u*sg+v*ca*sb*cg, s=v*sin(a),
  c=p+flip(q)+p3, z=r+flip(s)+p4:
  z=sqr(z)+c
  |z| <= 9 
}
 
SliceJulibrot4     { ; Jim Muth
                     ; draws most slices of Julibrot
  pix=pixel, u=real(pix), v=imag(pix),
  a=pi*real(p1*0.0055555555555556),
  b=pi*imag(p1*0.0055555555555556),
  g=pi*real(p2*0.0055555555555556),
  d=pi*imag(p2*0.0055555555555556),
  ca=cos(a), cb=cos(b), sb=sin(b), cg=cos(g),
  sg=sin(g), cd=cos(d), sd=sin(d),
  p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd),
  r=u*sg+v*ca*sb*cg, s=v*sin(a),
  c=p+flip(q)+p3, z=r+flip(s)+p4:
  z=z^(p5)+c
  |z| <= 9
}
 
SliceJulibrot4 {
  ; draws most slices of Julibrot
  pix=pixel, u=real(pix), v=imag(pix),
  a=pi*real(p1*0.0055555555555556),
  b=pi*imag(p1*0.0055555555555556),
  g=pi*real(p2*0.0055555555555556),
  d=pi*imag(p2*0.0055555555555556),
  ca=cos(a), cb=cos(b), sb=sin(b), cg=cos(g),
  sg=sin(g), cd=cos(d), sd=sin(d),
  p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd),
  r=u*sg+v*ca*sb*cg, s=v*sin(a),
  c=p+flip(q)+p3, z=r+flip(s)+p4:
  z=z^(p5)+c
  |z| <= 9 
}
 
MandNewt04 {; Jim Muth
  z=c=pixel:
  a=z^3+(c-1)*z-c
  b=p1*z^2+c-1
  z=z-p2*a/b
  p3 <= |a|
  ;SOURCE: 98msg.frm
}
 
Multimin-XY-ZW-new { ; Jim Muth
      ; draws 6 planes and rotations
      ;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
      ;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p3,
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p4:
  z=(-z)^(p2)+c,
  |z| <= 36
}
 
multimin-XY-ZW-new {
  ; draws 6 planes and rotations
  ;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
  ;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p3,
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p4:
  z=(-z)^(p2)+c,
  |z| <= 36 
}
 
multimin-XZ-YW-new {
  ; Jim Muth
  ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
  e=exp(flip(real(p1*.01745329251994))),
  f=exp(flip(imag(p1*.01745329251994))),
  z=f*real(pixel)+p3, c=e*imag(pixel)+p4:
  z=(-z)^(p2)+c,
  |z| <= 36
}
 
LyapunovMandel        { ; Morgan L. Owens <packrat@nznet.gen.nz>
                        ; Thu, 25 Jul 2002 20:49:19
  narg=real(p2)
  nmag=imag(p2)
  bailout=4*(real(p3)==0)+real(p3)*(real(p3)!=0)
  z0=c0=pixel
  z1=c1=pixel+nmag*(cos(narg)+(0,1)*sin(narg))
:
  z0=z0*z0+c0
  z1=z1*z1+c1
  cabs(z0-z1)<bailout
}
 
