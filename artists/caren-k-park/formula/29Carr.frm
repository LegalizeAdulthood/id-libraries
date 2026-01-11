Carr1298 {
  z=real(pixel)+flip(imag(pixel))
  c=real(pixel)+conj(imag(pixel)):
  z=(z*z+pixel)/(pixel*pixel+z)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}
