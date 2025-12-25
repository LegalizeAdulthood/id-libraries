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
 
