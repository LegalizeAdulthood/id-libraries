CGNewtonSinExp (XAXIS) {
  z=pixel:
  z1=exp(z)
  z2=sin(z)+z1-z
  z=z-p1*z2/(cos(z)+z1)
  .0001 < |z2|
  ;SOURCE: fractint.frm
}

