rfr0a41 {; Rolf Freericks
  IF (whitesq)
    z= pixel
  ELSE
    z=fn1(pixel)
  ENDIF:
  IF (whitesq)
    z = z*z*z*p1+z/p1
    PHC_bailout = z<=p3
  ELSE
    z=fn2(sin(z)-cos(z))-p2*z
    PHC_bailout = |z|<p3
  ENDIF
  PHC_bailout
  ;SOURCE: gal2.par
}
 
rfr0a51 {; Rolf Freericks
  z=pixel:
  z=(z*z-p1)/p2*z
  |z|<=4
  ;SOURCE: gal2.par
}
 
rfr0a53 {; Rolf Freericks
  z=zh=pixel:
  zh2=zh*zh
  zh=zh2*zh-zh
  zl=|z|
  zl=zl*zl
  IF (|zh|>zl)
    z=z*zh+p1
  ELSE
    z=z*z+p1
  ENDIF
  |z|>=p2
  ;SOURCE: gal2.par
}
 
rfr0a72 {; Rolf Freericks
         ; requires floating point
         ; try integer for "nice erros"
  z=pixel:
  z2=z*z
  z3=z*z2
  z4=z*z3
  z=(z4-z2-p1)/(4*z3-2*z)
  |z|>=p2
  ;SOURCE: gal2.par
}
 
rfr0a81 {; Rolf Freericks
  z=pixel, fourp2=4*p2:
  z2=z*z
  z3=z*z2
  z4=z*z3
  z=z-(p2*z4+4*z2-p1)/(fourp2*z3-8*z)
  |z|<=p3
  ;SOURCE: gal2.par
}
 
rfr0a84 {; Rolf Freericks
  z=sqr(pixel), fourp2=4*p2:
  z2=z*z
  z3=z*z2
  z4=z*z3
  z=fn1(z)-(fourp2*z3-3*z2+8*z)/(p2*z4-z3+4*z2-p1)
  |z|<=p3
  ;SOURCE: gal2.par
}
 
rfr0a91 {; Rolf Freericks
  z=pixel:
  z=z*sqr(z)-p1
  z<=p2
  ;SOURCE: gal2.par
}
 
rfr0a92 {; Rolf Freericks
  z=pixel:
  z=z*sqr(z)-p1
  abs(z)<=p2
  ;SOURCE: gal2.par
}
 
rfr0a93 {; Rolf Freericks
  z=pixel:
  z=z-((z*z-p1)/(2*z))*sin(2*z)-p2
  z<=p3
  ;SOURCE: gal2.par
}
 
rfr0aa1 {; Rolf Freericks
  z=pixel:
  z=z*z-p1
  z=fn1(z)+p2
  |z|<=p3
  ;SOURCE: gal2.par
}
 
rfr0ab1 {; Rolf Freericks
  zh=z=pixel:
  z=z*z-fn1(zh)
  z=abs(z)+p2*zh
  zh=fn2(zh)
  |z|<=p3
  ;SOURCE: gal2.par
}
 
rfr0ab2 {; Rolf Freericks
  zh=z=pixel, zh=fn1(zh+p1):
  z=z*z-zh
  zh=fn2(zh)-p2
  |z|<=p3
  ;SOURCE: gal2.par
}
 
rfr0ag2 {; by Jon Horner - 100112,1700 - FRAC'Cetera
         ; Complex-form of SPIDERJUL
         ; float=yes
         ; modified by Rolf Freericks 
         ; the original is cited at the end
  z = pixel, c = p1
  IF (whitesq)
    h=c
  ELSE
    h=(c-1/c)*p3
  ENDIF
  :
  z = z * z + c-h
  c = c * p2 + z
  |z| <= 4
    ; the original
    ;  z = pixel, c = p1:
    ;  z = z * z + c
    ;  c = c * p2 + z
    ;  |z| <= 4
  ;SOURCE: gal2.par
}
 
rfr0ag4 {; by Jon Horner - 100112,1700 - FRAC'Cetera
         ; Complex-form of SPIDERJUL
         ; float=yes
         ; modified by Rolf Freericks 
         ; the original is cited at the end
  z = pixel
  IF (whitesq)
    c=h=(1,0.1)
  ELSE
    c=p1
    h=(c-1/c)*p3
  ENDIF
  :
  z=z*z+c-h
  IF (whitesq)
    c=z
  ELSE
    c = c * p2 + z
  ENDIF
  |z| <= 4
    ; the original
    ;  z = pixel, c = p1:
    ;  z = z * z + c
    ;  c = c * p2 + z
    ;  |z| <= 4
  ;SOURCE: gal2.par
}
 
rfr0ah1 {; Rolf Freericks 
  z = pixel
  c=p1
  :
  h=fn1(c)-p2
  z=(z-c)*(z-h)*z-c*h
  c = h*c-z*h
  |z| <= 4
  ;SOURCE: gal2.par
}
 
rfr0ak1 {; Rolf Freericks 
  c = pixel
  h=z=p1
  :
  h=fn1(h)
  z=1-z*z*c-h
  |fn2(z)| >p2
  ;SOURCE: gal2.par
}
 
rfr09u0 {
  z1=z=pixel, z2=sqr(z), out=4*(p2<=0)+p2*(p2>0):
  z1=z1*z1+p1+(-1.1,0.25)
  z2=z2*z2+p1+(-1.1,0.25)
  z=z1*z2
  |z|<out
  ;SOURCE: gal2.par
}
 
rfr0a71 {; Rolf Freericks, rfreericks@compuserve.com
         ; requires floating point
         ; try integer for "nice erros"
         ; z=f(z)/f´(z) with f(z)=z^4-z^2-c
  z=pixel:
  z2=z*z
  z3=z*z2
  z4=z*z3
  z=(z4-z2-p1)/(4*z3-2*z)
  |z|>=p2
  ;SOURCE: gal2.par
}
 
