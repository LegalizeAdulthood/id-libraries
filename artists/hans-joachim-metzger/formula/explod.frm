jc {
  z=pixel, c=p1:
  z=sqr(z)+c
  c=c+p2*c
  |z| <= 4
  ;SOURCE: explode.frm
}

j1 {
   ; see also alx1 in _a.frm - a formula formerly named j1, changed
   ; to avoid duplication of name with this formula.
  z=pixel, c=p1:
  z=sqr(z)+c
  c=c+p2
  |z| <= 4
  ;SOURCE: explode.frm
}

jfnc {
  z=pixel, c=p1:
  z=sqr(z)+c
  c=c+p2*fn1(c)
  |z| <= 4
  ;SOURCE: explode.frm
}

jfnz {
  z=pixel, c=p1:
  z=sqr(z)+c
  c=c+p2*fn1(z)
  |z| <= 4
  ;SOURCE: explode.frm
}

m1 {
  z=0, c=pixel:
  z=sqr(z)+c
  c=c+p1
  |z| <= 4
  ;SOURCE: explode.frm
}

mfnz {
  z=0, c=pixel:
  z=sqr(z)+c
  c=c+p1*fn1(z)
  |z| <= 4
  ;SOURCE: explode.frm
}

moc {
  z=0, c=pixel:
  z=sqr(z)+c
  c=c+p1/c
  |z| <= 4
  ;SOURCE: fractint.frm
}

