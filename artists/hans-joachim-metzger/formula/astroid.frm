astroid {; Kerry Mitchell 14nov98
         ;
         ; Kerry Mitchell's explanation of his "Astroid" formulas is
         ; at the end of this formula
         ;
         ; draws a astroid:  x^n + y^n = a^n
         ;
         ; real(p1) = coloring flag:
         ;   1 to color by nearness to curve
         ;   2 to color by inside/outside
         ; imag(p1) = rotation angle
         ; real(p2) = a = size
         ; imag(p2) = n = exponent
         ; p3 = astroid center
         ;
         ; use decomp=256, float=yes, periodicity=no
         ;
  zc=pixel, done=1, colflag=real(p1)
  a=real(p2), n=imag(p2), aton=a^n
  center=p3, rot=imag(p1)/180*pi, rot=exp(flip(rot))
  :
  temp=rot*(zc-center)
  x=cabs(real(temp)), y=cabs(imag(temp))
  err=x^n+y^n-aton
  IF (colflag==1)
    t=log(cabs(err))
  ELSE
    IF (err<0)
      t=1
    ELSE
      t=0
    ENDIF
  ENDIF
  z=cos(t)+flip(sin(t))
  done==0
;*****Kerry Mitchell's explanation of his "Astroid" formulas*****
;
;            copyright Kerry Mitchell 14nov98
;
;    Related formulas:
;         astroid (above)
;         astroid-near_man
;         astroid-near_jul
;         astroid-inout_man
;         astroid-inout_jul
;
;
; Astroid
;
; The astroid is a figure from analytic geometry, resembling a four-
; pointed star with concave sides.  Its defining equation is:
;
; x^(2/3) + y^(2/3) = a^(2/3)
;
; where a determines the size of the figure, similar to the radius of
; a circle.  This equation can be generalized by changing the exponent
; of 2/3 to any value n.  If n is between 0 and 1, the figure resembles
; the standard astroid.  The sides go from being straight lines for n=1
; to lying atop of the coordinates axes as n approaches 0.  For n>1, the
; figure becomes convex, and is a circle for n=2.  As n approaches
; infinity, the figure approaches a square.
;
; This generalized astroid is the basis of this coloring scheme.  As with
; other plane figures, the astroid can be compared to the Mandelbrot and
; Julia orbits.  In the "astroid-near_man" and "astroid-near_jul" formulas,
; the fractal is colored according to the closest approach of the orbit
; to the figure.  The "astroid-inout_man" and "astroid-inout_jul" figures
; color by how often the orbit lands inside the astroid.
;
; The shape of the astroid can be altered through the exponent n, and its
; size changed through the use of a.  In addition, its orientation and
; location in the plane are determined by a "center" and "rotation"
; parameters.  The effects of all these parameters can be investigated
; using the basic "astroid" formula.  Here, the coloring flag allows 2
; ways of viewing the astroid:  in outline (colflag=1) and by coloring
; the inside vs. the outside (colflag=2).
;************************************************************************
  ;SOURCE: 98msg.frm
}
 
astroid-inout_jul {; Kerry Mitchell 14nov98
        ;
        ; Kerry Mitchell's explanation of his "Astroid" formulas is
        ; at the end of formula "Astroid"
        ;
        ; colors Julia set by how often orbit is inside
        ; a astroid:  x^n + y^n = a^n
        ;
        ; p1 = c = Julia parameter
        ; real(p2) = a = size
        ; imag(p2) = n = exponent
        ; p3 = center of astroid
        ; bailout = 1000 (hardcoded)
        ; rotation angle, degrees = 0 (hardcoded)
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
  zc=pixel, c=p1, iter=1, done=0
  bailout=1000, incount=0, speed=2*pi
  a=real(p2), n=imag(p2), aton=a^n
  center=p3, rot=0/180*pi, rot=exp(flip(rot))
  :
        ;
        ; standard iteration
        ;
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute difference between actual location and
        ; astroid location; update minimum if necessary
        ;
  temp=(zc-center)*rot
  x=cabs(real(temp)), y=cabs(imag(temp))
  err=x^n+y^n-aton
  IF (err<0)
    incount=incount+1
  ENDIF
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use incount/iterations as angle for decomp coloring
        ;
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    t=speed*incount/(iter-1)
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}
 
