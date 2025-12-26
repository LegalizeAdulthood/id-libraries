Carr1540 {
  z=sqr(1/pixel)+sqr(pixel)
  c=sin(tan(exp(z-1))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
 
Carr1483 {; Julia?
  z=conj(1-pixel)/2.33^1.75
  c=imag(4.299,-1.2):
  z=(z*z+c)
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c-0.1/pixel)))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}
 
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
 
Carr1591 {; Spider type.
  z=1/acos(pixel+pixel)
  c=1/asin(pixel):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}
 
Carr1630 {; Julia.
  z=(sqrt(pixel)^pixel)/sqr(sqr(1/asin(pixel)))
  c=acos(pixel)/acos(pixel+1/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1699 {; Mandel type.
  c=(pixel)/(flip(1/pixel)-conj(1/pixel))
  z=(1/pixel)/(2*pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
