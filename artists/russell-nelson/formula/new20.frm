MandelbrotMix4 {; Jim Muth
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
g=1/f, h=1/d, j=1/(f-b), z=(-a*b*g*h)^j,
k=real(p3)+1, l=imag(p3)+100, c=fn1(pixel):
z=k*((a*(z^b))+(d*(z^f)))+c,
|z| < l
}
multirot-XY-ZW {; draws all 6 planes and many rotations   NEW version
     ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
     ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
  z=sqr(z)+c
  |z| <= 36
  ;SOURCE: 98msg.frm
}
multirot-XZ-YW {; Jim Muth
   ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
   ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  ee=exp(flip(real(p1*.01745329251994)))
  f=exp(flip(imag(p1*.01745329251994)))
  z=f*real(pixel)+p2, c=ee*imag(pixel)+p3:
  z=sqr(z)+c
  |z| <= 36
  ;SOURCE: 98msg.frm
}
equ {
  z=Pixel:
  z=tan(z)/sin(cos(z))
  real(z)/Imag(z) < real(p1)
  ;SOURCE: 99msg.frm
}
