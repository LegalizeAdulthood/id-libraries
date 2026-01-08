{FROM:	INTERNET:fractint@lists.xmission.com, INTERNET:fractint@lists.xmission.com
TO:	"'fractint@lists.xmission.com'", INTERNET:fractint@lists.xmission.com
DATE:	1/14/00 5:55 PM

Re:	(fractint) PART1 OF GREGSMAN.FRM (M-series)
}
 
GregsMandelM1 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1 = sqr = standard Mandelbrot
  z = p1 + Pixel:
   z = p2 * fn1(z) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelM2 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/sqr = standard Mandelbrot
  z = p1 + Pixel:
   z = p2 * (fn1(z) + fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelM3 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 0/0, p3 = 2/0, fn1 = sqr = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/sqr = standard Mandelbrot
  z = p1 + Pixel:
   z = fn1(z) + p2 * fn2(z) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaM1 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1 = sqr = standard Julia for point p1
  z = Pixel, z = p2 * fn1(z) + p1:
   z = p2 * fn1(z) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaM2 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 0/0, p3 = 2/0, fn1 = sqr/zero = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1 = zero/sqr = standard Julia for point p1
  z = Pixel, z = p2 * (fn1(z) + fn2(z)) + p1:
   z = p2 * (fn1(z) + fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaM3 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 0/0, p3 = 2/0, fn1 = sqr = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1 = zero/sqr = standard Julia for point p1
  z = Pixel, z = fn1(z) + p2 * fn2(z) + p1:
   z = fn1(z) + p2 * fn2(z) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelP1 {; (c)2000 Greg McClure
; p1 = offset, p2 = exponent, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1 = sqr = standard Mandelbrot
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1 = ident = standard Mandelbrot
  z = p1 + Pixel:
   z = fn1(z)^p2 + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelP2 {; (c)2000 Greg McClure
; p1 = offset, p2 = exponent, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/sqr = standard Mandelbrot
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = ident/zero = standard Mandelbrot
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Mandelbrot
  z = p1 + Pixel:
   z = (fn1(z) + fn2(z))^p2 + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelP3 {; (c)2000 Greg McClure
; p1 = offset, p2 = exponent, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/sqr = standard Mandelbrot
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Mandelbrot
  z = p1 + Pixel:
   z = fn1(z) + fn2(z)^p2 + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelP4 {; (c)2000 Greg McClure
; p1 = offset, p2 = exponent, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/sqr = standard Mandelbrot
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = ident/zero = standard Mandelbrot
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Mandelbrot
  z = p1 + Pixel:
   z = fn1(z)^p2 + fn2(z)^p2 + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaP1 {; (c)2000 Greg McClure
; p1 = point, p2 = exponent, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1 = sqr = standard Julia for point p1
; p2 = 2/0, p3 = 2/0, fn1 = ident = standard Julia for point p1
  z = Pixel, z = fn1(z)^p2 + p1:
   z = fn1(z)^p2 + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaP2 {; (c)2000 Greg McClure
; p1 = point, p2 = exponent, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/sqr = standard Julia for point p1
; p2 = 2/0, p3 = 2/0, fn1/fn2 = ident/zero = standard Julia for point p1
; p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Julia for point p1
  z = Pixel, z = (fn1(z) + fn2(z))^p2 + p1:
   z = (fn1(z) + fn2(z))^p2 + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaP3 {; (c)2000 Greg McClure
; p1 = point, p2 = exponent, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/sqr = standard Julia for point p1
; p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Julia for point p1
  z = Pixel, z = fn1(z) + fn2(z)^p2 + p1:
   z = fn1(z) + fn2(z)^p2 + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaP4 {; (c)2000 Greg McClure
; p1 = point, p2 = exponent, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/sqr = standard Julia for point p1
; p2 = 2/0, p3 = 2/0, fn1/fn2 = ident/zero = standard Julia for point p1
; p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Julia for point p1
  z = Pixel, z = fn1(z)^p2 + fn2(z)^p2 + p1:
   z = fn1(z)^p2 + fn2(z)^p2 + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelS1 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1 = ident = standard Mandelbrot
  z = p1 + Pixel:
   z = p2 * sqr(fn1(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelS2 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/zero = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Mandelbrot
  z = p1 + Pixel:
   z = sqr(p2 * (fn1(z) + fn2(z))) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelS3 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 0/0, p3 = 2/0, fn1 = ident = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Mandelbrot
  z = p1 + Pixel:
   z = sqr(fn1(z) + p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelS4 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Mandelbrot
  z = p1 + Pixel:
   z = p2 * (fn1(z) + sqr(fn2(z))) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelS5 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Mandelbrot
; p1 = 0/0, p2 = 0/0, p3 = 2/0, fn2 = ident = standard Mandelbrot
  z = p1 + Pixel:
   z = p2 * fn1(z) + sqr(fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelS6 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 0/0, p3 = 2/0, fn1 = sqr = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Mandelbrot
  z = p1 + Pixel:
   z = fn1(z) + p2 * sqr(fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelS7 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/zero = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Mandelbrot
  z = p1 + Pixel:
   z = sqr(p2 * fn1(z)) + sqr(p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelS8 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 0/0, p3 = 2/0, fn1 = ident = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Mandelbrot
  z = p1 + Pixel:
   z = sqr(fn1(z)) + sqr(p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaS1 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1 = ident = standard Julia for point p1
  z = Pixel, z = p2 * sqr(fn1(z)) + p1:
   z = p2 * sqr(fn1(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaS2 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/zero = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Julia for point p1
  z = Pixel, z = sqr(p2 * (fn1(z) + fn2(z))) + p1:
   z = sqr(p2 * (fn1(z) + fn2(z))) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaS3 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 0/0, p3 = 2/0, fn1 = ident = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Julia for point p1
  z = Pixel, z = sqr(fn1(z) + (p2 * fn2(z))) + p1:
   z = sqr(fn1(z) + p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaS4 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Julia for point p1
  z = Pixel, z = p2 * (fn1(z) + sqr(fn2(z))) + p1:
   z = p2 * (fn1(z) + sqr(fn2(z))) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaS5 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Julia for point p1
; p2 = 0/0, p3 = 2/0, fn2 = sqr = standard Julia for point p1
  z = Pixel, z = p2 * fn1(z) + sqr(fn2(z)) + p1:
   z = p2 * fn1(z) + sqr(fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaS6 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 0/0, p3 = 2/0, fn1 = sqr = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Julia for point p1
  z = Pixel, z = fn1(z) + p2 * sqr(fn2(z)) + p1:
   z = fn1(z) + p2 * sqr(fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaS7 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/zero = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Julia for point p1
  z = Pixel, z = sqr(p2 * fn1(z)) + sqr(p2 * fn2(z)) + p1:
   z = sqr(p2 * fn1(z)) + sqr(p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaS8 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 0/0, p3 = 2/0, fn1 = ident = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Julia for point p1
  z = Pixel, z = sqr(fn1(z)) + sqr(p2 * fn2(z)) + p1:
   z = sqr(fn1(z)) + sqr(p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelE1 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type =  0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = p2 * exp(fn1(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelE2 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type =  0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1 = log = standard Mandelbrot
  z = p1 + Pixel:
   z = exp(p2 * fn1(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelE3 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = log/zero = standard Mandelbrot
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/log = standard Mandelbrot
  z = p1 + Pixel:
   z = exp(p2 * (fn1(z) + fn2(z))) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelE4 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/log = standard Mandelbrot
  z = p1 + Pixel:
   z = exp(fn1(z) + p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelE5 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/log = standard Mandelbrot
  z = p1 + Pixel:
   z = fn1(z) + exp(p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelE6 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = p2 * exp(fn1(z) + fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelE7 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = p2 * (fn1(z) + exp(fn2(z))) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelE8 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = p2 * fn1(z) + exp(fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelE9 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = fn1(z) + p2 * exp(fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelEA {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = exp(p2 * fn1(z)) + exp(p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelEB {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = p2 * (exp(fn1(z)) + exp(fn2(z))) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelEC {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = exp(fn1(z)) + exp(p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelED {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = exp(fn1(z)) + p2 * exp(fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

 
GregsJuliaE1 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = p2 * exp(fn1(z)) + p1:
   z = p2 * exp(fn1(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaE2 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 2/0, p3 = 2/0, fn1 = log = standard Julia for point p1
  z = Pixel, z = exp(p2 * fn1(z)) + p1:
   z = exp(p2 * fn1(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaE3 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 2/0, p3 = 2/0, fn1/fn2 = log/zero = standard Julia for point p1
; p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/log = standard Julia for point p1
  z = Pixel, z = exp(p2 * (fn1(z) + fn2(z))) + p1:
   z = exp(p2 * (fn1(z) + fn2(z))) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaE4 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/log = standard Julia for point p1
  z = Pixel, z = exp(fn1(z) + p2 * fn2(z)) + p1:
   z = exp(fn1(z) + p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaE5 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/log = standard Julia for point p1
  z = Pixel, z = fn1(z) + exp(p2 * fn2(z)) + p1:
   z = fn1(z) + exp(p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaE6 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = p2 * exp(fn1(z) + fn2(z)) + p1:
   z = p2 * exp(fn1(z) + fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaE7 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = p2 * (fn1(z) + exp(fn2(z))) + p1:
   z = p2 * (fn1(z) + exp(fn2(z))) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaE8 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = p2 * fn1(z) + exp(fn2(z)) + p1:
   z = p2 * fn1(z) + exp(fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaE9 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = fn1(z) + p2 * exp(fn2(z)) + p1:
   z = fn1(z) + p2 * exp(fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaEA {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = exp(p2 * fn1(z)) + exp(p2 * fn2(z)) + p1:
   z = exp(p2 * fn1(z)) + exp(p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaEB {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = p2 * (exp(fn1(z)) + exp(fn2(z))) + p1:
   z = p2 * (exp(fn1(z)) + exp(fn2(z))) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaEC {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = exp(fn1(z)) + exp(p2 * fn2(z)) + p1:
   z = exp(fn1(z)) + exp(p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaED {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = exp(fn1(z)) + p2 * exp(fn2(z)) + p1:
   z = exp(fn1(z)) + p2 * exp(fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

 
GregsMandelL1 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type =  0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = p2 * log(fn1(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelL2 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type =  0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = log(p2 * fn1(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelL3 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = log(p2 * (fn1(z) + fn2(z))) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelL4 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = log(fn1(z) + p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelL5 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = fn1(z) + log(p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelL6 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = p2 * log(fn1(z) + fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelL7 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = p2 * (fn1(z) + log(fn2(z))) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelL8 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = p2 * fn1(z) + log(fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelL9 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = fn1(z) + p2 * log(fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelLA {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = log(p2 * fn1(z)) + log(p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelLB {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = p2 * (log(fn1(z)) + log(fn2(z))) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelLC {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = log(fn1(z)) + log(p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelLD {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = log(fn1(z)) + p2 * log(fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

 
GregsJuliaL1 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = p2 * log(fn1(z)) + p1:
   z = p2 * log(fn1(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaL2 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = log(p2 * fn1(z)) + p1:
   z = log(p2 * fn1(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaL3 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = log(p2 * (fn1(z) + fn2(z))) + p1:
   z = log(p2 * (fn1(z) + fn2(z))) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaL4 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = log(fn1(z) + p2 * fn2(z)) + p1:
   z = log(fn1(z) + p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaL5 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = fn1(z) + log(p2 * fn2(z)) + p1:
   z = fn1(z) + log(p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaL6 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = p2 * log(fn1(z) + fn2(z)) + p1:
   z = p2 * log(fn1(z) + fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaL7 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = p2 * (fn1(z) + log(fn2(z))) + p1:
   z = p2 * (fn1(z) + log(fn2(z))) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaL8 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = p2 * fn1(z) + log(fn2(z)) + p1:
   z = p2 * fn1(z) + log(fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaL9 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = fn1(z) + p2 * log(fn2(z)) + p1:
   z = fn1(z) + p2 * log(fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaLA {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = log(p2 * fn1(z)) + log(p2 * fn2(z)) + p1:
   z = log(p2 * fn1(z)) + log(p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaLB {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = p2 * (log(fn1(z)) + log(fn2(z))) + p1:
   z = p2 * (log(fn1(z)) + log(fn2(z))) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaLC {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = log(fn1(z)) + log(p2 * fn2(z)) + p1:
   z = log(fn1(z)) + log(p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaLD {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = log(fn1(z)) + p2 * log(fn2(z)) + p1:
   z = log(fn1(z)) + p2 * log(fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelF1 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/sqr = standard Mandelbrot
  z = p1 + Pixel:
   z = p2 * fn1(fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelF2 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/sqr = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/ident = standard Mandelbrot
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = exp/log = standard Mandelbrot
  z = p1 + Pixel:
   z = fn1(p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelF3 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = fn1(fn2(z)^p2) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelF4 {; (c)2000 Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = fn1(fn2(z))^p2 + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaF1 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/sqr = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/ident = standard Julia for point p1
  z = Pixel, z = p2 * fn1(fn2(z)) + p1:
   z = p2 * fn1(fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaF2 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/sqr = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/ident = standard Julia for point p1
; p2 = 2/0, p3 = 2/0, fn1/fn2 = exp/log = standard Julia for point p1
  z = Pixel, z = fn1(p2 * fn2(z)) + p1:
   z = fn1(p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaF3 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = fn1(fn2(z)^p2) + p1:
   z = fn1(fn2(z)^p2) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaF4 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = fn1(fn2(z))^p2 + p1:
   z = fn1(fn2(z))^p2 + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelZ1 {; (c)2000 Greg McClure
; p1 = offset, p2 = power, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2/fn3 = zero/ident/sqr = standard
Mandelbrot
  z = p1 + Pixel:
   z = fn1(z)^fn2(z) + fn3(z)^p2 + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelZ2 {; (c)2000 Greg McClure
; p1 = offset, p2 = power, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2/fn3 = zero/ident/sqr = standard
Mandelbrot
  z = p1 + Pixel:
   z = fn1(z)^fn2(-z) + fn3(z)^p2 + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelZ3 {; (c)2000 Greg McClure
; p1 = offset, p2 = power, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Mandelbrot
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = ident/zero = standard Mandelbrot
  z = p1 + Pixel:
   z = fn1(z)^p2 + fn2(z)^(-p2) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelZ4 {; (c)2000 Greg McClure
; p1 = offset, p2 = modulus, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   IF(|z|>real(p2))
     z = fn1(z) + Pixel
   ELSEIF(|z|>imag(p2))
     z = fn2(z) + Pixel
   ELSE
     z = fn3(z) + Pixel
   ENDIF
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelZ5 {; (c)2000 Greg McClure
; p1 = offset, p2 = modulus, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   IF(|z|>real(p2))
     z = fn1(fn2(z)) + Pixel
   ELSEIF(|z|>imag(p2))
     z = fn1(fn3(z)) + Pixel
   ELSE
     z = fn1(fn4(z)) + Pixel
   ENDIF
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaZ1 {; (c)2000 Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2/fn3 = zero/ident/sqr = standard Julia for point p1
  z = Pixel, z = fn1(z)^fn2(z) + fn3(z)^p2 + p1: 
   z = fn1(z)^fn2(z) + fn3(z)^p2 + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaZ2 {; (c)2000 Greg McClure
; p1 = point, p2 = power, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2/fn3 = zero/ident/sqr = standard Julia for point p1
  z = Pixel, z = fn1(z)^fn2(z) + fn3(z)^p2 + p1: 
   z = fn1(z)^fn2(-z) + fn3(z)^p2 + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaZ3 {; (c)2000 Greg McClure
; p1 = point, p2 = power, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Mandelbrot
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = ident/zero = standard Mandelbrot
  z = Pixel, z = fn1(z)^p2 + fn2(z)^(-p2) + p1: 
   z = fn1(z)^p2 + fn2(z)^(-p2) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaZ4 {; (c)2000 Greg McClure
; p1 = point, p2 = modulus, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel,
  IF(|z|>real(p2))
    z = fn1(z) + p1
  ELSEIF(|z|>imag(p2))
    z = fn2(z) + p1
  ELSE
    z = fn3(z) + p1
  ENDIF:
   IF(|z|>real(p2))
     z = fn1(z) + p1
   ELSEIF(|z|>imag(p2))
     z = fn2(z) + p1
   ELSE
     z = fn3(z) + p1
   ENDIF
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaZ5 {; (c)2000 Greg McClure
; p1 = point, p2 = modulus, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel,
  IF(|z|>real(p2))
    z = fn1(fn2(z)) + p1
  ELSEIF(|z|>imag(p2))
    z = fn1(fn3(z)) + p1
  ELSE
    z = fn1(fn4(z)) + p1
  ENDIF:
   IF(|z|>real(p2))
     z = fn1(fn2(z)) + p1
   ELSEIF(|z|>imag(p2))
     z = fn1(fn3(z)) + p1
   ELSE
     z = fn1(fn4(z)) + p1
   ENDIF
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }


