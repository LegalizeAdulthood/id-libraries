AltJTet (XAXIS) {; Julia form 2 of the Tetration formula --Lee Skinner
  z = P1:
  z = (pixel ^ z) + P1
  |z| <= (P2 + 3)
  ;SOURCE: fractint.frm
}
MTet (XAXIS) {; Mandelbrot form 1 of the Tetration formula --Lee Skinner
  z = pixel:
  z = (pixel ^ z) + pixel
  |z| <= (P1 + 3)
  ;SOURCE: fractint.frm
}
Richard2 (XYAXIS) {; Jm Collard-Richard
  z = pixel:
  z=1/(sin(z*z+pixel*pixel))
  |z|<=50
  ;SOURCE: fractint.frm
}
Richard6 (XYAXIS) {; Jm Collard-Richard
  z = pixel:
  z=sin(sinh(z))+pixel
  |z|<=50
  ;SOURCE: fractint.frm
}
