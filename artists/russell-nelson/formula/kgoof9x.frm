;
;       This formula is from Karl Geigl
;	karlgeigl@compuserve.com 
;
;	oof means "only one formula"
;
  oof9x  {
  pixel = |pixel| + pixel + fn2 (pixel)
  z = c = pixel:
  z = c * fn1 (z*z) 
  |z| <= p2
}

