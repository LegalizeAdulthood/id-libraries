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
 
