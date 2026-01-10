; Here is a translation of another of my rendering methods into
; a Fractint formula, along with a couple of Christmas pars.
;  
; Paul
; ---------------------------------------------------------------

3D_C_Stalks_Mset (ORIGIN) {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the width of the stalks
    ;   imag(p1) = bailout value for |w|
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = 0
    c = pixel
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    ;****************************************************
    ; In both the accompanying par files, xmasbrot1 and 2,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < bailout.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    ;****************************************************
    ; Real(p1) controls the width of the stalks.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
    stalk_factor = real(p1)
    index_factor = (colors_in_range - 1) / stalk_factor:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be express in terms of a complex variable
    ; and a complex constant will work with this method.
    ;****************************************************
    w=(w*w*w-2*w*w-1)/(c-1)+c
    ;****************************************************
    ; If the orbit point is within the specified distance of the circle,
    ; set z to the index into the colormap and set the bailout flag.
    ; Also, prevent bailout on the first two iterations.
    ;****************************************************
    dist_to_circle = abs(|w|-0.25)
    IF (dist_to_circle < stalk_factor && iter > 1)
    z = index_factor * dist_to_circle + range_num * colors_in_range + 1
    bailout = 1
    ENDIF
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
    iter = iter + 1
    z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
    bailout == 0  && |w| < imag(p1)
}

; From:  pjcarlsn@ix.netcom.com
; Subject:  (fractint) Another Holiday Fractal
; PostedDate:  12/10/97 03:56:34 PM
; 
; Here's a Holiday fractal using a "ring" orbit trap.
; The image has two different beautiful spirals in it
; which are worth zooming in on.

Xmas2 {; Copyright (c) Paul W. Carlson, 1997
    x=0, c=pixel, iter=0, toggle=-1:
    x=x*x+c
    d=abs(|x|-.25), t=(d<0.1)
    toggle=-1*toggle, iter=iter+1
    z=(1240*d+(toggle>0)*125+1)*(|t|>0)-iter
    |t|<=0 && |x|<100
}

; Happy Holidays!
; Paul Carlson
; 
;                 email   pjcarlsn@ix.netcom.com
; 
; WWW Fractal Galleries   http://sprott.physics.wisc.edu/carlson.htm
;                         http://fractal.mta.ca/fractals/carlson/
;                         http://www.cnam.fr/fractals/carlson.html


; From:  pjcarlsn@ix.netcom.com
; Subject:  (fractint) Holiday Fractal No. 3
; PostedDate:  12/11/97 03:40:23 PM
; SendTo:  fractint@xmission.com
; ReplyTo:  fractint@lists.xmission.com
; $UpdatedBy:  CN=notesgw/O=ACMS
; RouteServers:  CN=notesgw/O=ACMS,CN=cassatt_notes/O=ACMS
; RouteTimes:  12/11/97 03:30:06 PM-12/11/97 03:32:09 PM,12/11/97 03:44:35 PM-12/11/97 03:44:36 PM
; DeliveredDate:  12/11/97 03:44:36 PM
; Categories:  
; $Revisions:  
; BlindCopyTo:  CN=Jay Hill/OU=NRaD/O=ACMS
; 
; This holiday fractal uses a circular orbit trap.
; It has a nice 3D effect.

Xmas3 {; Copyright (c) Paul W. Carlson, 1997
    x=0, c=pixel, iter=0, toggle=-1:
    x=x*x+c
    xr=real(x), xi=imag(x)
    d=abs((xr-.5)*(xr-.5)+(xi-.5)*(xi-.5)-.1)
    toggle=-1*toggle, iter=iter+1
    z=(620*d+(toggle>0)*125+1)*(d<.2)-iter
    (d>=.2) && |x|<100
}


; Happy Holidays!
; Paul Carlson
; ------------------------------------------------------------------
;                 email   pjcarlsn@ix.netcom.com
; 
; WWW Fractal Galleries   http://sprott.physics.wisc.edu/carlson.htm
;                         http://fractal.mta.ca/fractals/carlson/
;                         http://www.cnam.fr/fractals/carlson.html
; ------------------------------------------------------------------


; Date: Thu, 01 Jan 1998 19:22:04 -0800
; From: Wizzle <wizzle@cci-internet.com>
; Subject: (fractint) Binary Decompression
; 
; Paul Writes....
; 
; I still can't send email to the Fractint list, so would you do me 
; a favor and send this for me?   The subject could be
; Re: Binary Decomposition
; 
; Thanks!  Paul Carlson
; - -------------------------------------------------------------
; I haven't seen everthing that's been posted about this and I'm
; certainly no guru, but this might help:

trydecomp { ; Paul W. Carlson
    ; Bailout occurs when the absolute value of w exceeds real(p1).
    ; The spacing of the "field lines" is highly sensitive to
    ; this value.  Here absolute value means sqrt(|w|).
    ; A value of 10 will reproduce the pictures for the Mset and
    ; Julia sets in the book _The Beauty of Fractals_.
    w = 0
    c = pixel
    color = 0
    iter = 0
    bailout = 0:
    ;
    w = w * w + c
    IF (sqrt(|w|) > p1)
        bailout = 1
        IF (imag(w) > 0)
            color = 1;
        ELSE
            color = 2;
        ENDIF
    ENDIF
    iter = iter + 1
    z = color - iter
    bailout == 0
}


; Date:  12/07/97 05:20:09 PM
; From:  pjcarlsn@ix.netcom.com
; SendTo:  fractint@xmission.com
; Subject:  (fractint) Holiday Bubbles Fractal
; Here's a holiday image rendered using my "bubble" method.


XmasSeaHorse {; Copyright (c) Paul W. Carlson, 1997
    x=pixel,  c=(-0.746410388,0.184309007), iter=0
    s=0.1887757, toggle=-1:
    x=x*x+c
    a=sqrt(|x|), w=(a<s)*toggle+(a>=s)*w, s=(a<s)*a+(a>=s)*s
    iter=iter+1, toggle=-1*toggle
    z=(570*s+(w<0)*126)*(|x|>=16)-iter
    |x|<16
}

; Happy holidays!
; Paul Carlson
; ------------------------------------------------------------------
;                 email   pjcarlsn@ix.netcom.com
; 
; WWW Fractal Galleries   http://sprott.physics.wisc.edu/carlson.htm
;                         http://fractal.mta.ca/fractals/carlson/
;                         http://www.cnam.fr/fractals/carlson.html
; ------------------------------------------------------------------

; Date: Sun, 28 Dec 1997 19:40:09 -0500
; From: Lee Skinner <LeeHSkinner@compuserve.com>
; Subject: (fractint) Paul's 4th frm & par
; To: fractint@mail.xmission.com
; Message-ID: <199712281941_MC2-2D5B-9084@compuserve.com>
; 
; Wizzle wrote:
; 
; > I was looking at Paul Carlson's homepage and got to wondering if we had
; >the formula he used......
; >
; > Clifford Pickover's quartic variation of Ushikis's "Phoenix" Julia set
; > equations: Z = Z*Z - .5Z + C, X = Z*Z - .5Y + C, Y = Z, Z = X
; 
; That equation is not part of Fractint, but I just translated it into
; a Fractint formula, along with a par file to try it out.  Here it is:

3D_Phoenix_Spirals {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    prev_w = y = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    ;****************************************************
    ; In the accompanying par file, phxspirs.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 255 when w < 1.0.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2):
    ;****************************************************
    ; The equations being iterated.
    ;****************************************************
    w = prev_w * prev_w - 0.5 * prev_w + c
    b = w * w - 0.5 * y + c
    y = w
    w = b
    ;****************************************************
    ; If w exceeds a value of 1.0, set z to the index
    ; into the colormap and set the bailout flag.
    ;****************************************************
    IF (w > 1)
	;***************************************************
	; Compute the angle between the last 2 orbit points
	;***************************************************
	delta_i = imag(w) - imag(prev_w)
	delta_r = real(w) - real(prev_w)
	angle = abs(atan(delta_i / delta_r))
	IF (delta_r < 0)
	    angle = pi - angle
	ENDIF
	bailout = 1
	range_index = 2 * colors_in_range * angle / pi
	z = range_index + range_num * colors_in_range + 1
    ENDIF
    ;***************************************************
    ; Update previous value of w
    ;***************************************************
    prev_w = w
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
    iter = iter + 1
    z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
    bailout == 0
}


