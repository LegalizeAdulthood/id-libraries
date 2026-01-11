Sneaky-D {
  z = 0, c = pixel:
  z = fn1(z) + c
  c = c + fn2(1/z) + p1
  z = c
  |z| <= 6
  ;SOURCE: d-rock.frm
}

D-ROCK {
  z = 0, c = pixel:
  z = sqr(z) + c
  c = c + p1 * z
  z = fn1(z)/c
  |z| <= 4
  ;SOURCE: d-rock.frm
}

D-ROCK {
  z = 0, c = pixel:
  z = sqr(z) + c
  c = c + p1 * z
  z = fn1(z)/c
  |z| <= 4
  ;SOURCE: d-rock.frm
}

Surreal (XAXIS) {
  z = c = pixel:
  z = z * (fn1(c^2)/fn2(c^2))/c + (1/z)
  |z| <= 4
  ;SOURCE: surreal.frm
}

Trekle {
  z = 0, c = pixel:
  z = z + p1
  z = (z * fn1(sqrt(z)))/fn2(c)
  z = z + sqr(c)
  |z| < 4
  ;SOURCE: d-rock.frm
}

Kreagor {
  z = c = pixel:
  z = fn1(z) + c + p1
  x = real(z), y = imag(z)
  z = ((1/z) * (fn2(x)/fn1(y)))/ z + c
  |z| <= 4 + p2
  ;SOURCE: d-rock.frm
}

