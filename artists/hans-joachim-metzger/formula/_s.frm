SpecC (XAXIS_NOPARM) {
     ; modified for if..else by George Martin 3/18/97
   z = p1
   x = |z| :
   IF (x>1)
      z = fn1(z)+pixel
   ENDIF
   z = fn2(z)+pixel
   x = |z|
   x <= 4
  ;SOURCE: skinner.frm
}
 