; Also, none of the URLs below are my homepage, as such.  I can't
; write to any of them - they are all maintained by others.  I hope
; to set up a page of my own in the near future.  The fractal.mta.ca
; site has no text, but it has by far the most fractals (about
; 300 1024x768 resolution images) and is the only site that has my
; latest stuff.
; 
; Regards,
; Paul Carlson
; ------------------------------------------------------------------
;                 email   pjcarlsn@ix.netcom.com
; 
; WWW Fractal Galleries   http://sprott.physics.wisc.edu/carlson.htm
;                         http://fractal.mta.ca/fractals/carlson/
;                         http://www.cnam.fr/fractals/carlson.html
; ------------------------------------------------------------------


; Date: Sat, 3 Jan 1998 04:17:03 -0500
; From: Sylvie Gallet <Sylvie_Gallet@compuserve.com>
; Subject: (fractint) 3D_Balls_Julia
; To: Liste Fractint <fractint@mail.xmission.com>
; Message-ID: <199801030417_MC2-2DDF-8CFF@compuserve.com>
; 
; Hi All,
; 
;   I am posting this message for Paul Carlson.
; 
;         - Sylvie
; 
; -------------------------------------------------------
; A while ago I posted the formula, "3D_Balls_Mset."  Here
; is the corresponding Julia set formula, but using a
; different equation, along with a PAR file that demonstrates
; how different images can be created by fiddling with the
; colormap.

3D_Balls_Julia {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the size of the balls
    ;   imag(p2) = number of iterations to skip
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    skip = imag(p2)
    ;****************************************************
    ; In the accompanying par file, balloops.par,
    ; we will set the number of ranges to 2, with
    ; 125 colors in each range, but the colormap will
    ; be modified to 4 ranges to give the desired effect.
    ;****************************************************
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    ;****************************************************
    ; Real(p2) controls the size of the balls.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
    ball_size = real(p2)
    index_factor = (colors_in_range - 1) / ball_size:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses a modified Pokorny equation.
    ;****************************************************
    w = 1 / (w * w + c) + c
    ;****************************************************
    ; If the orbit point is within the specified distance of a circle,
    ; set z to the index into the colormap and set the bailout flag.
    ;****************************************************
    IF (iter > skip)
	wr = real(w), wi = imag(w)
	d = wr * wr + (wi - .5) * (wi - .5)
	IF (d < ball_size)
	    bailout = 1
	    delta = ball_size - d
	ELSEIF ((d = wr * wr + (wi + .5) * (wi + .5)) < ball_size)
	    bailout = 1
	    delta = ball_size - d
	ELSEIF ((d = (wr - .5) * (wr - .5) + wi * wi) < ball_size)
	    bailout = 1
	    delta = ball_size - d
	ELSEIF ((d = (wr + .5) * (wr + .5) + wi * wi) < ball_size)
	    bailout = 1
	    delta = ball_size - d
	ENDIF
    ENDIF
    IF (bailout)
	z = index_factor * delta + range_num * colors_in_range + 1
    ENDIF
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
    iter = iter + 1
    z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
    bailout == 0  && |w| < 1000
}

; Enjoy!
; Paul


; Date: Sun, 4 Jan 1998 07:00:52 -0500
; From: Sylvie Gallet <Sylvie_Gallet@compuserve.com>
; Subject: (fractint) PokornyConesJulia
; To: Liste Fractint <fractint@mail.xmission.com>
; Message-ID: <199801040701_MC2-2DF6-29B0@compuserve.com>
; 
; Hi All,
; 
;   Yet another formula and par from Paul Carlson!
; 
;         - Sylvie
; 
; --------------------------------------------------------
; Here's another formula quite similar to the 3D_Phoenix_Spirals
; formula I sent some time ago, the similarity being that both
; formulas use a variation of the ATAN method.  I've added a
; couple of PAR files that produce images that I like.  Don't
; be put off by the maxiter=5000, they both execute quite fast.


:PokornyConesJulia {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    prev_w = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    ;****************************************************
    ; In the accompanying par files, pkcones1 & 2.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 255 when w < 1.0.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2):
    ;****************************************************
    ; The equation being iterated.  This is the
    ; Pokorny equation.
    ;****************************************************
    w = 1 / (prev_w * prev_w + c)
    ;****************************************************
    ; If |w| exceeds a value of 4.0, set z to the index
    ; into the colormap and set the bailout flag.
    ;****************************************************
    IF (|w| > 4)
	;***************************************************
	; Compute the angle between the last 2 orbit points
	;***************************************************
	delta_i = imag(w) - imag(prev_w)
	delta_r = real(w) - real(prev_w)
	angle = abs(atan(delta_i / delta_r))
	IF (delta_r < 0)
	    angle = pi - angle
	ENDIF
	bailout = 1
	range_index = colors_in_range * angle / pi
	z = range_index + range_num * colors_in_range + 1
    ENDIF
    prev_w = w
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
    iter = iter + 1
    z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
    bailout == 0
}

; Date: Sat, 13 Dec 1997 22:20:17 -0600 (CST)
; Message-Id: <199712140420.WAA21853@dfw-ix9.ix.netcom.com>
; From: pjcarlsn@ix.netcom.com (Paul and/or Joyce Carlson)
; Subject: (fractint) Holiday Fractal No. 4
; 
; 
; Here's a gala-looking Julia set.

Xmas4 {; Copyright (c) Paul W. Carlson, 1997
    x=pixel, c=(-0.767633083,0.095353559), g=0.01, iter=0:
    x=x*x+c
    xr=real(x), xi=imag(x)
    aa=xr*xr+(xi-.5)*(xi-.5)
    bb=xr*xr+(xi+.5)*(xi+.5)
    cc=(xr-.5)*(xr-.5)+xi*xi
    dd=(xr+.5)*(xr+.5)+xi*xi
    test=(iter>2)*((aa<g)*(g-aa)+(bb<g)*(g-bb)+(cc<g)*(g-cc)+(dd<g)*(g-dd))
    iter=iter+1
    z=(24900*test+1)*(|test|>0)-iter
    |test|<=0 && |x|<10000
}

; Happy Holidays!
; Paul Carlson
; ------------------------------------------------------------------
;                 email   pjcarlsn@ix.netcom.com
; 
; WWW Fractal Galleries   http://sprott.physics.wisc.edu/carlson.htm
;                         http://fractal.mta.ca/fractals/carlson/
;                         http://www.cnam.fr/fractals/carlson.html
; ------------------------------------------------------------------

; Date: Sun, 7 Dec 1997 19:19:56 -0600 (CST)
; Message-Id: <199712080119.TAA11730@dfw-ix12.ix.netcom.com>
; From: pjcarlsn@ix.netcom.com (Paul and/or Joyce Carlson)
; Subject: (fractint) Holiday Bubbles Fractal
; To: fractint@xmission.com
; 
; Here's a holiday image rendered using my "bubble" method.

XmasSeaHorse {; Copyright (c) Paul W. Carlson, 1997
    x=pixel,  c=(-0.746410388,0.184309007), iter=0
    s=0.1887757, toggle=-1:
    x=x*x+c
    a=sqrt(|x|), w=(a<s)*toggle+(a>=s)*w, s=(a<s)*a+(a>=s)*s
    iter=iter+1, toggle=-1*toggle
    z=(570*s+(w<0)*126)*(|x|>=16)-iter
    |x|<16
}

; Happy holidays!
; Paul Carlson

; Date: Tue, 6 Jan 1998 16:24:04 -0500
; From: Sylvie Gallet <Sylvie_Gallet@compuserve.com>
; Subject: (fractint) Yet another formula from Paul Carlson
; To: Liste Fractint <fractint@mail.xmission.com>
; Message-ID: <199801061624_MC2-2E43-5FC4@compuserve.com>
; 
; Hi All,
; 
;   Paul still gets his messages to this list bounced back, so he asked me to
; post this mew formula.  He gets all the messages posted there so, feel free
; to comment!
; 
;         - Sylvie
; 
; ---------------------------------------------------------
; Here is a formula and PAR file that demonstrates how the
; parametric form of an equation of a curve can be used as
; an orbit trap.
 
