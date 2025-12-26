mc {
  z=0, c=pixel:
  z=sqr(z)+c
  c=c+p1*c
  |z| <= 4
  ;SOURCE: explode.frm
}
 
moz {
  z=0, c=pixel:
  z=sqr(z)+c
  c=c+p1/z
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
 
moc {
  z=0, c=pixel:
  z=sqr(z)+c
  c=c+p1/c
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
mz {
  z=0, c=pixel:
  z=sqr(z)+c
  c=c+p1*z
  |z| <= 4
  ;SOURCE: explode.frm
}
 
