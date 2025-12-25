BJ-BC1974-c {; Modified Bob Carr frm from a modified Sylvie Gallet frm.
  c=z=pixel, d=log(1/pixel-conj(1/pixel))
  compt=0, limit=(abs(p1/5))/p2, bailout=4
  p=(1.0/-2.48)-(1.00763):
  test=(compt<limit)+fn1(c)
  c=c*(test/p3)+p*(1-test)
  z=(z*z+c)-real(d/100*pixel)
  compt=compt+0.39
  |z|<=bailout
  ;SOURCE: bej0015.frm
}
 
BJ-BC1974-h {; Modified Bob Carr frm from a modified Sylvie Gallet frm.
  c=z=fn2(pixel*pixel)/p2, d=log(1/pixel-conj(1/pixel))
  compt=0, limit=(abs(p1/5)), bailout=4
  p=(1.0/-2.48)-(1.00763):
  test=(compt<limit)+fn1(c)
  c=c*(test/p3)+p*(1-test)
  z=(z*z+c)-real(d/100*pixel)
  compt=compt+0.39
  |z|<=bailout
  ;SOURCE: bej0015.frm
}
 
BJ-SG-3-03-g {; Modified Sylvie Gallet [101324,3444], 1996
  z = pixel, c = sin(conj(-0.81256,-0.1295)) :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(x*x+p2*fn2(y)) 
  y1 = y - p1*fn1(y*y+p2*fn2(x)) 
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: sg-bc-bj.frm
}
 
