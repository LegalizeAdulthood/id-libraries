801 {
  z = x = p1/pixel:
  z = fn1 (z) * fn2 (x)
  x = fn1 (x) / fn2 (z)
  |z| < p2
  ;SOURCE: kg8.frm
}

803 {
  z = x = p1/pixel:
  x = fn1 (z) * fn2 (x)
  z = fn1 (x) + fn2 (z)
  |z| < p2
  ;SOURCE: kg8.frm
}

804 {
  z = x = p1/pixel:
  x = fn1 (z) / fn2 (x)
  z = fn1 (x) + fn2 (z)
  |z| < p2
  ;SOURCE: kg8.frm
}

805 {
  z = c = 1/pixel:
  z = (fn1 (z) + c) / (z + c + p1)
  |z| <= p2
  ;SOURCE: kg8.frm
}

806 {
  z = c = 1/pixel:
  z = (fn1 (z) + c) * (z + c + p1)
  |z| <= p2
  ;SOURCE: kg8.frm
}

807 {
  z = c = 1/pixel:
  z = (fn1 (z) + c) / (z - c + p1)
  |z| <= p2
  ;SOURCE: kg8.frm
}

808 {
  z = c = 1/pixel:
  z = (fn1 (z) - c) * (z + c + p1)
  |z| <= p2
  ;SOURCE: kg8.frm
}

809 {
  z = c = p1/pixel:
  z = (fn1 (z) + c) * (z + c + p2)
  |z| <= p2
  ;SOURCE: kg8.frm
}

810 {
  z = c = p1/pixel:
  z = (fn1 (z) + c) * (z + c + p1)
  |z| <= p2
  ;SOURCE: kg8.frm
}

811 {
  z = c = p2/pixel:
  z = (fn1 (z) + c) * (z + c + p1)
  |z| <= p2
  ;SOURCE: kg8.frm
}

