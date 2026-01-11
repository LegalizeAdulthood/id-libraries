mans-galore-027 {; Variation on Sylvie Gallet formula.
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + fn3(x1)+flip(fn4(y1))
  c = c*(1 - test) + test*magnification*c
  z = z*z+c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}
