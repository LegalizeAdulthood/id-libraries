Carr1710 {; Mandelbrot.
  c=conj(pixel^1/pixel)/(pixel-(flip(1/pixel)-conj(1/pixel)))
  z=(1/pixel)/(3*pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}
