Chico {
       ; Original formula by Jon Horner [100112,1700]
       ; For 'M-SetInNewton' set FN1 & FN2 =IDENT and P1 & P2 = default
       ; p1 & p2 = Parameters (default 3,0 and 0,0)
  z = 0, c = fn1(pixel), cminusone = c-1
   ; The next line sets k=default if p1=0, else k=p1
  k = (3 * (|p1|<=0) + p1)
  kminusone = k - 1:
  oldz = z
  nm = k*c-kminusone*z*cminusone
  dn = k*(k*z*z+cminusone)
  z = fn2(nm/dn)+kminusone*z/k + p2
  0.01 <= |(z-oldz)|
  ;SOURCE: dons.frm
}


Curly {
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


FlipConjJul_N {
  z=pixel:
  z=flip(conj(z^p2))+p1
  |z|<=4
  ;SOURCE: dons.frm
}


Harpo {
   ; Original formula by Ron Barnett [70153,1233]
   ; For 'Gopalsamy3' with Ron's suggested parameters,
   ; set FN1 & FN2 = IDENT and P1 & P2 = default
   ; p1 = Parameter (default 1.099,0), real(p2) = Bailout (default 4)
  z = pixel
   ; The next line sets c=default if p1=0, else c=p1
  c = ((1.099,0) * (|p1|<=0) + p1)
   ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2)):
  x = real(z), y = imag(z)
  x1 = fn1(3*x*y*y - x*x*x) + c
  y = fn2(y*y*y - 3*x*x*y)
  z = x1 + flip(y)
  |z| <= test
  ;SOURCE: dons.frm
}


inandout01 {
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


inandout09 {
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


inandout11 {
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


inandout13 {
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


OldCGNewtonSinExp (XAXIS) {
  z=pixel:
  z1=exp(z)
  z2=sin(z)+z1-z
  z=z-p1*z2/(cosxx(z)+z1)
  .0001 < |z2|
  ;SOURCE: dons.frm
}


OldNewtonSinExp (XAXIS) {
   ; Newton's formula applied to sin(x)+exp(x)-1=0.
   ; Use floating point.
  z=pixel:
  z1=exp(z)
  z2=sin(z)+z1-1
  z=z-p1*z2/(cosxx(z)+z1)
  .0001 < |z2|
  ;SOURCE: dons.frm
}


slider01 {
          ; P1 = exponent A, P2 = exponent B
          ; P3 varies radius of bailout circle (default 2)
  z = c = pixel, limit = 2 + p3, f = 0 :
  z = ((f) * fn1(z^p1)) + ((1-f) * fn2(z^p2)) + c
  f = cabs(z) / limit
  f < 1.0
  ;SOURCE: dons.frm
}


slider02 {
          ; P1 = exponent A, P2 = exponent B
          ; P3 varies radius of bailout circle (default 2)
  z = c = pixel, limit = 2 + p3, f = cabs(z) / limit:
  z = ((f) * fn1(z^p1)) + ((1-f) * fn2(z^p2)) + c
  f = cabs(z) / limit
  f < 1.0
  ;SOURCE: dons.frm
}


SPCZ (xaxis) {
              ; Use Float=yes
  z=pixel:
  s=sin(z)
  c=cos(z)
  co=cotan(z)
  sc=s^c
  z1=sc
  z2=((c*co)-(s*log(s)))*sc
  z=z-(z1/z2)
  0.001<=|z1|
  ;SOURCE: dons.frm
}
