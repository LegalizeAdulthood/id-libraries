;
;       This formula is from Karl Geigl
;	karlgeigl@compuserve.com 
;
;	oof means "only one formula"
;
  oof3x (XYAXIS) {
  pixel = fn2 (pixel)
  z = p1 * (z^p2) - p2 * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
}

