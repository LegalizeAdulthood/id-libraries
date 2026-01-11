Carr1483 {; Julia?
  z=conj(1-pixel)/2.33^1.75
  c=imag(4.299,-1.2):
  z=(z*z+c)
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c-0.1/pixel)))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}
