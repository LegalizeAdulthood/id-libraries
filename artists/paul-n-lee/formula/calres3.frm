NewtonSinExp (XAXIS) {; Chris Green
                      ; Newton's formula applied to sin(x)+exp(x)-1=0.
                      ; Use floating point.
  z=pixel:
  z1=exp(z)
  z2=sin(z)+z1-1
  z=z-p1*z2/(cos(z)+z1)
  .0001 < |z2|
  ;SOURCE: fractint.frm
}
OK-09 {
  z = c = pixel, d = fn1(pixel), k = 1 + p1:
  z = z^c * k
  z = d / z
  |z| <= (5 + p2)
  ;SOURCE: overkill.frm
}
OK-09 {
  z = c = pixel, d = fn1(pixel), k = 1 + p1:
  z = z^c * k
  z = d / z
  |z| <= (5 + p2)
  ;SOURCE: overkill.frm
}
htd {
   ; Try a second order inductive term.
  z = zp2 = pixel, zp1 = (0,0), huge=1.0e32:
  temp = z
  z = zp1*zp1 - zp2
  zp2 = zp1
  zp1 = p1/temp
  (|zp1| <= 64) && (|z| <= huge)
  ;SOURCE: noel.frm
}
pheonix (XAXIS) {
   ; Add conjugation and produce a great fractal even if it's spelt wrong.
  z = pixel, zp1 = zp2 = (0,0):
  temp = z
  z  = z*z - zp2
  zp2 = zp1
  zp1 = conj(temp)
  |zp1| <= 4
  ;SOURCE: noel.frm
}
