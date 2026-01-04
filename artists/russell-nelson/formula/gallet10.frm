
Gallet-10-01 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Oct 1997
   z1 = c = pixel , mz1 = cabs(fn2(z1)) , k = real(p1)*mz1
   bailout = real(p2) , z = imag(p1) :
   z1 = sqr(sqr(z1) + c) + c
   z1 = fn1(real(z1)) + flip(imag(z1)) , mz1 = cabs(z1)
   if (mz1 <= k)
      z1 = z1 + p3 , mz1 = cabs(z1)
   endif
   if (mz1 < imag(p1))
      z = z1^imag(p2)
   endif
   mz1 <= bailout
   }

Gallet-10-02 { ; Modified Paul W. Carlson formula ( Petals_Mset)
               ; Sylvie Gallet, sylvie_gallet@compuserve.com, 1998
    ;
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = radius of the circles
    ;   imag(p1) = bailout
    ;   p2       = circle offset factor
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = 0
    c = pixel
    r = real(p1) , bailout = imag(p1)
    r2 = r * r
    ro = r + r * p2
    f = 1 - (2 + p2) * p2
    k = r * (p2 + sqrt(f))  ;abs val of petal center (k,k)
    k1 = k*(1,1) , k2 = conj(k1)
    plsqd = 2 * r2 * f        ;petal length squared
    z = 0
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    range_num = 0
    iter = 0:
    ;
    w = 1 / (w*w + c)
    ;****************************************************
    ; Determine which pair of overlapping circles the
    ; orbit point falls in, if any.
    ;****************************************************
    c1 = (|w - ro| < r2)
    c2 = (|w + flip(ro)| < r2)
    c3 = (|w + ro| < r2)
    c4 = (|w - flip(ro)| < r2)
    IF (c1 && c4)
      d = |w-k1|
    ELSEIF (c1 && c2)
      d = |w-k2|
    ELSEIF (c2 && c3)
      d = |w+k1|
    ELSEIF (c3 && c4)
      d = |w+k2|
    ELSE
      d = 0
    ENDIF
    ;
    IF (d > 0)
    ;************************************************
    ; Set z equal to the index into the colormap.
    ;************************************************
    index = colors_in_range * d / plsqd
    z = index + range_num * colors_in_range + 1
    ENDIF
    ;
    range_num = range_num + 1
    IF (range_num == num_ranges)
      range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    d == 0 && |w| < bailout
    }

Gallet-10-03 { ; Modified Paul W. Carlson formula ( Petals_Mset)
               ; Sylvie Gallet, sylvie_gallet@compuserve.com, 1998
    ;
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = radius of the circles
    ;   imag(p1) = b, try 0.563 or 0.56667
    ;   p2       = circle offset factor
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = x = y  = pixel
    r = real(p1) , b = imag(p1)
    r2 = r * r
    ro = r + r * p2
    f = 1 - (2 + p2) * p2
    k = r * (p2 + sqrt(f))  ;abs val of petal center (k,k)
    k1 = k*(1,1) , k2 = conj(k1)
    plsqd = 2 * r2 * f        ;petal length squared
    z = 0
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    range_num = 0
    iter = 0:
    ;
    w = w*w - 0.5*w + b , x = w*w - 0.5*y + b , y = w , w = x
    ;****************************************************
    ; Determine which pair of overlapping circles the
    ; orbit point falls in, if any.
    ;****************************************************
    c1 = (|w - ro| < r2)
    c2 = (|w + flip(ro)| < r2)
    c3 = (|w + ro| < r2)
    c4 = (|w - flip(ro)| < r2)
    IF (c1 && c4)
      d = |w-k1|
    ELSEIF (c1 && c2)
      d = |w-k2|
    ELSEIF (c2 && c3)
      d = |w+k1|
    ELSEIF (c3 && c4)
      d = |w+k2|
    ELSE
      d = 0
    ENDIF
    ;
    IF (d > 0)
    ;************************************************
    ; Set z equal to the index into the colormap.
    ;************************************************
    index = colors_in_range * d / plsqd
    z = index + range_num * colors_in_range + 1
    ENDIF
    ;
    range_num = range_num + 1
    IF (range_num == num_ranges)
      range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    d == 0 && |w| < 16
    }

Gallet-10-04 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, 1998
  ; Yet another formula based on Earl Hinrich's "Invasion" algorithm
  ;
  r = real(p1) , t = imag(p1) , r_t = r - t , index = z = iter = 0
  w = c = pixel , pw = 0 , dw = 0.1 , mw = p3
  :
  w = w*w + c
  w = w*w + c , w = fn1(real(w)) + flip(imag(w))
  ww = w , w = w*w + c , w0 = w
  w = w - pw , d = |w|
  w = ww - dw , w = w*w + c
  w = w - pw , dd = |w|
  if (d < dd)
    w = ww + dw , w = w*w + c
    w = w + pw , dd = |w|
    if (d < dd)
      w0 = w0 + mw
    endif
  endif
  w = w0 , m = cabs(w)
  if (abs(m-r) < t)
    index = 1 + 127.5*(m - r_t)/t
  endif
  iter = iter + 1
  z = index - iter
  m <= 10
}

Gallet-10-05 { ; Modified Paul W. Carlson formula
               ; Sylvie Gallet, sylvie_gallet@compuserve.com, 1998
    ;
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
    w = c*fn1(w)
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
    d == 0 && |w| < 16000
  }
