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
