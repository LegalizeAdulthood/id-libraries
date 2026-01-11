Carr1159 {
  z=1/pixel*0.91/pixel, c=pixel/(1.099,0):
  z=z-(c*sqr(z)+pixel)/(pixel-z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1197 {
  z=conj(1/pixel*0.91/pixel), z2=z+exp(cosxx(1/pixel)), z3=z*z2
  c=(1/cosxx(sqr(pixel)))/(1.099,0):
  z=(z*1/c)
  z2=z3-(z2+z/c)
  z3=z2-(z3+z2)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1151 {
  z=pixel/((1.099,0)^(pixel))
  c=(pixel/((2.099,0)*1/z)):
  z=(z*z+c)/(z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
