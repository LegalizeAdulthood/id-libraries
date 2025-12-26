ghost-horiz_man {; Kerry Mitchell
        ; For Kerry Mitchell's explanation of his "ghost" formulas, see
        ;   the end of formula ghost_jul
        ;
        ; colors Mandelbrot set by combining the smoothed iteration
        ; with a background of horizontal lines
        ;
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
  maxr=real(p1), scale=imag(p1)*pi/128
  ol2=1/log(2), fac=log(0.5*log(maxr))
  iter=1, zc=0, c=pixel
        ;
        ; generate horizontal lines
        ;
  yc=(imag(scrnmax)-1)/2, y=imag(scrnpix)
  t=y/yc*pi, background=cos(t)+flip(sin(t))
  :
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
    angle=cos(smooth)+flip(sin(smooth))
    z=background*angle
    IF (iter==maxit)
      z=background
    ENDIF
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
ghost-vert_jul {; Kerry Mitchell
        ; For Kerry Mitchell's explanation of his "ghost" formulas, see
        ;   the end of formula ghost_jul
        ;
        ; colors Julia sets by combining the smoothed iteration
        ; with a background of vertical lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout
        ; imag(p2) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
  maxr=real(p2), scale=imag(p2)*pi/128
  ol2=1/log(2), fac=log(0.5*log(maxr))
  iter=1, zc=pixel, c=p1
        ;
        ; generate vertical lines
        ;
  xc=(real(scrnmax)-1)/2, x=real(scrnpix)
  t=x/xc*pi, background=cos(t)+flip(sin(t))
  :
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
    angle=cos(smooth)+flip(sin(smooth))
    z=background*angle
    IF (iter==maxit)
      z=background
    ENDIF
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
ghost_jul {; Kerry Mitchell
        ;
        ; colors Julia sets by combining the smoothed iteration
        ; with a background of rays from the center
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout
        ; imag(p2) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
  maxr=real(p2), scale=imag(p2)*pi/128
  ol2=1/log(2), fac=log(0.5*log(maxr))
  iter=1, zc=pixel, c=p1, background=pixel
  :
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
   IF ((|zc|>maxr)||(iter==maxit))
     smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
     angle=cos(smooth)+flip(sin(smooth))
     z=background*angle
     IF (iter==maxit)
       z=background
     ENDIF
     iter=-1
   ENDIF
   iter>0
;********Kerry Mitchell's explanation of his "ghost" formulas
;           narrative copyright Kerry Mitchell, 1998
;  Applicable formulas:
;     ghost_jul (above)
;     ghost_man
;     ghost-horiz_jul
;     ghost-vert_jul
;     ghost-horiz_man
;     ghost-vert_man
;
;Ghost
;
;In the ghost coloring scheme, you can make the fractal appear or disappear
;against a gradient background.  It is based on the iteration smoothing
;routine of Linas Vepstas, and uses an adjustable parameter to determine
;how prevalent the fractal appears.
;
;The iteration smoothing technique works by letting the iterate go much
;beyond the required escape radius of 4, and converting its geometric
;growth into a real number.  When combined with the original iteration
;number, the result is a real number that can be plotted continuously
;with the decomposition (or outside=real) methods.  Here, the smoothed
;iteration count is scaled and made the polar angle for the decomposition
;coloring.
;
;The backgrounds for these images are gradients (using smooth color maps),
;running horizontally, vertically, or in rays from the origin (point 0+0i).
;In the latter case, the background is simply the polar angle of the pixel,
;which may or may not be centered on the screen, depending on the zoom of
;the image.  In the former two cases, the gradients are dynamically set to
;use the full color range irrespective of the pixel coordinates.  In any
;case, the background is represented by an angle, for use with decomposition.
;
;Given angles for both the iteration count and the background image, they
;are combined using the "ghost" parameter.  The iteration angle is scaled
;by "ghost" and added to the background angle.  When the ghost level is
;set to zero, then only the background angle remains, and that is what is
;shown in the image.  Increasing the ghost level results in the background
;being subtly, then significantly, perturbed by the fractal.  The disturbance
;starts with the highest iteration levels first (except that interior points
;are assigned 0 iteration, to clarify the boundary), and propagates to the
;lower iterations as the ghostliness is increased.  The effect on the image
;is to see the background gradient smoothly displaced by the fractal, but
;to not see the fractal directly.
;
;The best uses of this scheme seems to be on Julia dust (non-connected)
;fractals, in which there is lots of "empty" space for the background to
;show through.
;
;***********************************************************************
  ;SOURCE: 98msg.frm
}
 
ghost_man {; Kerry Mitchell
        ; For Kerry Mitchell's explanation of his "ghost" formulas, see
        ;   the end of formula ghost_jul
        ;
        ; colors Mandelbrot set by combining the smoothed iteration
        ; with a background of rays from the center
        ;
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
  maxr=real(p1), scale=imag(p1)*pi/128
  ol2=1/log(2), fac=log(0.5*log(maxr))
  iter=1, zc=0, c=pixel, background=pixel
  :
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
    angle=cos(smooth)+flip(sin(smooth))
    z=background*angle
    IF (iter==maxit)
      z=background
    ENDIF
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
