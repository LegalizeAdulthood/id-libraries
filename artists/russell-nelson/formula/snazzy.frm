
comment { ------  SNAZZY.FRM  --------------

  The formulas in this file are by Bradley Beacham.  PopCornJulCplx is by
  Jon Horner and Bradley Beacham.

  Some of these formulas were inspired by the formula PRIMAL by Lee Skinner
  and Rollo Silver.

  The formulas SHIFTER05, SLIDER01 & SLIDER02 require you to input numeric
  parameters.  Failing to do so will produce a blank screen.  Try the
  suggested values as a starting point.

  Also, some of these formulas, most notably the "wha" and "shifter"
  formulas, may produce better results with Fractint's periodicity testing
  turned off.  If you get an image that looks like parts are missing,
  or a grid-like pattern of perforations, hit <G> and enter
  "periodicity=0" and see if things improve.  Be aware that turning off the
  periodicity detection will almost certainly slow things down for you,
  however.

  The file SNAZZY.PAR contains many examples of images created with these
  formulas.  See that file and SNAZZY.DOC for more information.
}



comment {
  IN-AND-OUT -- Yet another in-and-out formula, this one loosely based on
  Primal.
}

inandout14 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = pixel, c = fn2(z), olddist =100,
  tgt = fn1(pixel), rt=real(tgt), it=imag(tgt):
    x = real(z) - rt
    y = imag(z) - it
    dist = (x * x) + (y * y)
    in = (z*z*z) * (dist <= olddist)
    out = (z*z) * (olddist < dist)
    olddist = dist
    z = in + out + c + p1
    |z| <= test
}


comment {
  SHIFTER -- In the shifter formulas, a running count of the iterations is
  kept.  After a specified iteration number has been reached, the algorithm
  is changed.  Shifter05 is a generalization of Shifter01.
}

shifter01 { ;After shift, switch from z*z to z*z*z
            ;Bradley Beacham  [74223,2745]
  ;P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2:
    lo = (z*z) * (iter <= shift)
    hi = (z*z*z) * (shift < iter)
    iter = iter + 1
    z = lo + hi + c
    |z| < test
}

shifter02 { ;After shift, flop sign of C on each iteration
            ;Bradley Beacham  [74223,2745]
  ;P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2:
    lo = (1) * (iter <= shift)
    hi = (-1) * (shift < iter)
    c = c * (lo + hi)
    iter = iter + 1
    z = fn1(z*z) + c
    |z| < test
}

shifter03 { ;After shift, switch from fn1(z) to fn2(z)
            ;Bradley Beacham  [74223,2745]
  ;P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2:
    lo = fn1(z) * (iter <= shift)
    hi = fn2(z) * (shift < iter)
    iter = iter + 1
    z = lo + hi + c
    |z| < test
}

shifter04 { ;After shift, switch from fn1(z*z) to fn2(z*z)
            ;Bradley Beacham  [74223,2745]
  ;P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2:
    lo = fn1(z*z) * (iter <= shift)
    hi = fn2(z*z) * (shift < iter)
    iter = iter + 1
    z = lo + hi + c
    |z| < test
}

shifter05 { ;After shift, switch from z^p1 to z^p2
            ;Bradley Beacham  [74223,2745]
  ;P1 & P2 are exponents (try 2 and 3, for example)
  ;P3 is shift value
  z = c = pixel, iter = 1, shift = p3:
    lo = (z^p1) * (iter <= shift)
    hi = (z^p2) * (shift < iter)
    iter = iter + 1
    z = lo + hi + c
    |z| < 4
}


comment {
  SLIDER -- Change proportions of two elements, a la Primal, but on a
  "sliding scale": use the proportions found by comparing the distance
  between Z and the origin to the distance between Z and the bailout
  circle.  The proportions, therefore, will change with each iteration.

  Slider01 was the first version I tried, and it only partly implements the
  algorithm -- the variable f is just initialized to zero.  Slider02
  differs in that respect only, but the images it makes are quite
  different.  I like 'em both, so I kept 'em both.  So there!  <g>
}

slider01 { ;Original version
           ;Bradley Beacham  [74223,2745]
  ;P1 & P2 are exponents (try 2 and 3, for example)
  ;P3 varies bailout value
  z = c = pixel, limit = 2 + p3, f = 0 :
    z = ((f) * fn1(z^p1)) + ((1-f) * fn2(z^p2)) + c
    f = cabs(z) / limit
      f < 1.0
}

