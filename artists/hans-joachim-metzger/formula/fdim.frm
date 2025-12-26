fdim2_jul {; Kerry Mitchell 26sep98
        ; See the end of formula fdim2_man for Kerry Mitchell's
        ;   explanation of Fractal Dimension Coloring
        ;
        ; p1 = c = Julia parameter
        ; real(p2) = coloring speed
        ; imag(p2) = plot flag
        ;   1:  plot x fdim
        ;   2:  plot y fdim
        ;   3:  plot r fdim
        ;   other:  x = x fdim, y = y fdim, plot angle
        ;
  c=p1, zc=pixel, iter=1, done=0
  speed=real(p2), plotflag=imag(p2)
  xmin=1e12, xmax=-1e12, ymin=1e12, ymax=-1e12
  ssx=0, sx=0, ssy=0, sy=0
  rmin=1e12, rmax=-1e12, ssr=0, sr=0
  :
  iter=iter+1, zc=sqr(zc)+c
  x=real(zc), y=imag(zc), r=cabs(zc)
  ssx=ssx+sqr(x), sx=sx+x
  ssy=ssy+sqr(y), sy=sy+y
  ssr=ssr+sqr(r), sr=sr+r
  IF (x<xmin)
    xmin=x
  ENDIF
  IF (x>xmax)
    xmax=x
  ENDIF
  IF (y<ymin)
    ymin=y
  ENDIF
  IF (y>ymax)
    ymax=y
  ENDIF
  IF (r<rmin)
    rmin=r
  ENDIF
  IF (r>rmax)
    rmax=r
  ENDIF
  IF (|zc|>4)
    done=1
    z=1
  ENDIF
  IF (iter==maxit)
    done=1
    s=sqrt(ssx-sx*sx/iter)
    fdimx=(xmax-xmin)/s
    s=sqrt(ssy-sy*sy/iter)
    fdimy=(ymax-ymin)/s
    s=sqrt(ssr-sr*sr/iter)
    fdimr=(rmax-rmin)/s
    IF (plotflag==1)
      t=speed*fdimx
      z=cos(t)+flip(sin(t))
    ELSEIF (plotflag==2)
      t=speed*fdimy
      z=cos(t)+flip(sin(t))
    ELSEIF (plotflag==3)
      t=speed*fdimr
      z=cos(t)+flip(sin(t))
    ELSE
      z=fdimx+flip(fdimy)
      z=z^speed
    ENDIF
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}
 
fdim2_man {; Kerry Mitchell 26sep98
        ; Kerry Mitchell's explanation of Fractal Dimension Coloring 
        ;  is at the end of this formula
        ;
        ; real(p1) = coloring speed
        ; imag(p1) = plot flag
        ;   1:  plot x fdim
        ;   2:  plot y fdim
        ;   3:  plot r fdim
        ;   other:  x = x fdim, y = y fdim, plot angle
        ;
  zc=0, c=pixel, iter=1, done=0
  speed=real(p1), plotflag=imag(p1)
  xmin=1e12, xmax=-1e12, ymin=1e12, ymax=-1e12
  ssx=0, sx=0, ssy=0, sy=0
  rmin=1e12, rmax=-1e12, ssr=0, sr=0
  :
  iter=iter+1, zc=sqr(zc)+c
  x=real(zc), y=imag(zc), r=cabs(zc)
  ssx=ssx+sqr(x), sx=sx+x
  ssy=ssy+sqr(y), sy=sy+y
  ssr=ssr+sqr(r), sr=sr+r
  IF (x<xmin)
    xmin=x
  ENDIF
  IF (x>xmax)
    xmax=x
  ENDIF
  IF (y<ymin)
    ymin=y
  ENDIF
  IF (y>ymax)
    ymax=y
  ENDIF
  IF (r<rmin)
    rmin=r
  ENDIF
  IF (r>rmax)
    rmax=r
  ENDIF
  IF (|zc|>4)
    done=1
    z=1
  ENDIF
  IF (iter==maxit)
    done=1
    s=sqrt(ssx-sx*sx/iter)
    fdimx=(xmax-xmin)/s
    s=sqrt(ssy-sy*sy/iter)
    fdimy=(ymax-ymin)/s
    s=sqrt(ssr-sr*sr/iter)
    fdimr=(rmax-rmin)/s
    IF (plotflag==1)
      t=speed*fdimx
      z=cos(t)+flip(sin(t))
    ELSEIF (plotflag==2)
      t=speed*fdimy
      z=cos(t)+flip(sin(t))
    ELSEIF (plotflag==3)
      t=speed*fdimr
      z=cos(t)+flip(sin(t))
    ELSE
      z=fdimx+flip(fdimy)
      z=z^speed
    ENDIF
  ENDIF
  done==0
;*****Kerry Mitchell's Explanation of Fractal Dimension Coloring*****
;
; Related formulas:
;   fdim2_man (above)
;   fdim2_jul
;   fdim_man
;   fdim_jul
;
; Fractal Dimension coloring
;
; Stephen Ferguson posted an analysis of fractal dimension, which he
; based on an algorithm by Holger Jaenisch.  The formulas here take
; Stephen's analysis and implement it in Fractint.
;
; Since the fractal dimension can be computed for either the real or
; the imaginary parts of z (actually, for any bounded set of real
; numbers), a plotting flag in the formula tells which component to
; use.  Set the flag to 1 to plot the fractal dimension of the real
; component, 2 for the imaginary component, or 3 for the magnitude.
; Any other value uses the 2 component dimensions as the real and
; imaginary parts of a new complex variable, and plots by the polar
; angle of that variable.
;
; The "fdim" formulas implement Stephen's analysis as written.  This
; includes a "2-1/(0.5+n/d)" scaling, where n and d both involve log
; functions.  This may be mathematically accurate, but obscures the
; detail by reducing the dynamic range of the variables (the variables
; change to little to be seen with the standard Fractint coloring
; schemes).  Consequently, the "fdim2" formulas remove the scaling, and
; color essentially by n/d.  Also, the absolute value restriction was
; removed from the compilation of the mean and standard deviation.  Both
; statistics handle negatives well, and this allows the method to
; properly handle non-symmetric orbits.  Preliminary tests indicate that
; the fundamental nature of the images is unchanged, although the "fdim2"
; formulas are simpler and should run faster.
;
; As fractal dimension calculations involve bounded sets, this method
; is best suited for "inside" colorings.  Therefore, if the orbit
; escapes, it is assigned the value of 1.0, which corresponds to color
; 0 when using the "decomp" coloring.  Decomp=256 is recommended for
; this method.
  ;SOURCE: 98msg.frm
}
 
