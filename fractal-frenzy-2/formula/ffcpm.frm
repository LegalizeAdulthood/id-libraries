
FFCpm (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=cosh(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: ffcpm.frm
}
