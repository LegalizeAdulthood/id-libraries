Carr1151 {
  z=pixel/((1.099,0)^(pixel))
  c=(pixel/((2.099,0)*1/z)):
  z=(z*z+c)/(z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
 
Carr1710 {; Mandelbrot.
  c=conj(pixel^1/pixel)/(pixel-(flip(1/pixel)-conj(1/pixel)))
  z=(1/pixel)/(3*pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}
 
Carr1298 {
  z=real(pixel)+flip(imag(pixel))
  c=real(pixel)+conj(imag(pixel)):
  z=(z*z+pixel)/(pixel*pixel+z)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}
 
