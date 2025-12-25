MandelbrotCube {; Jim Muth  real(c),imag(c)
  z=p1, c=pixel+p2:
  z=z*(sqr(z))+c
  |z| <= 16
  ;SOURCE: 99msg.frm
}
 
MandelbrotMix5way  { ; Jim Muth
  z=p5, c=pixel,
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
  g=real(p3), h=imag(p3), j=real(p4), k=imag(p4):
  z=(a*(z^b))+(d*(z^f))+(g*(z^h))+(j*(z^k))+c,
  |z| <= 100
}
 
MandelbrotMix5way {
  ; Jim Muth
  z=p5, c=pixel,
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
  g=real(p3), h=imag(p3), j=real(p4), k=imag(p4):
  z=(a*(z^b))+(d*(z^f))+(g*(z^h))+(j*(z^k))+c,
  |z| <= 100 
}
 
MandelbrotMix2way  { ; Jim Muth
  z=0,0, c=pixel,
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
  z=(a*(z^b))+(d*(z^f))+c,
  |z| <= 100
}
 
MandelbrotMix2way {
  ; Jim Muth
  z=0,0, c=pixel,
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
  z=(a*(z^b))+(d*(z^f))+c,
  |z| <= 100 
}
 
MandelbrotN {; Jim Muth
  b=p1, z=p2, c=p3+pixel:
  z=z^(b)+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}
 
ParabolicMiN {; Jim Muth
  b=p1, z=imag(pixel)+p2
  c=real(pixel)+p3:
  z=(-z)^(b)+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}
 
