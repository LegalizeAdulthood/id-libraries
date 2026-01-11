MandelbrotMix4     { ; Jim Muth
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f
  h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1
  l=imag(p3)+100, c=fn1(pixel):
  z=k*((a*(z^b))+(d*(z^f)))+c
  |z| < l
}
HyperMandelbrot    { ; periodicity must be turned off
  a=(p1),b=(0,0):
  q=sqr(a)-sqr(b)+pixel,
  b=(p2+2)*a*b+p3,
  a=q,
  |a|+|b| <= 100
}
JuliaBC2     { ; Formula by Andrew Coppin
  e=p1, p=real(p2)+PI, q=2*PI*floor(p/(2*PI)),
  r=real(p2)-q, C=p3, Z=Pixel:
    Z=log(Z)
    IF(imag(Z)>r)
      Z=Z+flip(2*PI)
    ENDIF
    Z=exp(e*(Z+flip(q)))+C
  |Z| < p4+100
}
