;;
;       This formula is from Karl Geigl
;	karlgeigl@compuserve.com 
;
;	oof means "only one formula"
;
  oof4x (XYAXIS) {
  pixel = fn2 (pixel)
  z = p1 / fn1 (z*z) / (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
}

