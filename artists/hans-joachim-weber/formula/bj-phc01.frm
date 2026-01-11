BJ-JDfrm010m2 {; Brian Jones [102702,2213], 1996  Requires passes=1
               ; Modified Lee Skinner/Jim Deutch frm
               ; Eliminated assignment to "pixel". G. Martin, 6/27/99
  c = (((whitesq==0)*fn1(pixel*(3/sqrt(pixel))))-whitesq) * pixel\
          + whitesq * -pixel
  z = 0:
  z = z*z + c
  |z| < 4
  ;SOURCE: phc.frm
}

BJ-JDfrm010m2 {; Brian Jones [102702,2213], 1996  Requires passes=1
               ; Modified Lee Skinner/Jim Deutch frm
               ; Eliminated assignment to "pixel". G. Martin, 6/27/99
  c = (((whitesq==0)*fn1(pixel*(3/sqrt(pixel))))-whitesq) * pixel\
          + whitesq * -pixel
  z = 0:
  z = z*z + c
  |z| < 4
  ;SOURCE: phc.frm
}

BJ-JDfrm010m3 {; Brian Jones [102702,2213], 1996    Requires passes=1
               ; Modified Lee Skinner/Jim Deutch frm
               ; Eliminated assignment to "pixel". G. Martin, 6/27/99
  c = (((whitesq==0)*fn1(pixel*fn2(3/sqrt(pixel))))-whitesq) * pixel\
          + whitesq * -pixel
  z = 0:
  z = z*z + c
  |z| < 4
  ;SOURCE: phc.frm
}

BJ-Lamda*2-a {; Brian Jones [102702,2213], 1996  Requires passes=1
              ; Modification of Ron Barnett's MandJulia frm
  z = pixel+ whitesq*p1 :
  m = p2
  z = (sin(z) * p2)/p3
  abs(imag(z)) <= 64 && abs(real(z)) <= 64
  ;SOURCE: phc.frm
}

BJ-MandJulia {; Brian Jones [102702,2213], 1996  Requires passes=1
              ; Modification of Ron Barnett's MandJulia frm
  z = pixel+(whitesq==0)*p3
  c = whitesq*p1*pixel + (whitesq==0)*p2:
  z=fn1(z*z)*pi
  z=z*z+c
  |z|<4
  ;SOURCE: phc.frm
}

BJ-MandsJulia {; Brian Jones [102702,2213], 1996   Requires passes=1
               ; Modification of Ron Barnett's MandJulia frm
  z = pixel+(whitesq==0)*p3
  c = whitesq*p1*pixel + (whitesq==0)*p2:
  z=fn1(z+z)*pi
  z=z*z+c
  |z|<4
  ;SOURCE: phc.frm
}

BJ-MandsJulia {; Brian Jones [102702,2213], 1996   Requires passes=1
               ; Modification of Ron Barnett's MandJulia frm
  z = pixel+(whitesq==0)*p3
  c = whitesq*p1*pixel + (whitesq==0)*p2:
  z=fn1(z+z)*pi
  z=z*z+c
  |z|<4
  ;SOURCE: phc.frm
}

BJ-MandsJulia-b-4 {; Brian Jones [102702,2213], 1996  Requires passes=1
                   ; Modification of Ron Barnett's MandJulia frm
  z = (pixel * flip(fn1(pixel*3)))+(whitesq==0)*p3
  c = whitesq*p1*pixel + (whitesq==0)*p2:
  z=sin(z+z)*pi
  z=z*z+c
  |z|<4
  ;SOURCE: phc.frm
}

BJ-Newton*2+Man-b {; Brian Jones [102702,2213], 1996  Requires passes=1
                   ; Modification of Ron Barnett's TwoMands frm
                   ; Edited for Fractint v. 20 by George Martin, 10/98
  root=1
  z = c = pixel+(whitesq==0)*p3:
  z = whitesq*(z^p1+c)+(whitesq==0)*(z^p2+c)
  z3 = fn1(z * z) * fn2(z * z * z) * fn3(z + c)
  z4 = z3 * z
  z = (3 * z4 + root) / (4 * z3)
  .004 <= |z4 - Root|
  ;SOURCE: phc.frm
}

BJ-Newton*2-b {; Brian Jones [102702,2213], 1996  Requires passes=1
               ; Modification of Ron Barnett's MandJulia frm
  root = 1
  z = pixel+(whitesq==0)*p3
  c = whitesq*p1*pixel + (whitesq==0)*p2:
  z3 = (z * z) * (z * z) * (z + c)
  z4 = z3 * z
  z = (3 * z4 + root) / (4 * z3)
  .004 <= |z4 - Root|
  ;SOURCE: phc.frm
}

BJ-Newton*2-b {; Brian Jones [102702,2213], 1996  Requires passes=1
               ; Modification of Ron Barnett's MandJulia frm
  root = 1
  z = pixel+(whitesq==0)*p3
  c = whitesq*p1*pixel + (whitesq==0)*p2:
  z3 = (z * z) * (z * z) * (z + c)
  z4 = z3 * z
  z = (3 * z4 + root) / (4 * z3)
  .004 <= |z4 - Root|
  ;SOURCE: phc.frm
}

BJ-Newton*2-c {; Brian Jones [102702,2213], 1996  Requires passes=1
               ; Modification of Ron Barnett's MandJulia frm
  root = 1
  z = pixel+(whitesq==0)*p3
  c = whitesq*p1*pixel + (whitesq==0)*p2:
  z3 = (z * z) * (z * z * z) * (z + c)
  z4 = z3 * z
  z = (3 * z4 + root) / (4 * z3)
  .004 <= |z4 - Root|
  ;SOURCE: phc.frm
}

BJ-PHC-G3-03-a {; Brian Jones [102702,2213], 1996  Requires passes=1
                ; Modification of Sylvie Gallet's 3-03
                ; & Ron Barnett's MandJulia frm
  z = pixel+(whitesq==0)*p3
  x = real(z)+(whitesq==0)*p3 , y = imag(z):
  x1 = x - p1*fn1(y*y+p2*fn2(y))
  y1 = y - p1*fn1(x*x+p2*fn2(x))
  z = (z*z+c) / x1+flip(y1)
  |z|<=4
  ;SOURCE: phc.frm
}

BJ-Spider-c {; Brian Jones [102702,2213], 1996  Requires passes=1
             ; Modification of Ron Barnett's MandJulia frm
  z = pixel+(whitesq==0)*p3
  c = pixel * p1 * (whitesq==0)/p2:
  z = sqr(z) + c
  c = z + fn1(c/2)/p1
  |z|<4
  ;SOURCE: phc.frm
}

