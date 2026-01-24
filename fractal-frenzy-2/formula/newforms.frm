glynnout { ;Mutation of GLYNN.  Mutation by Brad Beacham  [74223,2745]
           ;Original formula by Jon Horner [100112,1700]
  z = oldz = pixel:
    a = (|z| <= |oldz|) * p2  ;IN
    b = (|oldz| < |z|)  * -p2 ;OUT
    oldz = z
    z = fn1(z)^p1 + a + b
    |z| <= 4
}
