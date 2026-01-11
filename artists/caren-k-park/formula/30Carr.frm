Carr1319 {
  z=1/pixel, c=(c1/c2^c2/c1)
  c2=sqr(z*z-1)
  c1=1/(pixel*pixel*pixel)+c2:
  z=z-(c*1/z)
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}
Carr1342 {
  z=sqr(pixel), c=sqr(1/pixel):
  z=z-(pixel*pixel-z*z)/(pixel-(z*z+c))
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}
