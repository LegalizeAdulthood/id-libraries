slider01 { ;Bradley Beacham  [74223,2745]
  ;P1 = exponent A, P2 = exponent B
  ;P3 varies radius of bailout circle (default 2)
  z = c = pixel, limit = 2 + p3, f = 0 :
    z = ((f) * fn1(z^p1)) + ((1-f) * fn2(z^p2)) + c
    f = cabs(z) / limit
      f < 1.0
}

slider02 { ;Bradley Beacham  [74223,2745]
  ;P1 = exponent A, P2 = exponent B
  ;P3 varies radius of bailout circle (default 2)
  z = c = pixel, limit = 2 + p3, f = cabs(z) / limit:
    z = ((f) * fn1(z^p1)) + ((1-f) * fn2(z^p2)) + c
    f = cabs(z) / limit
      f < 1.0
}

