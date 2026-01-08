;
;       These formulafile is from Karl Geigl 100327,156.
;
;	oof means "only one formula"


  oof6w (XYAXIS) {
  z = c = pixel * whitesq:
  z = c * fn1 (z*z) * (fn2(z))
  z = z + pixel* (whitesq==0)
  z = fn1(z) * p1
  |z| <= p2
}

