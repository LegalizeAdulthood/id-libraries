Carr1630 {; Julia.
  z=(sqrt(pixel)^pixel)/sqr(sqr(1/asin(pixel)))
  c=acos(pixel)/acos(pixel+1/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
