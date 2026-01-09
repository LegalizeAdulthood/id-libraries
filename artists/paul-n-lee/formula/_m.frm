MandelJulia (XAXIS) {; Pretty sick.  Try your every fave julias for p1.
   ; Haven't we seen this before?!  This *can't* be original!
  z = 0, zj = pixel:
  z1 = z*z+pixel
  z2 = zj*zj+(p1)
  z = z1+z2
  |z| < 4
  ;SOURCE: jute.frm
}
MandelbrotMix4     { ; Jim Muth
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f
  h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1
  l=imag(p3)+100, c=fn1(pixel):
  z=k*((a*(z^b))+(d*(z^f)))+c
  |z| < l
}
