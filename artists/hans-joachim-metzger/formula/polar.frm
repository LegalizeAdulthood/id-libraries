polar-inout_jul {; Kerry Mitchell 14nov98
        ;
        ; Kerry Mitchell's explanation of his "Polar Curves" formulas
        ; is at the end of formula "polar"
        ;
        ; colors Julia set by how often orbit is inside
        ; polar curve r = cabs(a*fn1(b*theta))^n+r0
        ;
        ; p1 = c = Julia parameter
        ; real(p2) = a = amplitude
        ; imag(p2) = b = frequency
        ; real(p3) = n = exponent
        ; imag(p3) = r0 = baseline
        ;
        ; bailout=1000 (hardcoded)
        ; negative r handling flag = 1 (hardcoded)
        ;   1 to ignore r<0
        ;   2 to use |r| instead of r
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
  zc=pixel, c=p1, iter=1, done=0
  bailout=1000, incount=0
  a=real(p2), b=imag(p2), n=real(p3), r0=imag(p3)
  twopi=2*pi, negrflag=1
        :
        ;
        ; standard iteration
        ;
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute polar angle t from new value of zc
        ;   adjust t to be in range [0, 2pi]
        ;
  t=imag(log(zc))
  IF (t<0)
    t=t+twopi
  ENDIF
        ;
        ; find polar radius from angle t
        ;
  r=a*fn1(b*t)
  IF (r>=0)
    r=r^n
  ELSE
    r=-((-r)^n)
  ENDIF
  r=r+r0
        ;
        ; if negrflag = 1, compare r with magnitude of zc--
        ;   this ignores negative r values
        ; if negrflag = 2, compare magnitude squared of r
        ;   with magnitude squared of zc--this treats -r as r
        ;
  IF (negrflag==1)
    err=cabs(zc)-r
  ELSE
    err=|zc|-|r|
  ENDIF
        ;
        ; update inside counter if err<0
        ;
  IF (err<0)
    incount=incount+1
  ENDIF
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use ratio of incount to iterations as angle for decomp coloring
        ;
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    t=twopi*incount/(iter-1)
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}

polar-inout_man {; Kerry Mitchell 14nov98
        ;
        ; Kerry Mitchell's explanation of his "Polar Curves" formulas
        ; is at the end of formula "polar"
        ;
        ; colors Mandelbrot set by how often orbit is inside
        ; polar curve r = cabs(a*fn1(b*theta))^n+r0
        ;
        ; real(p1) = bailout
        ; imag(p1) = negative r handling flag:
        ;   1 to ignore r<0
        ;   2 to use |r| instead of r
        ; real(p2) = a = amplitude
        ; imag(p2) = b = frequency
        ; real(p3) = n = exponent
        ; imag(p3) = r0 = baseline
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
  zc=0, c=pixel, iter=1, done=0
  bailout=real(p1), incount=0
  a=real(p2), b=imag(p2), n=real(p3), r0=imag(p3)
  twopi=2*pi, negrflag=imag(p1)
  :
        ;
        ; standard iteration
        ;
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute polar angle t from new value of zc
        ;   adjust t to be in range [0, 2pi]
        ;
  t=imag(log(zc))
  IF (t<0)
    t=t+twopi
  ENDIF
        ;
        ; find polar radius from angle t
        ;
  r=a*fn1(b*t)
  IF (r>=0)
    r=r^n
  ELSE
    r=-((-r)^n)
  ENDIF
  r=r+r0
        ;
        ; if negrflag = 1, compare r with magnitude of zc--
        ;   this ignores negative r values
        ; if negrflag = 2, compare magnitude squared of r
        ;   with magnitude squared of zc--this treats -r as r
        ;
  IF (negrflag==1)
    err=cabs(zc)-r
  ELSE
    err=|zc|-|r|
  ENDIF
        ;
        ; update inside counter if err<0
        ;
  IF (err<0)
    incount=incount+1
  ENDIF
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use ratio of incount to iterations as angle for decomp coloring
        ;
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    t=twopi*incount/(iter-1)
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}

