pd_mm_fn {; A "many-man" variation by P. DiGiorgi
          ; Original formula by Stephen C. Ferguson
          ; adapted for Fractint by Les St Clair, 1997
  k = real(p1), bailout = imag(p1)
  e0 = real(p2), e1 = imag(p2)
  z = 0, c = pixel
  r = real(p3)*whitesq + imag(p3)*(whitesq==0)
  v = fn1(k*fn2(c^r)/r):
  IF (whitesq)
    a = fn3(z^e1)
  ELSE
    a = fn4(z^e0)
  ENDIF
  z = a + v
  (|real(z)| <= bailout)||(|imag(z)| <= bailout)
  ;SOURCE: pdg05.frm
}
 
pd_pcj {; modified PopcornJul by P. DiGiorgi
  h = real(p3), bailout = imag(p3)
  z = fn4(pixel)
  x = real(z), y = imag(z):
  x1 = p1*x - h*fn1(y - fn2(fn3(p2*y)))
  y1 = p1*y - h*fn1(x - fn2(fn3(p2*x)))
  z = x1 + flip(y1)
  x = x1, y = y1
  |z| <= bailout
  ;SOURCE: pdg05.frm
}
 
pd_wpp {; formula by P. DiGiorgi
  z = pixel
  x = real(z), y = imag(z):
  rx = 1/fn2(x), ry = 1/fn2(y)
  IF (whitesq==0)
    rx = -conj(rx)
    ry = -conj(ry)
  ENDIF
  x = p1 - p2*fn1(rx)
  y = p1 - p2*fn1(ry)
  z = fn3(x + flip(y))
  (|real(z)| <= 4) && (|imag(z)| <= 4)
  ;SOURCE: pdg05.frm
}
 
Pd_5cb {
  bailout = imag(p2)
  k = real(p2), z = fn1(pixel):
  c = pixel/z^k
  z = fn2(z + p1) + fn3(c)
  |z| <= bailout
  ;SOURCE: pdg05.frm
}
 
