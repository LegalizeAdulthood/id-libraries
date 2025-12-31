Gallet-3-13 {; Sylvie Gallet [101324,3444], 1996
  z = pixel/(pixel*pixel+1) :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(y+p2*fn2(y))
  y1 = y - p1*fn1(x+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: gallet-3.frm
}

