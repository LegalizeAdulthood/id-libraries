
PopcornJul (origin) { ;adaptation by Bradley Beacham  [74223,2745]
  ;The next line sets h=0.05 if real(p1)<=0, else h=real(p1)
  h = (0.05 * (real(p1)<=0) + real(p1) * (0<p1))
  x = real(pixel), y = imag(pixel):
    newx = x - h*sin((y) + tan(3*y))
    newy = y - h*sin((x) + tan(3*x))
    x = newx, y = newy
    z = x + flip(y)
      |z| < 4
}
