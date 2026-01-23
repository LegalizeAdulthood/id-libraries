
comment {              ***** BBFAVES.FRM *****

  This Fractint formula file is by Bradley Beacham, (c) 1994, and may
  not be used for commercial purposes without my consent.

  This file was created expressly to support the file BBFAVES.PAR.

}


inandout04 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 1), real(p2) = Bailout (default 4)
  ;The next line sets k=default if p1=0, else k=p1
  k = ((1) * (|p1|<=0) + p1)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = c = pixel:
    a = (|z| <= |oldz|) * (c)   ;IN
    b = (|oldz| < |z|)  * (c*k) ;OUT
    c = a + b
    oldz = z
    z = fn1(z*z) + c
    |z| <= test
}

OK-03 { ;TRY P1 REAL = 500, FN1 = COS, FN2 = SQR
   z = c = pixel:
   z = fn1(z)/c;
   z = fn2(z),
   |z| <= (5 + p1)
  }

OK-36 { ; DISSECTED MANDELBROT
  ; TO GENERATE "STANDARD" MANDELBROT, SET P1 = 0,0 & ALL FN = IDENT
  z = pixel, cx = fn1(real(z)), cy = fn2(imag(z)), k = 2 + p1:
  zx = real(z), zy = imag(z);
  x = fn3(zx*zx - zy*zy) + cx;
  y = fn4(k * zx * zy) + cy;
  z = x + flip(y),
  |z| <  (10 + p2)
}

OK-42 { ; MUTATION OF FN + FN
  z = pixel, p1x = real(p1)+1, p1y = imag(p1)+1,
  p2x = real(p2)+1, p2y = imag(p2)+1:
  zx = real(z), zy = imag(z);
  x = fn1(zx*p1x - zy*p1y) + fn2(zx*p2x - zy*p2y);
  y = fn3(zx*p1y + zy*p1x) + fn4(zx*p2y + zy*p2x);
  z = x + flip(y),
  |z| <= 20
}

fnglynn { ;Mutation of GLYNN, by Brad Beacham  [74223,2745]
          ;Original formula by Jon Horner [100112,1700]
          ;Try p1=1.5, p2=-0.2, fn1=ident for 'standard' Glynn
  z = pixel:
    z = fn1(z^p1 + p2)
    |z| < 4
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

