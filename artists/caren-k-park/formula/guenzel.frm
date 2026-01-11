SGG014 {
  z=y=pixel+sqr(pixel)
  z=exp(z)*sin(y)/cos(z)
  y=sin(z)*exp(y)*cos(y)
  |z|<=3
  ;SOURCE: guenzel.frm
}
