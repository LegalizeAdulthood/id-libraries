Wineglass(XAXIS) {; Pieter Branderhorst
  c = z = pixel:
   z = z * z + c
   c = (1+flip(imag(c))) * real(c) / 2 + z
    |z| <= 4
  }
JTet (XAXIS) {; Julia form 1 of the Tetration formula --Lee Skinner
  z = pixel:
   z = (pixel ^ z) + P1
    |z| <= (P2 + 3)
  }
