non-conformal {; From Media Magic Calender - August
  z=x=y=x2=y2=0:
  t = x * y
  x = x2 + t + real(pixel), y = y2 - t + imag(pixel)
  x2 = sqr(x), y2 = sqr(y), z=x + flip(y)
  |z| <= 4
  ;SOURCE: flip.frm
}
 
phoenix_m {; Mandelbrot style map of the Phoenix curves
  z=x=y=nx=ny=x1=y1=x2=y2=0:
  x2 = sqr(x), y2 = sqr(y)
  x1 = x2 - y2 + real(pixel) + imag(pixel) * nx
  y1 = 2 * x * y + imag(pixel) * ny
  nx=x, ny=y, x=x1, y=y1, z=x + flip(y)
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
