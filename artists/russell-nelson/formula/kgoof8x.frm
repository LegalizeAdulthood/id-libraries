;
;       This formula is from Karl Geigl
;	karlgeigl@compuserve.com
;
;	oof means "only one formula"
;
  oof8x (XYAXIS) {
  pixel = fn1 (pixel) + fn2 (pixel)
  z = pixel:
  z = z^(fn2(1))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
}

