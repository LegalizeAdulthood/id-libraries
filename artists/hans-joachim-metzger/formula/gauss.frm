gaussintr_man {; Kerry Mitchell
        ; See the end of gaussintr_jul for Kerry Mitchell's explanation 
        ; of the development of these "gauss" formulas.
        ;
        ; Gaussian integer coloring of Mandelbrot set
        ;   color by magnitude of nearest gaussian integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; variable zc used for calculation; coloring done with z
        ;
  zc=0, c=pixel, iter=1, rmax=real(p1), rmin=1:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;
  iter=iter+1, zc=sqr(zc)+c, zr=round(zc), r=|zc-zr|
  IF (r<rmin)
    rmin=r, zmin=zr
  ENDIF
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of magnitude of nearest gaussian integer as
        ;     decomposition angle
        ;
  IF ((|zc|>rmax)||(iter==maxit))
    iter=-1
    angle=log(cabs(zmin)+1)
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
gaussintt_jul {; Kerry Mitchell
        ; See the end of gaussintr_jul for Kerry Mitchell's explanation 
        ; of the development of these "gauss" formulas.
        ;
        ; Gaussian integer coloring of Mandelbrot set
        ;   color by polar angle of nearest gaussian integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; variable zc used for calculation; coloring done with z
        ;
  zc=pixel, c=p1, rmax=real(p2), rmin=1, iter=1:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;
  iter=iter+1, zc=sqr(zc)+c, zr=round(zc), q=|zc-zr|
  IF (q<rmin)
    rmin=q, zmin=zr
  ENDIF
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   set z = nearest gaussian integer
        ;
  IF ((|zc|>rmax)||(iter==maxit))
    iter=-1
    z=zmin
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
gaussinttot_jul {; Kerry Mitchell
        ; See the end of gaussintr_jul for Kerry Mitchell's explanation 
        ; of the development of these "gauss" formulas.
        ;
        ; Gaussian integer coloring of Julia sets
        ;   color by average distance to nearest integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = scaling factor (try 30)
        ; variable zc used for calculation; coloring done with z
        ;
  zc=pixel, c=p1, rmax=real(p2), scale=imag(p2)
  iter=1, rmin=1, z=zc, tot=0:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;   tot = running sum of r's
        ;
  iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
  zr=round(zc), r=|zc-zr|, tot=tot+r
        ;
        ; bailout
        ;   scale average distance to decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
  IF ((rzc>rmax)||(iter==maxit))
    angle=scale*tot/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
