;
;       This formula is from Karl Geigl
;	karlgeigl@compuserve.com
;
;	oof means "only one formula"
;
  oof7x (XYAXIS) {
  pixel = fn2 (pixel)
  z = pixel:
  z = z^(fn1(z^(p1)))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
}

