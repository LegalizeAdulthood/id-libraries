
comment { ZSAZSA.FRM

    These formulas were written by Bradley Beacham, and are Public Domain.

    I welcome any comments.  Reach me at:

    CIS: 74223,2745    Internet: 74223.2745@compuserve.com

    U.S. Mail: Bradley Beacham
               1343 S. Tyler St.
               Salt Lake City, Utah  84105
               U.S.A.
}


limerick { ;Bradley Beacham  [74223,2745]
           ;Just an experiment -- nothing earth-shaking...
  z = c = pixel, test = p1 + 4:
    z = fn1(z)
    z = fn1(z)
    z = fn2(z)
    z = fn2(z)
    z = fn1(z) + c
      |z| < test
}

comment {
  The following formulas are variations on the "in-and-out" idea I first
  explored in the file INANDOUT.FRM.  Here's the basic idea:  Imagine the
  complex plane as a radar screen, with the origin (0,0) at the center and
  Z as a blip moving around on the screen.  Did the previous iteration move
  Z closer to the origin (IN), or did it move farther away (OUT)?  If IN,
  do one thing; if OUT, do another.

  That was my original concept.  Then it occurred to me: Why does the radar
  screen need to be centered on the origin?  Why not locate the center of
  the radar screen on PIXEL, for example?  Then for each test point, the
  radar will be centered on a different spot and the question of in-and-out
  motion will be settled differently than it would be using the old method.

  That's what the formulas INANDOUT06 through INANDOUT10 do, with one
  further elaboration.  In-and-out motion is judged relative to the
  location of FN1(PIXEL); otherwise they are almost identical to INANDOUT01
  through INANDOUT05.  Note that if you set FN1() to ZERO, you will be
  using the original in-and-out algorithm, so these five formulas are
  actually generalizations of the original INANDOUT formulas.
}

inandout06 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = pixel, c1 = fn2(pixel), c2 = fn3(pixel), olddist =100,
  tgt = fn1(pixel), rt=real(tgt), it=imag(tgt):
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = c1 * (dist <= olddist)
    out = c2 * (olddist < dist)
    olddist = dist
    z = z*z + in + out + p1
      |z| <= test
}

inandout07 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt),
  olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = fn2(z) * (dist <= olddist)
    out = fn3(z) * (olddist < dist)
    olddist = dist
    z = in + out + p1
      |z| <= test
}

inandout08 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = c = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt),
  olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = c * (dist <= olddist)
    out = (z*p1) * (olddist < dist)
    c = fn2(in + out)
    olddist = dist
    z = fn3(z*z) + c
      |z| <= test
}


inandout09 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 1), real(p2) = Bailout (default 4)
  ;The next line sets k=default if p1=0, else k=p1
  k = ((1) * (|p1|<=0) + p1)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = c = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt),
  olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = c * (dist <= olddist)
    out = (c*k) * (olddist < dist)
    c = in + out
    olddist = dist
    z = fn2(z*z) + c
      |z| <= test
}

inandout10 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt),
  olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = pixel * (dist <= olddist)
    out = oldz * (olddist < dist)
    olddist = dist
    oldz = z
    z = fn2(z*z) + in + out + p1
      |z| <= test
}


comment {
  Here's another variation on the in-and-out theme.  This time the center
  of the radar screen is set by the user through the P1 variable.  The
  original in-and-out algorithm can be selected by setting P1 to (0,0).
}

inandout11 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = pixel, c1 = fn1(pixel), c2 = fn2(pixel),
  rt = real(p1), it = imag(p1), olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = c1 * (dist <= olddist)
    out = c2 * (olddist < dist)
    olddist = dist
    z = fn3(z*z) + in + out
      |z| <= test
}

inandout12 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0,0), p2 = Parameter (default 0,0)
  z = pixel, rt = real(p1), it = imag(p1), olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = fn1(z) * (dist <= olddist)
    out = fn2(z) * (olddist < dist)
    olddist = dist
    z = in + out + p2
      |z| <= 4
}

inandout13 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), p2 = parameter (default 1,0)
  ;The next line sets k=1 if real(p2)==0, else k=p2
  k = (1 * (real(p2)==0) + p2 * (0 != p2))
  z = c = pixel, rt = real(p1), it = imag(p1), olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = c * (dist <= olddist)
    out = (z*k) * (olddist < dist)
    c = fn1(in + out)
    olddist = dist
    z = fn2(z*z) + c
      |z| <= 4
}

comment {
  The following formulas are variations on the formula GLYNN.  I first
  found the Glynn formula in the file FRACT001.FRM.  The FNGLYNN formula is
  a pretty simple mutation of the original, but the GLYNNOUT formulas
  combine the Glynn algorithm with varieties of the in-and-out algorithms.
  Why?  It seemed like a good idea at the time...  :-)
}

fnglynn { ;Mutation of GLYNN, by Bradley Beacham  [74223,2745]
          ;Original formula by Jon Horner [100112,1700]
          ;Try p1=1.5, p2=-0.2, fn1=ident for 'standard' Glynn
  z = pixel:
    z = fn1(z^p1 + p2)
      |z| < 4
}

glynnout1 { ;Mutation of GLYNN, by Bradley Beacham  [74223,2745]
            ;Original formula by Jon Horner [100112,1700]
            ;in-and-out relative to origin
  z = oldz = pixel:
    in  =  p2 * (|z| <= |oldz|)
    out = -p2 * (|oldz| < |z|)
    oldz = z
    z = fn1(z)^p1 + in + out
      |z| <= 4
}

glynnout2 { ;Mutation of GLYNN, by Bradley Beacham  [74223,2745]
            ;Original formula by Jon Horner [100112,1700]
            ;in-and-out relative to origin
  z = oldz = pixel, k1 = fn1(p2), k2 = fn2(p2):
    in  = k1 * (|z| <= |oldz|)
    out = k2 * (|oldz| < |z|)
    oldz = z
    z = z^p1 + in + out
      |z| <= 4
}

glynnout3 { ;Mutation of GLYNN, by Bradley Beacham  [74223,2745]
            ;Original formula by Jon Horner [100112,1700]
            ;in-and-out relative to fn1(pixel)
  ;p1 = Parameter (default 0), p2 = Parameter (default 0)
  z = pixel, tgt = fn1(pixel), rt=real(tgt), it=imag(tgt),
  olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  =  p2 * (dist <= olddist)
    out = -p2 * (olddist < dist)
    olddist = dist
    z = fn2(z^p1 + in + out)
      |z| <= 4
}

