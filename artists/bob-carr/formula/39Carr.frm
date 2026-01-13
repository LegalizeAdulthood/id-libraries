Carr1795 {
  z=1/(pixel-real(1/pixel)-sinh(1/pixel-0.25))
  c=(1/(pixel-(0.124/z*(0.524/pixel/z)))):
  z=0.124/pixel/c*c*c*pixel/z^(1.23)
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}
