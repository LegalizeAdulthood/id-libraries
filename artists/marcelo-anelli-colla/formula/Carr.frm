Carr-501 {; Distance Estimator works here.
  z=1/pixel, c=exp(0.6,0.3)/pixel:
  z=z*z*z*z*z+flip(c/pixel)
  |z| <=10
  ;SOURCE: carr.frm
}
Carr-503 {
  z=1/pixel, c=exp(0.6,0.3)/(1/pixel):
  z=(z*z+(pixel-0.124)*z-1/pixel)/c
  |z| <=10
  ;SOURCE: carr.frm
}
Carr-504 {; Distance Estimator works here.
  z=1/pixel, c=exp(0.6,0.3)/(1/pixel):
  z=(1/z*1/z+(pixel-0.124)*z-1/pixel)/c
  |z| <=10
  ;SOURCE: carr.frm
}
Carr-505 {; Distance Estimator works here.
  z=1/pixel, c=exp(0.6,0.3)/(1/pixel):
  z=(1/z*1/z*1/z+(pixel-0.124)*z-1/pixel)/c
  |z| <=10
  ;SOURCE: carr.frm
}
Carr-506 {; Distance Estimator works here.
  z=1/pixel, c=exp(0.6,0.3)/(1/pixel):
  z=(1/z*1/z+sqr(pixel-0.124)*z-1/pixel)/c
  |z| <=10
  ;SOURCE: carr.frm
}
Carr-507 {
  z=1/pixel, c=exp(0.6,0.3)/(0.5/pixel):
  z=(z/pixel*z/pixel+(pixel+0.524)*z-1/pixel)/c
  |z| <=10
  ;SOURCE: carr.frm
}
Carr-508 {
  z=1/pixel, c=exp(0.6,0.3)/(0.5/pixel):
  z=(z/(pixel-0.724)*z/(pixel-0.724)+(pixel+0.524)*-1/pixel)/c
  |z| <=10
  ;SOURCE: carr.frm
}
Carr-548 {
  z=1/pixel, c=1/cos(1/z+conj(1/z*1/z*1/z)):
  z=z*z+(c-0.324)
  |z| <=10
  ;SOURCE: carr.frm
}
Carr-555 {
  z=1/pixel, c=1/fn2(pixel*pixel):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}
Carr-560 {
  z=1/pixel, c=1/conj(fn2(1/pixel*1/pixel)):
  z=z*z*z*z+conj(sin(c-1.5))
  |z| <=10
  ;SOURCE: carr.frm
}