astroid-inout_man {; Kerry Mitchell 14nov98
        ;
        ; Kerry Mitchell's explanation of his "Astroid" formulas is
        ; at the end of formula "Astroid"
        ;
        ; colors Mandelbrot set by how often orbit is inside
        ; a astroid:  x^n + y^n = a^n
        ;
        ; real(p1) = bailout
        ; imag(p1) = rotation angle, degrees
        ; real(p2) = a = size
        ; imag(p2) = n = exponent
        ; p3 = center of astroid
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
  zc=0, c=pixel, iter=1, done=0
  bailout=real(p1), incount=0, speed=2*pi
  a=real(p2), n=imag(p2), aton=a^n
  center=p3, rot=imag(p1)/180*pi, rot=exp(flip(rot))
  :
        ;
        ; standard iteration
        ;
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute difference between actual location and
        ; astroid location; update minimum if necessary
        ;
  temp=(zc-center)*rot
  x=cabs(real(temp)), y=cabs(imag(temp))
  err=x^n+y^n-aton
  IF (err<0)
    incount=incount+1
  ENDIF
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use incount/iterations as angle for decomp coloring
        ;
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    t=speed*incount/(iter-1)
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}
 
astroid-near_jul { ; Kerry Mitchell 14nov98
        ;
        ; Kerry Mitchell's explanation of his "Astroid" formulas is
        ; at the end of formula "Astroid"
        ;
        ; colors Julia set by orbit's closet approach to
        ; a astroid:  x^n + y^n = a^n
        ;
        ; p1 = c = Julia parameter
        ; real(p2) = a = size
        ; imag(p2) = n = exponent
        ; p3 = center of astroid
        ; bailout = 1000 (hardcoded)
        ; rotation angle, degrees = 0 (hardcoded)
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
  zc=pixel, c=p1, iter=1, done=0
  bailout=1000, errmin=bailout
  a=real(p2), n=imag(p2), aton=a^n
  center=p3, rot=0/180*pi, rot=exp(flip(rot))
  :
        ;
        ; standard iteration
        ;
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute difference between actual location and
        ; astroid location; update minimum if necessary
        ;
  temp=(zc-center)*rot
  x=cabs(real(temp)), y=cabs(imag(temp))
  err=cabs(x^n+y^n-aton)
  IF (err<errmin)
    errmin=err
  ENDIF
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use log(minimum) as angle for decomp coloring
        ;
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    t=log(errmin)
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}
 
astroid-near_man {; Kerry Mitchell 14nov98
        ;
        ; Kerry Mitchell's explanation of his "Astroid" formulas is
        ; at the end of formula "Astroid"
        ;
        ; colors Mandelbrot set by orbit's closet approach to
        ; a astroid:  x^n + y^n = a^n
        ;
        ; real(p1) = bailout
        ; imag(p1) = rotation angle, degrees
        ; real(p2) = a = size
        ; imag(p2) = n = exponent
        ; p3 = center of astroid
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
  zc=0, c=pixel, iter=1, done=0
  bailout=real(p1), errmin=bailout
  a=real(p2), n=imag(p2), aton=a^n
  center=p3, rot=imag(p1)/180*pi, rot=exp(flip(rot))
  :
        ;
        ; standard iteration
        ;
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute difference between actual location and
        ; astroid location; update minimum if necessary
        ;
  temp=(zc-center)*rot
  x=cabs(real(temp)), y=cabs(imag(temp))
  err=cabs(x^n+y^n-aton)
  IF (err<errmin)
    errmin=err
  ENDIF
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use log(minimum) as angle for decomp coloring
        ;
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    t=log(errmin)
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}
 
