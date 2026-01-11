emboss-iter_jul {; Kerry Mitchell 11sep98
        ;
        ; For an explanation of Kerry Mitchell's "embossing" formulas,
        ;   see the end of formula "emboss-iter_man"
        ;
        ; "embossing" coloring scheme based on iteration levels
        ;
        ; uses elliptical bailout:  [real(z)*a]^2+[imag(z)*b]^2
        ; p1 = c = Julia parameter
        ; real(p2) = a <= 1
        ; imag(p2) = b <= 1
        ; a = b = 1 for strict bailout
        ;
        ; real(p3) = size of contour band
        ; imag(p3) = light source angle, in degrees
        ; use decomp=256 coloring, only 4 colors used
        ;
        ; initialize counters
        ;
  iter=1, done=0
        ;
        ; set up elliptical parameters
        ;
  c=p1, r=4*cabs(c), r=sqrt(1+r), bailout=|(1+r)/2|
  a=real(p2), b=imag(p2)
        ;
        ; first point is offset from pixel by lightangle
        ; second point is offset from pixel by (lightangle+180 deg)
        ;
  size=real(p3), lightangle=imag(p3)*pi/180
  dr=size*(cos(lightangle)+flip(sin(lightangle)))
  z1=pixel-dr, iter1=0, c1=p1
  z2=pixel+dr, iter2=0, c2=p1
        ;
        ; 4 variables with different angles for 4 different colors
        ;
  black=(1,0), white=(-1,0), gray=(0,1), other=(0,-1)
  :
  iter=iter+1
        ;
        ; iterate first point, it is hasn't already escaped
        ;
  IF (iter1==0)
    z1=sqr(z1)+c1, r=|real(z1)*a|+|imag(z1)*b|
          ;
          ; set bailout counter if first point escaped
          ;
    IF (r>bailout)
      iter1=iter
    ENDIF
  ENDIF
        ;
        ; iterate second point, it is hasn't already escaped
        ;
  IF (iter2==0)
    z2=sqr(z2)+c2, r=|real(z2)*a|+|imag(z2)*b|
          ;
          ; set bailout counter if second point escaped
          ;
    IF (r>bailout)
      iter2=iter
    ENDIF
  ENDIF
        ;
        ; if both points escaped, perform "embossing"
        ;
  IF ((iter1>0)&&(iter2>0))
    done=1
          ;
          ; color "black" if first point escaped first
          ;
    IF (iter1<iter2)
      z=black
          ;
          ; color "white" if second point escaped first
          ;
    ELSEIF (iter2<iter1)
      z=white
          ;
          ; color "gray" if both points escaped at same time
          ;
    ELSE
      z=gray
    ENDIF
  ENDIF
        ;
        ; otherwise, assign z to "other"
        ;
  IF (iter==maxit)
    done=1
    z=other
  ENDIF
        ;
        ; continue if nothing happened
        ;
  done==0
  ;SOURCE: emboss.frm
}

