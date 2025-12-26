inandout07 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
            ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt)
  olddist = 100:
  x = real(z) - rt
  y = imag(z) - it
  dist = x*x + y*y
  in  = fn2(z) * (dist <= olddist)
  out = fn3(z) * (olddist < dist)
  olddist = dist
  z = in + out + p1
  |z| <= test
  ;SOURCE: zsazsa.frm
}
 
fnglynn {; Mutation of GLYNN, by Bradley Beacham  [74223,2745]
         ; Original formula by Jon Horner [100112,1700]
         ; Try p1=1.5, p2=-0.2, fn1=ident for 'standard' Glynn
  z = pixel:
  z = fn1(z^p1 + p2)
  |z| < 4
  ;SOURCE: zsazsa.frm
}
 
glynnout1 {; Mutation of GLYNN, by Bradley Beacham  [74223,2745]
           ; Original formula by Jon Horner [100112,1700]
           ; in-and-out relative to origin
  z = oldz = pixel:
  in  =  p2 * (|z| <= |oldz|)
  out = -p2 * (|oldz| < |z|)
  oldz = z
  z = fn1(z)^p1 + in + out
  |z| <= 4
  ;SOURCE: zsazsa.frm
}
 
