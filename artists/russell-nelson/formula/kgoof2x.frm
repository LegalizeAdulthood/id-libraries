;
;       This formula is from Karl Geigl
;	karlgeigl@compuserve.com 
;
;	oof means "only one formula"
;
  oof2x (XYAXIS) {
  pixel = fn2 (pixel)
  z = p1 * (z^p2) - p2 * (z^p1)
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
}

