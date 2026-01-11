Moo_PHC {; by Vincent Damion Presogna, Oct. 18, 1996
  z = pixel
  halfe = e*(-0.5)
  quartere = e*(-.25):
  z = z + p1
  y = tan(1/z)
  r = y + pixel
  q = y * pixel
  z = fn2(z)*r^halfe*(whitesq == 0) + fn1(z)*q^quartere*(whitesq)
  |z| <= 4
  ;SOURCE: 96msg.frm
}

Tinsel {
  z = pixel, v = sin(e)/cos(pi):
  r = z + v + p1
  z = r * fn1(z)^fn2(1/z)
  |r| >= 0.000001 && round(|v|) < 4
  ;SOURCE: tinsel.frm
}

Tinsel_2 {
  z = pixel:
  r = tan(1/z) + p1
  z = fn1(z) *  fn2(r)
  |z| < 4
  ;SOURCE: tinsel.frm
}

Tinsel_3 {
  z = pixel, c = real(pixel) * imag(pixel):
  r = tan(1/z)  + p1
  z = fn2(r)/fn1(z) * c + p2
  |z| < 4
  ;SOURCE: tinsel.frm
}

Tinsel_4 {
  z = pixel:
  x = real(z), y =imag(z)
  xr = z * fn1(1/y) + 3
  yq = z / fn2(1/x) ^ e
  z = xr * yq * z
  |z| < 4
  ;SOURCE: tinsel.frm
}

Moo_PHC {; by Vincent Damion Presogna, Oct. 18, 1996
  z = pixel
  halfe = e*(-0.5)
  quartere = e*(-.25):
  z = z + p1
  y = tan(1/z)
  r = y + pixel
  q = y * pixel
  z = fn2(z)*r^halfe*(whitesq == 0) + fn1(z)*q^quartere*(whitesq)
  |z| <= 4
  ;SOURCE: 96msg.frm
}

Tinsel_3_PHC {
  z = pixel, c = real(pixel) * (whitesq == 0) + imag(pixel) * whitesq:
  r = tan(1/z)  + p1
  z = fn2(r)/fn1(z) * c + p2
  |z| < 4
  ;SOURCE: tinsel.frm
}

Tinsel_3_PHC {
  z = pixel, c = real(pixel) * (whitesq == 0) + imag(pixel) * whitesq:
  r = tan(1/z)  + p1
  z = fn2(r)/fn1(z) * c + p2
  |z| < 4
  ;SOURCE: tinsel.frm
}

