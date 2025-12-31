Incdbail {
  z = c = pixel, m = fn3(z), n = fn4(z):
  t = fn1(z) + fn2(z)
  d = z-t
  z=((d<=p1)*(z+(m/z)))+((d>p1)*(d<=(2*p1))*(t))+((d>(2*p1))*(z-(n/z)))
  d <= p2
  ;SOURCE: ron1.frm
}

MultdBail {;p1 is dist switch, p2 is count switch
  z = c = pixel, x=0, m=1:
  x=x+1, t = z*z+c, d=|z|/4, do=1-d
  g = (d<=p1)* (x<=p2)* (1.25), h=(d>p1)* (x<=p2)* (.9)
  i = (d<=p1)* (x>p2)* (1.1), j=(d>p1)* (x>p2)* (1)
  m =  (g+h+i+j)*m
  z = m*t
  d <= 4
  ;SOURCE: ron1.frm
}

