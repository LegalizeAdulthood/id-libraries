FlipRNot   { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
             ; Sun, 4 Apr 2004 08:49:48
             ; function=zero/ident/recip .  Radical orbits.
             ;
  z=fn1(pixel), c=fn2(pixel):
  z = sqr(z) +c
  c = fn3(c)
  LastSqr <= real(P1)
}

FunkRNot   { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
             ; Sun, 4 Apr 2004 10:35:21
             ; The imaje is the same in this case.
             ;
  z=fn1(pixel), c=fn2(pixel), d=fn3(pixel), flop=1:
  temp=d
  flop=-flop
  if(flop==-1)
        temp=c
  endif,
  z = sqr(z) +temp
  LastSqr <= real(P1)
}

