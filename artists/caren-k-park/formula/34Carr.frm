Carr1505 {; Julia?
  z=0.1/(pixel+pixel)/(flip(1/pixel))
  c=conj(pixel-1.5)/(z-1.2/(1/flip(pixel))):
  z=(z*z+c)/1.3
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1539 {; Julia
  z=((1-pixel)/0.413)+1.924
  c=z-1/conj(z*z)+conj(pixel-z):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1540 {
  z=sqr(1/pixel)+sqr(pixel)
  c=sin(tan(exp(z-1))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
