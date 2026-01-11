ilvp+fn123 {
  Ground = pixel+fn1(fn2(fn3(p2*pixel)))+fn1(fn3(fn2(p2*pixel)))
  z=Ground:
  z=sqr(z)+Ground
  |z|<=4
  ;SOURCE: ilvi.frm
}
ilvsqzz {; p1<0 complex,  ident, log
  Ground = pixel*fn1(p2*exp(p1*fn2(|pixel|)*imag(pixel)))
  z=Ground:
  z=sqr(z)+Ground
  |z|<=4
  ;SOURCE: ilvi.frm
}
Ilvifn1-iw5 {
  z = 1/fn1(p1*Pixel) + 1/fn2(p2*Pixel):
  z = sqr(z) + 1/fn1(p1*Pixel) + 1/fn2(p2*Pixel)
  | z | <= 4
  ;SOURCE: ilvi.frm
}
