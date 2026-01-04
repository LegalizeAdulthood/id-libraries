GregsBarnsleyC2E {; ©2000 Greg McClure -- Dual func with even constants
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barnsley
  z = p1 + Pixel:
   ip = imag(p3)
   IF(IP<0)
     ip = abs(ip)-1
     z = z + p1
   ENDIF
   IF(real(z)>=0)
     z=(fn1(z)-p2)*Pixel
   ELSE
     z=(fn2(z)+p2)*Pixel
   ENDIF,
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
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsleyC2P {; ©2000 Greg McClure -- Dual func with pos constant
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barnsley
  z = p1 + Pixel:
   ip = imag(p3)
   IF(IP<0)
     ip = abs(ip)-1
     z = z + p1
   ENDIF
   IF(real(z)>=0)
     z=(fn1(z)-p2)*Pixel
   ELSE
     z=(fn2(z)+1)*Pixel
   ENDIF,
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
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsleyC2N {; ©2000 Greg McClure -- Dual func with neg constant
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barnsley
  z = p1 + Pixel:
   ip = imag(p3)
   IF(IP<0)
     ip = abs(ip)-1
     z = z + p1
   ENDIF
   IF(real(z)>=0)
     z=(fn1(z)-1)*Pixel
   ELSE
     z=(fn2(z)+p2)*Pixel
   ENDIF,
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
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsleyM2E {; ©2000 Greg McClure -- Dual func with even mult
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barnsley
  z = p1 + Pixel:
   ip = imag(p3)
   IF(IP<0)
     ip = abs(ip)-1
     z = z + p1
   ENDIF
   IF(real(z)>=0)
     z=p2*(fn1(z)-1)*Pixel
   ELSE
     z=p2*(fn2(z)+1)*Pixel
   ENDIF,
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
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsleyM2P {; ©2000 Greg McClure -- Dual func with pos mult
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barnsley
  z = p1 + Pixel:
   ip = imag(p3)
   IF(IP<0)
     ip = abs(ip)-1
     z = z + p1
   ENDIF
   IF(real(z)>=0)
     z=p2*(fn1(z)-1)*Pixel
   ELSE
     z=(fn2(z)+1)*Pixel
   ENDIF,
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
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsleyM2N {; ©2000 Greg McClure -- Dual func with neg mult
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barnsley
  z = p1 + Pixel:
   ip = imag(p3)
   IF(IP<0)
     ip = abs(ip)-1
     z = z + p1
   ENDIF
   IF(real(z)>=0)
     z=(fn1(z)-1)*Pixel
   ELSE
     z=p2*(fn2(z)+1)*Pixel
   ENDIF,
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
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsJulC2E {; ©2000 Greg McClure -- Dual func with even constants
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barns Julia f/p1
  z = Pixel:
   IF(real(z)>=0)
     z=(fn1(z)-p2)*p1
   ELSE
     z=(fn2(z)+p2)*p1
   ENDIF,
   ip = imag(p3)
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
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsJulC2P {; ©2000 Greg McClure -- Dual func with pos constant
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barns Julia f/p1
  z = Pixel:
   IF(real(z)>=0)
     z=(fn1(z)-p2)*p1
   ELSE
     z=(fn2(z)+1)*p1
   ENDIF,
   ip = imag(p3)
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
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsJulC2N {; ©2000 Greg McClure -- Dual func with neg constant
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barns Julia f/p1
  z = Pixel:
   IF(real(z)>=0)
     z=(fn1(z)-1)*p1
   ELSE
     z=(fn2(z)+p2)*p1
   ENDIF,
   ip = imag(p3)
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
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsJulM2E {; ©2000 Greg McClure -- Dual func with even mult
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barns Julia f/p1
  z = Pixel:
   IF(real(z)>=0)
     z=p2*(fn1(z)-1)*p1
   ELSE
     z=p2*(fn2(z)+1)*p1
   ENDIF,
   ip = imag(p3)
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
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsJulM2P {; ©2000 Greg McClure -- Dual func with pos mult
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barns Julia f/p1
  z = Pixel:
   IF(real(z)>=0)
     z=p2*(fn1(z)-1)*p1
   ELSE
     z=(fn2(z)+1)*p1
   ENDIF,
   ip = imag(p3)
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
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsJulM2N {; ©2000 Greg McClure -- Dual func with neg mult
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barns Julia f/p1
  z = Pixel:
   IF(real(z)>=0)
     z=(fn1(z)-1)*p1
   ELSE
     z=p2*(fn2(z)+1)*p1
   ENDIF,
   ip = imag(p3)
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
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }
