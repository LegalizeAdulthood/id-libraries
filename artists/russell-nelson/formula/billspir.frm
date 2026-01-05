BillTry3 {; Bill Rossi, billatny@nyiq.net
  z = pixel, c=p1:
  z = ((z-1) * c * (real(p1)>=0)) + ((z+1) * |c|/c * (real(p1)<0))
  |z| <= 4
  ;SOURCE: billspir.frm
}
BillTry4 {; Bill Rossi
  z = pixel, c=p1:
  z = ((z-1) * c * (real(p1)>=0)) + ((z+1) * |c|/c * (real(p1)<0))
  z = fn1(z) + c, z = fn2(c) + z
  |z| <= 4
  ;SOURCE: billspir.frm
}
