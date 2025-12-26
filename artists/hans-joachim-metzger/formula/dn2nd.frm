Fractal4 {; Must! Press x to get to menu to set inside to bof60**
  z=c=pixel:
  z=exp(z*z)+c
  |z|<=4
  ;SOURCE: dn2nd.frm
}
 
Fractal5 {
  z=c=pixel:
  z=z*z/(tanh(c))+.25
  |z|<=4
  ;SOURCE: dn2nd.frm
}
 
Fractal6 {
   ; Must! press x to get to basic option menu and set inside to bof60*
   ; Hour Glass
  z=c=pixel
  x=real(pixel)
  y=imag(pixel):
  z=((conj(x)*cotan(y))^3)+c
  |z| <= 4
  ;SOURCE: dn2nd.frm
}
 
Fractal7 {
  z=pixel:
  z=(cabs(z) / sqr(z)^2) - z
  |z| <= 4
  ;SOURCE: dn2nd.frm
}
 
