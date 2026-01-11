Harpo {; Mutation of 'Gopalsamy3'. Mutated by Bradley Beacham [74223,2745]
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
