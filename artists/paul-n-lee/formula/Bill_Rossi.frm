Doozy18 (yaxis) {; Bill Rossi
                 ; Edited for Fractint v. 20 by George Martin, 10/98
  z = pixel, c=fn1(z)/fn2(z):
  t=fn3(z)
  l=t/fn1(t)
  z=l
  z=z/fn4(c)/l+fn1(z)
  |z| <= 4
  ;SOURCE: brossi.frm
}
Billsfrm (YAXIS) {; Based on a formula by Paul Carlson
  z = pixel:
  z = (fn1(z)^4) / (fn2(z)^3) / (fn3(z)^2) / (fn4(z))
  |z| <=4
  ;SOURCE: brossi.frm
}
NewOne3 (yaxis) {; Bill Rossi
  z = pixel:
  temp1 = fn1(z) / fn2(z)
  temp2 = fn3(z) - fn4(z)
  temp3 = fn1(z) * fn3(z)
  z = temp1 / temp2 - temp3
  |z| <= 4
  ;SOURCE: brossi.frm
}
BILL13 (yaxis) {; Bill Rossi
                ; replaced "pi" with "approxpi". G. Martin, 7/9/99
  z=pixel, approxpi=3.142857142857:
  z=fn1(z)/fn2(z)-(fn3(z)*approxpi)
  z=fn4((z)^approxpi)
  |z| <= 4
  ;SOURCE: billatny.frm
}
afract006 (yaxis) {; Bill Rossi <BillatNY@aol.com>
                   ; FractInt List -- Sun, 3 Nov 2002 13:39:08 EST
  z = pixel,c=z / (z-1):
   z = z + c,
   z = fn1(z) + fn2(z),
   z = fn3(z) / fn4(z),
   |z| <= 4
  }