Astroid_Mset  {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the width of the curves
    ;   imag(p1) = radius of the astroid
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = 0
    c = pixel
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    i = (0,1)
    r = imag(p1)
    ;****************************************************
    ; In the accompanying par file, astmset.par,
    ; we have 8 color ranges with 30 colors in each range
    ; for a total of 240 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < 10000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    ;****************************************************
    ; Real(p1) controls the width of the curves.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
    width = real(p1)
    index_factor = (colors_in_range - 1) / width:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
    w = w * w + c
    ;****************************************************
    ; The orbit trap curve.  This example uses an "astroid"
    ; curve (which has absolutely nothing to do with huge
    ; rocks in outer space).  Any two-dimensional curve can
    ; be used which can be expressed in parametric form in
    ; terms of the angle from the origin.
    ;****************************************************
    ang = atan(imag(w) / real(w))
    astroid = r * (cos(ang)^3 + i * sin(ang)^3)
    ;****************************************************
    ; If the orbit point is within some distance of the curve,
    ; set z to the index into the colormap and set the bailout
    ; flag.  Note: the way we use the "distance" here has
    ; the effect of turning the curves inside-out in the image.
    ;****************************************************
    distance = abs(|w| - |astroid|)
    IF (distance < width && iter > 1)
        z = index_factor * distance + range_num * colors_in_range + 1
        bailout = 1
    ENDIF
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
    iter = iter + 1
    z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
    bailout == 0  && |w| < 1000
}


; Date: Sun, 21 Dec 1997 21:21:01 -0500
; From: Lee Skinner <LeeHSkinner@compuserve.com>
; Subject: (fractint) 3DStalks_Julia&MonkFace
; To: fractint@mail.xmission.com
; Message-ID: <199712212121_MC2-2CC9-E288@compuserve.com>
; 
; Paul Carlson asked me to post this message for him, as he is currently
; having problems sending mail to this mailing list.
; Lee Skinner
; Message from Paul Carlson follows:
; -----------------------------------------------------------------------
; Here is a heavily commented .frm file that describes how my
; 3D Stalks rendering method works, along with a .par file
; that uses it do produce one of my favorite fractals.
; 
; The 3D Stalks method is an extension of Clifford Pickover's
; Epsilon Cross method.  In the 3d Stalks method, an index into
; one or more ranges of colors is computed based on the ratio
; of the distance of the trapped point from the nearest axis to
; 1/2 the width of the "trap."

3DStalks_Julia (ORIGIN) {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1 = the value of complex constant c in the equation
    ;   real(p2) = a factor controlling the width of the stalks
    ;              (this is actually 1/2 the width of the "trap")
    ;   imag(p2) = bailout value for |w|
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    ;****************************************************
    ; In the accompanying par file, mnkyface.par,
    ; we have 2 color ranges with 98 colors in each range
    ; for a total of 196 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < bailout.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    ;****************************************************
    ; Real(p2) controls the width of the stalks.
    ; These values will usually be in the range 0.001 to 0.5
    ;****************************************************
    stalk_width = real(p2)
    index_factor = (colors_in_range - 1) / stalk_width:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This line in the formula is the only one that needs
    ; to be changed for other equations.
    ; This example uses the "magnet2j" equation.
    ;****************************************************
    w=((w^3+3*w*(c-1)+(c-1)*(c-2))/(3*w*w+3*w*(c-2)+(c-1)*(c-2)+1))^2
    ;****************************************************
    ; Find which axis the orbit point is closest to.
    ;****************************************************
    IF (abs(real(w)) <= abs(imag(w)))
        min_dist_to_axis = abs(real(w))
    ELSE
        min_dist_to_axis = abs(imag(w))
    ENDIF
    ;****************************************************
    ; If the orbit point is within stalk_width of an axis,
    ; set z to the index into the colormap and set the bailout flag.
    ; Also, prevent bailout on the first two iterations.
    ;****************************************************
    IF (min_dist_to_axis < stalk_width && iter > 1)
      z = index_factor * min_dist_to_axis + range_num * colors_in_range + 1
      bailout = 1
    ENDIF
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
    iter = iter + 1
    z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
    bailout == 0  && |w| < imag(p2)
}

; I'll be glad to answer any questions about these.
; Paul Carlson
; ------------------------------------------------------------------
;                 email   pjcarlsn@ix.netcom.com
; 
; WWW Fractal Galleries   http://sprott.physics.wisc.edu/carlson.htm
;                         http://fractal.mta.ca/fractals/carlson/
;                         http://www.cnam.fr/fractals/carlson.html
; ------------------------------------------------------------------

; Date: Sun, 28 Dec 1997 09:36:49 -0500
; From: Lee Skinner <LeeHSkinner@compuserve.com>
; Subject: (fractint) 3D_Balls_Mset
; To: fractint@mail.xmission.com
; Message-ID: <199712280937_MC2-2D5A-5B09@compuserve.com>
; 
;   Here's another formula and par from Paul Carlson.  I hope
; it gets through:   - Lee Skinner
; ------------------------------------------------------------
3D_Balls_Mset (ORIGIN) {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the size of the balls
    ;   imag(p1) = number of iterations to skip
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = 0
    c = pixel
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    skip = imag(p1)
    ;****************************************************
    ; In the accompanying par file, mndballs.par,
    ; we have 8 color ranges with 30 colors in each range
    ; for a total of 240 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| >= 1000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    ;****************************************************
    ; Real(p1) controls the size of the balls.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
    ball_size = real(p1)
    index_factor = (colors_in_range - 1) / ball_size:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be express in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
    w = w * w + c
    ;****************************************************
    ; If the orbit point is within the specified distance of a circle,
    ; set z to the index into the colormap and set the bailout flag.
    ;****************************************************
    IF (iter > skip)
	wr = real(w), wi = imag(w)
	d = wr * wr + (wi - .5) * (wi - .5)
	IF (d < ball_size)
	    bailout = 1
	    delta = ball_size - d
	ELSEIF ((d = wr * wr + (wi + .5) * (wi + .5)) < ball_size)
	    bailout = 1
	    delta = ball_size - d
	ELSEIF ((d = (wr - .5) * (wr - .5) + wi * wi) < ball_size)
	    bailout = 1
	    delta = ball_size - d
	ELSEIF ((d = (wr + .5) * (wr + .5) + wi * wi) < ball_size)
	    bailout = 1
	    delta = ball_size - d
	ENDIF
    ENDIF
    IF (bailout)
	z = index_factor * delta + range_num * colors_in_range + 1
    ENDIF
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
    iter = iter + 1
    z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
    bailout == 0  && |w| < 1000
}


; Date: Tue, 6 Jan 1998 23:06:48 -0500
; From: Lee Skinner <LeeHSkinner@compuserve.com>
; Subject: (fractint) Tan_Spirals & Optillus
; To: fractint@lists.xmission.com
; Message-ID: <199801062307_MC2-2E4E-93BE@compuserve.com>
; 
; ----------------------------------------------------------
; This formula and PAR file produce a nice optical illusion.
; It appears as if there are two overlaid spirals, spiralling
; in opposite directions.

Tan_Spirals {; Copyright (c) Paul W. Carlson, 1997
    width = real(p2), ratio = 124 / width, w = pixel, z = 0
    iter = 0, toggle = -1:
    ;
    w = p1 * tan(w)
    awr = abs(real(w))
    awi = abs(imag(w))
    IF (awr < awi)
	minw = awr
    ELSE
	minw = awi
    ENDIF
    bailout = (minw < width && |w| <= p3)
    toggle = -1 * toggle
    iter = iter + 1
    IF (bailout)
	z = ratio * minw + (toggle > 0) * 125 + 1
    ENDIF
    z = z - iter
    bailout == 0
}


; Paul Carlson
; ------------------------------------------------------------------
;                 email   pjcarlsn@ix.netcom.com
; 
; WWW Fractal Galleries   http://sprott.physics.wisc.edu/carlson.htm
;                         http://fractal.mta.ca/fractals/carlson/
;                         http://www.cnam.fr/fractals/carlson.html
; ------------------------------------------------------------------

