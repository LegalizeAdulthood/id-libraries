comment {
  This Fractint formula file is by Bradley Beacham, (c) May 1994, and may
  not be used for commercial purposes without my consent.  I encourage you
  to copy and distribute it, but only if it is unaltered.  If you make
  changes to any of these formulas, please put your changes in a new
  '.FRM' file.  If you want to merge one or more of these formulas into
  another .FRM file, please leave the formula and its credits intact.

  The following formulas are mutations of other formulas by other people.
  As with genetic mutations, changes are not necessarily improvements.
  I DID have fun, though...

  A big thank-you to Chuck Ebbert (CIS 76306,1226) for posting BUILTN.FRM,
  which showed me a better way to set up default values for numeric
  parameters.  If you're trying to teach yourself how to write formulas, I
  would highly recommend that you get BUILTN.FRM and study it.

  The parameter file FUBAR.PAR has many examples of the images I have
  created with these formulas.
  
  I welcome any comments.  Reach me at:

    CIS: 74223,2745    Internet: 74223,2745@compuserve.com

    U.S. Mail: Bradley Beacham
               1343 S. Tyler
               Salt Lake City, Utah  84105
               U.S.A.
  
  NOTE: Most of these formulas REQUIRE floating-point math.  Sorry.

}


Larry { ; Mutation of 'Michaelbrot' and 'Element'
  ; Mutated by Bradley Beacham [74223,2745]
  ; Original formulas by Michael Theroux [71673,2767]
  ; For 'Michaelbrot', set FN1 & FN2 =IDENT and P1 & P2 = default
  ; For 'Element', set FN1=IDENT & FN2=SQR and P1 & P2 = default
  ; p1 = Parameter (default 0.5,0), real(p2) = Bailout (default 4)
  z = pixel
  ; The next line sets c=default if p1=0, else c=p1
  c = ((0.5,0) * (|p1|<=0) + p1)
  ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2)):
    z = fn1(fn2(z*z)) + c
    |z| <= test
}

Curly { ; Mutation of 'Natura'. Mutated by Bradley Beacham [74223,2745]
  ; Original formula by Michael Theroux [71673,2767]
  ; For 'Natura', set FN1 & FN2 =IDENT and P1 & P2 = default
  ; p1 = Parameter (default 0.5,0), real(p2) = Bailout (default 4)
  z = pixel
  ; The next line sets c=default if p1=0, else c=p1
  c = ((0.5,0) * (|p1|<=0) + p1)
  ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2)):
    z = fn1(fn2(z*z*z)) + c
    |z| <= test
}

Moe { ; Mutation of 'Zexpe'.  Mutated by Bradley Beacham [74223,2745]
  ; Original formula by Lee Skinner [75450,3631]
  ; For 'Zexpe', set FN1 & FN2 =IDENT and P1 = default
  ; real(p1) = Bailout (default 100)
  s = exp(1.,0.), z = pixel, c = fn1(pixel)
  ; The next line sets test=100 if real(p1)<=0, else test=real(p1)
  test = (100 * (real(p1)<=0) + real(p1) * (0<p1)):
    z = fn2(z)^s + c
    |z| <= test
}

Harpo { ; Mutation of 'Gopalsamy3'. Mutated by Bradley Beacham [74223,2745]
  ; Original formula by Ron Barnett [70153,1233]
  ; For 'Gopalsamy3' with Ron's suggested parameters,
  ; set FN1 & FN2 = IDENT and P1 & P2 = default
  ; p1 = Parameter (default 1.099,0), real(p2) = Bailout (default 4)
  z = pixel
  ; The next line sets c=default if p1=0, else c=p1
  c = ((1.099,0) * (|p1|<=0) + p1)
  ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2)):
    x = real(z), y = imag(z)
    x1 = fn1(3*x*y*y - x*x*x) + c
    y = fn2(y*y*y - 3*x*x*y)
    z = x1 + flip(y)
    |z| <= test
}

Groucho { ; Mutation of 'Fish2'. Mutated by Bradley Beacham [74223,2745]
  ; Original formula by Dave Oliver via Tim Wegner
  ; For 'Fish2', set FN1 & FN2 =IDENT and P1 & P2 = default
  ; p1 = Parameter (default 1,0), real(p2) = Bailout (default 4)
  z = c = pixel
  ; The next line sets k=default if p1=0, else k=p1
  k = ((1,0) * (|p1|<=0) + p1)
  ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2)):
    z1 = c^(fn1(z)-k)
    z = fn2(((c*z1)-k)*(z1))
    |z| <= test
}

Chico { ; Mutation of 'M-SetInNewton'. Mutated by Bradley Beacham [74223,2745]
  ; Original formula by Jon Horner [100112,1700]
  ; For 'M-SetInNewton' set FN1 & FN2 =IDENT and P1 & P2 = default
  ; p1 & p2 = Parameters (default 3,0 and 0,0)
  z = 0,  c = fn1(pixel),  cminusone = c-1
  ; The next line sets k=default if p1=0, else k=p1
  k = (3 * (|p1|<=0) + p1)
  kminusone = k - 1:
    oldz = z
    nm = k*c-kminusone*z*cminusone
    dn = k*(k*z*z+cminusone)
    z = fn2(nm/dn)+kminusone*z/k + p2
    0.01 <= |(z-oldz)|
}

Zeppo { ; Mutation of 'Liar4'. Mutated by Bradley Beacham [74223,2745]
  ; Original formula by Chuck Ebbert [76306,1226]
  ; For 'Liar4' set FN1 & FN2 =IDENT and P1 & P2 = default
  ; p1 & p2 = Parameters (default 1,0 and 0,0)
  z = pixel
  ; The next line sets p=default if p1=0, else p=p1
  p = (1 * (|p1|<=0) + p1):
    z =fn1(1-abs(imag(z)*p-real(z)))+flip(fn2(1-abs(1-real(z)-imag(z))))-p2
    |z| <= 1
}

