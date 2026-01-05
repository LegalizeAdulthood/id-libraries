BEJ_N39{;
z=c=pixel,maria=log(z):
z=fn1(z)
z=(z*z+c)+(maria/p1)
|z|<4
}
bubbleboth_jul {; Kerry Mitchell
        ;
        ; color Julia sets with small bubbles
        ; filled with swirls (combination of rays and circles)
        ;
        ; use outside=iter, decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (at least 4)
        ; imag(p2) = radius of bubble (try ~ .1)
        ; real(p3) = amount of circles (0 for only rays, try 0.5)
        ; imag(p3) = amount of rays (0 for only circles, try 0.5)
        ; zc is the variable used for iteration, z for coloring
        ;
  zc=pixel, c=p1, maxr=real(p2), minr=imag(p2), scale=2*pi/minr
  minset=0, iter=1, rzc=cabs(zc), minzc=zc
  weight=real(p3)+imag(p3)
  weightc=real(p3)/weight, weightr=imag(p3)/weight
        ;
        ; initial check:  see if pixel magnitude falls within threshold
        ;   if so, set minset flag, update minimum to current magnitude
        ;
  IF (rzc<minr)
    minr=rzc, minzc=zc, minset=1
  ENDIF
        :
  iter=iter+1, zc=sqr(zc)+c, rzc=cabs(zc)
        ;
        ; iteration check:  see if iterate falls within threshold
        ;   if so, set minset flag, update minimum to current magnitude
        ;
  IF (rzc<minr)
    minr=rzc, minzc=zc, minset=1
  ENDIF
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   scale minr to find decomp angle for circles
        ;   take polar angle from minzc to ray decomp angle
        ;   final angle is weighted average of ray and circle angles
        ;   if a new minimum was never set (minset=0),
        ;   set z=0 (color 0 under decomp)
        ;
  IF ((rzc>maxr)||(iter==maxit))
    iter=-1
    anglec=scale*minr, angler=imag(log(minzc))
    angle=weightc*anglec+weightr*angler
    z=(cos(angle)+flip(sin(angle)))*minset
  ENDIF
  iter > 0
;*******Kerry Mitchell's description of "bubble formulas"***********
;              narrative copyright Kerry Mitchell, 1998
;  Applies to:
;     bubbleboth_jul (above)
;     bubbleboth_man
;
;The Bubble Method
;
;The bubble method is an extension of Fractint's bof60 scheme.  In
;bof60, the interior of the fractal is colored by how closed the iterate
;comes to the origin.  In the bubble method, a specific value is set as
;the threshold.  Each step, the magnitude of the iterate is compared to
;the threshold.  If the current magnitude is smaller, it becomes the new
;threshold level.  The effect is to cover the fractal with "bubbles",
;circles the radius of the threshold.  Below a certain threshold value,
;the image is a dust of small, disconnected bubbles.  At a particular
;theshold value, which varies with the parameter c, the circles all
;touch.  Beyond this, the circles squish into each other, like mounds
;of soap bubbles.
;
;At bailout, if the image is colored by the last threshold, each bubble
;will be filled with rings of concentric circles, representing the range
;of minima from the original threshold level down to zero.
;
;Alternatively, the bubbles can be colored by the polar angle of the
;iterate, as in the standard Fractint decomposition method.  Here, the
;disks become filled with radial lines of color, emminating from the
;center of the disk.
;
;The formulas "bubbleboth" (Mandelbrot and Julia variations) combine
;the concentric circle and ray colorings.  The magnitude of the final
;minimum is scaled into an angle.  This is averaged with the polar angle
;of the final iterate, using user-supplied weights.  This allows the
;specification of either circles or rays using the same formula.  In
;between (for example, using equal amounts of circle and ray) are swirls.
;A judicious choice of color map will eliminate the branch cuts that can
;be seen with the swirls.
;
;***********************************************************************
  ;SOURCE: 98msg.frm
}
