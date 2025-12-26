heart_jul {; Kerry Mitchell
        ; See end of formula xlty_jul for Kerry Mitchell's explanation
        ;  of his "fraction" formulas
        ;
        ; colors by how often r < t, where r & t are the
        ; magnitude & polar angle of the fractional part of
        ; the iterate of the Julia set
        ; fills fractal with little hearts
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = color speed (try 1)
        ; p3 = rounding factor (try 1)
        ; fn1 = rounding function, either round() or trunc()
        ; fn2 = arbitrary function of iterate (try log())
        ; calculation uses variable zc, z used for coloring
        ; use decomp=256
        ;
  zc=pixel, c=p1, iter=2, twopi=2*pi, count=0
  maxr=real(p2), speed=imag(p2)*twopi*255/256
  roundfac=p3
  :
        ;
        ; adjust iterate through arbitrary function and find
        ;   fractional part
        ;
  temp=fn2(zc)/roundfac, frac=temp-fn1(temp)
  r=cabs(frac)
  t=cabs(imag(log(frac))/twopi)
        ;
        ; update counter if conditions are right
        ;
  IF (r<t)
    count=count+1
  ENDIF
        ;
        ; bailout
        ;   scale counter into decomposition angle
        ;   set "iteration done" flag (iter = -1)
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    angle=speed*count/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ELSE
    iter=iter+1
    zc=sqr(zc)+c
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
heart_man {; Kerry Mitchell
        ; See end of formula xlty_jul for Kerry Mitchell's explanation
        ;  of his "fraction" formulas
        ;
        ; colors by how often r < t, where r & t are the
        ; magnitude & polar angle of the fractional part of
        ; the iterate of the Mandelbrot set
        ; fills fractal with little hearts
        ;
        ; real(p1) = bailout (try 4)
        ; imag(p1) = color speed (try 1)
        ; p2 = rounding factor (try 1)
        ; fn1 = rounding function, either round() or trunc()
        ; fn2 = arbitrary function of iterate (try log())
        ; calculation uses variable zc, z used for coloring
        ; use decomp=256
        ;
  zc=0, c=pixel, iter=2, twopi=2*pi, count=0
  maxr=real(p1), speed=imag(p1)*twopi*255/256
  roundfac=p2
  :
        ;
        ; adjust iterate through arbitrary function and find
        ;   fractional part
        ;
  temp=fn2(zc)/roundfac, frac=temp-fn1(temp)
  r=cabs(frac)
  t=cabs(imag(log(frac))/twopi)
        ;
        ; update counter if conditions are right
        ;
  IF (r<t)
    count=count+1
  ENDIF
        ;
        ; bailout
        ;   scale counter into decomposition angle
        ;   set "iteration done" flag (iter = -1)
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    angle=speed*count/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ELSE
    iter=iter+1
    zc=sqr(zc)+c
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
xlty_jul {; Kerry Mitchell
        ;
        ; colors by how often x < y, where x & y are the
        ; real & imaginary parts of the fractional part of
        ; the iterate of the Julia set
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = color speed (try 1)
        ; p3 = rounding factor (try 1)
        ; fn1 = rounding function, either round() or trunc()
        ; fn2 = arbitrary function of iterate (try log())
        ; calculation uses variable zc, z used for coloring
        ; use decomp=256
        ;
  zc=pixel, c=p1, iter=2, twopi=2*pi, count=0
  maxr=real(p2), speed=imag(p2)*twopi*255/256
  roundfac=p3
  :
        ;
        ; adjust iterate through arbitrary function and find
        ;   fractional part
        ;
  temp=fn2(zc)/roundfac, frac=roundfac*(temp-fn1(temp))
        ;
        ; update counter if conditions are right
        ;
  IF (real(frac)<imag(frac))
    count=count+1
  ENDIF
        ;
        ; bailout
        ;   scale counter into decomposition angle
        ;   set "iteration done" flag (iter = -1)
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    angle=speed*count/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ELSE
    iter=iter+1
    zc=sqr(zc)+c
  ENDIF
  iter>0
;*********Kerry Mitchell's explanation of "fraction" formulas******** 
;           narrative copyright Kerry Mitchell, 1998
;
;  Formulas covered by this explanation:
;     xlty_jul (above)
;     xlty_man
;     heart_jul     
;     heart_man
;
; Fun with fractions
;
; There is really no good mathematical reason for these formulas,
; but what the heck.  The original thought was to look at what
; happens with the fractional parts of the iterates?  This became,
; "how often is the real part of the iterate less than the imaginary
; part?"  The fractional part is recovered using either the round()
; or trunc() functions.  For example, if z = 12.3456, then the
; fractional part of z is 0.3456, which is z - trunc(z).  The round()
; function can also be used, and can give different results.  For
; each iteration, the fractional parts are computed and the comparison
; made.  If the real part is less than the imaginary part, then a
; counter is incremented.  At the end of the orbit, the counter is
; divided by the number of iterations, and scaled into an angle for
; decomposition coloring.
;
; Normally, the fractional part is simply that right of the decimal
; point.  However, this can be changed through the use of the rounding
; factor.  The iterate is divided by this factor, then the fractional
; part is taken, and multiplied by the factor.  For example, if the
; rounding factor is 10, then z becomes 1.23456.  The fractional part
; is 0.23456, which when multiplied by 10 becomes 2.3456.  In these
; formulas, the rounding factor is complex, allowing greater
; flexibility.
;
; Two formulas add even greater possibilities.  The fractional part
; can be computed using either the round() or trunc() functions.
; Before rounding or truncating, the iterate can also be run through
; any of the standard littany of Fractint functions.  Go nuts.
;
; In addition to the xlty- functions, there are the heart- functions
; (both come in Julia and Mandelbrot flavors).  The heart- functions
; started out asking, "how often is the magnitude of the fractional
; part less than the polar angle?"  A few algebraic tricks later, this
; question changed to, "how can hearts be used to color a fractal?"
; The basic shape is shown using the "basic-heart" parameter selection.
; It shows the hearts that are the "background" to these images.  The
; "basic-xlty" parameters shown the same for the xlty- formulas.
;
;*******************************************************************
  ;SOURCE: 98msg.frm
}
 
xlty_man {; Kerry Mitchell
        ; See end of formula xlty_jul for Kerry Mitchell's explanation
        ;  of his "fraction" formulas
        ;
        ; colors by how often x < y, where x & y are the
        ; real & imaginary parts of the fractional part of
        ; the iterate of the Mandelbrot set
        ;
        ; real(p1) = bailout (try 4)
        ; imag(p1) = color speed (try 1)
        ; p2 = rounding factor (try 1)
        ; fn1 = rounding function, either round() or trunc()
        ; fn2 = arbitrary function of iterate (try log())
        ; calculation uses variable zc, z used for coloring
        ; use decomp=256
        ;
  zc=0, c=pixel, iter=2, twopi=2*pi, count=0
  maxr=real(p1), speed=imag(p1)*twopi*255/256
  roundfac=p2
  :
        ;
        ; adjust iterate through arbitrary function and find
        ;   fractional part
        ;
  temp=fn2(zc)/roundfac, frac=roundfac*(temp-fn1(temp))
        ;
        ; update counter if conditions are right
        ;
  IF (real(frac)<imag(frac))
    count=count+1
  ENDIF
        ;
        ; bailout
        ;   scale counter into decomposition angle
        ;   set "iteration done" flag (iter = -1)
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    angle=speed*count/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ELSE
    iter=iter+1
    zc=sqr(zc)+c
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
