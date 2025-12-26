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
 
glynnout2 {; Mutation of GLYNN, by Bradley Beacham  [74223,2745]
           ; Original formula by Jon Horner [100112,1700]
           ; in-and-out relative to origin
  z = oldz = pixel, k1 = fn1(p2), k2 = fn2(p2):
  in  = k1 * (|z| <= |oldz|)
  out = k2 * (|oldz| < |z|)
  oldz = z
  z = z^p1 + in + out
  |z| <= 4
  ;SOURCE: zsazsa.frm
}
 
glynnout3 {; Mutation of GLYNN, by Bradley Beacham  [74223,2745]
           ; Original formula by Jon Horner [100112,1700]
           ; in-and-out relative to fn1(pixel)
           ; p1 = Parameter (default 0), p2 = Parameter (default 0)
  z = pixel, tgt = fn1(pixel), rt=real(tgt), it=imag(tgt)
  olddist = 100:
  x = real(z) - rt
  y = imag(z) - it
  dist = x*x + y*y
  in  =  p2 * (dist <= olddist)
  out = -p2 * (olddist < dist)
  olddist = dist
  z = fn2(z^p1 + in + out)
  |z| <= 4
  ;SOURCE: zsazsa.frm
}
 
inandout06 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
            ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = pixel, c1 = fn2(pixel), c2 = fn3(pixel), olddist =100
  tgt = fn1(pixel), rt=real(tgt), it=imag(tgt):
  x = real(z) - rt
  y = imag(z) - it
  dist = x*x + y*y
  in  = c1 * (dist <= olddist)
  out = c2 * (olddist < dist)
  olddist = dist
  z = z*z + in + out + p1
  |z| <= test
  ;SOURCE: zsazsa.frm
}
 
inandout08 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
            ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = c = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt)
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
  ;SOURCE: zsazsa.frm
}
 
inandout09 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 1), real(p2) = Bailout (default 4)
            ;The next line sets k=default if p1=0, else k=p1
  k = ((1) * (|p1|<=0) + p1)
            ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = c = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt)
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
  ;SOURCE: dons.frm
}
 
inandout10 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
            ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt)
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
  ;SOURCE: zsazsa.frm
}
 
inandout11 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
            ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = pixel, c1 = fn1(pixel), c2 = fn2(pixel)
  rt = real(p1), it = imag(p1), olddist = 100:
  x = real(z) - rt
  y = imag(z) - it
  dist = x*x + y*y
  in  = c1 * (dist <= olddist)
  out = c2 * (olddist < dist)
  olddist = dist
  z = fn3(z*z) + in + out
  |z| <= test
  ;SOURCE: dons.frm
}
 
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
 
limerick {; Bradley Beacham  [74223,2745]
          ; Just an experiment -- nothing earth-shaking...
  z = c = pixel, test = p1 + 4:
  z = fn1(z)
  z = fn1(z)
  z = fn2(z)
  z = fn2(z)
  z = fn1(z) + c
  |z| < test
  ;SOURCE: zsazsa.frm
}
 
inandout12 {; Bradley Beacham  [74223,2745]
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
  ;SOURCE: zsazsa.frm
}
 
