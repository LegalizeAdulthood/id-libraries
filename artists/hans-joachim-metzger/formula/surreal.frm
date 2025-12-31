Kreagor {
  z = c = pixel:
  z = fn1(z) + c + p1
  x = real(z), y = imag(z)
  z = ((1/z) * (fn2(x)/fn1(y)))/ z + c
  |z| <= 4 + p2
  ;SOURCE: d-rock.frm
}

Zurreal {
  z = pixel:
  z = fn1(z) + pixel
  z = fn2(1/sqr(z))/z + p1
  |z| <= 4
  ;SOURCE: surreal.frm
}

Airreal (XYAXIS) {
  z = c = pixel:
  z = (1/z)^3/(1/c)^2 + p1
  z = (fn1(c^2)/fn2(z^2))/c + pixel
  |z| < 4
  ;SOURCE: surreal.frm
}

Cerreal (XAXIS) {
  z = c = pixel:
  z = z * (fn1(c^2)/sqrt(z^2))/c - z^2 + p1
  |z| < 4
  ;SOURCE: surreal.frm
}

Lesfrm05 (xaxis) {
  c=z=pixel:
  z=z+p1/fn1(z^2)/c^3
  |z| <=6
  ;SOURCE: les.frm
}

Xerreal {
  z = c = pixel:
  z = (sqrt(-1) * z /c)^2 * c + p1
  z = z * fn1(z) + pixel
  |z| <= 4
  ;SOURCE: surreal.frm
}

