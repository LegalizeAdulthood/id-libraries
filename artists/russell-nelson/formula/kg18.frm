;
;       These formulafiles are from Karl Geigl 100327,156.
;

  kg1801  {
  z = y = pixel:
  z = fn1(fn2(z) + pixel),
  y = p1 / pixel
  |z| <= p1
}

  kg1802  {
  z = y = pixel:
  z = fn1(fn2(z) - pixel),
  y = p1 / pixel
  |z| <= p1
}

  kg1803  {
  z = y = pixel:
  z = fn1(fn2(z) + pixel),
  y = p1 * pixel
  |z| <= p1
}

  kg1804  {
  z = y = pixel:
  z = fn1(fn2(z) * pixel),
  y = p1 - pixel
  |z| <= p1
}


  kg1805  {
  z = y = pixel:
  z = fn1(fn2(z) + pixel) - y,
  y = p1 / pixel
  |z| <= p1
}


  kg1806  {
  z = y = pixel:
  z = fn1(fn2(z) + pixel) + y,
  y = p1 / pixel
  |z| <= p1
}


  kg1807  {
  z = y = pixel:
  z = fn1(fn2(z) + pixel) * y,
  y = p1 / pixel
  |z| <= p1
}


  kg1808  {
  z = y = pixel:
  z = fn1(fn2(z) + pixel) / y,
  y = p1 / pixel
  |z| <= p1
}


  kg1809  {
  z = y = pixel:
  z = fn1(fn2(z) * pixel) + y,
  y = p1 / pixel
  |z| <= p1
}

  kg1810  {
  z = y = pixel:
  z = fn1(fn2(z) - pixel) - y,
  y = p1 / pixel
  |z| <= p1
}