slider02 { ;Fixed slider01
           ;Bradley Beacham  [74223,2745]
  ;P1 & P2 are exponents (try 2 and 3, for example)
  ;P3 varies bailout value
  z = c = pixel, limit = 2 + p3, f = cabs(z) / limit:
    z = ((f) * fn1(z^p1)) + ((1-f) * fn2(z^p2)) + c
    f = cabs(z) / limit
      f < 1.0
}


comment {
  SPEED -- Mutations of the in-and-out approach.  As before, choose between
  two values, but this time the choice is based on the magnitude of z's
  movement rather than its direction.  Speed01 uses a "speed limit" to make
  the choice.

  Speed02 asks whether z appears to be speeding up or slowing down, and
  calls that the "acceleration".  Its choices are based on that
  user-tweakable definition.  The bailout test is also based on the
  acceleration, using an "acceleration limit" to decide when to stop
  iterating.
}

speed01 { ;Speed chooses between functions, escape-time
          ;Bradley Beacham  [74223,2745]
  ;P1 is maximum speed for "slow"
  ;P2 varies bailout value
  z = oldz = c = pixel, limit = 4 + p2:
    x = real(z) - real(oldz)
    y = imag(z) - imag(oldz)
    speed = x*x + y*y
    slow = fn1(z*z) * (speed < p1)
    fast = fn2(z*z) * (speed >= p1)
    oldz = z
    z = slow + fast + c
      |z| <= limit
}

speed02 { ;Acceleration chooses between functions, acceleration-limit-time
          ;Bradley Beacham  [74223,2745]
  ;P1 varies definition of acceleration
  ;P2 varies bailout value
  z = oldz = c = pixel, oldspeed = 0, limit = 4 + p2:
    x = real(z) - real(oldz)
    y = imag(z) - imag(oldz)
    speed = x*x + y*y
    accel = speed - oldspeed
    slower = fn1(z*z) * (accel <= p1)
    faster = fn2(z*z) * (accel > p1)
    oldz = z
    oldspeed = speed
    z = slower + faster + c
      accel <= limit
}


comment {
  WHA -- These formulas use the iteration counter idea a little
  differently.  Instead of triggering an abrupt shift, as in the "shifter"
  formulas, these use the counter to gradually change the algorithm,
  iteration by iteration.  Wha02 is yet another variation on Primal.
}

wha01 { ;Use a counter to gradually change size of value added
        ;Bradley Beacham  [74223,2745]
  ;P1 sets value of constant (try 0.01, for example)
  ;P2 varies bailout value
  z = c = pixel, iter = 0, test = 4 + p2:
    iter = iter + 1
    z = z*z + iter*p1 + c
    |z| < test
}

wha02 { ;Use a counter to gradually change proportions of algorithms
        ;Bradley Beacham  [74223,2745]
  ;P1 sets starting value for k
  ;P2 varies step size for incrementing k
  ;P3 varies bailout value
  z = c = pixel, k = p1, kstep = .01 + p2, limit = 4 + p3:
    k = k + kstep
    z = k*(z*z*z) + (1-k)*(z*z) + c
      |z| < limit
}

wha03 { ;Use a counter to gradually change exponent
        ;Bradley Beacham  [74223,2745]
  ;P1 varies starting value for exponent
  ;P2 varies step size for incrementing exponent
  ;P3 varies bailout value
  z = c = pixel, ex = 2 + p1, step = p2, limit = 4 + p3:
    z = z^ex + c
    ex = ex + step
      |z| < limit
}


comment {
  POPCORNJULCPLX -- A generalization on the Popcorn Julia fractal.  When
  Jon and I realized that we were working on two nearly-identical (but not
  *quite*) formulas, we created this one together.  Highly tweakable.  Use
  the suggested values to recreate Popcorn Julia.
}

PopCornJulCplx   { ; Jon Horner & Bradley Beacham - May 1995
  ; p1 = step size (default 0.05), p2 = parameter (default 3)
  ; p3 = bailout value (default 4)
  ; set co-ords = -3/3/-2.25/2.25, fn1=sin, fn2=tan, fn3=ident, fn4=flip
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  test = (4.0 * ((p3)<=0) + (p3) * (0<p3))
  x = real(pixel), y = imag(pixel):
    newx = x - h*fn1((y) + fn2(k*y))
    newy = y - h*fn1((x) + fn2(k*x))
    x = newx, y = newy
    z = fn3(x) + fn4(y)
      |z| < test
}

