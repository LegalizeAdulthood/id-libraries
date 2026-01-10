bof6061_jul {; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by (the log of) its magnitude & iteration count
;       Julia variation
;
;       p1 = Julia parameter
;       real(p2) = bailout (try 4)
;       imag(p2) = iteration count angle scale factor (try 0.1)
;       real(p3) = magnitude (bof60) weight (try 1)
;       real(p3) = iteration count (bof61) weight (try 1)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
  zc=pixel, c=p1, iter=1, r=|zc|, maxr=real(p2)
  minr=maxr, scale61=imag(p2), weighttot=real(p3)+imag(p3)
  weight60=real(p3)/weighttot, weight61=imag(p3)/weighttot:
;
;       check to see if iterate is closer to origin
;         if so, remember this iteration count & distance
;
  IF (r<minr)
    minr=r, itermin=iter
  ENDIF
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         take log of minimum distance for bof60 angle
;         scale iteration count for bof61 angle
;         add angles with appropriate weights for final angle
;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    angle60=log(minr)
    angle61=scale61*itermin
    angle=weight60*angle60+weight61*angle61
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: bof.frm
}
bof6162_jul {; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by its iteration count & polar angle
;       Julia variation
;
;       p1 = Julia parameter
;       real(p2) = bailout (try 4)
;       imag(p2) = iteration count angle scale factor (try 0.1)
;       real(p3) = iteration count (bof61) weight (try 1)
;       real(p3) = polar angle (bof62) weight (try 1)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
  zc=pixel, c=p1, iter=1, r=|zc|, maxr=real(p2)
  minr=maxr, scale61=imag(p2), weighttot=real(p3)+imag(p3)
  weight61=real(p3)/weighttot, weight62=imag(p3)/weighttot:
;
;       check to see if iterate is closer to origin
;         if so, remember this iterate & iteration count
;
  IF (r<minr)
    minr=r, itermin=iter, zmin=zc
  ENDIF
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         scale iteration count for bof61 angle
;         take minimal iterate's polar angle for bof62 angle
;         add angles with appropriate weights for final angle
;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    angle61=scale61*itermin
    angle62=imag(log(zmin))
    angle=weight61*angle61+weight62*angle62
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: bof.frm
}
bof6260_jul {; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by its polar angle & (log) magnitude
;       Julia variation
;
;       p1 = Julia parameter
;       real(p2) = bailout (try 4)
;       imag(p2) = unused
;       real(p3) = polar angle (bof62) weight (try 1)
;       real(p3) = magnitude (bof60) weight (try 1)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
  zc=pixel, c=p1, iter=1, r=|zc|, maxr=real(p2)
  minr=maxr, weighttot=real(p3)+imag(p3)
  weight62=real(p3)/weighttot, weight60=imag(p3)/weighttot:
;
;       check to see if iterate is closer to origin
;         IF so, remember this iterate & distance
;
  IF (r<minr)
    minr=r, zmin=zc
  ENDIF
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         take minimal iterate's polar angle for bof62 angle
;         take log of minimum distance for bof60 angle
;         add angles with appropriate weights for final angle
;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    angle62=imag(log(zmin))
    angle60=log(minr)
    angle=weight62*angle62+weight60*angle60
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: bof.frm
}
bof60_man {; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by (the log of) its magnitude
;       Mandelbrot variation
;
;       real(p1) = bailout (try 4)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
  zc=0, c=pixel, iter=1, r=|zc|
  maxr=real(p1), minr=maxr:
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       check to see if iterate is closer to origin
;         if so, remember this minimum distance
;
  IF (r<minr)
    minr=r
  ENDIF
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         take log of minimum distance, use as angle for
;           decomp coloring
;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    angle60=log(minr)
    z=cos(angle60)+flip(sin(angle60))
  ENDIF
  iter>0
  ;SOURCE: bof.frm
}
bof61_man {; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by its iteration count
;       Mandelbrot variation
;
;       real(p1) = bailout (try 4)
;       imag(p1) = angle scale factor (try 0.1)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
  zc=0, c=pixel, iter=1, r=|zc|, maxr=real(p1)
  scale61=imag(p1), minr=maxr:
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       check to see if iterate is closer to origin
;         if so, remember this iteration count
;
  IF (r<minr)
    minr=r, itermin=iter
  ENDIF
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         scale iteration count for decomp coloring
;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    angle61=scale61*itermin
    z=cos(angle61)+flip(sin(angle61))
  ENDIF
  iter>0
  ;SOURCE: bof.frm
}
bof62_man {; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by its polar angle
;       Mandelbrot variation
;
;       real(p1) = bailout (try 4)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
  zc=0, c=pixel, iter=1, r=|zc|
  maxr=real(p1), minr=maxr:
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       check to see if iterate is closer to origin
;         if so, remember this iterate
;
  IF (r<minr)
    minr=r, zmin=zc
  ENDIF
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         set z to minimal iterate for decomp coloring
;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    z=zmin
  ENDIF
  iter>0
  ;SOURCE: bof.frm
}
