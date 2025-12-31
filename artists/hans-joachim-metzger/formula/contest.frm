contest4 {; Kerry Mitchell
          ; slightly optimized version of Contest formula
          ; THIS IS THE ONE USED IN THE 1997 CONTEST
  z=p1, c=pixel:
  z2=sqr(z), z=z*z2+c*(1+z-z2)
  |z| <= 4
  ;SOURCE: contest.frm
}

