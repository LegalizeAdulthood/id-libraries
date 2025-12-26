ex4csecdav {
  del = P2 + 0.0001
  z = pixel
  zd = z + del:
  n = exp(z) + 2^(-z) - 2*cos(z) - 6
  nd = exp(zd) + 2^(-zd) - 2*cos(zd) - 6
  d = (n - nd)/del
  z = z - n/(d + P1)
  0.01 <= |n|
  ;SOURCE: davweird.frm
}
 
