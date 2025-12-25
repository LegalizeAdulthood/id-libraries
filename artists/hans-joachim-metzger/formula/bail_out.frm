bail_out01 (xAxis) {
  z = c = pixel:
  z = z^2 + c
  |fn1(z)| <= p1
  ;SOURCE: bailout.frm
}
 
bail_out02 (xAxis) {
  z = c = pixel:
  z = z^2 + c
  |fn1(real(z))| <= p1
  ;SOURCE: bailout.frm
}
 
bail_out03i (xAxis) {; use p1 slightly less than 1 in sin and cos
  z = c = pixel, i = (0.0, 1.0):
  z = z^2 + c
  |fn1(imag(z)*i)| <= p1
  ;SOURCE: bailout.frm
}
 
bail_out04 (xAxis) {
  z = c = pixel:
  z = z^2 + c
  real(fn1(z)) <= p1
  ;SOURCE: bailout.frm
}
 
bail_out05 {
  z = c = pixel:
  z = z^2 + c
  imag(fn1(z)) <= p1
  ;SOURCE: bailout.frm
}
 
simple01 (xAxis) {
  z = c = pixel:
  z = z^2 + c
  real(z) <= abs(z) + p1
  ;SOURCE: bailout.frm
}
 
simple02 {
  z = c = pixel:
  z = z^2 + c
  imag(z) <= abs(z) + p1
  ;SOURCE: bailout.frm
}
 
