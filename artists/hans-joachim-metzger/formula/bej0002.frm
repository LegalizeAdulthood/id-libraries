BEJ-N197 {
  z=c=pixel, zc=pixel/sqr(pixel*.5):
  c=(zc/p1)/(zc/fn1(z))
  z=z*z+c
  |imag(z)|<4
  ;SOURCE: bj-phc02.frm
}

BEJ-N198 {
  z=c=pixel, zc=pixel/sqr(pixel*.5):
  c=(zc/p1)/(zc/sqrt(fn1(z)))
  z=z*z+c
  |imag(z)|<4
  ;SOURCE: bj-phc02.frm
}

BEJ-N199 {
  z=c=pixel, zc=pixel/sqr(pixel*.5):
  c=((zc/p1)/(zc/sqrt(z))) * (whitesq == 0)\
    + ((zc/p2)/(zc/sqrt(abs(z)))) * whitesq
  z=z*z+c
  |imag(z)|<4
  ;SOURCE: bj-phc02.frm
}

BEJ-N202 {
  z=c=pixel, zc=pixel/sqr(pixel*.5):
  c=(zc/p1)/(zc*sqrt(fn1(real(z))))
  z=z*z+c
  |imag(z)|<4
  ;SOURCE: bj-phc02.frm
}

BJ-SG-3-03-gd {; Modified Sylvie Gallet [101324,3444], 1996
  z = pixel, c = sin(conj(-0.81256,-0.1295)) :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(x*x+p2*fn2(y)) * (whitesq == 0) + c * whitesq
  y1 = y - p1*fn1(y*y+p2*fn2(x))
  z = fn3(x1+flip(y1))
  |z| <= 4
  ;SOURCE: bj-phc02.frm
}

BJ-SG-3-03-gda {; Modified Sylvie Gallet [101324,3444], 1996
  z = pixel, c = sin(conj(-0.81256,-0.1295)) :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(x*x+p2*fn2(y)) * fn3((whitesq == 0) + (c/(x+y)) * whitesq)
  y1 = y - p1*fn1(y*y+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: bj-phc02.frm
}

Mans-G+SG-3-03b {; Test Variation on Sylvie Gallet formula
  z=c=pixel, iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))* (whitesq == 0) + c * whitesq
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test)
  c = c*(1 - test) + test*magnification*c
  z = (x1+flip(y1)) * (whitesq == 0) + (z*z + c) * whitesq
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bj-phc02.frm
}

