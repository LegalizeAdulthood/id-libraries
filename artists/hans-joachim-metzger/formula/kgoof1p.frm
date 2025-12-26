oof1w (XAXIS) {
  z = pixel * whitesq:
  z = p1 * (z^p2) + p2 * (z^p1)
  z = z + pixel * (whitesq==0)
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof1p.frm
}
 
