range-r-1_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = unused
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by |c|
        ; calculation done on variable zc, z used for coloring
        ;
  zc=pixel, c=p1, maxr=real(p2), iter=1
  z=1, fac=|c|
  lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
  :
        ;
        ; iteration
        ;   if magnitude of iterate falls into range, save iterate
        ;
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
  IF ((r>lo)&&(r<hi))
    z=zc
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
range-r-2_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = unused
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by |sqr(c)+c|
        ; calculation done on variable zc, z used for coloring
        ;
  zc=pixel, c=p1, maxr=real(p2), iter=1
  z=1, fac=|sqr(c)+c|
  lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
  :
        ;
        ; iteration
        ;   if magnitude of iterate falls into range, save iterate
        ;
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
  IF ((r>lo)&&(r<hi))
    z=zc
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
range-r-3_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = unused
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by |sqr(sqr(c)+c)+c|
        ; calculation done on variable zc, z used for coloring
        ;
  zc=pixel, c=p1, maxr=real(p2), iter=1
  z=1, fac=|sqr(sqr(c)+c)+c|
  lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
  :
        ;
        ; iteration
        ;   if magnitude of iterate falls into range, save iterate
        ;
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
  IF ((r>lo)&&(r<hi))
    z=zc
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
range-x-1_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
        ;
        ; colors Julia set by imaginary part of iterate, only
        ; when real part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by real(c)
        ; calculation done on variable zc, z used for coloring
        ;
  zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
  angle=0, fac=real(c)
  lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
  IF (hi<lo)
    temp=lo, lo=hi, hi=temp
  ENDIF
  :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   scale imaginary part into decomp angle
        ;
  iter=iter+1, zc=sqr(zc)+c, r=real(zc)
  IF ((r>lo)&&(r<hi))
    angle=scale*imag(zc)
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
range-x-3_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
        ;
        ; colors Julia set by imaginary part of iterate, only
        ; when real part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by real(sqr(sqr(c)+c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
  zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
  angle=0, fac=real(sqr(sqr(c)+c)+c)
  lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
  IF (hi<lo)
    temp=lo, lo=hi, hi=temp
  ENDIF
  :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   scale imaginary part into decomp angle
        ;
  iter=iter+1, zc=sqr(zc)+c, r=real(zc)
  IF ((r>lo)&&(r<hi))
    angle=scale*imag(zc)
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
range-y-2_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
        ;
        ; colors Julia set by real part of iterate, only when
        ; imaginary part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by imag(sqr(c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
  zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
  angle=0, fac=imag(sqr(c)+c)
  lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
  IF (hi<lo)
    temp=lo, lo=hi, hi=temp
  ENDIF
  :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   scale real part into decomp angle
        ;
  iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
  IF ((r>lo)&&(r<hi))
    angle=scale*real(zc)
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
range-y-3_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
        ;
        ; colors Julia set by real part of iterate, only when
        ; imaginary part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by imag(sqr(sqr(c)+c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
  zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
  angle=0, fac=imag(sqr(sqr(c)+c)+c)
  lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
  IF (hi<lo)
    temp=lo, lo=hi, hi=temp
  ENDIF
  :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   scale real part into decomp angle
        ;
  iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
  IF ((r>lo)&&(r<hi))
    angle=scale*real(zc)
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
