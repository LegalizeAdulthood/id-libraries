;
;       These formulafile is from Karl Geigl 100327,156. 
;
;	oof means "only one formula"


  oof7w (XYAXIS) {
  z = pixel * whitesq:
  z = z^(fn1(z^(p1)))
  z = z + pixel* (whitesq==0)
  z = fn1(z) * p1
  |z| <= p2
}

