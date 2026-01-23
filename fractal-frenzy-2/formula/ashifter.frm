shifter {
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2:
    lo = (z*z) * (iter <= shift)
    hi = (z*z*z) * (shift < iter)
    iter = iter + 1
    z = lo + hi + c
    |z| < test
}
