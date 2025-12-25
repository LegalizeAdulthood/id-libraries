OK-03 {; TRY P1 REAL = 500, FN1 = COS, FN2 = SQR
  z = c = pixel:
  z = fn1(z)/c
  z = fn2(z)
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}
 
OK-44 {; DISECTED MANOWAR
   ; TO GENERATE "STANDARD" MANOWAR, SET P1 = 0,0 & ALL FN = IDENT
  z = pixel, z1x = cx = real(pixel), z1y = cy = imag(pixel)
  k = 2 + p1:
  oldzx = zx = real(z), oldzy = zy = imag(z)
  x = fn1(zx*zx - zy*zy) + fn2(z1x) + cx
  y = fn3(k*zx*zy) + fn4(z1y) + cy
  z = x + flip(y)
  z1x = oldzx, z1y = oldzy
  |z| <= (10 + p2)
  ;SOURCE: overkill.frm
}
 
OK-18 {
  z = v = pixel:
  z = fn1(v) + real(z)
  v = fn2(z) + imag(v)
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}
 
OK-12 {; TRY FN1 = SQR, FN2 = SQR
  z = c = pixel:
  z = fn1(z) + c
  z = fn2(z) / c
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}
 
OK-30 {; Replaced variable "e" with "ee", 5/7/99. G. Martin
  z = v = pixel, k = .5 + p1:
  a = fn1(z)
  b = (z <= k) * (a + v)
  ee = (z > k) * (a - v)
  v = z
  z = b + ee
  |z| <= (5 + p2)
  ;SOURCE: overkill.frm
}
 
OK-41 {; DISECTED MANDELLAMBDA
  z = 0.5 + p1, lx = fn1(real(pixel)), ly = fn2(imag(pixel)):
  zx = real(z), zy = imag(z)
  x = fn3(lx*zx + 2*ly*zx*zy - ly*zy - lx*zx*zx + lx*zy*zy)
  y = fn4(ly*zx - 2*lx*zx*zy + lx*zy - ly*zx*zx + ly*zy*zy)
  z = x + flip(y)
  |z| <= (10 + p2)
  ;SOURCE: overkill.frm
}
 
REB005B {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1(const - x)*x/const
  y1 = -fn2(const + y)*y/const
  x2 = x1*x1 - y1*y1 + p1
  y2 = 2*x1*y1
  z = x2 + flip(y2) 
  |z| <= 100
  ;SOURCE: reb005.frm
}
 
Zeppo {; Mutation of 'Liar4'.
    ; Original formula by Chuck Ebbert [76306,1226]
    ; Modified for if..else logic 3/19/97 by Sylvie Gallet
    ; For 'Liar4' set FN1 & FN2 =IDENT and P1 & P2 = default
    ; p1 & p2 = Parameters (default 1,0 and 0,0)
   z = pixel
    ; The next line sets p=default if p1=0, else p=p1
   IF (real(p1) || imag(p1))
      p = p1
   ELSE
      p = 1
   ENDIF
   :
   z = fn1(1-abs(imag(z)*p-real(z))) +          \
       flip(fn2(1-abs(1-real(z)-imag(z)))) - p2
   |z| <= 1
  ;SOURCE: fract196.frm
}
 
REB005A {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1(const - 12*x)*x/(4*const)
  y1 = -fn2(const + 12*y)*y/(4*const)
  x2 = x1*x1 - y1*y1 + p1
  y2 = 2*x1*y1
  z = x2 + flip(y2)
  |z| <= 100
  ;SOURCE: fractint.frm
}
 
SJMANOWAR01 {; Ron Barnett, 1994
             ; floating point required
  z=z1=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=z*z+z1+c
  z1=z 
  |z|<=100
  ;SOURCE: reb005.frm
}
 
