Carr-928 {
  z=conj(6/pixel), c=cosh(pixel+8):
  z=(((imag(z)/c)+(z*1/c))/(pixel-c*c))/0.6
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}
