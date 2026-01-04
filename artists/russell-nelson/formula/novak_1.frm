comment {   ---------- PRN_** Formulas ----------

   This is my first attempt at creating formulas.  Much of what I learned
   has come from the "Formula Tutor" by Bradley Beacham.

   All of these formulas are just a spin-off of the first, PRN_01.  I just
   added a few more functions, parameters, and put in a step to add some
   variation.

   I've tried to simplify them down as best as I could, with my present
   knowledge.  I'd appreciate any comments and/or suggestions for making
   the math better, or speeding them up in any way.

   Paul Novak [75274,1613]

 }

PRN_01 { ; Paul Novak, 1996
    z=c=pixel, upper=4+p2:
    t= (z +  z*(fn1(fn2(z))))
    z= -1*t + c
    |z| < upper
  }


PRN_02 { ; Paul Novak, 1996
    z=c=pixel, z2=z*z, upper=4+p2, m=p1, m1=.005+p1:
    m= m + m1
    b= (z2 + z*(fn1(fn2(z))))
    t= (z +  z*(fn2(fn3(z))))
    z= m*b + (m-1)*t + c
    |z| < upper
  }


PRN_03 { ; Paul Novak, 1996
    z=c=pixel, z2=z*z, upper=4+p2, m=p1, m1=.005+p1:
    m= m + m1/(1.5*m)
    b= (z2 + z*(fn1(fn2(z))))
    t= (z +  z*(fn2(fn3(z))))
    z= m*b + (m-1)*t + c
    |z| < upper
  }


PRN_04 { ; Paul Novak, 1996
    z=c=pixel, z2=z*z, upper=4+p2, m=p1, m1=.005+p1:
    m= m + m1*(1.25*(1/m))
    b= (z2 + z*(fn1(fn2(z))))
    t= (z2 + z + z*(fn1(fn3(z))))
    z= m*b + (1/m)*t + c
    |z| < upper
  }
