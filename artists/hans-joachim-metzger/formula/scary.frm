Julia+LambdaFn=PHC {
  z = pixel:
  r = p1 * fn1(z)
  q = z^2 + p2
  z = (q * (whitesq == 0)) + (r * (whitesq == 1))
  ;SOURCE: scary.frm
}

Julia+LambdaFn=PHC {
  z = pixel:
  r = p1 * fn1(z)
  q = z^2 + p2
  z = (q * (whitesq == 0)) + (r * (whitesq == 1))
  ;SOURCE: scary.frm
}

Scary {
  z = c = pixel, halfe = e * (-0.5):
  r = sqr(fn1(1/z)) - c + p1
  q = fn2(z)/halfe + c + p2
  z = (q * (whitesq == 0)) + (r * (whitesq == 1))
  |z| <= 4
  ;SOURCE: scary.frm
}

SpaceMandel_PHC {
  z = c = pixel, rand = srand(pixel):
  r = fn1(1/z) + rand
  m = z*z + c
  z = m * (whitesq == 1) +  (z * r) * (whitesq == 0)
  |z| < 4 || 2 < |r|
  ;SOURCE: scary.frm
}

Sumagramaton_PHC {
  z = c = pixel:
  r = fn1(1/z) + p1
  q = fn2(z^2) + p2
  z =  q * (whitesq == 1) +  r * (whitesq == 0)
  |z| <= 4
  ;SOURCE: scary.frm
}

Tetragramaton_PHC {
  z = c = pixel:
  r = fn1(1/z) + p1
  q = fn2(z) + p2
  z = (z * q) * (whitesq == 1) + (z * r) * (whitesq == 0)
  |z| <= 4
  ;SOURCE: scary.frm
}

