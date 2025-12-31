301 {
  z = pixel, c = fn1(z):
  z = z + c
  z= (z-p1)^p2 * (c+p2)
  |z| <= p1
  ;SOURCE: kg3.frm
}

302 {
  z = pixel, c = fn1(z):
  z = z + c
  z= (z-p1)^p2 * (c+p2)
  |z| <= p2
  ;SOURCE: kg3.frm
}

303 {
  z = pixel, c = fn1(z):
  z = z + c
  z= (z-p1)^p2 * (c-p2)
  |z| <=p1
  ;SOURCE: kg3.frm
}

304 {
  z = pixel, c = fn1(z):
  z = z + c
  z= (z+p1)^p2 * (c-p2)
  |z| <=p2
  ;SOURCE: kg3.frm
}

305 {
  z = pixel, c = fn1(z):
  z = z - c
  z= (z+p1)^p2 * (c+p2)
  |z| <=p1
  ;SOURCE: kg3.frm
}

306 {
  z = pixel, c = fn1(z):
  z = z + c
  z = (z-1)^2 * (c+3)
  |z| <=1
  ;SOURCE: kg3.frm
}

309 {
  z = pixel, c = fn1(z):
  z = z + c
  z= (z-p1)^p2 + fn2(c+z)^p2
  |z| <= p1
  ;SOURCE: kg3.frm
}

