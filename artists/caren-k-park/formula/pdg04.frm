PD_412 {
  bailout = 4 + imag(p3)
  k = real(p3), z = z1 = pixel
  c = p1*fn3(z):
  z1 = fn1(z1^k) + p2*fn2(z1*c)
  x1 = real(z1), y1 = imag(z1)
  z2 = -x1 + flip(y1)
  z = log(z1)*whitesq + log(z2)*(whitesq==0)
  (|real(z)| <= bailout) && (|imag(z)| <= bailout)
  ;SOURCE: pdg04.frm
}
PD_413 {
  bailout = 4 + imag(p3)
  k = real(p3), z = z1 = pixel
  c = p1*fn3(z):
  z1 = fn1(z1^k)/fn2(p2 + z1*c)
  x1 = real(z1), y1 = imag(z1)
  z2 = -x1 + flip(y1)
  z = log(z1)*whitesq + log(z2)*(whitesq==0)
  (|real(z)| <= bailout) && (|imag(z)| <= bailout)
  ;SOURCE: pdg04.frm
}
