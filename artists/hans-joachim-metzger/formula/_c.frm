contest4 {; Kerry Mitchell
          ; slightly optimized version of Contest formula
          ; THIS IS THE ONE USED IN THE 1997 CONTEST
  z=p1, c=pixel:
  z2=sqr(z), z=z*z2+c*(1+z-z2)
  |z| <= 4
  ;SOURCE: contest.frm
}

c5 {
  z=pixel, x=fn3(1/z+1), y=fn4(1/z-1):
  z=(fn1(z/x)*fn2(z/y))+c
  |z|<4
  ;SOURCE: ad1.frm
}

