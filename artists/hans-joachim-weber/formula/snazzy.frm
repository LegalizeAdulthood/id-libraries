PopCornJulCplx {; Jon Horner & Bradley Beacham - May 1995
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
  ;SOURCE: snazzy.frm
}

shifter01 {; After shift, switch from z*z to z*z*z
           ; Bradley Beacham  [74223,2745]
           ; Modified for if..else logic 3/18/97 by Sylvie Gallet
           ; P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2 :
  IF (iter <= shift)
     z = z*z + c
  ELSE
     z = z*z*z + c
  ENDIF
  iter = iter + 1
  |z| < test
  ;SOURCE: fract196.frm
}

inandout14 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
            ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = pixel, c = fn2(z), olddist =100
  tgt = fn1(pixel), rt=real(tgt), it=imag(tgt):
  x = real(z) - rt
  y = imag(z) - it
  dist = (x * x) + (y * y)
  in = (z*z*z) * (dist <= olddist)
  out = (z*z) * (olddist < dist)
  olddist = dist
  z = in + out + c + p1
  |z| <= test
  ;SOURCE: snazzy.frm
}

shifter02 {; After shift, flop sign of C on each iteration
           ; Bradley Beacham  [74223,2745]
           ; P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2:
  lo = (1) * (iter <= shift)
  hi = (-1) * (shift < iter)
  c = c * (lo + hi)
  iter = iter + 1
  z = fn1(z*z) + c
  |z| < test
  ;SOURCE: snazzy.frm
}

shifter03 {; After shift, switch from fn1(z) to fn2(z)
           ; Bradley Beacham  [74223,2745]
           ; P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2:
  lo = fn1(z) * (iter <= shift)
  hi = fn2(z) * (shift < iter)
  iter = iter + 1
  z = lo + hi + c
  |z| < test
  ;SOURCE: snazzy.frm
}

shifter04 {; After shift, switch from fn1(z*z) to fn2(z*z)
           ; Bradley Beacham  [74223,2745]
           ; P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2:
  lo = fn1(z*z) * (iter <= shift)
  hi = fn2(z*z) * (shift < iter)
  iter = iter + 1
  z = lo + hi + c
  |z| < test
  ;SOURCE: snazzy.frm
}

shifter05 {; After shift, switch from z^p1 to z^p2
           ; Bradley Beacham  [74223,2745]
           ; P1 & P2 are exponents (try 2 and 3, for example)
           ; P3 is shift value
  z = c = pixel, iter = 1, shift = p3:
  lo = (z^p1) * (iter <= shift)
  hi = (z^p2) * (shift < iter)
  iter = iter + 1
  z = lo + hi + c
  |z| < 4
  ;SOURCE: snazzy.frm
}

slider01 {; Bradley Beacham  [74223,2745]
          ; P1 = exponent A, P2 = exponent B
          ; P3 varies radius of bailout circle (default 2)
  z = c = pixel, limit = 2 + p3, f = 0 :
  z = ((f) * fn1(z^p1)) + ((1-f) * fn2(z^p2)) + c
  f = cabs(z) / limit
  f < 1.0
  ;SOURCE: dons.frm
}

slider02 {; Bradley Beacham  [74223,2745]
          ; P1 = exponent A, P2 = exponent B
          ; P3 varies radius of bailout circle (default 2)
  z = c = pixel, limit = 2 + p3, f = cabs(z) / limit:
  z = ((f) * fn1(z^p1)) + ((1-f) * fn2(z^p2)) + c
  f = cabs(z) / limit
  f < 1.0
  ;SOURCE: dons.frm
}

speed01 {; Speed chooses between functions, escape-time
         ; Bradley Beacham  [74223,2745]
         ; P1 is maximum speed for "slow"
         ; P2 varies bailout value
  z = oldz = c = pixel, limit = 4 + p2:
  x = real(z) - real(oldz)
  y = imag(z) - imag(oldz)
  speed = x*x + y*y
  slow = fn1(z*z) * (speed < p1)
  fast = fn2(z*z) * (speed >= p1)
  oldz = z
  z = slow + fast + c
  |z| <= limit
  ;SOURCE: snazzy.frm
}

speed02 {; Acceleration chooses between functions,
         ; acceleration-limit-time
         ; Bradley Beacham  [74223,2745]
         ; P1 varies definition of acceleration
         ; P2 varies bailout value
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
  ;SOURCE: snazzy.frm
}

wha01 {; Use a counter to gradually change size of value added
       ; Bradley Beacham  [74223,2745]
       ; P1 sets value of constant (try 0.01, for example)
       ; P2 varies bailout value
  z = c = pixel, iter = 0, test = 4 + p2:
  iter = iter + 1
  z = z*z + iter*p1 + c
  |z| < test
  ;SOURCE: snazzy.frm
}

wha02 {; Use a counter to gradually change proportions of algorithms
       ; Bradley Beacham  [74223,2745]
       ; P1 sets starting value for k
       ; P2 varies step size for incrementing k
       ; P3 varies bailout value
  z = c = pixel, k = p1, kstep = .01 + p2, limit = 4 + p3:
  k = k + kstep
  z = k*(z*z*z) + (1-k)*(z*z) + c
  |z| < limit
  ;SOURCE: snazzy.frm
}

wha03 {; Use a counter to gradually change exponent
       ; Bradley Beacham  [74223,2745]
       ; P1 varies starting value for exponent
       ; P2 varies step size for incrementing exponent
       ; P3 varies bailout value
  z = c = pixel, ex = 2 + p1, step = p2, limit = 4 + p3:
  z = z^ex + c
  ex = ex + step
  |z| < limit
  ;SOURCE: snazzy.frm
}