emboss-iter_man {; Kerry Mitchell 11sep98
        ;
        ; An explanation of Kerry Mitchell's "embossing" formulas
        ;   is at the end of this formula
        ;
        ; "embossing" coloring scheme based on iteration levels
        ; Mandelbrot version
        ;
        ; uses elliptical bailout:  [real(z)*a]^2+[imag(z)*b]^2
        ; real(p1) = a <= 1
        ; imag(p1) = b <= 1
        ; a = b = 1 for strict bailout
        ;
        ; real(p2) = size of contour band
        ; imag(p2) = light source angle, in degrees
        ; use decomp=256 coloring, only 4 colors used
        ;
        ; initialize counters
        ;
  iter=1, done=0
        ;
        ; set up elliptical parameters
        ;
  c=pixel, r=4*cabs(c), r=sqrt(1+r), bailout=|(1+r)/2|
  a=real(p1), b=imag(p1)
        ;
        ; first point is offset from pixel by lightangle
        ; second point is offset from pixel by (lightangle+180 deg)
        ;
  size=real(p2), lightangle=imag(p2)*pi/180
  dr=size*(cos(lightangle)+flip(sin(lightangle)))
  c1=pixel-dr, iter1=0, z1=0
  c2=pixel+dr, iter2=0, z2=0
        ;
        ; 4 variables with different angles for 4 different colors
        ;
  black=(1,0), white=(-1,0), gray=(0,1), other=(0,-1)
  :
  iter=iter+1
        ;
        ; iterate first point, it is hasn't already escaped
        ;
  IF (iter1==0)
    z1=sqr(z1)+c1, r=|real(z1)*a|+|imag(z1)*b|
          ;
          ; set bailout counter if first point escaped
          ;
    IF (r>bailout)
      iter1=iter
    ENDIF
  ENDIF
        ;
        ; iterate second point, it is hasn't already escaped
        ;
  IF (iter2==0)
    z2=sqr(z2)+c2, r=|real(z2)*a|+|imag(z2)*b|
          ;
          ; set bailout counter if second point escaped
          ;
    IF (r>bailout)
      iter2=iter
    ENDIF
  ENDIF
        ;
        ; if both points escaped, perform "embossing"
        ;
  IF ((iter1>0)&&(iter2>0))
    done=1
          ;
          ; color "black" if first point escaped first
          ;
    IF (iter1<iter2)
      z=black
          ;
          ; color "white" if second point escaped first
          ;
    ELSEIF (iter2<iter1)
      z=white
          ;
          ; color "gray" if both points escaped at same time
          ;
    ELSE
      z=gray
    ENDIF
  ENDIF
        ;
        ; otherwise, assign z to "other"
        ;
  IF (iter==maxit)
    done=1
    z=other
  ENDIF
        ;
        ; continue if nothing happened
        ;
  done==0
;*****KERRY MITCHELL'S EXPLANATION OF HIS "EMBOSSING" FORMULAS*********
;
;           narrative copyright Kerry Mitchell 11sep98
;
;     Related formulas:
;        emboss-iter_man (above)
;        emboss-iter_jul
;        emboss-iter_newtex
;        emboss-iter_newtn
;        emboss-iter_genjul
;        emboss-iter_genman
;
; Embossing
;
; Notary Publics and other important folks use embossing as a way of
; marking official papers.  The embossing die puts a series of crimps
; onto the paper.  This doesn't change the color of the paper, but
; makes hills and valleys that are visible as highlights and shadows.
; The "embossing" coloring method has a similar effect.  Typically, the
; majority of the image is a middle gray.  Contour bands (such as those
; between regions of constant dwell) are colored black and white,
; resembling shadows and highlights, respectively.  Performed correctly,
; this gives a very convincing 3D effect to the image, reminiscent of a
; topographical map or architectural model.
;
; In general, embossing requires 2 test points for each pixel, and
; some discrete variable (call it D for this explanation).  If D is the
; same for both test points (D1 = D2), then the pixel is colored middle
; gray.  If D for the first test point is less than D for the second
; point (D1 < D2), then the pixel is colored black.  Otherwise, D1 > D2,
; and the pixel is colored white.  For example (B = black, W = white,
; G = gray):
;
; D1 (first test point):   1  23  45   2   5   9  34   0   1  19
; D2 (second test point):  1  22  45   2   5  10  34   0   2  18
; pixel color:             G   W   G   G   G   B   G   G   B   W
;
; In the present method, the test points are placed on either side of
; the pixel.  Exactly where is determined by 2 parameters, the "size"
; and "lightangle".  The apparant size of the contour bands in the
; image depends on how far apart the test points are, related to "size".
; Using a larger size will result in bigger, more dramatic bands.
; However, using large bands, particularly with decomp turned off, can
; lead to "seeing double" in your fractal.  Typically, size=0.005 to
; 0.01 works well for full-scale images (magnification=0.66667), and
; it should be decreased as the magnification increases.
;
; The relative location of the highlights and shadows on a real embossed
; sheet depends on from where the light is coming.  This is simulated
; with the "lightangle" parameter.  Using a value of 0 would show
; highlights on the right side (0 degrees) and shadows on the left side
; (180 degrees).  The highlights generally appear in the same direction
; given by lightangle; the shadows are generally on the other side, 180
; degrees away.
;
; The discrete variable used here is the iteration number:  how many
; iterations before the orbits escape.  Colors are determined by assigning
; z one of 4 values, each of which has a different polar angle.  Then,
; using "decomp=256" coloring will make each case show up clearly.  If
; both test points have escaping orbits, then the pixel is colored one
; color (z = "black") if the 1st point escapes first, a 2nd color
; ("white") if the 2nd point escapes first, and a 3rd color ("gray")
; if they both escape on the same iteration.  If both orbits don't escape
; before the maximum number of iterations is reached, then the pixel is
; colored using a 4th color (z = "other").  Of course, the colors that
; actually show up in your image will depend on your color palette.
;
; To add more flexibility, an elliptical bailout condition is used.  In
; a typical Mandelbrot calculation, iteration ceases when |z| > bailout,
; which means
;
;         [real(z)]^2 + [imag(z)]^2 > bailout.
;
; This gives a bailout boundary that is a circle.  By changing the
; relative weights of real(z) and imag(z):
;
;         [a*real(z)]^2 + [b*imag(z)]^2 > bailout,
;
; the bailout boundary is changed to an ellipse.  The relative sizes
; of a and b will determine the eccentricity of the ellipse (long vs.
; circular vs. tall), and the minimum of a and b will determine how
; big the bailout ellipse is.  For example, small a and large b would
; weigh the imaginary part more heavily in the bailout determination.
; For best results, a and b should both be <= 1.  This method also uses
; the "strict" bailout condition:  if a and b are both = 1, then the
; bailout radius depends on the magnitude of c.  This brings the
; iteration contours closer together when c is small.  Since this
; method emphasizes the contours so much, the more precise condition
; was chosen.
;
; Other discrete quantities can be used in this method, and continuous
; variables can be made discrete by using the round() and trunc()
; functions.  But this is work for another time.  Until then, play
; notary public in your own fractal jurisdiction and emboss away!
;
  ;SOURCE: emboss.frm
}

