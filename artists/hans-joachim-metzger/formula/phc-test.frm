Gallet-PHC3-03b {; Sylvie Gallet [101324,3444], 1996
  z = pixel:
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(y*y+p2*fn2(y))
  y1 = y - p1*fn1(x*x+p2*fn2(x))
  z = x1+flip(y1)* (whitesq == 0) + (x1*y1) * whitesq
  |z| <= 4
  ;SOURCE: bj-phc02.frm
}
 
