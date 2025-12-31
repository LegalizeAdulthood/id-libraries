903 {
  z = pixel:
  z = z * (p1-z) + c * p2
  z < 1
  ;SOURCE: kg9.frm
}

904 {
  z = pixel:
  z = z * (p1+z) + c * p2
  z < 1
  ;SOURCE: kg9.frm
}

905 {
  z = pixel:
  z = z * (p1-z) - c * p2
  z < 1
  ;SOURCE: kg9.frm
}

906 {
  z = pixel:
  z = z * (p1+z) - c * p2
  z < 1
  ;SOURCE: kg9.frm
}

911 {
  z = x = pixel:
  x = fn1 (x) * fn2 (z)
  z = fn1 (z) / fn2 (x)
  |z| < p1
  ;SOURCE: kg9.frm
}