; Date: Wed, 7 Jan 1998 22:47:45 -0500
; From: Lee Skinner <LeeHSkinner@compuserve.com>
; Subject: (fractint) Cosh_atan_mset
; To: fractint@lists.xmission.com
; Message-ID: <199801072248_MC2-2E73-B86F@compuserve.com>
; MIME-Version: 1.0
; Content-Disposition: inline
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Transfer-Encoding: 8bit
; X-MIME-Autoconverted: from quoted-printable to 8bit by mail-atm.san.rr.com id TAA16216
; Content-Type: text/plain; charset=ISO-8859-1
; X-UIDL: eb2eb7c6f4670b60088be9046369d44d
; 
; 
; ---------------------------------------------------------
; Here's a variation of ATAN coloring that works well with
; many transcendental functions.  This FRM and PAR file
; use the COSH function.  Let me know if you're getting
; tired of the comments in my formulas.

Cosh_Atan_Mset {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = maximum value of abs(real(w))
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    prev_w = 0
    c = pixel
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    max_real = real(p1)
    ;****************************************************
    ; In the accompanying par file coshatan.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 253 for no bailout.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2):
    ;****************************************************
    ; The equation being iterated.
    ;****************************************************
    w = cosh(prev_w) + c
    ;****************************************************
    ; If abs(real(w)) exceeds the value of max_real, set z to
    ; the index into the colormap and set the bailout flag.
    ;****************************************************
    IF (abs(real(w)) > max_real)
	;***************************************************
	; Compute the angle between the last 2 orbit points
	;***************************************************
	delta_i = imag(w) - imag(prev_w)
	delta_r = real(w) - real(prev_w)
	angle = abs(atan(delta_i / delta_r))
	bailout = 1
	range_index = 2 * colors_in_range * angle / pi
	z = range_index + range_num * colors_in_range + 1
    ENDIF
    prev_w = w
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
    iter = iter + 1
    z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
    bailout == 0
}

; Paul Carlson
; ------------------------------------------------------------------
;                 email   pjcarlsn@ix.netcom.com
; 
; WWW Fractal Galleries   http://sprott.physics.wisc.edu/carlson.htm
;                         http://fractal.mta.ca/fractals/carlson/
;                         http://www.cnam.fr/fractals/carlson.html
; ------------------------------------------------------------------

; Date: Thu, 8 Jan 1998 12:01:20 -0500
; From: Sylvie Gallet <Sylvie_Gallet@compuserve.com>
; Subject: (fractint) mndbulbs
; To: Liste Fractint <fractint@mail.xmission.com>
; Message-ID: <199801081202_MC2-2E90-41CA@compuserve.com>
; MIME-Version: 1.0
; Content-Disposition: inline
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Transfer-Encoding: 8bit
; X-MIME-Autoconverted: from quoted-printable to 8bit by mail-atm.san.rr.com id JAA00728
; Content-Type: text/plain; charset=ISO-8859-1
; X-UIDL: 6d9784cac09e2eca5fa1e4285c0ebd87
; 
; Hi All,
; 
;   Here is a new bunch of =3D's... <gd&r>
; 
;         - Sylvie
; 
; -------------------------------------------------------
; Here's a formula you may find useful.   The PAR file will
; produce a black and white image of a "hollow" Mandelbrot set.

fastmand { ; Copyright (c) Paul W. Carlson, 1997
    ; This formula performs NO iterations if the point is
    ; in the large cardoid (the "lake") or the large
    ; period-2 bulb.
    ; float=y must be used.
    ;
    z = 0
    c = pixel
    pi3 = pi / 3
    bailout = 0:
    ;
    ;*****************************************************
    ; Check if point can be in either circle or cardoid
    ;*****************************************************
    aic = abs(imag(c))
    IF (aic < 0.6495190528)
        rc = real(c)
        ;*************************************************
        ; Check if point is in the circle
        ;*************************************************
        IF (aic < 0.25)
            delta = sqrt(0.0625 - aic * aic)
            IF ((rc > (-1 - delta)) && (rc < (-1 + delta)))
                bailout = 1
            ENDIF
        ENDIF
        ;*************************************************
        ; Check if point is in the cardoid
        ;*************************************************
        IF (rc > -0.75 && rc < 0.375)
            IF (rc > 0.25 && aic < 0.2165063508)
                t = abs(acos(0.5 * (1 + sqrt(3 - 8 * rc))))
            ELSE
                t = abs(acos(0.5 * (1 - sqrt(3 - 8 * rc))))
            ENDIF
            card_i  = 0.5 * sin(t) * (1.0 - cos(t))
            IF ((t > pi3 && aic < card_i) || (t <= pi3 && aic > card_i))
                bailout = 1
            ENDIF
        ENDIF
    ENDIF
    ;*****************************************************
    ; If point is in neither we have to iterate
    ;*****************************************************
    IF (bailout == 0)
        z = z * z + c
    ENDIF
    (bailout == 0) && |z| < 4
}


; Date: Fri, 9 Jan 1998 01:53:15 -0500
; From: Sylvie Gallet <Sylvie_Gallet@compuserve.com>
; Subject: (fractint) Petals_Julia
; To: Liste Fractint <fractint@mail.xmission.com>
; Message-ID: <199801090153_MC2-2E9D-7B05@compuserve.com>
; MIME-Version: 1.0
; Content-Disposition: inline
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Transfer-Encoding: 8bit
; X-MIME-Autoconverted: from quoted-printable to 8bit by mail-atm.san.rr.com id WAA28140
; Content-Type: text/plain; charset=ISO-8859-1
; X-UIDL: 1cdb3441db08f2c5c71279b25b2ee1ee
; 
; 
; --------------------------------------------------------
; This formula produces flower-like elements using orbit
; traps consisting of the overlapping areas of four circles.
; The Mandelbrot set equation used here produces flowers
; with four petals.  Other equations produce different
; numbers of petals.  Included are two PAR files to try
; it with.

Petals_Julia {; Paul Carlson
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = radius of the circles - this controls
    ;              the size of the petals
    ;   imag(p2)   Not Used
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = pixel
    c = p1
    z = 0
    r = real(p2)
    r2 = r * r
    k = 0.35355339 * r    ; Don't mess with this constant
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    range_num = 0
    iter = 0:
    ;
    w = w * w + c
    ;
    wr = real(w), wi = imag(w)
    c1 = (((wr-r) * (wr-r) + wi * wi) < r2)
    c2 = ((wr * wr + (wi+r) * (wi+r)) < r2)
    c3 = (((wr+r) * (wr+r) + wi * wi) < r2)
    c4 = ((wr * wr + (wi-r) * (wi-r)) < r2)
    IF (c1 && c4)
      d = (wr-k) * (wr-k) + (wi-k) * (wi-k)
    ELSEIF (c1 && c2)
      d = (wr-k) * (wr-k) + (wi+k) * (wi+k)
    ELSEIF (c2 && c3)
      d = (wr+k) * (wr+k) + (wi+k) * (wi+k)
    ELSEIF (c3 && c4)
      d = (wr+k) * (wr+k) + (wi-k) * (wi-k)
    ELSE
      d = 0
    ENDIF
    IF (d > 0)
	index = colors_in_range * d / r2
	z = index + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    d == 0 && |w| < 1000
}


; Date: Thu, 29 Jan 1998 20:17:16 -0600 (CST)
; Message-Id: <199801300217.UAA05927@dfw-ix9.ix.netcom.com>
; From: pjcarlsn@ix.netcom.com (Paul and/or Joyce Carlson)
; Subject: (fractint) Another formula
; To: fractint@xmission.com
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: text
; Content-Length: 2120
; 
; This formula and par produce a very colorful spiral.
; Since much of the logic in this formula is the same
; as that in other formulas I've posted, I've eliminated
; most of the comments that have appeared in the other
; formulas.
; 
; Paul Carlson

CSin_Atan_Julia {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = maximum value of abs(real(w))
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;****************************************************
    prev_w = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    max_real = real(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3):
    ;****************************************************
    w = c * sin(prev_w)
    ;****************************************************
    IF (abs(real(w)) > max_real)
	delta_i = imag(w) - imag(prev_w)
	delta_r = real(w) - real(prev_w)
	angle = abs(atan(delta_i / delta_r))
	bailout = 1
	range_index = 2 * colors_in_range * angle / pi
	z = range_index + range_num * colors_in_range + 1
    ENDIF
    prev_w = w
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}



; Date: Fri, 30 Jan 1998 16:19:53 -0800
; To: fractint@lists.xmission.com
; From: Wizzle <wizzle@cci-internet.com>
; Subject: Re: (fractint) Another formula
; 
; This formula and par produce a very colorful spiral.
; Since much of the logic in this formula is the same
; as that in other formulas I've posted, I've eliminated
; most of the comments that have appeared in the other
; formulas.
; 
; Paul Carlson

