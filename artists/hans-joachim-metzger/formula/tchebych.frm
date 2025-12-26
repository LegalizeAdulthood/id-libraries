M_Lagandre6 {
  c = P1, z = Pixel:
  z = (z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c
  |z| < 100
  ;SOURCE: fractint.frm
}
 
J_Lagandre4 {
  c = pixel, z = P1:
  z = (z*z*(35 * z*z - 30) + 3) / 8 + c
  |z| < 100
  ;SOURCE: fractint.frm
}
 
J_Laguerre3 {
  c = pixel, z = P1:
  z = (z*(z*(-z + 9) -18) + 6 ) / 6 + c
  |z| < 100
  ;SOURCE: fractint.frm
}
 
M_TchebychevS3 {
  c = P1, z = Pixel:
  z = c*z*(z*z-2)
  |z|<100
  ;SOURCE: fractint.frm
}
 
J_TchebychevC3 {
  c = pixel, z = P1:
  z = c*z*(z*z-3)
  |z|<100
  ;SOURCE: fractint.frm
}
 
J_TchebychevC3 {
  c = pixel, z = P1:
  z = c*z*(z*z-3)
  |z|<100
  ;SOURCE: fractint.frm
}
 
M_Laguerre2 {
  c = P1, z = Pixel:
  z = (z*(z - 4) +2 ) / 2 + c
  |z| < 100
  ;SOURCE: tchebych.frm
}
 
