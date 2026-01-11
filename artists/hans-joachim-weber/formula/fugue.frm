FUGUE_01 {; 11/29/94
  z=pixel, x=1, y=1, a=p1, b=p2:
  z=fn1(z)+a*b
  |z|<=4
  a=fn1(x*z)
  |a|<=8
  b=fn1(y*z)
  |b|<=16
  ;SOURCE: vp001.frm
}

FUGUE_03 {; 11/29/94
  z=pixel, a=p1, b=p2:
  z=fn1(z)*(a+b)
  |z|<=4
  a=fn2(z)
  |a|<=8
  b=fn3(z)
  |b|<=16
  ;SOURCE: vp001.frm
}

FUGUE_03 {; 11/29/94
  z=pixel, a=p1, b=p2:
  z=fn1(z)*(a+b)
  |z|<=4
  a=fn2(z)
  |a|<=8
  b=fn3(z)
  |b|<=16
  ;SOURCE: vp001.frm
}

FUGUE_04 {; 11/29/94
  z=pixel, c=1, a=p1, b=p2:
  z=fn1(z)*(a+b+c)
  |z|<=4
  a=fn2(z)
  |a|<=8
  b=fn3(z)
  |b|<=16
  c=fn4(z)
  |c|<=32
  ;SOURCE: vp001.frm
}

FUGUE_07 {; 11/29/94
  z=pixel, c=1, a=p1, b=p2:
  z=fn1(z)+(a*b*c)
  |z|<=4
  a=fn2(z)+a
  |a|<=8
  b=fn3(z)+b
  |b|<=16
  c=fn4(z)+c
  |c|<=32
  z=fn1(z)*(a*b*c)
  |z|<=64
  a=fn2(z)*a
  |a|<=128
  b=fn3(z)*b
  |b|<=256
  c=fn4(z)*c
  |c|<=512
  ;SOURCE: vp001.frm
}

FUGUE_08 {; 11/29/94
  z=pixel, c=1, a=p1, b=p2:
  z=fn1(z)*(a*b*c)
  |z|<=4
  a=fn2(z)*a
  |z|<=8
  b=fn3(z)*b
  |z|<=16
  c=fn4(z)*c
  |z|<=32
  z=fn1(z)*(a*b*c)
  |z|<=64
  a=fn2(z)*a
  |z|<=128
  b=fn3(z)*b
  |z|<=256
  c=fn4(z)*c
  |z|<=512
  ;SOURCE: vp001.frm
}

FUGUE_09 {; 11/29/94
  z=pixel, c=1, a=p1, b=p2:
  z=fn1(z)+(a*b*c)
  |z|<=4
  a=fn2(z)+a
  |z|<=8
  b=fn3(z)+b
  |z|<=16
  c=fn4(z)+c
  |z|<=32
  z=fn1(z)+(a*b*c)
  |z|<=64
  a=fn2(z)+a
  |z|<=128
  b=fn3(z)+b
  |z|<=256
  c=fn4(z)+c
  |z|<=512
  ;SOURCE: vp001.frm
}

FUGUE_10 {; 11/29/94
  z=pixel, c=1, a=p1, b=p2:
  z=fn1(z)+(a*b*c)
  |z|<=4
  a=fn2(z)+a
  |z|<=8
  b=fn3(z)+b
  |z|<=16
  c=fn4(z)+c
  |z|<=32
  z=fn1(z)*(a*b*c)
  |z|<=64
  a=fn2(z)*a
  |z|<=128
  b=fn3(z)*b
  |z|<=256
  c=fn4(z)*c
  |z|<=512
  ;SOURCE: vp001.frm
}

