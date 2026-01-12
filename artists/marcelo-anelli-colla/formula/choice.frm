TurtleC (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin
  z=p1:
  x=real(z)
  IF (x<0)
    z=sqr(z)+pixel
  ELSE
    z=sqr(z)-pixel
  ENDIF
  |z|<=4
  ;SOURCE: choice.frm
}
IslandOfChaos (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=sin(z)/cosxx(z)+pixel
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}
IslandOfChaos (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=sin(z)/cosxx(z)+pixel
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}
IslandOfChaosC (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSE
    z=sin(z)/cosxx(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}
