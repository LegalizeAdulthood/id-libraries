oof7w (XYAXIS) {
  z = pixel * whitesq:
  z = z^(fn1(z^(p1)))
  z = z + pixel* (whitesq==0)
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof7p.frm
}

