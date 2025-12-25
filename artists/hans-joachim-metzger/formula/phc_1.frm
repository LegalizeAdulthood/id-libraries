JDfrm010 {; Jim Deutch [104074,3171], 1996.  The Original PHC formula
          ; Requires passes=1
  z = 0
  c = whitesq * pixel - (whitesq == 0) * pixel:
  z = z*z + c
  |z| < 4
  ;SOURCE: phc.frm
}
 
