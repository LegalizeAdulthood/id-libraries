root_jul {; Kerry Mitchell 11feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e30)
        ; imag(p2) = unused
        ; use decomp=something (only 2 colors are used)
  zc=pixel, c=p1, iter=1, maxr=real(p2):
  iter=iter+1, z2=sqr(zc), znew=z2+c
  IF ((|znew|>maxr)||(iter==maxit))
    w=sqrt(z2), r1=|zc-w|, r2=|zc+w|
    z=2*(r1<r2)-1
    iter=-1
  ELSE
    zc=znew
  ENDIF
  iter>0
        ;
        ; colors Julia set by whether or not previous iterate
        ;   is the principal root of the current z^2.
        ;
;*******Kerry Mitchell's explanation of his "root" formulas********
;           narrative copyright Kerry Mitchell 11feb98
;
; Applies to these formulas:
;   root_jul (above)
;   root_man
;   rootcount_jul
;   rootcount_man
;
; Root
;
; Complex numbers, of which the real numbers are a subset, all have
; two square roots.  That is, for a given complex number a, there
; are two numbers, b1 and b2, such that b1*b1 (or b2*b2) = a.  It
; so happens that b2 = -b1, since -1 * -1 = 1.  One of these numbers
; (typically the one returned by the function sqrt(a)) is termed
; the principal square root of a.  For example, if a=9, then the
; square roots are 3 and -3.  3 is the principal square root.
;
; For the Mandelbrot and Julia sets, this concept is implemented by
; expanding the standard iteration loop.  Instead of:
;
; z_new = z_old * z_old + c, use
;
; w = z_old * z_old
; z_new = w + c.
;
; The question is then, is z_old the principal root of w?  This can
; be determined by assuming that sqrt(w) returns the principal root.
; Then, z_old is compared with sqrt(w) and -sqrt(w), to see which
; root of w z_old was.
;
; For the root (_man and _jul) formulas, this is performed on the
; last iteration.  The yes/no answer is converted to a binary coloring
; of the image.  The rootcount formulas make this determination for
; every iteration, incrementing a counter each time z_old was the
; principal root.  At the end, the counter is normalized by the total
; number of iterations, then scaled into an angle for coloring using
; the decomposition method.
;
;**********************************************************************
  ;SOURCE: 98msg.frm
}

rootcount_jul {; Kerry Mitchell 11feb98
               ; See the end of formula root_jul for Kerry Mitchell's
               ; explanation of his "root" formulas
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e30)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outside only)
        ; imag(p3) = outer coloring speed (0 for inside only)
        ; use decomp=256
  zc=pixel, c=p1, iter=1, maxr=real(p2), count=0
  inspeed=real(p3)*pi*255/128
  outspeed=imag(p3)*pi*255/128:
  iter=iter+1, z2=sqr(zc), w=sqrt(z2)
  r1=|zc-w|, r2=|zc+w|, zc=z2+c
  IF (r1<r2)
    count=count+1
  ENDIF
  IF (iter==maxit)
    angle=inspeed*count/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  IF (|zc|>maxr)
    angle=outspeed*count/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
        ;
        ; Colors Julia set by how often previous iterate
        ; is the principal root of the current z^2.  The
        ; count of principal root times is divided by the
        ; total number of iterations, and scaled into an
        ; angle for decomposition coloring.  Either inside
        ; or outside can be switched off by setting the
        ; appropriate coloring speed parameter to 0.
        ;
  ;SOURCE: 98msg.frm
}

