501 {
  z = 0, c = pixel:
  z = (((z^p1 + p1)^p1) * (z*(z^p1-p1))) + c
  |z| < 11
  ;SOURCE: kg5.frm
}
 
502 {
  z = 0, c = pixel:
  z = (((z^p2 + p1)^p1) * (z*(z^p2-p1))) + c
  |z| < 11
  ;SOURCE: kg5.frm
}
 
503 {
  z = pixel, c = 0:
  z = (((z^p1 + p1)^p1) / (z*(z^p1-p1))) + c
  |z| < 11
  ;SOURCE: kg5.frm
}
 
504 {
  z = pixel, c = 0:
  z = (((z^p2 + p1)^p1) / (z/(z^p2-p1))) + c
  |z| < 11
  ;SOURCE: kg5.frm
}
 
