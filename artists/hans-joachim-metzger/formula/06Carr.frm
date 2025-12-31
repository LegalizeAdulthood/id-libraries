Carr-501 {; Distance Estimator works here.
  z=1/pixel, c=exp(0.6,0.3)/pixel:
  z=z*z*z*z*z+flip(c/pixel)
  |z| <=10
  ;SOURCE: carr.frm
}

Carr-559 {
  z=1/pixel, c=1/conj(fn2(1/pixel*1/pixel)):
  z=z*z*z*z+conj(sin(c-0.524))
  |z| <=10
  ;SOURCE: carr.frm
}

Carr-560 {
  z=1/pixel, c=1/conj(fn2(1/pixel*1/pixel)):
  z=z*z*z*z+conj(sin(c-1.5))
  |z| <=10
  ;SOURCE: carr.frm
}

Carr-561 {
  z=1/pixel, c=1/conj(fn2(1/pixel*1/pixel*1/pixel)):
  z=sqr(conj(z*z*z))+conj(sin(c-1.5))
  |z| <=10
  ;SOURCE: carr.frm
}

