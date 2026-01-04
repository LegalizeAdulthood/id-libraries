
comment {
  This Fractint formula file is by Bradley Beacham, (c) July 1994, and may
  not be used for commercial purposes without my consent.  I encourage you
  to copy and distribute it, but only if it is unaltered.  If you make
  changes to any of these formulas, please put your changes in a new
  '.FRM' file.  If you want to merge one or more of these formulas into
  another .FRM file, please leave the formula and its credits intact.

  These formulas are based on a very simple idea:  Did the previous
  iteration move Z closer to the origin (IN) or farther away from it (OUT)?
  If IN, use one value; if OUT use a different value.

  The parameter file HUH.PAR has many examples of the images I have
  created with these formulas.
  
  I welcome any comments.  Reach me at:

    CIS: 74223,2745    Internet: 74223.2745@compuserve.com

    U.S. Mail: Bradley Beacham
               1343 S. Tyler St.
               Salt Lake City, Utah  84105
               U.S.A.
  
  NOTE: These formulas REQUIRE floating-point math.  Sorry.
}




inandout01 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = pixel, c1 = fn1(pixel), c2 = fn2(pixel):
    a = (|z| <= |oldz|) * (c1) ;IN
    b = (|oldz| < |z|)  * (c2) ;OUT
    oldz = z
    z = fn3(z*z) + a + b + p1
    |z| <= test
}

inandout02 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = pixel:
    a = (|z| <= |oldz|) * (fn1(z)) ;IN
    b = (|oldz| < |z|) * (fn2(z))  ;OUT
    oldz = z
    z = a + b + p1
    |z| <= test
}

inandout03 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = c = pixel:
    a = (|z| <= |oldz|) * (c)    ;IN
    b = (|oldz| < |z|)  * (z*p1) ;OUT
    c = fn1(a + b)
    oldz = z
    z = fn2(z*z) + c
    |z| <= test
}

inandout04 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 1), real(p2) = Bailout (default 4)
  ;The next line sets k=default if p1=0, else k=p1
  k = ((1) * (|p1|<=0) + p1)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = c = pixel:
    a = (|z| <= |oldz|) * (c)   ;IN
    b = (|oldz| < |z|)  * (c*k) ;OUT
    c = a + b
    oldz = z
    z = fn1(z*z) + c
    |z| <= test
}

inandout05 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = pixel:
  a = (|z| <= |oldz|) * (pixel) ;IN
  b = (|oldz| < |z|)  * (oldz)  ;OUT
  oldz = z
  z = fn1(z*z) + a + b + p1
  |z| <= test
}

