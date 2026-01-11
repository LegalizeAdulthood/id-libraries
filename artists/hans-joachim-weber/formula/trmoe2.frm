trmoe-01 {
  z=c=pixel, c=c+5:
  IF(c<=10)
    z=z*cos(z+c)+1/c
  ELSEIF(c<=20)
    z=(cos(z)*tan(z)*atanh(z))+cosxx(c)
  ELSE
    z=(sqrt(z)*z)+cosh(c)
  ENDIF
  |z|<=256
  ;SOURCE: trmoe2.frm
}

trmoe-010 {
  z=Pixel/12.20, c=flip(atanh(conj(sqr(12, -20))))
  x=1.210*(z+c), y=(x*z)/.122*z:
  z=(z*fn1(x*y)-fn2(y*x))*c
  |z|<=1.22
  ;SOURCE: trmoe2.frm
}

trmoe-02 {
  z=c=pixel:
  z=fn1(z)*p1
  ;SOURCE: trmoe2.frm
}

trmoe-03 {
  z=c=1/pixel:
  z=fn1(z)*p1
  ;SOURCE: trmoe2.frm
}

trmoe-04 {
  z=flip(imag(cosh(sqr(pixel))))*1/pixel
  c=pixel+sqr(atan(z*z+1)):
  z=(z-(z*1/c)+sqr(1/pixel))/(pixel-z*z+c)
  |z|<=256
  ;SOURCE: trmoe2.frm
}

trmoe-05 {
  z=pixel, c=1/pixel
  x=(z+c)*sin(c)
  y=cos(x*z):
  z=z*(x*y)/abs(x)+c
  ;SOURCE: trmoe2.frm
}

trmoe-06 {
  z=(pixel*7.5)/2, c=sqr(z)*.00915
  x=cosxx(c/z), y=tanh(z*c):
  z=(z*1/c)*x+atanh(sqr(sqr(1/y)))
  |z|<=4
  ;SOURCE: trmoe2.frm
}

trmoe-07 {
  z=1/pixel*1.066, c=flip(sqr(z))*.1865
  z=(z+z)*c*z*z*z/cosxx(c+(z*z))+c
  |z|<4
  ;SOURCE: trmoe2.frm
}

trmoe-08 {
  z=pixel*-.1792, c=flip(cosxx(tan(sqr(z))))
  z=1/z*atan(cos(real(imag(z*c))))+c/-.1792
  |z|>.1792
  ;SOURCE: trmoe2.frm
}

trmoe-09 {
  z=-14.83/pixel, c=z^(z-.1483)
  z=(z*z*z)*cosxx(flip(z*c))+c+1.483
  |z|<.1483
  ;SOURCE: trmoe2.frm
}

trmoe-011 {
  z=c=pixel:
  z=fn1(z)*fn2(z)*fn3(z)*1/z+c
  |z|<=4
  ;SOURCE: trmoe2.frm
}

trmoe-012 {
  z=1/pixel-0.99, c=fn1(pixel):
  z=fn2(z)*.218+c
  |z|<=4
  ;SOURCE: trmoe2.frm
}

