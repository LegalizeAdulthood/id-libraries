3wayMandelbrot {; Jim Muth
  z=p3, g=pixel, a=real(p1), b=imag(p1)
  c=real(p2), d=imag(p2):
  z=(a*z^b)+(c*z^d)+(.3*(sqr(z)))+g
  |z| <= 100
  ;SOURCE: frac_art.frm
}
 
MandelbrotZC {; Jim Muth
  z=p3, c=pixel:
  z=(real(p1)*(z^imag(p1)+c))+(real(p2)*(c^imag(p2)+z))
  |z| <= 100
  ;SOURCE: 97msg.frm
}
 
test {; Edited for Fractint v. 20 by George Martin, 10/98
      ; The error in the formula as originally written rendered 
      ; it trivial. This is what the author intended.
  z=pixel, c=p1:
  z = z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / (16 * (z+c))
  |z| < 100
  ;SOURCE: tchebych.frm
}
 
apflmatsch { 
  z=pixel:
  z=sqr(z)+pixel
  |z*fn1(p1*fn2(p2*pixel/|pixel|))| <= 4 
  ;SOURCE: test.frm
}
 
njutn-j {
  z=pixel:
  z=(z/imag(z)*z/real(z)*z*z*z+p1)
  |z|<=4
  ;SOURCE: test.frm
}
 
spider {; Chuck Ebbert                       added 12 Jan 1993
        ; p1=initial perturbation of z
        ; bailout is real(p2) (default 4)
  z = pixel + p1, c = pixel
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr(z) + c
  c = z + c/2
  |z| <= t
  ;SOURCE: builtn2.frm
}
 
polar {; Kerry Mitchell 14nov98
       ;
       ; Kerry Mitchell's explanation of his "Polar Curves" formulas 
       ; is at the end of this formula
       ;
       ; draws polar curve r = cabs(a*fn1(b*theta))^n+r0
       ;
       ; real(p1) = coloring flag:
       ;   1 to color by nearness to curve
       ;   2 to color by inside/outside
       ; imag(p1) = negative r handling flag:
       ;   1 to ignore r<0
       ;   2 to use |r| instead of r
       ; real(p2) = a = amplitude
       ; imag(p2) = b = frequency
       ; real(p3) = n = exponent
       ; imag(p3) = r0 = baseline
       ;
       ; use decomp=256, float=yes, periodicity=no
       ;
  zc=pixel, done=1, twopi=2*pi
  a=real(p2), b=imag(p2), n=real(p3), r0=imag(p3)
  colflag=real(p1), negrflag=imag(p1)
  :
  t=imag(log(zc))
  IF (t<0)
    t=t+twopi
  ENDIF
  r=a*fn1(b*t)
  IF (r>=0)
    r=r^n
  ELSE
    r=-((-r)^n)
  ENDIF
  r=r+r0
  IF (colflag==1)
    IF (negrflag==1)
      err=r-cabs(zc)
    ELSE
      err=|r|-|zc|
    ENDIF
    err=cabs(err)
    t=log(err)
    z=cos(t)+flip(sin(t))
  ELSE
    IF (negrflag==1)
      IF (r<cabs(zc))
        t=0
      ELSE
        t=1
      ENDIF
    ELSE
      IF (|r|<|zc|)
        t=0
      ELSE
        t=1
      ENDIF
    ENDIF
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
;*****Kerry Mitchell's explanation of his "Polar Curves" formulas****** 
;
;              copyright Kerry Mitchell 14nov98
;
;    Related formulas:
;        polar (above)
;        polar-near_man
;        polar-near_jul
;        polar-inout_man
;        polar-inout_jul
;
; Polar Curves
;
; Typically, points in a plane are thought of in terms of their x- and
; y-coordinates, that is, how far away (and on which side) the point is
; from the horizontal x-axis and the vertical y-axis.  Another way of
; looking at the point is with polar coordinates, which specify the
; distance of the point from the origin (r) and its direction (t).  The
; two methods are equivalent:
;
; x = r*cos(t), y=r*sin(t), or
; r^2 = x^2 + y^2, tan(t) = y/x.
;
; Polar curves are curves that specify r as a function of t, instead of
; y as a function of x.  The curve used in this coloring method is:
;
; r = [a * f(b*t)]^n + r0,
;
; where f is one of Fractint's builtin functions (e.g., sin, cos, exp,
; etc.), a is an amplitude scaling factor, and b is a frequency factor.
; The exponent n is useful for making the curve wider or thinner, and r0
; is a expansion or contraction constant.
;
; Some special curves can be generated using this function.  Spirals can
; be made by using the "ident" function.  Here, the exponent n controls
; how tightly wound the spiral is.  However, only one revolution of the
; spiral will be drawn, as t is limited to the range 0 to 2*pi.
;
; "Rose" curves are made by using either sin or cos functions.  The
; parameter a controls the size of the curve.  The number of "petals"
; is b, so long as b is a positive integer.  Increasing n from 1 will
; make the petals thinner; decreasing it toward 0 will make them thicker.
; Leave r0=0 for the standard rose curve, where the petals all join at
; the origin.
;
; Since the sin and cos functions generate negative values, the "rose"
; curves will have some regions of negative r.  How this is handled
; depends on r0 and "negrflag", the negative r flag.  Setting negrflag to
; 1 will make the routine ignore negative r values.  This, with r0 is set
; to 0, will cause the rose curve to have "b" number of petals, all of
; them the same size.  Setting negrflag=2 will make the routine consider
; negative r's the same as positive r's.  Thus, the rose curve will have
; 2*b petals.  Increasing r0 from 0 will make r positive more often than
; negative.  This will also increase the number of petals from b to 2*b,
; but half of the petals will be small and half will be large.
;
; The best way to see the effects of the parameter choices is to use the
; "polar" formula.  This formula doesn't draw a fractal, just the polar
; curve determined by a, b, n, r0, the chosen function, and the negative r
; flag.  Another flag determines how the curve is shown.  If the coloring
; flag "colflag" is set to 1, then the image will be colored by how close
; the pixel is to the polar curve.  Is essence, this will outline the curve.
; If colflag=2, then the area outside of the curve is colored black (color
; 0), and the inside is rendered in a second color (color 40).
;
; The other formulas use polar curves to color fractals.  There are 2
; basic rendering methods:  how close the orbit comes to the polar curve,
; and how often the orbit is inside the polar curve.  The "polar-near_man"
; and "polar-near_jul" formulas color the Mandelbrot and Julia sets in the
; first manner.  The "polar-inout_man" and "polar-inout_jul" formulas take
; the second tack.  In the Julia cases, the bailout value and the negative
; r flag are hardcoded, to allow full freedom in specifying a, b, n, and r0.
;*************************************************************************
  ;SOURCE: 98msg.frm
}
 
