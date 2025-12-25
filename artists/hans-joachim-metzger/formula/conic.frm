conic {; Kerry Mitchell 12may98
       ; Replaced variable "e" with "ee" 5/6/99, G. Martin
       ;  Kerry Mitchell's explanation of his conic formulas is at
       ;  the end of this formula
       ;
       ; draws conic sections, not fractals
       ;   Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
       ;   A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
       ;   E=real(p3), F=imag(p3).  use decomp=256 coloring
       ;
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3), iter=-1:
  x=real(pixel), y=imag(pixel)
  t=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  t=log(cabs(t))
  z=cos(t)+flip(sin(t))
  iter>0
;******************************************************************
;    Kerry Mitchell's explanation of his conic formulas 
;               (c) Kerry Mitchell, 1998
;
; Conic Sections
;
; Conic sections are sections of cones.  Specifically, take a double-ended
; cone, like 2 funnels placed tip-to-tip.  Then, form the intersection of
; the (double) cone with a plane.  The intersection, usually one or two
; curves, is a conic section.  Conic sections can be a point, one line, two
; lines, a parabola, an ellipse, a circle, or a hyperbola, depending on the
; orientation of the plane relative to the cone.  Analytically, they can all
; be expressed by the same formula:
;
; Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0,
;
; where the parameters A through F determine the shape of the section, and x
; and y are the 2 spatial coordinates.  For example, the line y=x can be
; represented as
; 
; x - y = 0, or
; A = 0, B = 1, C = 0, D = -1, E = 0, F = 0.
;
; A circle centered at (1,0) with a radius of 2 would have the equation
;
; (x - 1)^2 + y^2 = 4, or
; x^2 - 2x + y^2 - 3 = 0, giving
; A = 1, B = -2, C = 1, D = 0, E = 0, F = -3.
;
; How can these shapes be used to render fractals?  First off, the "conic"
; formula simply draws the section determined by the six parameters A - F,
; to give the user an idea of how the parameter choices affect the section
; generated.
;
; The standard escape-time rendering method stops iterating when the
; magnitude of the iterate is larger than some threshold.  Since the iterate
; is a complex number, this means that the escape condition can be viewed in
; terms of a 2-dimensional shape.  Specifically, if x and y represent the
; real and imaginary parts of the iterate and the threshold level is r, then
; escape occurs when:
;
; x^2 + y^2 > r^2
;
; which just means that the orbit leaves a circle of radius r, centered at
; the origin.  Clearly, the circle could be replaced by any closed curve, so
; long as it is large enough to enclose the fractal.  Open curves can also
; be used as a bailout condition, so long as the appropriate side of the
; curve is chosen.
;
; This opportunity, changing the shape of the escape boundary, is coded into
; the "conic-bail" formulas.  The six parameters (real and imaginary parts
; of p1, p2, and p3) are used to determine a section; iteration ceases when
; the orbit leaves this section.  (In actuality, the escape condition is
; that the quantity
;
; Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
;
; become larger than 0.  Q=0 is the equation for the escape boundary.)
;
; (A note about the formulas:  Since 6 parameters are required to fully
; specify a conic section, this leaves no room in the Fractint scheme to
; interactively specify a Julia parameter.  Three versions of each Julia
; formula are presented, to give a quick idea of the effect of Julia
; parameter choice.  The user is free to change the specified parameter in
; the formula, to fit their own needs.)
;
; Fractint's "inside=zmag" coloring scheme is also built around the circle,
; and thus, easily altered to a general conic section.  In the "conic-mag"
; formulas, the standard bailout test is employed.  However, what is plotted
; is the value of Q, as specified above.  Q=0 is the equation for the
; boundary of the section, so this method effectively shows if the iterate
; was inside or outside of the section when iteration ended.
;
; The other two formula types record how the orbit interacts with the given
; section.  In "conic-near", the distance to the section is tallied, and the
; final color reflects the closest approach of the orbit to the section.  In
; "conic-count", a counter is incremented for each iteration where the orbit
; is inside the section.  This counter is scaled by the total number of
; iterations for that pixel, and this fraction is converted into an angle
; for "decomp=" plotting.
;
; The standard forms of the conic sections are given below.  With a bit of
; algebraic twiddling, they can be transformed into the general form, for
; use in the Fractint formulas.
;
; point (h,k)  x=h, y=k; or (x-h)^2 + (y-k)^2 = 0 [circle of radius 0
; centered at (h,k)].
;
; vertical line through (h,k):  x=h
;
; non-vertical line with slope m, through (h,k):  y-k = m*(x-h)
;
; parabola, opening up or down, with vertex at (h,k):
; y-k = 4*p*(x-h)^2 [p determines width; +/up, -/down]
;
; parabola, opening left or right, with vertex at (h,k):
; x-h = 4*p*(y-k)^2 [p determines width; +/right, -/left]
;
; ellipse centered at (h,k), semimajor axis alpha, semiminor axis beta:
; (x-h)^2/alpha^2 + (y-k)^2/beta^2 = 1
;
; circle centered at (h,k), with radius r:
; (x-h)^2 + (y-k)^2 = r^2
;
; hyperbola centered at (h,k), semimajor axis alpha, semiminor axis beta,
; opening left/right:  (x-h)^2/alpha^2 - (y-k)^2/beta^2 = 1
;
; hyperbola centered at (h,k), semimajor axis alpha, semiminor axis beta,
; opening up/down:  (y-k)^2/beta^2 - (x-h)^2/alpha^2 = 1
; 
; coordinate rotation, from (u,v) to (x,y), through an angle theta:
; u = x*cos(theta) + y*sin(theta)
; v = -x*sin(theta) + y*cos(theta)
; [rotating sections is how to generate non-zero E parameters]
;*******************************************************************
  ;SOURCE: 98msg.frm
}
 
conic-bail_man { ; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; Mandelbrot set, escapes "conic quantity" Q > 0
      ;    Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).
      ;
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  zc=0, cc=pixel, iter=1, ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  IF ((conic>0)||(iter==maxit))
    iter=-1
    z=zc
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
conic-count_jul16 {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Julia set by how often orbit is outside section
      ;   Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
      ;   A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;   E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;   Julia parameter set to near 1/16 disk
      ;   bailout set to 10^12
      ;
  cc=(0.2882,0.0106), zc=pixel, maxr=1e12, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3), kount=0, scale=6.2832:
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  IF (conic>0)
    kount=kount+1
  ENDIF
  IF ((|zc|>maxr)||(iter==maxit))
    t=scale*kount/iter
    z=cos(t)+flip(sin(t))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
conic-mag_jul2 {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Julia set by magnitude of "conic quantity"
      ;   Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
      ;   A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;   E=real(p3), E=imag(p3).  use decomp=256 coloring
      ;   Julia parameter set to -2
      ;   bailout set to 4
      ;
  cc=-2, zc=pixel, maxr=4, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    x=real(zc), y=imag(zc)
    t=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
conic-near_juli {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Julia set by nearest approach to conic section
      ;    Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;  Julia parameter set to (0,1)
      ;  bailout set to 10^12
      ;
  cc=(0,1), zc=pixel, maxr=1e12, minr=maxr, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=|x*(a*x+b)+y*(c*y+d)+ee*x*y+f|
  IF (conic<minr)
    minr=conic
  ENDIF
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    t=log(minr)
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
