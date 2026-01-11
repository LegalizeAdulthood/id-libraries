; From:  lkmitch@primenet.com
; Subject:  (fractint) New coloring scheme
; PostedDate:  09/24/97 09:49:22 AM
; SendTo:  Fractint@xmission.com,fractal-art@aros.net
; ReplyTo:  fractint@mail.xmission.com
; $UpdatedBy:  CN=notesgw/O=ACMS
; RouteServers:  CN=notesgw/O=ACMS,CN=cassatt_notes/O=ACMS
; RouteTimes:  09/24/97 10:48:43 AM-09/24/97 10:49:15 AM,09/24/97 10:52:42 AM-09/24/97 10:52:42 AM
; DeliveredDate:  09/24/97 10:52:42 AM
; Categories:  
; $Revisions:  
; BlindCopyTo:  CN=Jay Hill/OU=NRaD/O=ACMS
; 
; Here is another coloring scheme that I found interesting.  It is based on
; Gaussian integers--complex numbers whose real and imaginary parts are both
; integers, like 3+4i.  The method here colors by which Gaussian integer the
; iteration comes closest to.  In order to have a lot of iterations to test,
; use a high bailout (like 1e012).  To show the results, use "decomp=256"
; coloring.
; 
; Enclosed are two sample (Fractint) parameter files to demonstrate.  They
; both use the same color map and the same section of the same Julia set.
; The "plain" par shows the fractal as somewhat boring.  Turn on
; decomposition (the "decomp" par) and see the explosion of color.  The
; image is full of various sized dots of color.  Consequently, this method
; benefits from "passes=1" instead of solid guessing, and it really helps to
; anti-alias the final image, to smooth out the smallest dots.  I will post
; a version of "decomp" to the fractal binaries newsgroup.
; 
; Enjoy!
; 
; Kerry Mitchell
; 

gaussint2_jul {
        ; colors Julia sets by angle of Gaussian integer that iteration
        ; comes closest to
        ; c=p1, bailout=real(p2), try 1e12
        ; use "decomp=256" coloring
        zc=pixel, c=p1, rmax=real(p2), rmin=1, z=zc:
        zc=sqr(zc)+c, zr=round(zc), q=|zc-zr|,
        if (q<rmin)
          rmin=q, z=zr
          end if
        |zc| < rmax
        }

; -------------------------------------------------------------------------------
; Kerry Mitchell
; lkmitch@primenet.com
; -------------------------------------------------------------------------------