CSin_Atan_Julia {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = maximum value of abs(real(w))
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;****************************************************
    prev_w = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    max_real = real(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3):
    ;****************************************************
    w = c * sin(prev_w)
    ;****************************************************
    IF (abs(real(w)) > max_real)
    delta_i = imag(w) - imag(prev_w)
    delta_r = reallw) - real(prev_w)
    angle = abs(atan(delta_i / delta_r))
    bailout = 1
    range_index = 2 * colors_in_range * angle / pi
    z = range_index + range_num * colors_in_range + 1
    ENDIF
    prev_w = w
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}



; Date: Sat, 31 Jan 1998 17:21:11 -0600 (CST)
; Message-Id: <199801312321.RAA20127@dfw-ix8.ix.netcom.com>
; From: pjcarlsn@ix.netcom.com (Paul and/or Joyce Carlson)
; Subject: (fractint) Truncated Stalks Formula
; To: fractint@xmission.com
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: text
; Content-Length: 5660
; 
; The formula below is a variation on my 3D Stalks rendering
; method.  The problem with that method (as well as Pickover's
; original epsilon cross method) is that the orbit trap is
; unbounded (goes to + and - infinity along both axes) producing
; stalks which taper out to just a series of unconnected pixels.
; The formula below is my "truncated stalks" rendering method or,
; if you prefer, my "cross in a circle" method.
; 
; The first par is for a Julia set zoom in which the stalks are converging
; to a point.  By truncating the stalks before they reach that point
; you can see down into the spiral many levels.  A nice effect, I think.
; The second par is for an Mset zoom consisting of many crosses (which is
; just what you'd expect with a "cross in a circle" orbit trap).
; 
; In both pars, you can try making imag(p2) much larger (this increases
; the length of the stalks) to see the effect.
; 
; Paul C. (for Carlson)

Truncated_Stalks {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = if both real(p1) and imag(p1) equal 0 do Mset,
    ;              otherwise do Julia set
    ;   real(p2) = a factor controlling the width of the stalks
    ;   imag(p2) = a factor controlling the length of the stalks
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    IF (real(p1) == 0 && imag(p1) == 0)
	w = 0
	c = pixel
    ELSE
	w = pixel
	c = p1
    ENDIF
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    ;****************************************************
    ; In the accompanying par files, trunspr1 and 2.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < 1000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    ;****************************************************
    ; Real(p2) controls the width of the stalks.
    ; Imag(p2) controls the length of the stalks.
    ;****************************************************
    stalk_width = real(p2)
    stalk_length = imag(p2)
    index_factor = (colors_in_range - 1) / stalk_width:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ;****************************************************
    w = c * (1 - w) * (1 + w) / (1 + w * w)
    ;****************************************************
    ; Find which axis the orbit point is closest to.
    ;****************************************************
    IF (abs(real(w)) <= abs(imag(w)))
        min_dist_to_axis = abs(real(w))
    ELSE
        min_dist_to_axis = abs(imag(w))
    ENDIF
    ;****************************************************
    ; If the orbit point is within a stalk width of an axis,
    ; and the value of |w| is less than the stalk length, then
    ; set z to the index into the colormap and set the bailout flag.
    ;****************************************************
    IF (min_dist_to_axis < stalk_width && |w| < stalk_length && iter > 0)
	z = index_factor * min_dist_to_axis + range_num * colors_in_range + 1
	bailout = 1
    ENDIF
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
    iter = iter + 1
    z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
    bailout == 0  && |w| < 1000
}


; I believe you forwarded Paul's message without editing it....in which case
; the > character gets inserted before every line of his formulas and pars.
; This can be avoided by copying his formula and pasting it into a new email
; to the list.  If that doesn't work, maybe Paul could send his stuff for
; posting to me as it's easier for me to do the cut and paste job than edit a
; long formula.  And thanks to Paul for another winner
; Angela
; At 03:17 AM 1/30/98 -0800, you wrote:
; >
; >
; >
; >
; >
; >---Paul and/or Joyce Carlson <pjcarlsn@ix.netcom.com> wrote:
; >
; > This formula and par produce a very colorful spiral.
; > Since much of the logic in this formula is the same
; > as that in other formulas I've posted, I've eliminated
; > most of the comments that have appeared in the other
; > formulas.
; >
; >  Paul Carlson

CSin_Atan_Julia {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = maximum value of abs(real(w))
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;****************************************************
    prev_w = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    max_real = real(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3):
    ;****************************************************
    w = c * sin(prev_w)
    ;****************************************************
    IF (abs(real(w)) > max_real)
     delta_i = imag(w) - imag(prev_w)
     delta_r = real(w) - real(prev_w)
     angle = abs(atan(delta_i / delta_r))
     bailout = 1
     range_index = 2 * colors_in_range * angle / pi
     z = range_index + range_num * colors_in_range + 1
    ENDIF
    prev_w = w
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
 }



; Received: by mail.san.rr.com for ehill1
;  (with Cubic Circle's cucipop (v1.21 1997/08/10) Wed Feb 18 17:47:18 1998)
; X-From_: owner-fractint@lists.xmission.com Wed Feb 18 17:42 PST 1998
; Received: from lists.xmission.com (lists.xmission.com [198.60.22.7])
; 	by mail-atm.san.rr.com (8.8.7/8.8.8) with SMTP id RAA19131;
; 	Wed, 18 Feb 1998 17:42:33 -0800 (PST)
; Received: from domo by lists.xmission.com with local (Exim 1.73 #4)
; 	id 0y5Ky1-0002RF-00; Wed, 18 Feb 1998 18:40:01 -0700
; Date: Wed, 18 Feb 1998 19:38:48 -0600 (CST)
; Message-Id: <199802190138.TAA17512@dfw-ix6.ix.netcom.com>
; From: pjcarlsn@ix.netcom.com (Paul and/or Joyce Carlson)
; Subject: (fractint) Another formula
; To: fractint@xmission.com
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: text
; Content-Length: 4535
; 
; This formula uses the same equation that I used in the TwoPieces
; formula I posted a couple of days ago.  I've used this equation
; before with my 3DBalls rendering method and produced some nice images.
; Here I use the 3DBalls rendering method except that the color range is
; determined by the sign of imag(w) instead of the iteration count.  The
; resulting images contain some balls of one color, some balls of the other
; color, and some balls that have both colors.  The balls form one pattern
; and the colors overlay another pattern on the balls.  The result is
; kind of pretty.  This formula is a lot faster than the TwoPieces one.
; 
; Paul Carlson

TwoBallsJulia {; Copyright (c) Paul Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1 = Julia set coordinates
    ;   real(p2) = a factor controlling the size of the balls
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    num_ranges = 2
    colors_in_range = 125
    ;****************************************************
    ; Parameter real(p2) controls the size of the balls.
    ; These values will usually be in the range 0.001 to 0.5
    ;****************************************************
    ball_size = real(p2)
    index_factor = (colors_in_range - 1) / ball_size:
    ;****************************************************
    ; The equation being iterated.  This equation is from
    ; page 465 of "The Fractal Geometry of Nature."
    ;****************************************************
    w = c * (w - 1 / w)
    ;****************************************************
    ; Check if point falls in one of the orbit traps.  If
    ; it does, compute "delta" and set bailout flag.
    ;****************************************************
    wr = real(w), wi = imag(w)
    IF ((d = wr * wr + (wi - .5) * (wi - .5)) < ball_size)
	bailout = 1
	delta = ball_size - d
    ELSEIF ((d = wr * wr + (wi + .5) * (wi + .5)) < ball_size)
	bailout = 1
	delta = ball_size - d
    ELSEIF ((d = wi * wi + (wr - .5) * (wr - .5)) < ball_size)
	bailout = 1
	delta = ball_size - d
    ELSEIF ((d = wi * wi + (wr + .5) * (wr + .5)) < ball_size)
	bailout = 1
	delta = ball_size - d
    ENDIF
    ;
    IF (bailout)
	;************************************************
	; Set color range depending on sign of imag(w)
	;************************************************
	IF (wi >= 0)
	    range_num = 1
	ELSE
	    range_num = 0
	ENDIF
	;************************************************
	; Set z to the index into the colormap.
	;************************************************
	z = index_factor * delta +  range_num * colors_in_range + 1
    ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
    iter = iter + 1
    z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
    bailout == 0
}



; Received: by mail.san.rr.com for ehill1
;  (with Cubic Circle's cucipop (v1.21 1997/08/10) Fri Feb 20 16:12:21 1998)
; X-From_: owner-fractint@lists.xmission.com Fri Feb 20 16:09 PST 1998
; Received: from lists.xmission.com (lists.xmission.com [198.60.22.7])
; 	by mail-atm.san.rr.com (8.8.7/8.8.8) with SMTP id QAA13702;
; 	Fri, 20 Feb 1998 16:09:13 -0800 (PST)
; Received: from domo by lists.xmission.com with local (Exim 1.73 #4)
; 	id 0y62To-0004fM-00; Fri, 20 Feb 1998 17:07:44 -0700
; Date: Fri, 20 Feb 1998 18:05:49 -0600 (CST)
; Message-Id: <199802210005.SAA03738@dfw-ix9.ix.netcom.com>
; From: pjcarlsn@ix.netcom.com (Paul and/or Joyce Carlson)
; Subject: (fractint) Newton Mset Formula
; To: fractint@xmission.com
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: text
; Content-Length: 3800
; 
; This formula is a Newton's Method solution of a 4th-order
; polynomial using my 3D Stalks rendering method.  The image
; it produces is different from most Newton fractals and is
; quite pretty, I think.
; 
; The reason for the convergence test for early exit is so
; that a background color can be used that is different from
; the "inside" color so the little Mandy can be seen.  The
; colors in the par produce an image with a solid black
; background (which brings out the colors in the stalks),
; but if you would like to see which areas converge to which
; roots, change colors 244, 244, 246 and 247 in the colormap.
; The roots of this polynomial are:
;   c, -c, sqrt(-1/(c*c)), -sqrt(-1/(c*c))
; 
; I've called this formula Newt2_Stalks_Mset because it's the
; second in a series of eight polynomials that I use for
; Newton Msets.  I'll be posting the others from time to time.
; 
; Paul Carlson

Newt2_Stalks_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Newton's solution of (w*w-c*c)*(w*w+1/(c*c))=0
    ; Always use floating point math and outside=summ.
    ;
    ;   real(p1) = a factor controlling the size of the stalks
    ;   imag(p1)   not used
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in a range
    ;   real(p3) = value of |w| for bailout
    ;   imag(p3) = iterations count for early exit
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    c = pixel
    csqd = c * c
    icsqd = 1 / csqd
    sc = sqrt(-icsqd)
    cr1 = real(c),  ci1 = imag(c)
    cr2 = real(sc), ci2 = imag(sc)
    a = csqd - icsqd
    w = sqrt(a / 6) ; value where F''(w) = 0
    z = 0
    bailout = 0
    iter = 0
    stalk_width = real(p1)
    range_num = 0
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    index_factor = (colors_in_range - 1) / stalk_width:
    ;
    w = (3 * (w^4) - a * (w^2) + 1) / (4 * (w^3) - 2 * a * w)
    ;
    wr = real(w), wi = imag(w)
    IF (abs(wr) <= abs(wi))
	min_dist = abs(wr)
    ELSE
	min_dist = abs(wi)
    ENDIF
    ;
    IF (min_dist < stalk_width && iter > 0)
	z = index_factor * min_dist + range_num * colors_in_range + 1
	bailout = 1
    ENDIF
    ;****************************************************
    ; If we're no longer looking for stalks, check if
    ; we've converged on a root.
    ;****************************************************
    IF (iter > imag(p3))
	IF     (((wr-cr1) * (wr-cr1) + (wi-ci1) * (wi-ci1)) < 0.00001)
	    z = 244
	    bailout = 1
	ELSEIF (((wr+cr1) * (wr+cr1) + (wi+ci1) * (wi+ci1)) < 0.00001)
	    z = 245
	    bailout = 1
	ELSEIF (((wr+cr2) * (wr+cr2) + (wi+ci2) * (wi+ci2)) < 0.00001)
	    z = 246
	    bailout = 1
	ELSEIF (((wr-cr2) * (wr-cr2) + (wi-ci2) * (wi-ci2)) < 0.00001)
	    z = 247
	    bailout = 1
	ENDIF
    ENDIF
    ;
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    ;
    iter = iter + 1
    z = z - iter
    ;
    (bailout == 0) && |w| < real(p3)
}


; Received: by mail.san.rr.com for ehill1
;  (with Cubic Circle's cucipop (v1.21 1997/08/10) Mon Feb 23 23:10:39 1998)
; X-From_: owner-fractint@lists.xmission.com Mon Feb 23 17:49 PST 1998
; Received: from lists.xmission.com (lists.xmission.com [198.60.22.7])
; 	by mail-atm.san.rr.com (8.8.7/8.8.8) with SMTP id RAA14769;
; 	Mon, 23 Feb 1998 17:49:03 -0800 (PST)
; Received: from domo by lists.xmission.com with local (Exim 1.73 #4)
; 	id 0y79TT-0000e3-00; Mon, 23 Feb 1998 18:47:59 -0700
; Date: Mon, 23 Feb 1998 19:46:48 -0600 (CST)
; Message-Id: <199802240146.TAA23577@dfw-ix4.ix.netcom.com>
; From: pjcarlsn@ix.netcom.com (Paul and/or Joyce Carlson)
; Subject: (fractint) Another Newton Mset Par
; To: fractint@xmission.com
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: text
; Content-Length: 2388

; A few days ago I posted the formula "Newt2_Stalks_Mset" to this
; list along with the par "n2smset1."  The par below is a zoom into
; n2smset1 and uses a bit less colorful colormap.  The result is
; a very detailed and, I think, pretty image.  I'm including the
; formula file again (minus comments).
; 
; Paul Carlson

Newt2_Stalks_Mset {; Copyright (c) Paul W. Carlson, 1998
    c = pixel
    csqd = c * c
    icsqd = 1 / csqd
    sc = sqrt(-icsqd)
    cr1 = real(c),  ci1 = imag(c)
    cr2 = real(sc), ci2 = imag(sc)
    a = csqd - icsqd
    w = sqrt(a / 6)
    z = 0
    bailout = 0
    iter = 0
    stalk_width = real(p1)
    range_num = 0
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    index_factor = (colors_in_range - 1) / stalk_width:
    w = (3 * (w^4) - a * (w^2) + 1) / (4 * (w^3) - 2 * a * w)
    wr = real(w), wi = imag(w)
    IF (abs(wr) <= abs(wi))
	min_dist = abs(wr)
    ELSE
	min_dist = abs(wi)
    ENDIF
    IF (min_dist < stalk_width && iter > 0)
	z = index_factor * min_dist + range_num * colors_in_range + 1
	bailout = 1
    ENDIF
    IF (iter > imag(p3))
	IF     (((wr-cr1) * (wr-cr1) + (wi-ci1) * (wi-ci1)) < 0.00001)
	    z = 244
	    bailout = 1
	ELSEIF (((wr+cr1) * (wr+cr1) + (wi+ci1) * (wi+ci1)) < 0.00001)
	    z = 245
	    bailout = 1
	ELSEIF (((wr+cr2) * (wr+cr2) + (wi+ci2) * (wi+ci2)) < 0.00001)
	    z = 246
	    bailout = 1
	ELSEIF (((wr-cr2) * (wr-cr2) + (wi-ci2) * (wi-ci2)) < 0.00001)
	    z = 247
	    bailout = 1
	ENDIF
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    (bailout == 0) && |w| < real(p3)
}


; Received: by mail.san.rr.com for ehill1
;  (with Cubic Circle's cucipop (v1.21 1997/08/10) Wed Feb 25 19:40:50 1998)
; X-From_: owner-fractint@lists.xmission.com Wed Feb 25 17:21 PST 1998
; Received: from lists.xmission.com (lists.xmission.com [198.60.22.7])
; 	by mail-atm.san.rr.com (8.8.7/8.8.8) with SMTP id RAA16332;
; 	Wed, 25 Feb 1998 17:21:45 -0800 (PST)
; Received: from domo by lists.xmission.com with local (Exim 1.73 #4)
; 	id 0y7rz4-0003dg-00; Wed, 25 Feb 1998 18:19:34 -0700
; Date: Wed, 25 Feb 1998 19:18:19 -0600 (CST)
; Message-Id: <199802260118.TAA29658@dfw-ix14.ix.netcom.com>
; From: pjcarlsn@ix.netcom.com (Paul and/or Joyce Carlson)
; Subject: (fractint) Newtons with rings
; To: fractint@xmission.com
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: text
; Content-Length: 3439
; 
; Here's another of my favorite Newton formulas, this time
; rendered using 3D Rings.  The two pars produce very
; pretty, almost delicate images.  In both images, a
; little Mandy appears to be suspended by chains.
; 
; I used passes=t in the pars because there is a lot of
; background color (black) at 1000 iterations and there
; are no islands of pixels that might be missed.
; 
; To change the background color, change color 252.
; 
; Paul Carlson

Newt1_Rings_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Newton's solution of (w*w-1)*(w*w+c)=0
    ; Always use floating point math and outside=summ.
    ;
    ;   real(p1) = a factor controlling the size of the stalks
    ;   imag(p1) = minimum iterations
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in a range
    ;   real(p3) = value of |w| for bailout
    ;   imag(p3) = iterations count for early exit
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    c = pixel
    sc = sqrt(-c)
    am = c - 1, tam = am + am
    w = sqrt((1 - c) / 6)  ;value where F''(w) = 0
    cr = real(sc), ci = imag(sc)
    z = 0
    bailout = 0
    iter = 0
    t = 0.000001
    stalk_width = real(p1)
    range_num = 0
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    index_factor = (colors_in_range - 1) / stalk_width:
    ;
    w2 = w * w
    w = w - (w2 * w2 + am * w2 - c) / (4 * w2 * w + tam * w)
    ;
    wr = real(w), wi = imag(w)
    dist = abs(wr * wr + wi * wi - 0.25)
    IF (dist < stalk_width && iter > imag(p1))
	z = index_factor * dist + range_num * colors_in_range + 1
	bailout = 1
    ENDIF
    IF (iter > imag(p3))
	IF     (((wr-1) * (wr-1)) < t && (wi * wi) < t)
	    z = 252
	    bailout = 1
	ELSEIF (((wr+1) * (wr+1)) < t && (wi * wi) < t)
	    z = 252
	    bailout = 1
	ELSEIF (((wr-cr) * (wr-cr)) < t && ((wi-ci) * (wi-ci)) < t)
	    z = 252
	    bailout = 1
	ELSEIF (((wr+cr) * (wr+cr)) < t && ((wi+ci) * (wi+ci)) < t)
	    z = 252
	    bailout = 1
	ENDIF
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    (bailout == 0) && |w| < real(p3)
}



; Received: by mail.san.rr.com for ehill1
;  (with Cubic Circle's cucipop (v1.21 1997/08/10) Wed Mar  4 23:54:35 1998)
; X-From_: owner-fractint@lists.xmission.com Wed Mar  4 23:53 PST 1998
; Received: from lists.xmission.com (lists.xmission.com [198.60.22.7])
; 	by mail-atm.san.rr.com (8.8.7/8.8.8) with SMTP id TAA16995;
; 	Wed, 4 Mar 1998 19:10:18 -0800 (PST)
; Received: from domo by lists.xmission.com with local (Exim 1.73 #4)
; 	id 0yAR2Q-0000WB-00; Wed, 4 Mar 1998 20:09:38 -0700
; Date: Wed, 4 Mar 1998 21:08:28 -0600 (CST)
; Message-Id: <199803050308.VAA17777@dfw-ix1.ix.netcom.com>
; From: pjcarlsn@ix.netcom.com (Paul and/or Joyce Carlson)
; Subject: (fractint) Carlson-Gallet formula
; To: fractint@xmission.com
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: text
; Content-Length: 4135
; 
; A couple days ago I sent this formula and the first par to
; Sylvie because I wasn't satisfied with the colormap I was
; using and I wanted to see what the image would look like
; after Sylvie worked her magic on it.  Sylvie not only sent
; back five colormaps but also added several optimizations
; to the formula.  Not wanting Sylvie's other four colormaps
; to go unused, I've included four more pars that zoom into
; different areas.
; 
; Paul Carlson

Newt3_Atan_Mset {; Original formula by Paul Carlson
		       ; with optimizations by Sylvie Gallet
    ; F(w)   = w^3 + (c - 1) * w - c
    ; F'(w)  = 3 * w^2 + c - 1
    ; F''(w) = 6 * w,  so initialize w to zero
    ;
    ; p1 contols the "layering"
    ;
    c = pixel , c1 = c - 1
    z = iter = bailout = prev_w = w = 0
    colors_in_range = 80
    colors_in_range_1 = 79
    k = 0.5 * sqrt(1 - 4 * c)
    root1 = (1,0)
    root2 = -0.5 + k
    root3 = -0.5 - k
    :
    ;
    w2 = w * w
    w = w - (w * (w2 + c1) - c) / (3 * w2 + c1)
    ;
    delta_w = w - prev_w
    IF (|delta_w| < p1)
	angle = atan(imag(delta_w) / real(delta_w))
	IF (delta_w >= 0)
	    IF (imag(delta_w) < 0)
		angle = pi + angle
	    ELSE
		angle = pi - angle
	    ENDIF
	ELSEIF (imag(delta_w) > 0)
	    angle = -angle
	ENDIF
	IF     (|w - root1| < p1)
	    range_num = 0
	ELSEIF (|w - root2| < p1)
	    range_num = 1
	ELSEIF (|w - root3| < p1)
	    range_num = 2
	ENDIF
	bailout = 1
	z = colors_in_range_1*angle/pi+range_num*colors_in_range+1
    ENDIF
    prev_w = w
    iter = iter + 1
    z = z - iter
    bailout == 0
}


; Received: by mail.san.rr.com for ehill1
;  (with Cubic Circle's cucipop (v1.21 1997/08/10) Fri Mar  6 23:58:05 1998)
; X-From_: owner-fractint@lists.xmission.com Fri Mar  6 23:54 PST 1998
; Received: from lists.xmission.com (lists.xmission.com [198.60.22.7])
; 	by mail-atm.san.rr.com (8.8.7/8.8.8) with SMTP id RAA13479;
; 	Fri, 6 Mar 1998 17:56:05 -0800 (PST)
; Received: from domo by lists.xmission.com with local (Exim 1.73 #4)
; 	id 0yB8ES-0001DF-00; Fri, 6 Mar 1998 18:16:56 -0700
; Date: Fri, 6 Mar 1998 19:15:50 -0600 (CST)
; Message-Id: <199803070115.TAA29045@dfw-ix10.ix.netcom.com>
; From: pjcarlsn@ix.netcom.com (Paul and/or Joyce Carlson)
; Subject: (fractint) Texture and Inflation Formula
; To: fractint@xmission.com
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: text
; Content-Length: 2687
; 
; This formula and pars explore four areas of the classic
; Mandelbrot set using a rendering method that creates, in
; pars mndatm01, 03 and 04, images with a nice "texture"
; that almost make you want to run your fingers over them.
; Par mndatm02 creates an image that looks inflated (makes
; you want to stick a pin in it).
; 
; Paul Carlson

Mand_Atan_Mset {; Copyright (c) Paul W. Carlson, 1998
    w = z = iter = range_num = bailout = 0
    c = pixel
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    :
    prev_w = w
    w = w * w + c
    IF (abs(real(w)) > p1)
	bailout = 1
	angle = abs(atan((imag(w)-imag(prev_w))/(real(w)-real(prev_w))))
	index = 2 * colors_in_range * angle / pi
	z = index + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
	range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}


; Received: by mail.san.rr.com for ehill1
;  (with Cubic Circle's cucipop (v1.21 1997/08/10) Sat Mar  7 15:14:03 1998)
; X-From_: owner-fractint@lists.xmission.com Sat Mar  7 15:11 PST 1998
; Received: from lists.xmission.com (lists.xmission.com [198.60.22.7])
; 	by mail-atm.san.rr.com (8.8.7/8.8.8) with SMTP id PAA24041;
; 	Sat, 7 Mar 1998 15:11:02 -0800 (PST)
; Received: from domo by lists.xmission.com with local (Exim 1.73 #4)
; 	id 0yBSj5-0007dm-00; Sat, 7 Mar 1998 16:09:55 -0700
; Date: Sat, 7 Mar 1998 17:08:41 -0600 (CST)
; Message-Id: <199803072308.RAA01309@dfw-ix1.ix.netcom.com>
; From: pjcarlsn@ix.netcom.com (Paul and/or Joyce Carlson)
; Subject: (fractint) 5th-order Newton Formula
; To: fractint@xmission.com
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: text
; Content-Length: 3021
; 
; Here's a formula for a 5th-order Newton Mset and three pars
; for which Sylvie Gallet kindly supplied the colormaps.
; 
; Paul Carlson

Newt5_Atan_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; F(w)   = w^5 - w^4 - w * c^2 + c^2
    ; F'(w)  = 5 * w^4 - 4 * w^3 - c^2
    ; F''(w) = 20 * w^3 - 12 * w^2,  initialize w to 12/20 = 0.6
    ;
    c = pixel
    c2 = c * c
    z = iter = bailout = 0
    colors_in_range = 50
    colors_in_range_1 = 49
    root1 = (1,0)
    root2 = sqrt(c)
    root3 = -root2
    root4 = sqrt(-c)
    root5 = -root4
    prev_w = w = 0.6:
    ;
    w4 = w^4
    w = w - (w * w4 - w4 - c2 * w + c2) / (5 * w4 - 4 * (w^3) - c2)
    ;
    delta_w = w - prev_w
    IF (|delta_w| < p1)
	angle = atan(imag(delta_w) / real(delta_w))
	IF (delta_w >= 0)
	    IF (imag(delta_w) < 0)
		angle = pi + angle
	    ELSE
		angle = pi - angle
	    ENDIF
	ELSEIF (imag(delta_w) > 0)
	    angle = -angle
	ENDIF
	IF     (|w - root1| < p1)
	    range_num = 0
	ELSEIF (|w - root2| < p1)
	    range_num = 1
	ELSEIF (|w - root3| < p1)
	    range_num = 2
	ELSEIF (|w - root4| < p1)
	    range_num = 3
	ELSEIF (|w - root5| < p1)
	    range_num = 4
	ENDIF
	bailout = 1
	z = colors_in_range_1 * angle/pi + range_num * colors_in_range + 1
    ENDIF
    prev_w = w
    iter = iter + 1
    z = z - iter
    bailout == 0
}


; Received: by mail.san.rr.com for ehill1
;  (with Cubic Circle's cucipop (v1.21 1997/08/10) Tue Mar 10 19:07:12 1998)
; X-From_: owner-fractint@lists.xmission.com Tue Mar 10 19:04 PST 1998
; Received: from lists.xmission.com (lists.xmission.com [198.60.22.7])
; 	by mail-atm.san.rr.com (8.8.7/8.8.8) with SMTP id TAA09332;
; 	Tue, 10 Mar 1998 19:04:07 -0800 (PST)
; Received: from domo by lists.xmission.com with local (Exim 1.82 #1)
; 	id 0yCbne-0007m5-00; Tue, 10 Mar 1998 20:03:22 -0700
; Date: Tue, 10 Mar 1998 21:02:13 -0600 (CST)
; Message-Id: <199803110302.VAA15633@dfw-ix2.ix.netcom.com>
; From: pjcarlsn@ix.netcom.com (Paul and/or Joyce Carlson)
; Subject: (fractint) Modified Continued Fraction Formula
; To: fractint@xmission.com
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: text
; Content-Length: 4309

comment {; Modified continued fraction formula
This formula uses the Mandelbrot set equation in a modified
continued fraction, rendered with the Atan method. The first
par gives an overall image of the Mset using the "ident"
function (ie, no function).  The little "dimples" in these
images are interesting ares to zoom into, each containing a
little Mandy.

Paul Carlson
}

CnFrc_Fnc_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = controls size of elements (1 to 32)
    ; imag(p1)   not used
    ; real(p2) = usually 1
    ; imag(p2)   not used
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    w = z = iter = range_num = bailout = 0
    c = pixel
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    :
    prev_w = w
    k = w * w + c
    w = k - fn1(p2/(k+p2/(k+p2/(k+p2/(k+p2/(k+p2))))))
    IF (abs(real(w)) > p1)
	bailout = 1
	angle = abs(atan((imag(w)-imag(prev_w))/(real(w)-\
		real(prev_w))))
	index = 2 * colors_in_range * angle / pi
	z = index + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
	range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}



; From: "Peter Gavin" <pgavin@mindspring.com>
; 
;     -n (+/-) sqrt(n^2 + 4m)
; y = -----------------------
;                2
; 
; This gives you the exact answer for y, without repeating the iteration of
; m/(n+m/...).  Therefore, it's much faster.  I hope this helps :)
; 
; Pete,
; 
; >This gives you the exact answer for y, without repeating the iteration of
; >m/(n+m/...).  Therefore, it's much faster.
; 
; Thanks - I appreciate the suggestion.  However, it can't be used to
; reproduce the images created by my formula.  I wrote this formula as
; an extension of my playing around with Taylor series of transcendental
; functions.  And, just as log(z^2+1) + c does not produce an image with the
; little "dimples" that make it interesting while the first few terms of the
; Taylor series of log(z^2+1) + c does, the same is true with continued
; fractions.  Using your exact solution produces entirely different
; images that lack the small areas of discontinuity which contain
; baby Mandelbrots in highly symmetrical (usually) settings.
; 
; Paul Carlson


; Received: by mail.san.rr.com for ehill1
;  (with Cubic Circle's cucipop (v1.21 1997/08/10) Fri Mar 13 01:04:54 1998)
; X-From_: owner-fractint@lists.xmission.com Fri Mar 13 01:04 PST 1998
; Received: from lists.xmission.com (lists.xmission.com [198.60.22.7])
; 	by mail-atm.san.rr.com (8.8.7/8.8.8) with SMTP id SAA00709;
; 	Thu, 12 Mar 1998 18:33:03 -0800 (PST)
; Received: from domo by lists.xmission.com with local (Exim 1.82 #1)
; 	id 0yDKGP-0005Tg-00; Thu, 12 Mar 1998 19:32:01 -0700
; Date: Thu, 12 Mar 1998 20:30:53 -0600 (CST)
; Message-Id: <199803130230.UAA28783@dfw-ix4.ix.netcom.com>
; From: pjcarlsn@ix.netcom.com (Paul and/or Joyce Carlson)
; Subject: (fractint) Some very colorful images
; To: fractint@xmission.com
; Sender: owner-fractint@lists.xmission.com
; Precedence: bulk
; Reply-To: fractint@lists.xmission.com
; Content-Type: text
; Content-Length: 3620
; 
; This formula and pars produce some very colorful images.
; 
; Paul Carlson

Fnww_Fnc_Mset { ; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) controls elements size (usually 2 to 16))
    ; imag(p1) not used
    ; real(p2) number of color ranges
    ; imag(p2) number of colors in a range
    z = w = iter = range_num = bailout = 0
    c = pixel
    p = p1 + p1
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    colors_in_range_1 = colors_in_range - 1:
    w = fn1(w * w + fn2(c))
    m = |w|
    IF ((p < p1) && (m > p1))
	bailout = 1
	index = colors_in_range_1 * (p1 - p) / p1
	z = index + range_num * colors_in_range + 1
    ENDIF
    p = m
    range_num = range_num + 1
    IF (range_num == num_ranges)
	range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && m < 100
}



PokornyConesJulia {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    prev_w = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    ;****************************************************
    ; In the accompanying par files, pkcones1 & 2.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 255 when w < 1.0.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2):
    ;****************************************************
    ; The equation being iterated.  This is the
    ; Pokorny equation.
    ;****************************************************
    w = 1 / (prev_w * prev_w + c)
    ;****************************************************
    ; If |w| exceeds a value of 4.0, set z to the index
    ; into the colormap and set the bailout flag.
    ;****************************************************
    IF (|w| > 4)
        ;***************************************************
        ; Compute the angle between the last 2 orbit points
        ;***************************************************
        delta_i = imag(w) - imag(prev_w)
        delta_r = real(w) - real(prev_w)
        angle = abs(atan(delta_i / delta_r))
        IF (delta_r < 0)
            angle = pi - angle
        ENDIF
        bailout = 1
        range_index = colors_in_range * angle / pi
        z = range_index + range_num * colors_in_range + 1
    ENDIF
    prev_w = w
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
    iter = iter + 1
    z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
    bailout == 0
  ;SOURCE: 98msg.frm
}