polar-near_jul { ; Kerry Mitchell 14nov98
        ;
        ; Kerry Mitchell's explanation of his "Polar Curves" formulas
        ; is at the end of formula "polar"
        ;
        ; colors Julia set by orbit's closet approach to
        ; polar curve r = cabs(a*fn1(b*theta))^n+r0
        ;
        ; p1 = c = Julia parameter
        ; real(p2) = a = amplitude
        ; imag(p2) = b = frequency
        ; real(p3) = n = exponent
        ; imag(p3) = r0 = baseline
        ;
        ; bailout = 1000 (hardcoded)
        ; negative r handling flag = 1 (hardcoded)
        ;   1 to ignore r<0
        ;   2 to use |r| instead of r
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
  zc=pixel, c=p1, iter=1, done=0
  bailout=1000, errmin=bailout
  a=real(p2), b=imag(p2), n=real(p3), r0=imag(p3)
  twopi=2*pi, negrflag=1
  :
        ;
        ; standard iteration
        ;
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute polar angle t from new value of zc
        ;   adjust t to be in range [0, 2pi]
        ;
  t=imag(log(zc))
  IF (t<0)
    t=t+twopi
  ENDIF
        ;
        ; find polar radius from angle t
        ;
  r=a*fn1(b*t)
  IF (r>=0)
    r=r^n
  ELSE
    r=-((-r)^n)
  ENDIF
  r=r+r0
        ;
        ; if negrflag = 1, compare r with magnitude of zc--
        ;   this ignores negative r values
        ; if negrflag = 2, compare magnitude squared of r
        ;   with magnitude squared of zc--this treats -r as r
        ;
  IF (negrflag==1)
    err=cabs(r-cabs(zc))
  ELSE
    err=cabs(|r|-|zc|)
  ENDIF
        ;
        ; update minimum distance if a new smaller error is found
        ;
  IF (err<errmin)
    errmin=err
  ENDIF
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use log(minimum distance) as angle for decomp coloring
        ;
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    t=log(errmin)
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}

polar-near_man {; Kerry Mitchell 14nov98
        ;
        ; Kerry Mitchell's explanation of his "Polar Curves" formulas
        ; is at the end of formula "polar"
        ;
        ; colors Mandelbrot set by orbit's closet approach to
        ; polar curve r = cabs(a*fn1(b*theta))^n+r0
        ;
        ; real(p1) = bailout
        ; imag(p1) = negative r handling flag:
        ;   1 to ignore r<0
        ;   2 to use |r| instead of r
        ; real(p2) = a = amplitude
        ; imag(p2) = b = frequency
        ; real(p3) = n = exponent
        ; imag(p3) = r0 = baseline
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
  zc=0, c=pixel, iter=1, done=0
  bailout=real(p1), errmin=bailout
  a=real(p2), b=imag(p2), n=real(p3), r0=imag(p3)
  twopi=2*pi, negrflag=imag(p1)
  :
        ;
        ; standard iteration
        ;
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute polar angle t from new value of zc
        ;   adjust t to be in range [0, 2pi]
        ;
  t=imag(log(zc))
  IF (t<0)
    t=t+twopi
  ENDIF
        ;
        ; find polar radius from angle t
        ;
  r=a*fn1(b*t)
  IF (r>=0)
    r=r^n
  ELSE
    r=-((-r)^n)
  ENDIF
  r=r+r0
        ;
        ; if negrflag = 1, compare r with magnitude of zc--
        ;   this ignores negative r values
        ; if negrflag = 2, compare magnitude squared of r
        ;   with magnitude squared of zc--this treats -r as r
        ;
  IF (negrflag==1)
    err=cabs(r-cabs(zc))
  ELSE
    err=cabs(|r|-|zc|)
  ENDIF
        ;
        ; update minimum distance if a new smaller error is found
        ;
  IF (err<errmin)
    errmin=err
  ENDIF
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use log(minimum distance) as angle for decomp coloring
        ;
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    t=log(errmin)
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}

