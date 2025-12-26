V-Euler {
  x=real(pixel)
  y=imag(pixel)
  h=real(p1)/2:
  u=x-x*y
  w=-y+x*y
  c=x+h*(u+u)
  d=y+h*(w+w)
  x=c
  y=d
  z=x+flip(y)
  |z|<=p2
  ;SOURCE: davfav1.frm
}
 
marlinZZa (XAXIS) {; Prof Jm using Newton-Raphson method
                   ; use floating point with this one
  z=pixel, solution=1:
  z1=z^(z-1)
  z2=(((z-1)/z)+log(z))*z1
  z=z-((z1-1)/z2)
  0.05 <= |solution-z1|
  ;SOURCE: davfav1.frm
}
 
zmincosz (XAXIS) {
  z = pixel:
  fz = z - cos(z)
  fdashz = 1 + sin(z)
  z = z - fz/(fdashz + P1)
  0.0001 <= |fz|
  ;SOURCE: davfav1.frm
}
 
