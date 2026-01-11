Incdbail {
  z = c = pixel, m = fn3(z), n = fn4(z):
  t = fn1(z) + fn2(z)
  d = z-t
  z=((d<=p1)*(z+(m/z)))+((d>p1)*(d<=(2*p1))*(t))+((d>(2*p1))*(z-(n/z)))
  d <= p2
  ;SOURCE: ron1.frm
}
