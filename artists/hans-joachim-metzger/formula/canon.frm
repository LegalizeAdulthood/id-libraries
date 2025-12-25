CANON1 {; 12/2/94 a,b,c are modified by fn(), z value is bailout 
  z=pixel, c=1, a=p1, b=p2:
  z=fn1(z)+(a*b*c)
  |z|<=4
  a=(fn2(z)+a)/2
  |z|<=8
  b=(fn3(z)+b)/4
  |z|<=16
  c=(fn4(z)+c)/8
  |z|<=32
  ;SOURCE: canon.frm
}
 
CANON6 {; 12/3/94
  z=pixel, c=z^2, a=p1, b=p2:
  z=fn1(z)-(a*b*c)
  |z|<=4
  a=(fn2(z)-a)/2
  |z|<=8
  b=(fn3(z)-b)/4
  |z|<=16
  c=(fn4(z)-c)/8
  |z|<=32
  ;SOURCE: canon.frm
}
 
