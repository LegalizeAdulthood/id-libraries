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
