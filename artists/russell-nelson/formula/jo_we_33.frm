JoWe_02_1(XYAXIS) = { ; Jo Weber [100424,35], 6/1996
                      z = pixel
                      a1=sqr(z), a2=p1/a1, a3=p2/(sqr(a1)) 
                      z=(fn1(a1)+fn2(a2)*fn1(a3))*pixel,
   }

