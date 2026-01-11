Boogie {
  z = 0, c = pixel:
  z = z + p1
  z = fn1(c) + fn2(z)
  z = z * z + pixel
  |z| < 4
  ;SOURCE: gestalt.frm
}

Grunge {
  z = c = pixel:
  z = z + p1
  c = fn1(c) + z
  c1 = imag(z)  / imag(c)
  z1 = real(z) / real(c)
  z = z1 * c1 + pixel
  |z| < 4
  ;SOURCE: gestalt.frm
}

Klesmer {
  z = c = pixel:
  z = z + p1
  c = sqrt(z)
  z1 = fn1(z) + pixel
  z2 = fn2(z) + pixel
  z3 = (c * (1/z))
  z = z3 * (z1/z2)
  |z| < 4
  ;SOURCE: gestalt.frm
}

Polka {
  z = c = pixel:
  z = z + p1
  c = fn1(c)
  z = fn2((z*z+c-2)/(2*z+c+1))
  |z| < 4
  ;SOURCE: gestalt.frm
}

R_&_B {
  z = c = pixel:
  c = fn1(c) + z
  z = z + p1
  z = z / c
  |z| < 6
  ;SOURCE: gestalt.frm
}