; Received: from lists.xmission.com (lists.xmission.com [198.60.22.7])
; 	by mail-atm.san.rr.com (8.8.7/8.8.8) with SMTP id WAA14256;
; 	Sun, 18 Jan 1998 22:08:45 -0800 (PST)
; Received: from domo by lists.xmission.com with local (Exim 1.73 #4)
; 	id 0xuA4D-0001A4-00; Sun, 18 Jan 1998 22:48:13 -0700
; Date: Sun, 18 Jan 1998 22:48:07 -0700 (MST)
; From: Kerry Mitchell <lkmitch@primenet.com>
; To: fractint@lists.xmission.com
; Subject: (fractint) Explanation, formula, and par file--nearline method (long)
; Message-ID: <Pine.BSI.3.96.980118224551.15360C-100000@usr07.primenet.com>
; MIME-Version: 1.0
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: TEXT/PLAIN; charset=US-ASCII
; X-UIDL: 08a9b89e987dc550d5f41a9a12803f60
; 
; Here is a coloring scheme that I developed.  Included are formula files,
; parameters, and a much too long narrative.  The formulas are
; annotated to help explain what is happening, and what parameters
; should be used.  Happy reading.
; 
; -------------------------------------------------------------------------------
; Kerry Mitchell
; lkmitch@primenet.com
; -------------------------------------------------------------------------------

comment { ; narrative copyright Kerry Mitchell

Near to a given line

This method (also called, "nearline") is an extension of Fractint's
bof60 scheme.  In bof60, the question is asked, "how close does the
orbit come to the origin?", or, "what is the minimum magnitude of the
iterate?"  In nearline, we are curious about approach to a given line,
instead of the origin [the origin is the point 0+0i in the complex
plane, also written (0,0)].  The lines in question are all straight and
pass through the origin, so they have the equation, y=kx.  The slope of
the line, k, is equal tan(theta), where theta is the angle of the line
with respect to the x-axis.  Given that tan = sin/cos, an alternative
way to write the equation of the line is to define a distance quantity,
r, and set r equal to 0:

r = cos(theta) * y - sin(theta) * x = 0.

So the basis of this coloring method is, for a given theta, what is the
minimum value of |r|?

Given a minimum value of |r| for the orbit, the formulas plot the results
by taking the log of |r|, and using that as the polar angle of z for the
decomposition coloring.  This has the advantage of being able to handle a
wide range of values without rescaling, and compressing them into a small
variable space.  Decomposition wraps automatically, so no clipping is
encountered if the color overruns the 0 - 255 index range.  And, the log
function is only executed once per orbit, so the time penalty is minimal.

The general nature of this coloring is a series of lines, starting at the
fractal boundary and heading to infinity, asymptotic to the angle theta.
How these lines interact and intersect varies greatly with the choice of
theta.  Specifically, it is not clear what values of theta to choose to
cause the lines to intersect at the origin.  However, the lines can be
chosen in terms of iterations instead of angle.  The first iterate of (0,0)
is simply c, so, from the above equation, we can force the lines to cross
at the origin after 1 iteration by making

r = imag(c) * x - real(c) * y,

and clearly, r will be 0 at the origin at the first iteration.
Similarly, if we define

zero2 = c*c + c
      = the second iterate of (0,0), and

zero3 = zero2*zero2 + c
      = the third iterate of (0,0), then

r = imag(zero2) * x - real(zero2) * y

will cause an intersection at the second iteration, and

r = imag(zero3) * x - real(zero3) * y

will cause an intersection at the third iteration.  These techniques
are employed in nearline01_jul, -02_jul, and -03_jul, respectively.
Such actions are not required for the Mandelbrot variation, since the
origin is a fixed point, and all its iterates are zero.

While initially an external coloring scheme, this method works for
the inside as well.  Fundamentally, there's no difference between the
fractal interior and exterior with this method, so the formulas force
all iterations to escape, allowing interior points to be rendered via
decomposition, instead of relying on "inside=zmag".

}

nearline-theta_jul { ; Kerry Mitchell
        ;
        ; color Julia sets with nearest approach to a given line
        ; line through origin has angle theta to x-axis
        ;
        ; use outside=iter, decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (large--try 1e12)
        ; imag(p2) = angle of line, in degrees (try 45)
        ; zc is the variable used for iteration, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
        theta=imag(p2)*pi/180, ct=cos(theta), st=sin(theta):
        ;
        ; iteration
        ;   find distance to line, r
        ;   if r < minimum, update minimum to r
        ;
        iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
        r=|ct*imag(zc)-st*real(zc)|
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

nearline01_jul { ; Kerry Mitchell
        ;
        ; color Julia sets with nearest approach to a given line
        ; line given by parameter c (first iterate of 0)
        ; so color lines pass through 0 on first iteration
        ;
        ; use outside=iter, decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (large--try 1e12)
        ; zc is the variable used for iteration, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=maxr
        ct=imag(c), st=real(c), iter=1:
        ;
        ; iteration
        ;   find distance to line, r
        ;   if r < minimum, update minimum to r
        ;
        iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
        r=|ct*real(zc)-st*imag(zc)|
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

nearline02_jul { ; Kerry Mitchell
        ;
        ; color Julia sets with nearest approach to a given line
        ; line given by sqr(c)+c (second iterate of 0)
        ; so color lines pass through 0 on second iteration
        ;
        ; use outside=iter, decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (large--try 1e12)
        ; zc is the variable used for iteration, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=maxr
        zero2=sqr(c)+c, ct=imag(zero2), st=real(zero2), iter=1:
        ;
        ; iteration
        ;   find distance to line, r
        ;   if r < minimum, update minimum to r
        ;
        iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
        r=|ct*real(zc)-st*imag(zc)|
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

nearline03_jul { ; Kerry Mitchell
        ;
        ; color Julia sets with nearest approach to a given line
        ; line given by sqr(sqr(c)+c)+c (third iterate of 0)
        ; so color lines pass through 0 on third iteration
        ;
        ; use outside=iter, decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (large--try 1e12)
        ; zc is the variable used for iteration, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
        zero3=c, zero3=sqr(zero3)+c, zero3=sqr(zero3)+c
        ct=imag(zero3), st=real(zero3):
        ;
        ; iteration
        ;   find distance to line, r
        ;   if r < minimum, update minimum to r
        ;
        iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
        r=|ct*real(zc)-st*imag(zc)|
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

nearline-theta_man { ; Kerry Mitchell
        ;
        ; color Mandelbrot set with nearest approach to a given line
        ; line through origin has angle theta to x-axis
        ;
        ; use outside=iter, decomp=256
        ; real(p1) = bailout (large--try 1e12)
        ; imag(p1) = angle of line, in degrees (try 45)
        ; zc is the variable used for iteration, z for coloring
        ;
        zc=0, c=pixel, maxr=real(p1), minr=maxr, iter=1
        theta=imag(p1)*pi/180, ct=cos(theta), st=sin(theta):
        ;
        ; iteration
        ;   find distance to line, r
        ;   if r < minimum, update minimum to r
        ;
        iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
        r=|ct*imag(zc)-st*real(zc)|
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }


; Received: from lists.xmission.com (lists.xmission.com [198.60.22.7])
; 	by mail-atm.san.rr.com (8.8.7/8.8.8) with SMTP id VAA03652;
; 	Sun, 18 Jan 1998 21:46:28 -0800 (PST)
; Received: from domo by lists.xmission.com with local (Exim 1.73 #4)
; 	id 0xuA1x-0000qP-00; Sun, 18 Jan 1998 22:45:53 -0700
; Date: Sun, 18 Jan 1998 22:45:47 -0700 (MST)
; From: Kerry Mitchell <lkmitch@primenet.com>
; To: fractint@lists.xmission.com
; Subject: (fractint) Explanation, formula and par:  bubble method (long)
; Message-ID: <Pine.BSI.3.96.980118224222.15360B-100000@usr07.primenet.com>
; MIME-Version: 1.0
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: TEXT/PLAIN; charset=US-ASCII
; X-UIDL: 63c46ce0f052194ebb74fa433c30f8cf
; 
; I didn't originate the bubble method, but that didn't stop me from writing
; about it, and adding some of my own variations to the collective.  Wizzle
; and others--I can empathize with not knowing how to use a formula.  So,
; I've included sample pars and comments in the code, that will hopefully
; clarify what I had in mind.
; 
; Enjoy,
; Kerry
; 
; -------------------------------------------------------------------------------
; Kerry Mitchell
; lkmitch@primenet.com
; -------------------------------------------------------------------------------

comment { ; narrative copyright Kerry Mitchell

The Bubble Method

The bubble method is an extension of Fractint's bof60 scheme.  In
bof60, the interior of the fractal is colored by how closed the iterate
comes to the origin.  In the bubble method, a specific value is set as
the threshold.  Each step, the magnitude of the iterate is compared to
the threshold.  If the current magnitude is smaller, it becomes the new
threshold level.  The effect is to cover the fractal with "bubbles",
circles the radius of the threshold.  Below a certain threshold value,
the image is a dust of small, disconnected bubbles.  At a particular
theshold value, which varies with the parameter c, the circles all
touch.  Beyond this, the circles squish into each other, like mounds
of soap bubbles.

At bailout, if the image is colored by the last threshold, each bubble
will be filled with rings of concentric circles, representing the range
of minima from the original threshold level down to zero.

Alternatively, the bubbles can be colored by the polar angle of the
iterate, as in the standard Fractint decomposition method.  Here, the
disks become filled with radial lines of color, emminating from the
center of the disk.

The formulas "bubbleboth" (Mandelbrot and Julia variations) combine
the concentric circle and ray colorings.  The magnitude of the final
minimum is scaled into an angle.  This is averaged with the polar angle
of the final iterate, using user-supplied weights.  This allows the
specification of either circles or rays using the same formula.  In
between (for example, using equal amounts of circle and ray) are swirls.
A judicious choice of color map will eliminate the branch cuts that can
be seen with the swirls.

}

bubbleboth_jul { ; Kerry Mitchell
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
        if (rzc<minr)
          minr=rzc, minzc=zc, minset=1
          end if
        :
        iter=iter+1, zc=sqr(zc)+c, rzc=cabs(zc)
        ;
        ; iteration check:  see if iterate falls within threshold
        ;   if so, set minset flag, update minimum to current magnitude
        ;
        if (rzc<minr)
          minr=rzc, minzc=zc, minset=1
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   scale minr to find decomp angle for circles
        ;   take polar angle from minzc to ray decomp angle
        ;   final angle is weighted average of ray and circle angles
        ;   if a new minimum was never set (minset=0),
        ;   set z=0 (color 0 under decomp)
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          anglec=scale*minr, angler=imag(log(minzc))
          angle=weightc*anglec+weightr*angler
          z=(cos(angle)+flip(sin(angle)))*minset
          end if
        iter > 0
        }
        
bubbleboth_man { ; Kerry Mitchell
        ;
        ; color Mandelbrot set with small bubbles
        ; filled with swirls (combination of rays and circles)
        ;
        ; use outside=iter, decomp=256
        ; real(p1) = bailout (at least 4)
        ; imag(p1) = radius of bubble (try ~ .1)
        ; real(p2) = amount of circles (0 for only rays, try 0.5)
        ; imag(p2) = amount of rays (0 for only circles, try 0.5)
        ; zc is the variable used for iteration, z for coloring
        ;
        zc=pixel, c=pixel, maxr=real(p1), minr=imag(p1), scale=2*pi/minr
        minset=0, iter=1, rzc=cabs(zc), minzc=zc
        weight=real(p2)+imag(p2)
        weightc=real(p2)/weight, weightr=imag(p2)/weight
        ;
        ; initial check:  see if pixel magnitude falls within threshold
        ;   if so, set minset flag, update minimum to current magnitude
        ;
        if (rzc<minr)
          minr=rzc, minzc=zc, minset=1
          end if
        :
        iter=iter+1, zc=sqr(zc)+c, rzc=cabs(zc)
        ;
        ; iteration check:  see if iterate falls within threshold
        ;   if so, set minset flag, update minimum to current magnitude
        ;
        if (rzc<minr)
          minr=rzc, minzc=zc, minset=1
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   scale minr to find decomp angle for circles
        ;   take polar angle from minzc to ray decomp angle
        ;   final angle is weighted average of ray and circle angles
        ;   if a new minimum was never set (minset=0),
        ;   set z=0 (color 0 under decomp)
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          anglec=scale*minr, angler=imag(log(minzc))
          angle=weightc*anglec+weightr*angler
          z=(cos(angle)+flip(sin(angle)))*minset
          end if
        iter > 0
        }
       

; Received: from lists.xmission.com (lists.xmission.com [198.60.22.7])
; 	by mail-atm.san.rr.com (8.8.7/8.8.8) with SMTP id VAA19275;
; 	Mon, 19 Jan 1998 21:38:35 -0800 (PST)
; Received: from domo by lists.xmission.com with local (Exim 1.73 #4)
; 	id 0xuWMj-0005Gr-00; Mon, 19 Jan 1998 22:36:49 -0700
; Date: Mon, 19 Jan 1998 22:36:42 -0700 (MST)
; From: Kerry Mitchell <lkmitch@primenet.com>
; To: fractint@lists.xmission.com
; Subject: (fractint) Explanation, formula & par files--ghost (long)
; Message-ID: <Pine.BSI.3.96.980119223203.20023A-100000@usr05.primenet.com>
; MIME-Version: 1.0
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: TEXT/PLAIN; charset=US-ASCII
; X-UIDL: be5a4996f4c864f7d1640dc719e05323
; 
; Here's another coloring method that I've used.
; 
; -------------------------------------------------------------------------------
; Kerry Mitchell
; lkmitch@primenet.com
; -------------------------------------------------------------------------------

comment { ; narrative copyright Kerry Mitchell

Ghost

In the ghost coloring scheme, you can make the fractal appear or disappear 
against a gradient background.  It is based on the iteration smoothing 
routine of Linas Vepstas, and uses an adjustable parameter to determine 
how prevalent the fractal appears.

The iteration smoothing technique works by letting the iterate go much 
beyond the required escape radius of 4, and converting its geometric 
growth into a real number.  When combined with the original iteration 
number, the result is a real number that can be plotted continuously 
with the decomposition (or outside=real) methods.  Here, the smoothed 
iteration count is scaled and made the polar angle for the decomposition 
coloring.

The backgrounds for these images are gradients (using smooth color maps), 
running horizontally, vertically, or in rays from the origin (point 0+0i).  
In the latter case, the background is simply the polar angle of the pixel, 
which may or may not be centered on the screen, depending on the zoom of 
the image.  In the former two cases, the gradients are dynamically set to 
use the full color range irrespective of the pixel coordinates.  In any 
case, the background is represented by an angle, for use with decomposition.

Given angles for both the iteration count and the background image, they 
are combined using the "ghost" parameter.  The iteration angle is scaled 
by "ghost" and added to the background angle.  When the ghost level is 
set to zero, then only the background angle remains, and that is what is 
shown in the image.  Increasing the ghost level results in the background 
being subtly, then significantly, perturbed by the fractal.  The disturbance 
starts with the highest iteration levels first (except that interior points 
are assigned 0 iteration, to clarify the boundary), and propagates to the 
lower iterations as the ghostliness is increased.  The effect on the image 
is to see the background gradient smoothly displaced by the fractal, but 
to not see the fractal directly.

The best uses of this scheme seems to be on Julia dust (non-connected) 
fractals, in which there is lots of "empty" space for the background to 
show through.

}

ghost_man { ; Kerry Mitchell
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
        if ((|zc|>maxr)||(iter==maxit))
          smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
          angle=cos(smooth)+flip(sin(smooth))
          z=background*angle
          if (iter==maxit)
            z=background
            endif
          iter=-1
          endif
        iter>0
        }

ghost_jul { ; Kerry Mitchell
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
        if ((|zc|>maxr)||(iter==maxit))
          smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
          angle=cos(smooth)+flip(sin(smooth))
          z=background*angle
          if (iter==maxit)
            z=background
            endif
          iter=-1
          endif
        iter>0
        }

ghost-horiz_man { ; Kerry Mitchell
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
        if ((|zc|>maxr)||(iter==maxit))
          smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
          angle=cos(smooth)+flip(sin(smooth))
          z=background*angle
          if (iter==maxit)
            z=background
            endif
          iter=-1
          endif
        iter>0
        }

ghost-vert_man { ; Kerry Mitchell
        ;
        ; colors Mandelbrot set by combining the smoothed iteration
        ; with a background of vertical lines
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
        if ((|zc|>maxr)||(iter==maxit))
          smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
          angle=cos(smooth)+flip(sin(smooth))
          z=background*angle
          if (iter==maxit)
            z=background
            endif
          iter=-1
          endif
        iter>0
        }

ghost-horiz_jul { ; Kerry Mitchell
        ;
        ; colors Julia sets by combining the smoothed iteration
        ; with a background of horizontal lines
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
        if ((|zc|>maxr)||(iter==maxit))
          smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
          angle=cos(smooth)+flip(sin(smooth))
          z=background*angle
          if (iter==maxit)
            z=background
            endif
          iter=-1
          endif
        iter>0
        }

ghost-vert_jul { ; Kerry Mitchell
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
        if ((|zc|>maxr)||(iter==maxit))
          smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
          angle=cos(smooth)+flip(sin(smooth))
          z=background*angle
          if (iter==maxit)
            z=background
            endif
          iter=-1
          endif
        iter>0
        }



; Received: from lists.xmission.com (lists.xmission.com [198.60.22.7])
; 	by mail-atm.san.rr.com (8.8.7/8.8.8) with SMTP id VAA27211;
; 	Tue, 20 Jan 1998 21:56:21 -0800 (PST)
; Received: from domo by lists.xmission.com with local (Exim 1.73 #4)
; 	id 0xut7V-0004DO-00; Tue, 20 Jan 1998 22:54:37 -0700
; Date: Tue, 20 Jan 1998 22:54:30 -0700 (MST)
; From: Kerry Mitchell <lkmitch@primenet.com>
; To: fractint@lists.xmission.com
; Subject: (fractint) Explanation, parameters, formula--field (long)
; Message-ID: <Pine.BSI.3.96.980120225243.26524B-100000@usr04.primenet.com>
; MIME-Version: 1.0
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: TEXT/PLAIN; charset=US-ASCII
; X-UIDL: 5d3592d34859d2990a653048ad1ef6a8

comment { ; narrative copyright Kerry Mitchell

Field

In the Mandelbrot set, field lines are roughly perpendicular to the
dwell bands (bands of constant escape iteration number).  The lines
are not directly related to the iteration level, nor to the
decomposition rays, but are associated with the behavior of the orbits
as the iterates approach infinity.  Field lines of period "n" separate
the period n disks from the main cardioid of the Mandelbrot set.  The
points that make up these lines have the characteristic that, as the
magnitude of the orbit approaches infinity, the polar angle is

fieldangle = 2 * pi * m / (2^n - 1),

where n is the period of the line, and m = (1, 2, ... 2^n-1) is the
order of the line.

For example, there are 3 period 2 field lines, for m = 1, 2, and 3.
(The m=3 case is simply the positive real axis, whose fieldangle is
always 0.)  For m=1, the fieldangle = 2/3 pi radians, or 120 degrees.
Each successive iteration squares the previous iterate (neglecting
adding c, since c is very small relative to the iterate), which doubles
the fieldangle.  Twice 120 degrees is 240 degrees, or 4/3 pi radians.
Twice that is 8/3 pi radians, or 2/3 pi radians (since 6/3 pi radian
or 2 pi is a full circle).  So, the field line has the same angle again
in 2 iterations, or is periodic with period n=2.  The same thing happens
with the m=2 line.

Finding the field lines directly is not an easy task.  What this coloring
method does is to show approximations to the field lines, and show some
cases that aren't field lines at all.  It does this by computing the
polar angle of the iterate at each step, and comparing it to the angle
for the user-specified field line.  By coloring according to the smallest
error in angles (current vs. field line), lines are drawn that come close
to the specified field line.  (For the actual field line, the error would
be zero.)  However, many other lines have polar angles equal to that of
the specified field line, so they show up as well.  The result is not
necessarily a mathematically accurate illustration of the Mandelbrot
field lines, but it is another interesting way to render the set.

}

field2_jul { ; Kerry Mitchell
        ;
        ; Colors Julia sets by nearest approach to
        ;   period 2 field lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = number of field line to use: 0, 1, or 2
        ; 2 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
        fieldangle=tan(imag(p2)*2*pi/3):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
        iter=iter+2, zc=sqr(zc)+c, zc=sqr(zc)+c
        rzc=|zc|, tanangle=imag(zc)/real(zc),
        r=cabs(fieldangle-tanangle)
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
        if ((rzc>maxr)||(iter>=maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

field3_jul { ; Kerry Mitchell
        ;
        ; Colors Julia sets by nearest approach to
        ;   period 3 field lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = number of field line to use:
        ;   0, 1, 2, 3, 4, 5, 6, 7
        ; 3 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
        fieldangle=tan(imag(p2)*2*pi/7):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
        iter=iter+3, zc=sqr(zc)+c, zc=sqr(zc)+c, zc=sqr(zc)+c
        rzc=|zc|, tanangle=imag(zc)/real(zc),
        r=cabs(fieldangle-tanangle)
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
        if ((rzc>maxr)||(iter>=maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

field4_jul { ; Kerry Mitchell
        ;
        ; Colors Julia sets by nearest approach to
        ;   period 4 field lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = number of field line to use:  0 - 15
        ; 4 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
        fieldangle=tan(imag(p2)*2*pi/15):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
        iter=iter+4, zc=sqr(zc)+c, zc=sqr(zc)+c, zc=sqr(zc)+c
        zc=sqr(zc)+c, rzc=|zc|, tanangle=imag(zc)/real(zc),
        r=cabs(fieldangle-tanangle)
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
        if ((rzc>maxr)||(iter>=maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

field2_man { ; Kerry Mitchell
        ;
        ; Colors Mandelbrot set by nearest approach to
        ;   period 2 field lines
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = number of field line to use: 0, 1, or 2
        ; 2 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
        zc=0, c=pixel, maxr=real(p1), minr=maxr, iter=1
        fieldangle=tan(imag(p1)*2*pi/3):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
        iter=iter+2, zc=sqr(zc)+c, zc=sqr(zc)+c
        rzc=|zc|, tanangle=imag(zc)/real(zc),
        r=cabs(fieldangle-tanangle)
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
        if ((rzc>maxr)||(iter>=maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

field3_man { ; Kerry Mitchell
        ;
        ; Colors Mandelbrot set by nearest approach to
        ;   period 3 field lines
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = number of field line to use:
        ;   0, 1, 2, 3, 4, 5, 6, 7
        ; 3 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
        zc=0, c=pixel, maxr=real(p1), minr=maxr, iter=1
        fieldangle=tan(imag(p1)*2*pi/7):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
        iter=iter+3, zc=sqr(zc)+c, zc=sqr(zc)+c, zc=sqr(zc)+c
        rzc=|zc|, tanangle=imag(zc)/real(zc),
        r=cabs(fieldangle-tanangle)
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
        if ((rzc>maxr)||(iter>=maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

field4_man { ; Kerry Mitchell
        ;
        ; Colors Mandelbrot set by nearest approach to
        ;   period 4 field lines
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = number of field line to use:  0 - 15
        ; 4 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
        zc=0, c=pixel, maxr=real(p1), minr=maxr, iter=1
        fieldangle=tan(imag(p1)*2*pi/15):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
        iter=iter+4, zc=sqr(zc)+c, zc=sqr(zc)+c, zc=sqr(zc)+c
        zc=sqr(zc)+c, rzc=|zc|, tanangle=imag(zc)/real(zc),
        r=cabs(fieldangle-tanangle)
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
        if ((rzc>maxr)||(iter>=maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

; -------------------------------------------------------------------------------
; Kerry Mitchell
; lkmitch@primenet.com
; -------------------------------------------------------------------------------


; Received: from lists.xmission.com (lists.xmission.com [198.60.22.7])
; 	by mail-atm.san.rr.com (8.8.7/8.8.8) with SMTP id VAA27403;
; 	Tue, 20 Jan 1998 21:56:44 -0800 (PST)
; Received: from domo by lists.xmission.com with local (Exim 1.73 #4)
; 	id 0xut8q-0004Nv-00; Tue, 20 Jan 1998 22:56:00 -0700
; Date: Tue, 20 Jan 1998 22:55:50 -0700 (MST)
; From: Kerry Mitchell <lkmitch@primenet.com>
; To: fractint@lists.xmission.com
; Subject: (fractint) Explanation, parameters, formulas--gaussian integers (long)
; Message-ID: <Pine.BSI.3.96.980120225435.26524C-100000@usr04.primenet.com>
; MIME-Version: 1.0
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: TEXT/PLAIN; charset=US-ASCII
; X-UIDL: c97328a7d72b958630fe2cb13ffee029

comment { ; narrative copyright Kerry Mitchell

Gauss

In the Fractint method bof60, the question of interest is how close
the orbit comes to the origin (0+0i).  The origin is one of an infinity
of "Gaussian integers."  These are complex numbers such that both the
real and imaginary parts are integers.  Examples are:  (0,0), (-2,3),
(17,-5), and (1000000,123456789).  The gaussian scheme is concerned with
how close the orbit comes to a Gaussian integer.

To find the gaussian integer which the orbit most closely approaches,
the built-in function round() is used.  Round(zc) returns a complex
number whose components are the rounded components of zc.  This is a
Gaussian integer.  The distance from zc to round(zc) is simply the
magnitude of zc - round(zc).  The gaussian method tracks this distance
and records the value of zc for which the distance is the smallest.
This value of zc is zmin.

In the gaussintt methods (Julia and Mandelbrot variations), simply plots
the polar angle of zmin, by assigning zmin to z and using the decomp
coloring.  Since zmin can occur at any point in the orbit, there's no
clear connection between the pixel value and the resulting color.
However, nearby points can often have similar orbits, so the spots of
constant color (polar angle) can have a variety of sizes.  Similar
results are obtained with the gaussintr methods.  Here, the log of the
magnitude of zmin is used as the polar angle for decomposition.

For particular combinations of parameter c and initial zc, the orbit
may be all Gaussian integers, for example, starting with zc=1 and c =
(0,1).  For other combinations of zc and c, such as zc=0 and c=pi,
the orbit will never be an integer.  Thus, it is reasonable to assume
that some orbits will tend to be closer to integers than others.  This
is illustrated with the gaussinttot methods.  A running sum of the
distances, r, is kept for all iterations in the orbit.  The mean
distance is then determined, and this is scaled into the decomposition
angle.  The result is a grid-like pattern superimposed on the basic
fractal structure.

}

gaussintr_jul { ; Kerry Mitchell
        ;
        ; Gaussian integer coloring of Julia sets
        ;   color by magnitude of nearest gaussian integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; variable zc used for calculation; coloring done with z
        ;
        zc=pixel, c=p1, iter=1, rmax=real(p2), rmin=1:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;
        iter=iter+1, zc=sqr(zc)+c, zr=round(zc), r=|zc-zr|,
        if (r<rmin)
          rmin=r, zmin=zr
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of magnitude of nearest gaussian integer as
        ;     decomposition angle
        ;
        if ((|zc|>rmax)||(iter==maxit))
          iter=-1
          angle=log(cabs(zmin)+1)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

gaussintt_jul { ; Kerry Mitchell
        ;
        ; Gaussian integer coloring of Mandelbrot set
        ;   color by polar angle of nearest gaussian integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; variable zc used for calculation; coloring done with z
        ;
        zc=pixel, c=p1, rmax=real(p2), rmin=1, iter=1:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;
        iter=iter+1, zc=sqr(zc)+c, zr=round(zc), q=|zc-zr|,
        if (q<rmin)
          rmin=q, zmin=zr
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   set z = nearest gaussian integer
        ;
        if ((|zc|>rmax)||(iter==maxit))
          iter=-1
          z=zmin
          end if
        iter>0
        }

gaussinttot_jul { ; Kerry Mitchell
        ;
        ; Gaussian integer coloring of Julia sets
        ;   color by average distance to nearest integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = scaling factor (try 30)
        ; variable zc used for calculation; coloring done with z
        ;
        zc=pixel, c=p1, rmax=real(p2), scale=imag(p2)
        iter=1, rmin=1, z=zc, tot=0:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;   tot = running sum of r's
        ;
        iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
        zr=round(zc), r=|zc-zr|, tot=tot+r
        ;
        ; bailout
        ;   scale average distance to decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if ((rzc>rmax)||(iter==maxit))
          angle=scale*tot/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        }

gaussintr_man { ; Kerry Mitchell
        ;
        ; Gaussian integer coloring of Mandelbrot set
        ;   color by magnitude of nearest gaussian integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; variable zc used for calculation; coloring done with z
        ;
        zc=0, c=pixel, iter=1, rmax=real(p1), rmin=1:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;
        iter=iter+1, zc=sqr(zc)+c, zr=round(zc), r=|zc-zr|,
        if (r<rmin)
          rmin=r, zmin=zr
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of magnitude of nearest gaussian integer as
        ;     decomposition angle
        ;
        if ((|zc|>rmax)||(iter==maxit))
          iter=-1
          angle=log(cabs(zmin)+1)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

gaussintt_man { ; Kerry Mitchell
        ;
        ; Gaussian integer coloring of Mandelbrot set
        ;   color by polar angle of nearest gaussian integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; variable zc used for calculation; coloring done with z
        ;
        zc=0, c=pixel, rmax=real(p1), rmin=1, iter=1:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;
        iter=iter+1, zc=sqr(zc)+c, zr=round(zc), q=|zc-zr|,
        if (q<rmin)
          rmin=q, zmin=zr
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   set z = nearest gaussian integer
        ;
        if ((|zc|>rmax)||(iter==maxit))
          iter=-1
          z=zmin
          end if
        iter>0
        }

gaussinttot_man { ; Kerry Mitchell
        ;
        ; Gaussian integer coloring of Mandelbrot set
        ;   color by average distance to nearest integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = scaling factor (try 30)
        ; variable zc used for calculation; coloring done with z
        ;
        zc=0, c=pixel, rmax=real(p1), scale=imag(p1)
        iter=1, rmin=1, z=zc, tot=0:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;   tot = running sum of r's
        ;
        iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
        zr=round(zc), r=|zc-zr|, tot=tot+r
        ;
        ; bailout
        ;   scale average distance to decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if ((rzc>rmax)||(iter==maxit))
          angle=scale*tot/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        }


; -------------------------------------------------------------------------------
; Kerry Mitchell
; lkmitch@primenet.com
; -------------------------------------------------------------------------------

; Received: by mail.san.rr.com for ehill1
;  (with Cubic Circle's cucipop (v1.21 1997/08/10) Fri Jan 23 19:47:21 1998)
; X-From_: owner-fractint@lists.xmission.com Fri Jan 23 18:52 PST 1998
; Received: from lists.xmission.com (lists.xmission.com [198.60.22.7])
; 	by mail-atm.san.rr.com (8.8.7/8.8.8) with SMTP id SAA11189;
; 	Fri, 23 Jan 1998 18:52:34 -0800 (PST)
; Received: from domo by lists.xmission.com with local (Exim 1.73 #4)
; 	id 0xvve3-00042h-00; Fri, 23 Jan 1998 19:48:31 -0700
; Date: Fri, 23 Jan 1998 19:48:24 -0700 (MST)
; From: Kerry Mitchell <lkmitch@primenet.com>
; To: fractint@lists.xmission.com
; Subject: (fractint) Explanation, parameters, & formulas--range (long)
; Message-ID: <Pine.BSI.3.96.980123194645.19498A-100000@usr01.primenet.com>
; MIME-Version: 1.0
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: TEXT/PLAIN; charset=US-ASCII
; Content-Length: 44399

comment { ; narrative copyright Kerry Mitchell

Range

In the range coloring schemes, the pixels of the Julia set images
are only colored when the iterate (of a component of it) falls within
a specified range.  This is similar to the bubble method, which only
treats orbits that pass close to the origin.  With an appropriate
choice of parameters, the range schemes can be forced to generate
bubbles-type images.  However, the intent of the range method was
to render Julia sets through thin rings of color, using a relatively
small range of magnitudes in which to trap the orbit.

The simplest case is shown in the range-r formulas.  Here, the orbit
is monitored until the magnitude of the iterate falls within a
specified range.  When this occurs, that iterate is saved.  Upon
bailout (either escape or maximum iterations), the last iterate
falling within the range is recalled, and its polar angle shown via
decomposition coloring.  Depending on the range chosen, the results
can be circular rings, pinched loops (figure "8"), or open loops.
The shapes are definitely non-fractal, but are assembled in such a
way to recover the underlying fractal structure.

Choosing the range is very important, as a greatly impacts the image.
The most direct route is to simply specify the upper and lower bounds
of the range.  This is the method used in range-r, and can require a
great deal of thought, to coordinate a range with the Julia parameter.
The other formulas using this method adust the ranges depending on the
Julia parameter c.  The range parameters are set by the user, the
center and the width.  For example, choosing a center of 1.0 and a
width of 0.1 means that the range will extend from 0.95 to 1.05, half
the width either side of the center.  The value of the center depends
on the the formula chosen.  In range-r-1, the basis for the range is
|c|, so the above choices would result in a range from 95% |c| to
105% |c|.  This basis was chosen since c is the first iterate of 0
(0^2 + c = c), and zero is the critical point of z^2 + c.  Another
way of looking at it is that, by choosing a range centered around c,
the orbit of 0 will fall into the range on the first iteration.  The
formulas range-r-2 and -3 use the second and third iterations,
respectively, so their bases are |sqr(c)+c| and |sqr(sqr(c)+c)+c|.  

This method opens itself up to many variations.  For example, instead
of monitoring the magnitude of the iterate, the real or imaginary
components can be tracked.  The formulas range-x and range-y perform
this.  In range-x, the real part of the iterate is watched.  When it
falls into the target range, the imaginary part of the iterate is
scaled and used as the decomposition angle.  Range-y does the same
thing, switching the roles of the real and imaginary parts.  Each is
offered with the 4 above range setting options:  explicit, c, sqr(c)+c,
sqr(sqr(c)+c)+c (the formulas are named similar to the range-r entries,
substituting -x or -y as appropriate).

Each of the above formulas uses the last occurance of an iterate inside
the target range to color the pixel.  If the orbit is such that the
range is hit many times, that prior information is lost.  One manner to
recover part of that information is with the rangecount formulas.  The
basic setup is the same as the range formulas, but now the decomposition
angle is the count of how many times the orbit landed in the range.  A
scale factor is available to convert the count into a useable angle.
This method seems to work especially well when the range width is
increased, to increase the hit count and make more colors available.

}

range-r_jul { ; Kerry Mitchell
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range explicity specified
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = unused
        ; real(p3) = lower bound of range (try 0.05)
        ; imag(p3) = upper bound of range (try 0.06)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), iter=1, z=1
        lo=real(p3), hi=imag(p3):
        ;
        ; iteration
        ;   if magnitude of iterate falls into range, save iterate
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          z=zc
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          end if
        iter>0
        }

range-r-1_jul { ; Kerry Mitchell
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = unused
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by |c|
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), iter=1
        z=1, fac=|c|
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac:
        ;
        ; iteration
        ;   if magnitude of iterate falls into range, save iterate
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          z=zc
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          end if
        iter>0
        }

range-r-2_jul { ; Kerry Mitchell
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = unused
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by |sqr(c)+c|
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), iter=1
        z=1, fac=|sqr(c)+c|
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac:
        ;
        ; iteration
        ;   if magnitude of iterate falls into range, save iterate
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          z=zc
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          end if
        iter>0
        }

range-r-3_jul { ; Kerry Mitchell
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = unused
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by |sqr(sqr(c)+c)+c|
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), iter=1
        z=1, fac=|sqr(sqr(c)+c)+c|
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac:
        ;
        ; iteration
        ;   if magnitude of iterate falls into range, save iterate
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          z=zc
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          end if
        iter>0
        }

range-x_jul { ; Kerry Mitchell
        ;
        ; colors Julia set by imaginary part of iterate, only
        ; when real part of iterate falls in certain range;
        ; range specified explicitly
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = lower end of range (try 0.05)
        ; imag(p3) = upper end of range (try 0.06)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, angle=0, lo=real(p3), hi=imag(p3):
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   scale imaginary part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*imag(zc)
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

range-x-1_jul { ; Kerry Mitchell
        ;
        ; colors Julia set by imaginary part of iterate, only
        ; when real part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by real(c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        angle=0, fac=real(c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   scale imaginary part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*imag(zc)
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

range-x-2_jul { ; Kerry Mitchell
        ;
        ; colors Julia set by imaginary part of iterate, only
        ; when real part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by real(sqr(c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        angle=0, fac=real(sqr(c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   scale imaginary part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*imag(zc)
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

range-x-3_jul { ; Kerry Mitchell
        ;
        ; colors Julia set by imaginary part of iterate, only
        ; when real part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by real(sqr(sqr(c)+c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        angle=0, fac=real(sqr(sqr(c)+c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   scale imaginary part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*imag(zc)
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

range-y_jul { ; Kerry Mitchell
        ;
        ; colors Julia set by real part of iterate, only
        ; when imaginary part of iterate falls in certain range;
        ; range specified explicitly
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = lower end of range (try 0.05)
        ; imag(p3) = upper end of range (try 0.06)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, angle=0, lo=real(p3), hi=imag(p3):
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   scale real part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*real(zc)
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

range-y-1_jul { ; Kerry Mitchell
        ;
        ; colors Julia set by real part of iterate, only when
        ; imaginary part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by imag(c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        angle=0, fac=imag(c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   scale real part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*real(zc)
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

range-y-2_jul { ; Kerry Mitchell
        ;
        ; colors Julia set by real part of iterate, only when
        ; imaginary part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by imag(sqr(c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        angle=0, fac=imag(sqr(c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   scale real part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*real(zc)
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

range-y-3_jul { ; Kerry Mitchell
        ;
        ; colors Julia set by real part of iterate, only when
        ; imaginary part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by imag(sqr(sqr(c)+c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        angle=0, fac=imag(sqr(sqr(c)+c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   scale real part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*real(zc)
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-r_jul { ; Kerry Mitchell
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range explicity specified
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = lower bound of range (try 0.05)
        ; imag(p3) = upper bound of range (try 0.06)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, count=0, lo=real(p3), hi=imag(p3):
        ;
        ; iteration
        ;   if magnitude of iterate falls into range,
        ;     increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-r-1_jul { ; Kerry Mitchell
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by |c|
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, count=0, fac=|c|
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac:
        ;
        ; iteration
        ;   if magnitude of iterate falls into range,
        ;     increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-r-2_jul { ; Kerry Mitchell
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by |sqr(c)+c|
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, count=0, fac=|sqr(c)+c|
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac:
        ;
        ; iteration
        ;   if magnitude of iterate falls into range,
        ;     increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-r-3_jul { ; Kerry Mitchell
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by |sqr(sqr(c)+c)+c|
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, count=0, fac=|sqr(sqr(c)+c)+c|
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac:
        ;
        ; iteration
        ;   if magnitude of iterate falls into range,
        ;     increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-x_jul { ; Kerry Mitchell
        ;
        ; colors Julia set according to how many times real
        ; part of iterate falls in certain range;
        ; range specified explicitly
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = lower end of range (try 0.05)
        ; imag(p3) = upper end of range (try 0.06)
        ; center of range is multiplied by real(c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, count=0, lo=real(p3), hi=imag(p3):
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-x-1_jul { ; Kerry Mitchell
        ;
        ; colors Julia set according to how many times real
        ; part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by real(c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        count=0, fac=real(c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-x-2_jul { ; Kerry Mitchell
        ;
        ; colors Julia set according to how many times real
        ; part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by real(sqr(c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        count=0, fac=real(sqr(c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-x-3_jul { ; Kerry Mitchell
        ;
        ; colors Julia set according to how many times real
        ; part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by real(sqr(sqr(c)+c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        count=0, fac=real(sqr(sqr(c)+c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-y_jul { ; Kerry Mitchell
        ;
        ; colors Julia set according to how many times imaginary
        ; part of iterate falls in certain range;
        ; range specified explicitly
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = lower end of range (try 0.05)
        ; imag(p3) = upper end of range (try 0.1)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, count=0, lo=real(p3), hi=imag(p3):
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-y-1_jul { ; Kerry Mitchell
        ;
        ; colors Julia set according to how many times imaginary
        ; part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by imag(c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        count=0, fac=imag(c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-y-2_jul { ; Kerry Mitchell
        ;
        ; colors Julia set according to how many times imaginary
        ; part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by imag(sqr(c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        count=0, fac=imag(sqr(c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-y-3_jul { ; Kerry Mitchell
        ;
        ; colors Julia set according to how many times imaginary
        ; part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by imag(sqr(sqr(c)+c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        count=0, fac=imag(sqr(sqr(c)+c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

; -------------------------------------------------------------------------------
; Kerry Mitchell
; lkmitch@primenet.com
; -------------------------------------------------------------------------------


; Received: by mail.san.rr.com for ehill1
;  (with Cubic Circle's cucipop (v1.21 1997/08/10) Wed Feb 11 22:39:19 1998)
; X-From_: owner-fractint@lists.xmission.com Wed Feb 11 22:37 PST 1998
; Received: from lists.xmission.com (lists.xmission.com [198.60.22.7])
; 	by mail-atm.san.rr.com (8.8.7/8.8.8) with SMTP id WAA19083;
; 	Wed, 11 Feb 1998 22:37:43 -0800 (PST)
; Received: from domo by lists.xmission.com with local (Exim 1.73 #4)
; 	id 0y2sGV-0003oi-00; Wed, 11 Feb 1998 23:36:55 -0700
; Date: Wed, 11 Feb 1998 23:36:41 -0700 (MST)
; From: Kerry Mitchell <lkmitch@primenet.com>
; To: fractint@lists.xmission.com
; Subject: (fractint) Explanation, formulas & pars--root coloring (long)
; Message-ID: <Pine.BSI.3.96.980211233548.15306A-100000@usr01.primenet.com>
; MIME-Version: 1.0
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: TEXT/PLAIN; charset=US-ASCII
; Content-Length: 6798

comment { ; narrative copyright Kerry Mitchell 11feb98

Root

Complex numbers, of which the real numbers are a subset, all have
two square roots.  That is, for a given complex number a, there
are two numbers, b1 and b2, such that b1*b1 (or b2*b2) = a.  It
so happens that b2 = -b1, since -1 * -1 = 1.  One of these numbers
(typically the one returned by the function sqrt(a)) is termed
the principal square root of a.  For example, if a=9, then the
square roots are 3 and -3.  3 is the principal square root.

For the Mandelbrot and Julia sets, this concept is implemented by
expanding the standard iteration loop.  Instead of:

z_new = z_old * z_old + c, use

w = z_old * z_old
z_new = w + c.

The question is then, is z_old the principal root of w?  This can
be determined by assuming that sqrt(w) returns the principal root.
Then, z_old is compared with sqrt(w) and -sqrt(w), to see which
root of w z_old was.

For the root (_man and _jul) formulas, this is performed on the
last iteration.  The yes/no answer is converted to a binary coloring
of the image.  The rootcount formulas make this determination for
every iteration, incrementing a counter each time z_old was the
principal root.  At the end, the counter is normalized by the total
number of iterations, then scaled into an angle for coloring using
the decomposition method.

}

root_jul { ; Kerry Mitchell 11feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e30)
        ; imag(p2) = unused
        ; use decomp=something (only 2 colors are used)
        zc=pixel, c=p1, iter=1, maxr=real(p2):
        iter=iter+1, z2=sqr(zc), znew=z2+c
        if ((|znew|>maxr)||(iter==maxit))
          w=sqrt(z2), r1=|zc-w|, r2=|zc+w|
          z=2*(r1<r2)-1
          iter=-1
        else
          zc=znew
        end if
        iter>0
        ;
        ; colors Julia set by whether or not previous iterate
        ;   is the principal root of the current z^2.
        ;
        }

root_man { ; Kerry Mitchell 11feb98
        ; real(p1) = bailout (try 1e30)
        ; imag(p1) = unused
        ; use decomp=something (only 2 colors are used)
        zc=0, c=pixel, iter=1, maxr=real(p1):
        iter=iter+1, z2=sqr(zc), znew=z2+c
        if ((|znew|>maxr)||(iter==maxit))
          w=sqrt(z2), r1=|zc-w|, r2=|zc+w|
          z=2*(r1<r2)-1
          iter=-1
        else
          zc=znew
        end if
        iter>0
        ;
        ; colors Mandelbrot set by whether or not previous
        ;   iterate is the principal root of the current z^2.
        ;
        }

rootcount_man { ; Kerry Mitchell 11feb98
        ; real(p1) = bailout (try 1e30)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outside only)
        ; imag(p2) = outer coloring speed (0 for inside only)
        ; use decomp=256
        zc=0, c=pixel, iter=1, maxr=real(p1), count=0
        inspeed=real(p2)*pi*255/128
        outspeed=imag(p2)*pi*255/128:
        iter=iter+1, z2=sqr(zc), w=sqrt(z2),
        r1=|zc-w|, r2=|zc+w|, zc=z2+c
        if (r1<r2)
          count=count+1
          end if
        if (iter==maxit)
          angle=inspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        if (|zc|>maxr)
          angle=outspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        ;
        ; Colors Mandelbrot set by how often previous iterate
        ; is the principal root of the current z^2.  The
        ; count of principal root times is divided by the
        ; total number of iterations, and scaled into an
        ; angle for decomposition coloring.  Either inside
        ; or outside can be switched off by setting the
        ; appropriate coloring speed parameter to 0.
        ;
        }

rootcount_jul { ; Kerry Mitchell 11feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e30)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outside only)
        ; imag(p3) = outer coloring speed (0 for inside only)
        ; use decomp=256
        zc=pixel, c=p1, iter=1, maxr=real(p2), count=0
        inspeed=real(p3)*pi*255/128
        outspeed=imag(p3)*pi*255/128:
        iter=iter+1, z2=sqr(zc), w=sqrt(z2),
        r1=|zc-w|, r2=|zc+w|, zc=z2+c
        if (r1<r2)
          count=count+1
          end if
        if (iter==maxit)
          angle=inspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        if (|zc|>maxr)
          angle=outspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
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
        }

; -------------------------------------------------------------------------------
; Kerry Mitchell
; lkmitch@primenet.com
; -------------------------------------------------------------------------------


; Received: by mail.san.rr.com for ehill1
;  (with Cubic Circle's cucipop (v1.21 1997/08/10) Wed Feb 11 22:49:28 1998)
; X-From_: owner-fractint@lists.xmission.com Wed Feb 11 22:46 PST 1998
; Received: from lists.xmission.com (lists.xmission.com [198.60.22.7])
; 	by mail-atm.san.rr.com (8.8.7/8.8.8) with SMTP id WAA23522;
; 	Wed, 11 Feb 1998 22:46:20 -0800 (PST)
; Received: from domo by lists.xmission.com with local (Exim 1.73 #4)
; 	id 0y2sOw-00058q-00; Wed, 11 Feb 1998 23:45:38 -0700
; Date: Wed, 11 Feb 1998 23:37:29 -0700 (MST)
; From: Kerry Mitchell <lkmitch@primenet.com>
; To: fractint@lists.xmission.com
; Subject: (fractint) Explanation, formulas and pars--triangle method (long)
; Message-ID: <Pine.BSI.3.96.980211233644.15306B-100000@usr01.primenet.com>
; MIME-Version: 1.0
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: TEXT/PLAIN; charset=US-ASCII
; Content-Length: 8187

comment { ; narrative copyright Kerry Mitchell 11feb98

Triangle

The triangle method is based on a simple characteristic of complex
numbers:  the magnitude of the sum of two complex numbers, |a+b|,
is strictly limited to a range determined by a and b:

|a+b| >= ||a| - |b||, and
|a+b| <= |a| + |b|,

where |z| is the square root of the sum of the squares of the
components, not the sum of the squares, as in Fractint.  The
extremes of this inequality are easily seen with a few examples.
If a=1 and b=2, then:

|a| = 1, |b| = 2;
||a| - |b|| = |1-2| = |-1| = 1;
|a| + |b| = 1+2 = 3;
|a+b| = |3| = 3;
1 <= 3 <= 3.

The upper bound occurs when both addends have the same polar angle.
The geometric interpretation of this is that the complex numbers add
up, and the length of the sum is simply the sum of the individual
lengths.

The lower bound occurs when the polar angles of the complex numbers
differ by 180 degrees; the two numbers are diametrically opposed.
Then, the length of the sum is the difference of the lengths.  For
example, if a=3i and b=-5i, then:

|a| = 3, |b| = 5;
||a| - |b|| = |3-5| = |-2| = 2;
|a| + |b| = 3 + 5 = 8;
|a+b| = |-2i| = 2;
2 <= 2 <= 8.

In general, the length of the sum is somewhere inbetween, and can be
thought of in terms of a triangle, which is how the inequality gets
its name.  If |a| is the length of one side of a triangle, and |b|
is the length of the second side, then |a+b| is the length of the
third side, and lies somewhere within the range shown above.

Back to fractals.  The two numbers of interest are z^2 and c.  Given
z (the previous iterate) and c (the Mandelbrot or Julia parameter),
the range for the magnitude of the new iterate can then be determined.
With this range, the magnitude of the new iterate can be rescaled to
a fraction between 0 and 1 inclusive:

min = ||z_old^2| - |c||, max = |z_old^2| + |c|,
z_new = z_old * z_old + c
fraction = (|z_new| - min) / (max - min).

This fraction is then scaled into an angle for coloring with the
decomposition method.

In the triang formulas (_man and _jul variations), this operation
is performed on the last iterate.  The triangcount formulas compute
the fraction at every iteration, and color the image based on the
average fraction (over all iterations).

}

triang_man { ; Kerry Mitchell 11feb98
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
        ; use decomp=256
        zc=pixel, c=pixel, rc=cabs(c), iter=1
        r2zc=|zc|, maxr=real(p1)
        inspeed=real(p2)*pi*255/128
        outspeed=imag(p2)*pi*255/128:
        iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2),
        fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
        zc=z2, r2zc=|zc|
        if (iter==maxit)
          angle=inspeed*q
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        if (r2zc>maxr)
          angle=outspeed*q
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        ;
        ; Colors Mandelbrot set by magnitude of last iterate
        ; within a range determined by the triangle inequality.
        ; Take location in range and scale into an angle for
        ; decomp coloring.  Decouple inside from outside by
        ; setting appropriate coloring speed to 0.
        ;
        }

triang_jul { ; Kerry Mitchell 11feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
        ; use decomp=256
        zc=pixel, c=p1, rc=cabs(c), iter=1
        r2zc=|zc|, maxr=real(p2)
        inspeed=real(p3)*pi*255/128
        outspeed=imag(p3)*pi*255/128:
        iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2),
        fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
        zc=z2, r2zc=|zc|
        if (iter==maxit)
          angle=inspeed*q
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        if (r2zc>maxr)
          angle=outspeed*q
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        ;
        ; Colors Julia set by magnitude of last iterate
        ; within a range determined by the triangle inequality.
        ; Take location in range and scale into an angle for
        ; decomp coloring.  Decouple inside from outside by
        ; setting appropriate coloring speed to 0.
        ;
        }

triangcount_man { ; Kerry Mitchell 11feb98
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
        ; use decomp=256
        zc=pixel, c=pixel, rc=cabs(c), iter=1
        r2zc=|zc|, maxr=real(p1), count=0
        inspeed=real(p2)*pi*255/128
        outspeed=imag(p2)*pi*255/128:
        iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2),
        fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
        count=count+q, zc=z2, r2zc=|zc|
        if (iter==maxit)
          angle=inspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        if (r2zc>maxr)
          angle=outspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        ;
        ; Colors Mandelbrot set by average value of magnitude
        ; within a range determined by the triangle inequality.
        ; Scale average into an angle for decomp coloring.
        ; Decouple inside from outside by setting appropriate
        ; coloring speed to 0.
        ;
        }

triangcount_jul { ; Kerry Mitchell 11feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
        ; use decomp=256
        zc=pixel, c=p1, rc=cabs(c), iter=1
        r2zc=|zc|, maxr=real(p2), count=0
        inspeed=real(p3)*pi*255/128
        outspeed=imag(p3)*pi*255/128:
        iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2),
        fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
        count=count+q, zc=z2, r2zc=|zc|
        if (iter==maxit)
          angle=inspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        if (r2zc>maxr)
          angle=outspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        ;
        ; Colors Julia set by average value of magnitude
        ; within a range determined by the triangle inequality.
        ; Scale average into an angle for decomp coloring.
        ; Decouple inside from outside by setting appropriate
        ; coloring speed to 0.
        ;
        }

; -------------------------------------------------------------------------------
; Kerry Mitchell
; lkmitch@primenet.com
; -------------------------------------------------------------------------------


; Received: by mail.san.rr.com for ehill1
;  (with Cubic Circle's cucipop (v1.21 1997/08/10) Fri Feb 13 20:05:00 1998)
; X-From_: owner-fractint@lists.xmission.com Fri Feb 13 20:03 PST 1998
; Received: from lists.xmission.com (lists.xmission.com [198.60.22.7])
; 	by mail-atm.san.rr.com (8.8.7/8.8.8) with SMTP id UAA29032;
; 	Fri, 13 Feb 1998 20:03:49 -0800 (PST)
; Received: from domo by lists.xmission.com with local (Exim 1.73 #4)
; 	id 0y3YoS-0002GC-00; Fri, 13 Feb 1998 21:02:48 -0700
; Date: Fri, 13 Feb 1998 21:02:27 -0700 (MST)
; From: Kerry Mitchell <lkmitch@primenet.com>
; To: fractint@lists.xmission.com
; Subject: (fractint) Explanation, formulas & pars--average (long)
; Message-ID: <Pine.BSI.3.96.980213210045.17898A-100000@usr06.primenet.com>
; MIME-Version: 1.0
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: TEXT/PLAIN; charset=US-ASCII
; Content-Length: 24054

comment { ; narrative copyright Kerry Mitchell 13feb98

Average

Due to the discrete nature of fractal rendering, most 
fractals exhibit some sort of banding artifacts.  That 
is, formulas tend to be iterated until "something happens", 
and then the pixel is colored.  There can appear a sharp 
border between pixels where the iteration stopped at step 
n, versus nearby pixels that survived until step n+1.  
This discontinuity can even occur if the coloring is based 
on something other than the iteration count.

Averaging is one way to reduce this banding.  The bands of 
color are dependent upon the iteration count, which is 
related to the escape radius, or bailout value.  Changing 
the bailout will move the bands in or out from the fractal, 
and may slightly change their shape.  Moving the bands is 
the basis of this method.

For quadratic formulas (Mandelbrot and Julia sets), squaring 
the bailout will move the bands out approximately one band 
width.  To see this, assume that the orbit escaped at the 
17th iteration, using a escape radius of 100.  The magnitude 
of the iterate is between 100 and 10,000 (or else it would 
have escaped before or after iteration 17).  The magnitude 
of the next iteration will be between 10,000 and 1e8 (100 
squared and 10,000 squared).  Now, changing the escape 
radius to 10,000 (100 squared) means that the orbit will 
escape at the next iteration, or that what was the 17th 
iteration band has moved outward 1 band width.

To see how this works with fractals, assume that a string 
of pixels is colored thusly with a given bailout value:

r g g g b b b

where "r" indicates red, "g" means green, and "b" is 
blue.  Increasing the bailout value moves the band outward, 
giving this string of colors:

r r g g g b b

Averaging the two:

r g g g b b b  first
r r g g g b b  second
r y g g c b b  average

where "y" means dark yellow and "c" means dark cyan.  The 
hard boundary between red and green has now been smoothed 
by the inclusion of a (dark) yellow pixel, and the line 
between green and blue has been smoothed through a (dark) 
cyan pixel.  In reality, more than two bailouts should be 
used to get a smoothly varying image.  Also, when using a 
bit-mapped fractal generator (Fractint), be aware that the 
averaging takes place in color index space, not color space, 
so it is important to use a smoothly varying color map.

The "ave8template" formula shows the basic functionality, 
using 8 different bailouts.  Call the lowest bailout r1, 
and choose it such that it is much larger than the size 
of the parameter (say, 100).  Then the width of this 
iteration band is from 100 to 10,000.  That is, all orbits 
that escape will have magnitudes between 100 and 10,000.  
The goal is to pick several other bailout values that will 
equally span this space.  Since the high end of the range 
is r1^2 or r1*r1^1, 8 even steps can be made by choosing 
bailouts of

r = r1 * r1^(i/8), 

for i from 1 to 8.  In practice, r1 and the next 7 steps 
are used, since the eighth bailout will overlap the first 
one.  Given the bailout values, 8 different iteration 
flags are initialized to 0.

At each iteration, the overall iteration counter is 
incremented, and an overall variable is recorded, which 
tracks the relevant quantity (iteration, how many times 
real(z) is less than imag(z), etc.).  Checking for escape 
is doing by sequentially stepping through the 8 bailout 
values.  If bailout 1 is exceeded, then set iteration 
counter 1 to the current iteration and set variable 1 
to the value of the overall variable.  If all the 
bailouts have not yet been exceeded, continuing iterating.

When all the bailouts have been exceeded, compute the 
average of all the specific variables (variable 1, variable 
2, etc.).  Then, use that average as the coloring parameter.  
If the pixel in question turns out the be an inside pixel, 
color using the overall variable.

If the image is to be rendered simply using a smoothed 
iteration count, then a method similar to Linas Vepstas' 
renormalization is preferable.  However, if the variable 
used for coloring does not lend itself to a simple 
renormalization analysis, then the present method will 
work very well.  The number of averages can easily be 
changed to any appropriate amount.  However, when using 
a bit-mapped generator, it will not be beneficial to 
use an extreme number of averages, as the image will 
still be limited to the number of colors available 
in the generator.

ave8template  ; Kerry Mitchell 13feb98
        ; real(p1) = bailout (try 10)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
        zc=0, c=pixel, iter=1, maxr=real(p1), count=0
        b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
        b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
        iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
        inspeed=real(p2)*pi*255/128
        outspeed=imag(p2)*pi*255/128
        :
        iter=iter+1, zc=sqr(zc)+c, r2zc=|zc|
        ;
        ; insert logic here to compute variable counter
        ;
        count=count+1
        if (r2zc>b1)
          if (iter1==0)
            iter1=iter, q1=count/iter
          endif
        if (r2zc>b2)
          if (iter2==0)
            iter2=iter, q2=count/iter
          endif
        if (r2zc>b3)
          if (iter3==0)
            iter3=iter, q3=count/iter
          endif
        if (r2zc>b4)
          if (iter4==0)
            iter4=iter, q4=count/iter
          endif
        if (r2zc>b5)
          if (iter5==0)
            iter5=iter, q5=count/iter
          endif
        if (r2zc>b6)
          if (iter6==0)
            iter6=iter, q6=count/iter
          endif
        if (r2zc>b7)
          if (iter7==0)
            iter7=iter, q7=count/iter
          endif
        if (r2zc>b8)
          if (iter8==0)
            iter8=iter, q8=count/iter
          endif

        iter=-1
        q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
        angle=q*outspeed
        z=cos(angle)+flip(sin(angle))

        endif
        endif
        endif
        endif
        endif
        endif
        endif
        endif

        if (iter==maxit)
          q=count/iter
          angle=q*inspeed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if

        iter>0

}

ave8xlty_man { ; Kerry Mitchell 13feb98
        ; real(p1) = bailout (try 10)
        ; imag(p1) = rounding factor (try 1)
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
        ; fn1 = arbitrary function (try log)
        zc=0, c=pixel, iter=1, maxr=real(p1), count=0
        b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
        b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
        iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
        inspeed=real(p2)*pi*255/128, roundfac=imag(p1)
        outspeed=imag(p2)*pi*255/128:
        iter=iter+1, zc=sqr(zc)+c, r2zc=|zc|
        temp=fn1(zc)/roundfac, frac=roundfac*(temp-round(temp))
        if (real(frac)<imag(frac))
          count=count+1
          end if
        if (r2zc>b1)
          if (iter1==0)
            iter1=iter, q1=count/iter
          endif
        if (r2zc>b2)
          if (iter2==0)
            iter2=iter, q2=count/iter
          endif
        if (r2zc>b3)
          if (iter3==0)
            iter3=iter, q3=count/iter
          endif
        if (r2zc>b4)
          if (iter4==0)
            iter4=iter, q4=count/iter
          endif
        if (r2zc>b5)
          if (iter5==0)
            iter5=iter, q5=count/iter
          endif
        if (r2zc>b6)
          if (iter6==0)
            iter6=iter, q6=count/iter
          endif
        if (r2zc>b7)
          if (iter7==0)
            iter7=iter, q7=count/iter
          endif
        if (r2zc>b8)
          if (iter8==0)
            iter8=iter, q8=count/iter
          endif

        iter=-1
        q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
        angle=q*outspeed
        z=cos(angle)+flip(sin(angle))

        endif
        endif
        endif
        endif
        endif
        endif
        endif
        endif

        if (iter==maxit)
          q=count/iter
          angle=q*inspeed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if

        iter>0
        }

ave8xlty_jul { ; Kerry Mitchell 13feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 10)
        ; imag(p2) = rounding factor (try 1)
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
        ; fn1 = arbitrary function (try log)
        zc=pixel, c=p1, iter=1, maxr=real(p2), count=0
        b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
        b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
        iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
        inspeed=real(p3)*pi*255/128, roundfac=imag(p2)
        outspeed=imag(p3)*pi*255/128:
        iter=iter+1, zc=sqr(zc)+c, r2zc=|zc|
        temp=fn1(zc)/roundfac, frac=roundfac*(temp-round(temp))
        if (real(frac)<imag(frac))
          count=count+1
          end if
        if (r2zc>b1)
          if (iter1==0)
            iter1=iter, q1=count/iter
          endif
        if (r2zc>b2)
          if (iter2==0)
            iter2=iter, q2=count/iter
          endif
        if (r2zc>b3)
          if (iter3==0)
            iter3=iter, q3=count/iter
          endif
        if (r2zc>b4)
          if (iter4==0)
            iter4=iter, q4=count/iter
          endif
        if (r2zc>b5)
          if (iter5==0)
            iter5=iter, q5=count/iter
          endif
        if (r2zc>b6)
          if (iter6==0)
            iter6=iter, q6=count/iter
          endif
        if (r2zc>b7)
          if (iter7==0)
            iter7=iter, q7=count/iter
          endif
        if (r2zc>b8)
          if (iter8==0)
            iter8=iter, q8=count/iter
          endif

        iter=-1
        q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
        angle=q*outspeed
        z=cos(angle)+flip(sin(angle))

        endif
        endif
        endif
        endif
        endif
        endif
        endif
        endif

        if (iter==maxit)
          q=count/iter
          angle=q*inspeed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if

        iter>0
        }

ave8z1gtz2_jul { ; Kerry Mitchell 13feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e10)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
        z1=pixel, r1=|z1|, c=p1, iter=1, maxr=real(p2), count=0
        b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
        b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
        iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
        inspeed=real(p3)*pi*255/128
        outspeed=imag(p3)*pi*255/128:
        iter=iter+1, z2=sqr(z1)+c, r2=|z2|
        if (r1>r2)
          count=count+1
          end if
        z1=z2, r1=r2
        if (r2>b1)
          if (iter1==0)
            iter1=iter, q1=count/iter
          endif
        if (r2>b2)
          if (iter2==0)
            iter2=iter, q2=count/iter
          endif
        if (r2>b3)
          if (iter3==0)
            iter3=iter, q3=count/iter
          endif
        if (r2>b4)
          if (iter4==0)
            iter4=iter, q4=count/iter
          endif
        if (r2>b5)
          if (iter5==0)
            iter5=iter, q5=count/iter
          endif
        if (r2>b6)
          if (iter6==0)
            iter6=iter, q6=count/iter
          endif
        if (r2>b7)
          if (iter7==0)
            iter7=iter, q7=count/iter
          endif
        if (r2>b8)
          if (iter8==0)
            iter8=iter, q8=count/iter
          endif

        iter=-1
        q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
        angle=q*outspeed
        z=cos(angle)+flip(sin(angle))

        endif
        endif
        endif
        endif
        endif
        endif
        endif
        endif

        if (iter==maxit)
          q=count/iter
          angle=q*inspeed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if

        iter>0
        }

ave8z1gtz2_man { ; Kerry Mitchell 13feb98
        ; real(p1) = bailout (try 1e10)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
        z1=0, r1=|z1|, c=pixel, iter=1, maxr=real(p1), count=0
        b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
        b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
        iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
        inspeed=real(p2)*pi*255/128
        outspeed=imag(p2)*pi*255/128:
        iter=iter+1, z2=sqr(z1)+c, r2=|z2|
        if (r1>r2)
          count=count+1
          end if
        z1=z2, r1=r2
        if (r2>b1)
          if (iter1==0)
            iter1=iter, q1=count/iter
          endif
        if (r2>b2)
          if (iter2==0)
            iter2=iter, q2=count/iter
          endif
        if (r2>b3)
          if (iter3==0)
            iter3=iter, q3=count/iter
          endif
        if (r2>b4)
          if (iter4==0)
            iter4=iter, q4=count/iter
          endif
        if (r2>b5)
          if (iter5==0)
            iter5=iter, q5=count/iter
          endif
        if (r2>b6)
          if (iter6==0)
            iter6=iter, q6=count/iter
          endif
        if (r2>b7)
          if (iter7==0)
            iter7=iter, q7=count/iter
          endif
        if (r2>b8)
          if (iter8==0)
            iter8=iter, q8=count/iter
          endif

        iter=-1
        q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
        angle=q*outspeed
        z=cos(angle)+flip(sin(angle))

        endif
        endif
        endif
        endif
        endif
        endif
        endif
        endif

        if (iter==maxit)
          q=count/iter
          angle=q*inspeed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if

        iter>0
        }

ave8rootcount_m { ; Kerry Mitchell 12feb98
        ; real(p1) = bailout (try 1e10)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
        zc=0, c=pixel, iter=1, maxr=real(p1), count=0
        b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
        b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
        iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
        inspeed=real(p2)*pi*255/128
        outspeed=imag(p2)*pi*255/128:
        iter=iter+1, z2=sqr(zc), w=sqrt(z2),
        r1=|zc-w|, r2=|zc+w|, count=count+(r1<r2),
        zc=z2+c, r2zc=|zc|
        if (r2zc>b1)
          if (iter1==0)
            iter1=iter, q1=count/iter
          endif
        if (r2zc>b2)
          if (iter2==0)
            iter2=iter, q2=count/iter
          endif
        if (r2zc>b3)
          if (iter3==0)
            iter3=iter, q3=count/iter
          endif
        if (r2zc>b4)
          if (iter4==0)
            iter4=iter, q4=count/iter
          endif
        if (r2zc>b5)
          if (iter5==0)
            iter5=iter, q5=count/iter
          endif
        if (r2zc>b6)
          if (iter6==0)
            iter6=iter, q6=count/iter
          endif
        if (r2zc>b7)
          if (iter7==0)
            iter7=iter, q7=count/iter
          endif
        if (r2zc>b8)
          if (iter8==0)
            iter8=iter, q8=count/iter
          endif

        iter=-1
        q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
        angle=q*outspeed
        z=cos(angle)+flip(sin(angle))

        endif
        endif
        endif
        endif
        endif
        endif
        endif
        endif

        if (iter==maxit)
          q=count/iter
          angle=q*inspeed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if

        iter>0
        }

ave8rootcount_j { ; Kerry Mitchell 12feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e10)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
        zc=pixel, c=p1, iter=1, maxr=real(p2), count=0
        b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
        b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
        iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
        inspeed=real(p3)*pi*255/128
        outspeed=imag(p3)*pi*255/128:
        iter=iter+1, z2=sqr(zc), w=sqrt(z2),
        r1=|zc-w|, r2=|zc+w|, count=count+(r1<r2),
        zc=z2+c, r2zc=|zc|
        if (r2zc>b1)
          if (iter1==0)
            iter1=iter, q1=count/iter
          endif
        if (r2zc>b2)
          if (iter2==0)
            iter2=iter, q2=count/iter
          endif
        if (r2zc>b3)
          if (iter3==0)
            iter3=iter, q3=count/iter
          endif
        if (r2zc>b4)
          if (iter4==0)
            iter4=iter, q4=count/iter
          endif
        if (r2zc>b5)
          if (iter5==0)
            iter5=iter, q5=count/iter
          endif
        if (r2zc>b6)
          if (iter6==0)
            iter6=iter, q6=count/iter
          endif
        if (r2zc>b7)
          if (iter7==0)
            iter7=iter, q7=count/iter
          endif
        if (r2zc>b8)
          if (iter8==0)
            iter8=iter, q8=count/iter
          endif

        iter=-1
        q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
        angle=q*outspeed
        z=cos(angle)+flip(sin(angle))

        endif
        endif
        endif
        endif
        endif
        endif
        endif
        endif

        if (iter==maxit)
          q=count/iter
          angle=q*inspeed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if

        iter>0
        }

ave8triangcount_j {
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e6)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
        zc=pixel, c=p1, rc=cabs(c), r2zc=|zc|
        iter=1, maxr=real(p2), count=0
        b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
        b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
        iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
        inspeed=real(p3)*pi*255/128
        outspeed=imag(p3)*pi*255/128:
        iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2),
        fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
        zc=z2, r2zc=|zc|, count=count+q
        if (r2zc>b1)
          if (iter1==0)
            iter1=iter, q1=count/iter
          endif
        if (r2zc>b2)
          if (iter2==0)
            iter2=iter, q2=count/iter
          endif
        if (r2zc>b3)
          if (iter3==0)
            iter3=iter, q3=count/iter
          endif
        if (r2zc>b4)
          if (iter4==0)
            iter4=iter, q4=count/iter
          endif
        if (r2zc>b5)
          if (iter5==0)
            iter5=iter, q5=count/iter
          endif
        if (r2zc>b6)
          if (iter6==0)
            iter6=iter, q6=count/iter
          endif
        if (r2zc>b7)
          if (iter7==0)
            iter7=iter, q7=count/iter
          endif
        if (r2zc>b8)
          if (iter8==0)
            iter8=iter, q8=count/iter
          endif

        iter=-1
        q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
        angle=q*outspeed
        z=cos(angle)+flip(sin(angle))

        endif
        endif
        endif
        endif
        endif
        endif
        endif
        endif

        if (iter==maxit)
          q=count/iter
          angle=q*inspeed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if

        iter>0
        }

ave8triangcount_m {
        ; real(p1) = bailout (try 1e6)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
        zc=pixel, c=pixel, rc=cabs(c), r2zc=|zc|
        iter=1, maxr=real(p1), count=0
        b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
        b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
        iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
        inspeed=real(p2)*pi*255/128
        outspeed=imag(p2)*pi*255/128:
        iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2),
        fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
        zc=z2, r2zc=|zc|, count=count+q
        if (r2zc>b1)
          if (iter1==0)
            iter1=iter, q1=count/iter
          endif
        if (r2zc>b2)
          if (iter2==0)
            iter2=iter, q2=count/iter
          endif
        if (r2zc>b3)
          if (iter3==0)
            iter3=iter, q3=count/iter
          endif
        if (r2zc>b4)
          if (iter4==0)
            iter4=iter, q4=count/iter
          endif
        if (r2zc>b5)
          if (iter5==0)
            iter5=iter, q5=count/iter
          endif
        if (r2zc>b6)
          if (iter6==0)
            iter6=iter, q6=count/iter
          endif
        if (r2zc>b7)
          if (iter7==0)
            iter7=iter, q7=count/iter
          endif
        if (r2zc>b8)
          if (iter8==0)
            iter8=iter, q8=count/iter
          endif

        iter=-1
        q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
        angle=q*outspeed
        z=cos(angle)+flip(sin(angle))

        endif
        endif
        endif
        endif
        endif
        endif
        endif
        endif

        if (iter==maxit)
          q=count/iter
          angle=q*inspeed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if

        iter>0
        }

; -------------------------------------------------------------------------------
; Kerry Mitchell
; lkmitch@primenet.com
; -------------------------------------------------------------------------------

; Received: by mail.san.rr.com for ehill1
;  (with Cubic Circle's cucipop (v1.21 1997/08/10) Sat Feb 14 23:33:13 1998)
; X-From_: owner-fractint@lists.xmission.com Sat Feb 14 23:32 PST 1998
; Received: from lists.xmission.com (lists.xmission.com [198.60.22.7])
; 	by mail-atm.san.rr.com (8.8.7/8.8.8) with SMTP id XAA12774;
; 	Sat, 14 Feb 1998 23:32:19 -0800 (PST)
; Received: from domo by lists.xmission.com with local (Exim 1.73 #4)
; 	id 0y3yY5-000746-00; Sun, 15 Feb 1998 00:31:37 -0700
; Date: Sun, 15 Feb 1998 00:31:24 -0700 (MST)
; From: Kerry Mitchell <lkmitch@primenet.com>
; To: Paul Derbyshire <ao950@freenet.carleton.ca>
; cc: fractint@lists.xmission.com
; Subject: (fractint) Higher order Herman Rings
; In-Reply-To: <199802140448.XAA14090@freenet5.carleton.ca.carleton.ca>
; Message-ID: <Pine.BSI.3.96.980215002840.14743A-100000@usr09.primenet.com>
; MIME-Version: 1.0
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: TEXT/PLAIN; charset=US-ASCII
; Content-Length: 3185
; 
; Paul D. queried:
; 
; > ObFractint: I have tried and tried but have not figured out how to
; > generalize the hring formula to, say, cubic structure, or to add more
; > critical points. Damn damn damn... Anyone else got any ideas? Jay, Paul C?
; > Kerry? You math whizzes? :-)
; 
; Try these out.  I don't guarantee that the are actually Herman rings,
; since I'm not sure I understand the exact definition.  However, they seem
; to do about the same thing that Paul's other ones did.  I'll post an
; explanation tomorrow.

herman_jul-polar { ; Kerry Mitchell 14feb98
        ; p1 = Julia parameter
        ; real(p2) = z exponent (use integer >= 2)
        ; imag(p2) = coloring speed (try 4)
        ; real(p3) = alpha magnitude (try 1)
        ; imag(p3) = alpha polar angle (try integers)
        ; use decomp=256, inside=0
        zc=pixel, iter=1, n=real(p2), m=n-1, c=p1
        maxr=1e6, minr=1/maxr, speed=imag(p2)*pi/128
        r=real(p3), t=imag(p3), alpha=r*(cos(t)+flip(sin(t)))
        oln=1/log(n), fac=log(0.5*log(maxr))
        :
        g=(zc-c)/(1-c*zc), zc=alpha*zc^n*g^m
        iter=iter+1, r=|zc|
        if (r<minr)
          t=(iter+oln*(fac-log(log(cabs(zc)))))*speed
          z=cos(t)+flip(sin(t))
          iter=-1
          end if
        if (r>maxr)
          t=(iter+oln*(fac-log(log(cabs(zc)))))*speed+pi
          z=cos(t)+flip(sin(t))
          iter=-1
          end if
        if (iter==maxit)
          z=0
          iter=-1
          end if
        iter>0
        }

; -------------------------------------------------------------------------------
; Kerry Mitchell
; lkmitch@primenet.com
; -------------------------------------------------------------------------------



; Received: by mail.san.rr.com for ehill1
;  (with Cubic Circle's cucipop (v1.21 1997/08/10) Sun Feb 15 22:12:09 1998)
; X-From_: owner-fractint@lists.xmission.com Sun Feb 15 22:10 PST 1998
; Received: from lists.xmission.com (lists.xmission.com [198.60.22.7])
; 	by mail-atm.san.rr.com (8.8.7/8.8.8) with SMTP id WAA29221;
; 	Sun, 15 Feb 1998 22:10:42 -0800 (PST)
; Received: from domo by lists.xmission.com with local (Exim 1.73 #4)
; 	id 0y4JZa-0003wU-00; Sun, 15 Feb 1998 22:58:34 -0700
; Date: Sun, 15 Feb 1998 22:58:09 -0700 (MST)
; From: Kerry Mitchell <lkmitch@primenet.com>
; To: fractint@lists.xmission.com
; Subject: (fractint) More Herman Rings (long)
; Message-ID: <Pine.BSI.3.96.980215225720.27105A-100000@usr04.primenet.com>
; MIME-Version: 1.0
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: TEXT/PLAIN; charset=US-ASCII
; Content-Length: 14481

comment { ; narrative copyright Kerry Mitchell 15feb98

Higher order Herman Rings

In Paul Derbyshire's posting about Herman Rings, he gave a formula 
that was known to generate the rings:

H(z) = alpha * z^2 * (z-c) / (1-c*z).

Paul's examples tended to resemble, in overall shape, Julia sets 
from the standard quadratic, f(z) = z^2 + c.  I surmised that this 
was due to the z^2 factor in H(z), and conjectured that higher 
order Herman Rings could be made by increasing the z exponent.  
Just going from z^2 to z^3 was interesting, but didn't result in 
the same sort of dynamics that H(z) had.  So, I generalized H(z)
into F(z):

F(z) = alpha * z^n * g(z)^m, where
g(z) = (z-c)/(1-c*z).

The formula that Paul used had n=2 and m=1.  I tried n=3 and m=1 
and determined it to be unsuccessful.  So, I tried n=3 and m=2, 
and decided that, in general, m should be equal to n-1 for higher 
order rings.

Finding the critical points for F is not as hard as it may seem.  
Using the derivative rules from calculus,

F' = alpha * nz^(n-1) * g^m + alpha * z^n * mg'g^(m-1).

Setting F' = 0 to find the critical points means that alpha,
z^(n-1) and g^(m-1) can all be divided out as common factors.
(The critical points associated with those factors are:  z=0,
z=c, and z=1/c.  None of these has interesting dynamics.)  The
result is:

0 = ng + mg'z, or
z = -ng / (mg').

Differentiating g(z),

g' = (1-c^2) / (1-c*z)^2.

Using this in the above equation for z results in a quadratic
for z which is easily solved using the quadratic equation.  In
fact, when m = n-1, the discriminant of the solution can be
factored.  The result is:

z = [c^2 + (2n-1)] +/- sqrt([c^2 - 1]*[c^2 - (2n-1)^2])] / (2nc).

Using this directly as the starting point for Mandelbrot-type 
images leads to discontinuities, where one root should be used 
instead of the other.  These discontinuities occur when real(c^2) 
= n^2 + m^2, and at the imaginary axis.  In the formulas below
(herman_man and herman-alpha), they are automatically handled
in the initialization.  Since Julia sets are not initialized
using critical points, the herman_jul formulas lack this logic.

The rotation parameter, alpha, is what seems to determine whether 
or not Herman rings actually show up.  Two methods can be used to 
set alpha--cartesian and polar coordinates.  For the cartesian 
method (-cart formulas), the real and imaginary parts of alpha are 
input directly.  With the polar method (-polar formulas), the 
magnitude and polar angle of alpha are input.  This makes it very 
easy to specify rotation by an irrational angle.  Simply specify a 
*rational* number for the polar angle.  The irrationality of the 
rotation angle is expressed as an irrational number of turns, not 
radians.  Since the difference between turns and radians involves 
a factor of pi, which is irrational, using a rational number of 
radians insures that the number of turns is irrational.  The effect
of alpha can be show through the special Mandelbrot-type formula,
herman_alpha.  Here, c is input through parameters and z is
initialized accordingly.  The parameter alpha is varied by being
set to the pixel value.

The following formulas all use the renormalization method to 
reduce banding.  In this implementation, the actual coloring is 
performed using the decomposition method.  This allows separate 
rendering of the orbits that get attracted to infinity and those 
that get attracted to 0.  After forming the decomposition angle 
based on the iteration count, those pixels that escape to infinity 
have their angle increased by pi.  This means that for the same 
iteration count, two pixels with different basins of attraction 
will be separarated by half of the color palette.  Those pixels 
whose orbits are not attracted by either 0 or infinity are treated
as inside pixels.

}

herman_man-polar { ; Kerry Mitchell 15feb98
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = coloring speed (try 4)
        ; real(p2) = alpha magnitude (try 1)
        ; imag(p2) = alpha polar angle (try integers)
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        c=pixel, iter=1, n=real(p1), m=n-1, nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=imag(p1)*pi/128
        r=real(p2), t=imag(p2), alpha=r*(cos(t)+flip(sin(t)))
        oln=1/log(n), fac=log(0.5*log(maxr))
        c2=sqr(c), hypfac=sqr(n)+sqr(m), pn=1
        if (real(p3)<0)
          pn=-1
          end if
        if (real(c2)>hypfac)
          pn=-pn
        end if
        if (imag(c)<0)
          pn=-pn
        end if
        d=sqrt((c2-1)*(c2-sqr(nfac)))
        z=(nfac+c2+pn*d)/(2*n*c)
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        }

herman_man-cart { ; Kerry Mitchell 15feb98
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = coloring speed (try 4)
        ; p2 = alpha (go wild)
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        c=pixel, iter=1, n=real(p1), m=n-1, nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=imag(p1)*pi/128
        oln=1/log(n), fac=log(0.5*log(maxr)), alpha=p2
        c2=sqr(c), hypfac=sqr(n)+sqr(m), pn=1
        if (real(p3)<0)
          pn=-1
          end if
        if (real(c2)>hypfac)
          pn=-pn
        end if
        if (imag(c)<0)
          pn=-pn
        end if
        d=sqrt((c2-1)*(c2-sqr(nfac)))
        z=(nfac+c2+pn*d)/(2*n*c)
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        }

herman_jul-polar { ; Kerry Mitchell 15feb98
        ; p1 = Julia parameter
        ; real(p2) = z exponent (use integer >= 2; m=n-1)
        ; imag(p2) = coloring speed (try 4)
        ; real(p3) = alpha magnitude (try 1)
        ; imag(p3) = alpha polar angle (try integers)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        z=pixel, c=p1, iter=1, n=real(p2), m=n-1
        maxr=1e6, minr=1/maxr, speed=imag(p2)*pi/128
        r=real(p3), t=imag(p3), alpha=r*(cos(t)+flip(sin(t)))
        oln=1/log(n), fac=log(0.5*log(maxr))
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        }

herman_jul-cart { ; Kerry Mitchell 15feb98
        ; p1 = Julia parameter
        ; real(p2) = z exponent (use integer >= 2; m=n-1)
        ; imag(p2) = coloring speed (try 4)
        ; p3 = alpha (go nuts)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        z=pixel, c=p1, iter=1, n=real(p2), m=n-1
        maxr=1e6, minr=1/maxr, speed=imag(p2)*pi/128
        oln=1/log(n), fac=log(0.5*log(maxr)), alpha=p3
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        }

herman_alpha { ; Kerry Mitchell 15feb98
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = coloring speed (try 4)
        ; p2 = c
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        alpha=pixel, iter=1, n=real(p1), m=n-1, nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=imag(p1)*pi/128
        oln=1/log(n), fac=log(0.5*log(maxr)), c=p2
        c2=sqr(c), hypfac=sqr(n)+sqr(m), pn=1
        if (real(p3)<0)
          pn=-1
          end if
        if (real(c2)>hypfac)
          pn=-pn
        end if
        if (imag(c)<0)
          pn=-pn
        end if
        d=sqrt((c2-1)*(c2-sqr(nfac)))
        z=(nfac+c2+pn*d)/(2*n*c)
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        }

; -------------------------------------------------------------------------------
; Kerry Mitchell
; lkmitch@primenet.com
; -------------------------------------------------------------------------------

; Received: by mail.san.rr.com for ehill1
;  (with Cubic Circle's cucipop (v1.21 1997/08/10) Mon Feb 16 21:09:52 1998)
; X-From_: owner-fractint@lists.xmission.com Mon Feb 16 21:04 PST 1998
; Received: from lists.xmission.com (lists.xmission.com [198.60.22.7])
; 	by mail-atm.san.rr.com (8.8.7/8.8.8) with SMTP id VAA13607;
; 	Mon, 16 Feb 1998 21:04:41 -0800 (PST)
; Received: from domo by lists.xmission.com with local (Exim 1.73 #4)
; 	id 0y4fAl-0003bA-00; Mon, 16 Feb 1998 22:02:23 -0700
; Date: Mon, 16 Feb 1998 21:52:48 -0700 (MST)
; From: Kerry Mitchell <lkmitch@primenet.com>
; To: fractint@lists.xmission.com
; Subject: (fractint) Still more Herman Rings (long)
; In-Reply-To: <199802170012.QAA22932@mom.hooked.net>
; Message-ID: <Pine.BSI.3.96.980216215056.25761A-100000@usr07.primenet.com>
; MIME-Version: 1.0
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: TEXT/PLAIN; charset=US-ASCII
; Content-Length: 11809
; 
; Ok, this is it.  One more variation on the Herman ring formula that Paul
; D. started all this with.  I'm not sure I got the critical points exactly
; right, but hey, it's worth twice what you paid for it.  :-)

comment { ; narrative copyright Kerry Mitchell 16feb98

Variations on Herman Rings

The below formulas are based on the following formula, which is
known to produce Herman rings:

f(z) = alpha * z^2 * (z-c) / (1-c*z).

This can be generalized to:

F(z) = alpha * z^n * g(z)^m, where
g(z) = (z-c) / (1-c*z).

For the case of n >= 2 and m=n-1, it is believed that F(z) will
generate higher order Herman rings.  The present formulas treat
the general case, where m and n are independent.

For the Mandelbrot-type formulas, the critical points of F(z)
are readily determined by solving a quadratic equation.  To
maintain continuity in the image, the selection of critical
must be changed depending on the parameter c.  Otherwise, lines
of discontinuity appear.  These lines are hyperbolic (plus the
imaginary axis), according to (real(c))^2 - (imag(c))^2 = r^2.
This value of r depends on the exponents n and m:

r = (n^2 + m^2) / (n - m)^2.

This adjustment of the critical point is made in the formula
initialization.

The parameter alpha can be selected in two ways, either using
cartesian or polar coordinates.  The advantage to polar coordinates
is that entering an irrational rotation angle is easy; enter a
*rational* polar angle for alpha, and the rotation angle (which
involves a factor of pi) will be irrational.

Five formulas are included:  2 Mandelbrot types (cartesian and
polar), 2 Julia types (cartesian and polar), and 1 Mandelbrot
type where c is explicitly specified and alpha takes on the
pixel value.  For the Mandelbrot types, the choice of critical
point (using either the positive or negative root of the
discriminant) is governed by the sign of real(p3).

}

hermanm_jul-polar { ; Kerry Mitchell 16feb98
        ; p1 = Julia parameter
        ; real(p2) = z exponent (use integer >= 2; m=n-1)
        ; imag(p2) = g exponent (integers)
        ; real(p3) = alpha magnitude (try 1)
        ; imag(p3) = alpha polar angle (try integers)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
        z=pixel, c=p1, iter=1, n=real(p2), m=imag(p2), nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=4*pi/128
        r=real(p3), t=imag(p3), alpha=r*(cos(t)+flip(sin(t)))
        oln=1/log(n), fac=log(0.5*log(maxr))
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        }

hermanm_jul-cart { ; Kerry Mitchell 16feb98
        ; p1 = Julia parameter
        ; real(p2) = z exponent (use integer >= 2; m=n-1)
        ; imag(p2) = g exponent (integers)
        ; p3 = alpha (go nuts)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
        z=pixel, c=p1, iter=1, n=real(p2), m=imag(p2), nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=4*pi/128, alpha=p3
        oln=1/log(n), fac=log(0.5*log(maxr))
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        }

hermanm_man-cart { ; Kerry Mitchell 16feb98
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = g exponent (integers)
        ; p2 = alpha
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
        c=pixel, iter=1, n=real(p1), m=imag(p1), nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=4*pi/128, alpha=p2
        oln=1/log(n), fac=log(0.5*log(maxr))
        c2=sqr(c), hypnum=sqr(n)+sqr(m), pn=1
        hypden=sqr(n-m), hypfac=hypnum/hypden
        if (real(p3)<0)
          pn=-1
          end if
        if (real(c2)>hypfac)
          pn=-pn
        end if
        if (imag(c)<0)
          pn=-pn
        end if
        afac=c*n, bfac=c2*(n-m)+(n+m), cfac=c*n
        d=sqrt(bfac*bfac-4*afac*cfac)
        z=(bfac+pn*d)/(2*afac)
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        }

hermanm_man-polar { ; Kerry Mitchell 16feb98
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = g exponent (integers)
        ; real(p2) = alpha magnitude (try 1)
        ; imag(p2) = alpha polar angle (try integers)
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
        c=pixel, iter=1, n=real(p1), m=imag(p1), nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=4*pi/128
        r=real(p2), t=imag(p2), alpha=r*(cos(t)+flip(sin(t)))
        oln=1/log(n), fac=log(0.5*log(maxr))
        c2=sqr(c), hypnum=sqr(n)+sqr(m), pn=1
        hypden=sqr(n-m), hypfac=hypnum/hypden
        if (real(p3)<0)
          pn=-1
          end if
        if (real(c2)>hypfac)
          pn=-pn
        end if
        if (imag(c)<0)
          pn=-pn
        end if
        afac=c*n, bfac=c2*(n-m)+(n+m), cfac=c*n
        d=sqrt(bfac*bfac-4*afac*cfac)
        z=(bfac+pn*d)/(2*afac)
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        }

hermanm_alpha { ; Kerry Mitchell 16feb98
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = g exponent (integers)
        ; p2 = c
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
        c=p2, iter=1, n=real(p1), m=imag(p1), nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=4*pi/128, alpha=pixel
        oln=1/log(n), fac=log(0.5*log(maxr))
        c2=sqr(c), hypnum=sqr(n)+sqr(m), pn=1
        hypden=sqr(n-m), hypfac=hypnum/hypden
        if (real(p3)<0)
          pn=-1
          end if
        if (real(c2)>hypfac)
          pn=-pn
        end if
        if (imag(c)<0)
          pn=-pn
        end if
        afac=c*n, bfac=c2*(n-m)+(n+m), cfac=c*n
        d=sqrt(bfac*bfac-4*afac*cfac)
        z=(bfac+pn*d)/(2*afac)
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        }

; -------------------------------------------------------------------------------
; Kerry Mitchell
; lkmitch@primenet.com
; -------------------------------------------------------------------------------

