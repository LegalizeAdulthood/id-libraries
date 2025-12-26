mongo-02 {; TRY P1 REAL = -1, P2 = 5, FN1 = SQR, FN2 = RECIP
  z = 0, c = pixel:
  z = fn2(fn1(z) + c) + (p1 * z)
  |z| <= p2
  ;SOURCE: mongo.frm
}
 
