inandout13 {; Bradley Beacham  [74223,2745]
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
  ;SOURCE: dons.frm
}
inandout01 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
            ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = pixel, c1 = fn1(pixel), c2 = fn2(pixel):
  a = (|z| <= |oldz|) * (c1) ;IN
  b = (|oldz| < |z|)  * (c2) ;OUT
  oldz = z
  z = fn3(z*z) + a + b + p1
  |z| <= test
  ;SOURCE: dons.frm
}
Curly {; Mutation of 'Natura'. Mutated by Bradley Beacham [74223,2745]
       ; Original formula by Michael Theroux [71673,2767]
       ; For 'Natura', set FN1 & FN2 =IDENT and P1 & P2 = default
       ; p1 = Parameter (default 0.5,0), real(p2) = Bailout (default 4)
  z = pixel
       ; The next line sets c=default if p1=0, else c=p1
  c = ((0.5,0) * (|p1|<=0) + p1)
       ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2)):
  z = fn1(fn2(z*z*z)) + c
  |z| <= test
  ;SOURCE: dons.frm
}
