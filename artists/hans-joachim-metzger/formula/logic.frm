ChaoticDualist1M {
  bailout=pixel
  z=pixel:
  x=real(z)
  y=imag(z)
  nx=1-abs(x-y)
  ny=1-abs(x+y-1)
  z=nx+flip(ny)
  |z|<=|bailout|
  ;SOURCE: 98msg.frm
}

