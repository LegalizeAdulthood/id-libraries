BJ-Zexpe-004e {
  s = exp(1.,0.), z = Pixel:
  z = z ^ s + pixel
  s = fn1(s + fn2(z*s)) / s
  |z| <= 100
  ;SOURCE: bej0015.frm
}

BJ-Zexpe-008 {
  s = fn1(exp(1.,0.)*(p1*p2)), z = pixel:
  z = z ^ s + pixel
  |z| <= 100
  ;SOURCE: bej0015.frm
}

BJ-Zexpe-009 {
  s = fn1(exp(1.,0.)*fn2(p1*p2)), z = pixel:
  z = z ^ s + pixel
  |z| <= 100
  ;SOURCE: bej0015.frm
}

BJ-Zexpe-010 {
  s = exp(p1)^fn1(p2), z = pixel:
  z = z ^ s + pixel
  |z| <= 100
  ;SOURCE: bej0015.frm
}

BJ-Zexpe-016 {
  z = fn1(pixel), s = (exp(1.,0.)*fn2(p1*p2)), Root = 1:
  z3 = ((z^ s + pixel)*z*z)
  z4 = z3 * z
  z = (3 * z4 + Root) / (4 * z3)
  .004 <= |z4 - Root|
  ;SOURCE: bej0015.frm
}

BJ-Zexpe-018 {
  z = pixel, s = (exp(1.,0.)*fn2(p1*p2)), Root = 1:
  z3 = fn1(z*z)^ s + pixel
  z4 = z3 * z * z
  z5 = (3 * z4 + Root) / (4 * z3)
  z = z*z + pixel
  .004 <= |z| != |z4 - Root|
  ;SOURCE: bej0015.frm
}

