Block {
  z = c = pixel + p1:
  r = fn1(z) / floor(c)
  z = r * z
  q = ceil(c) / fn2(z)
  z = z * (q / r)
  round(z) < 4
  ;SOURCE: cubist.frm
}

Block_2 {
  z = c = pixel:
  r = fn1(z) / floor(c)
  z = r * z + p1
  q = ceil(c) / fn2(z)
  z = z * q * r
  round(z) < 4
  ;SOURCE: cubist.frm
}

Block_3 {
  z = c = pixel:
  r = fn2(z) + p1
  q = fn1(z) * floor(c)
  z = z *(q / r)
  ceil(z) < 4
  ;SOURCE: cubist.frm
}

Block_4 {
  z = c = pixel:
  r = tan(1/z) + p1
  q = floor(z) - p2 * ceil(c) - p3
  z = fn1(z) * r * q
  round(z) < 4
  ;SOURCE: cubist.frm
}