emboss-iter_newtex {; Kerry Mitchell 10oct98
        ;
        ; For an explanation of Kerry Mitchell's "embossing" formulas,
        ;   see the end of formula "emboss-iter_man"
        ;
        ; named changed from emboss-iter_newtexplog because that
        ;  name has more than the maximum 18 characters permitted
        ;  by Fractint. George Martin 10/98
        ;
        ; real(p1) = bailout
        ;
  bailout=real(p1)
        ;
        ; real(p2) = size of contour band
        ; imag(p2) = light source angle, in degrees
        ; use decomp=256 coloring, only 4 colors used
        ;
        ; initialize counters
        ;
  iter=1, done=0
        ;
        ; first point is offset from pixel by lightangle
        ; second point is offset from pixel by (lightangle+180 deg)
        ;
  size=real(p2), lightangle=imag(p2)*pi/180
  dr=size*(cos(lightangle)+flip(sin(lightangle)))
  z1=pixel-dr, iter1=0
  z2=pixel+dr, iter2=0
        ;
        ; 4 variables with different angles for 4 different colors
        ;
  black=(1,0), white=(-1,0), gray=(0,1), other=(0,-1)
  :
  iter=iter+1
        ;
        ; iterate first point, if it hasn't already escaped
        ;
  IF (iter1==0)
    fp=exp(z1), f=fp-log(z1), fp=fp-1/z1, dz=f/fp, z1=z1-dz
          ;
          ; set bailout counter if first point escaped
          ;
    IF (|dz|<bailout)
      iter1=iter
    ENDIF
  ENDIF
        ;
        ; iterate second point, if it hasn't already escaped
        ;
  IF (iter2==0)
    fp=exp(z2), f=fp-log(z2), fp=fp-1/z2, dz=f/fp, z2=z2-dz
          ;
          ; set bailout counter if second point escaped
          ;
    IF (|dz|<bailout)
      iter2=iter
    ENDIF
  ENDIF
        ;
        ; if both points escaped, perform "embossing"
        ;
  IF ((iter1>0)&&(iter2>0))
    done=1
          ;
          ; color "black" if first point escaped first
          ;
    IF (iter1<iter2)
      z=black
          ;
          ; color "white" if second point escaped first
          ;
    ELSEIF (iter2<iter1)
      z=white
          ;
          ; color "gray" if both points escaped at same time
          ;
    ELSE
      z=gray
    ENDIF
  ENDIF
        ;
        ; otherwise, assign z to "other"
        ;
  IF (iter==maxit)
    done=1
    z=other
  ENDIF
        ;
        ; continue if nothing happened
        ;
  done==0
  ;SOURCE: emboss.frm
}

emboss-iter_newtn {; Kerry Mitchell 11sep98
        ;
        ; For an explanation of Kerry Mitchell's "embossing" formulas,
        ;   see the end of formula "emboss-iter_man"
        ;
        ; real(p1) = bailout
        ; imag(p1) = exponent
        ;
  n=imag(p1), nm1=n-1, recipn=1/n
  bailout=real(p1), scale=nm1
        ;
        ; real(p2) = size of contour band
        ; imag(p2) = light source angle, in degrees
        ; use decomp=256 coloring, only 4 colors used
        ;
        ; initialize counters
        ;
  iter=1, done=0
        ;
        ; first point is offset from pixel by lightangle
        ; second point is offset from pixel by (lightangle+180 deg)
        ;
  size=real(p2), lightangle=imag(p2)*pi/180
  dr=size*(cos(lightangle)+flip(sin(lightangle)))
  z1=pixel-dr, iter1=0
  z2=pixel+dr, iter2=0
        ;
        ; 4 variables with different angles for 4 different colors
        ;
  black=(1,0), white=(-1,0), gray=(0,1), other=(0,-1)
  :
  iter=iter+1
        ;
        ; iterate first point, if it hasn't already escaped
        ;
  IF (iter1==0)
    fp=z1^nm1, f=z1*fp+1, dz=f/fp*recipn, z1=z1-dz
          ;
          ; set bailout counter if first point escaped
          ;
    IF (|dz|<bailout)
      iter1=iter
    ENDIF
  ENDIF
        ;
        ; iterate second point, if it hasn't already escaped
        ;
  IF (iter2==0)
    fp=z2^nm1, f=z2*fp+1, dz=f/fp*recipn, z2=z2-dz
          ;
          ; set bailout counter if second point escaped
          ;
    IF (|dz|<bailout)
      iter2=iter
    ENDIF
  ENDIF
        ;
        ; if both points escaped, perform "embossing"
        ;
  IF ((iter1>0)&&(iter2>0))
    done=1
          ;
          ; color "black" if first point escaped first
          ;
    IF (iter1<iter2)
      z=black
          ;
          ; color "white" if second point escaped first
          ;
    ELSEIF (iter2<iter1)
      z=white
          ;
          ; color "gray" if both points escaped at same time
          ;
    ELSE
      z=gray
    ENDIF
  ENDIF
        ;
        ; otherwise, assign z to "other"
        ;
  IF (iter==maxit)
    done=1
    z=other
  ENDIF
        ;
        ; continue if nothing happened
        ;
  done==0
  ;SOURCE: emboss.frm
}

