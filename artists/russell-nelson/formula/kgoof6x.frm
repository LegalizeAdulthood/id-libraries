;;
;       This formula is from Karl Geigl
;	karlgeigl@compuserve.com 
;
;	oof means "only one formula"
;
  oof6x (XYAXIS) {
  pixel = fn1 (pixel) + fn2 (pixel)
  z = c = pixel:
  z = c * fn1 (z*z) * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
}

