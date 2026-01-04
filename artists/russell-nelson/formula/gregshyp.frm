GregsMandelHM1 {; ©2000 Greg McClure -- HyperMandel (Type ++--)
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; z(0) = (xP1+xPixel,yP1+yPixel,xP2,yP2)
; z(n) = f[z(n-1)] + (xPixel,yPixel,xP2,yP2)
; imag(p3) = type = 0/MOD,  1/MODRI, 2/MODJK, 3/REAL, 4/IMAG,
;                 = 5/JMAG, 6/KMAG,  7/OR,    8/AND,  9/MANH, 10/MANR
  z1 = p1 + Pixel, z2 = p2, z = 0:
   f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2))
   f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2))
   f1 = fn1(f1)
   f2 = fn2(f2)
   z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + Pixel
   z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + p2
   z = sqrt(|z1| + |z2|)
   ip = imag(p3)
   rz = real(z1)
   iz = imag(z1)
   jz = real(z2)
   kz = imag(z2)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = z1
   ELSEIF(ip<2.1)
    ct = z2
   ELSEIF(ip<3.1)
    ct = rz
   ELSEIF(ip<4.1)
    ct = iz
   ELSEIF(ip<5.1)
    ct = jz
   ELSEIF(ip<6.1)
    ct = kz
   ELSEIF((ip<7.1) && (|rz|>=|iz|) && (|rz|>=|jz|) && (|rz|>=|kz|))
    ct = rz
   ELSEIF((ip<7.1) && (|iz|>=|rz|) && (|iz|>=|jz|) && (|iz|>=|kz|))
    ct = iz
   ELSEIF((ip<7.1) && (|jz|>=|rz|) && (|jz|>=|iz|) && (|jz|>=|kz|))
    ct = jz
   ELSEIF((ip<7.1) && (|kz|>=|rz|) && (|iz|>=|kz|) && (|kz|>=|jz|))
    ct = kz
   ELSEIF((ip<8.1) && (|rz|<|iz|) && (|rz|<|jz|) && (|rz|<|kz|))
    ct = rz
   ELSEIF((ip<8.1) && (|iz|<|rz|) && (|iz|<|jz|) && (|iz|<|kz|))
    ct = iz
   ELSEIF((ip<8.1) && (|jz|<|rz|) && (|jz|<|iz|) && (|jz|<|kz|))
    ct = jz
   ELSEIF((ip<8.1) && (|kz|<|rz|) && (|kz|<|iz|) && (|kz|<|jz|))
    ct = kz
   ELSEIF(ip<9.1)
    ct = (abs(rz) + abs(iz) + abs(jz) + abs(kz))
   ELSEIF(ip<10.1)
    ct = (rz + iz + jz + kz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelHM2 {; ©2000 Greg McClure -- HyperMandel (Type --++)
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; z(0) = (xP2,yP2,xP1+xPixel,yP1+yPixel)
; z(n) = f[z(n-1)] + (xP2,yP2,xPixel,yPixel)
; imag(p3) = type = 0/MOD,  1/MODRI, 2/MODJK, 3/REAL, 4/IMAG,
;                 = 5/JMAG, 6/KMAG,  7/OR,    8/AND,  9/MANH, 10/MANR
  z1 = p2, z2 = p1 + Pixel, z = 0:
   f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2))
   f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2))
   f1 = fn1(f1)
   f2 = fn2(f2)
   z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + p2
   z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + Pixel
   z = sqrt(|z1| + |z2|)
   ip = imag(p3)
   rz = real(z1)
   iz = imag(z1)
   jz = real(z2)
   kz = imag(z2)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = z1
   ELSEIF(ip<2.1)
    ct = z2
   ELSEIF(ip<3.1)
    ct = rz
   ELSEIF(ip<4.1)
    ct = iz
   ELSEIF(ip<5.1)
    ct = jz
   ELSEIF(ip<6.1)
    ct = kz
   ELSEIF((ip<7.1) && (|rz|>=|iz|) && (|rz|>=|jz|) && (|rz|>=|kz|))
    ct = rz
   ELSEIF((ip<7.1) && (|iz|>=|rz|) && (|iz|>=|jz|) && (|iz|>=|kz|))
    ct = iz
   ELSEIF((ip<7.1) && (|jz|>=|rz|) && (|jz|>=|iz|) && (|jz|>=|kz|))
    ct = jz
   ELSEIF((ip<7.1) && (|kz|>=|rz|) && (|iz|>=|kz|) && (|kz|>=|jz|))
    ct = kz
   ELSEIF((ip<8.1) && (|rz|<|iz|) && (|rz|<|jz|) && (|rz|<|kz|))
    ct = rz
   ELSEIF((ip<8.1) && (|iz|<|rz|) && (|iz|<|jz|) && (|iz|<|kz|))
    ct = iz
   ELSEIF((ip<8.1) && (|jz|<|rz|) && (|jz|<|iz|) && (|jz|<|kz|))
    ct = jz
   ELSEIF((ip<8.1) && (|kz|<|rz|) && (|kz|<|iz|) && (|kz|<|jz|))
    ct = kz
   ELSEIF(ip<9.1)
    ct = (abs(rz) + abs(iz) + abs(jz) + abs(kz))
   ELSEIF(ip<10.1)
    ct = (rz + iz + jz + kz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelHMA(XAXIS) {; ©2000 Greg McClure -- HyperMandel (Type ++--)
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; z(0) = (xP1+xPixel,yP1+yPixel,xP2,yP2)     \ FORCED SYMMETRY
; z(n) = f[z(n-1)] + (xPixel,yPixel,xP2,yP2) / ON X-AXIS
; imag(p3) = type = 0/MOD,  1/MODRI, 2/MODJK, 3/REAL, 4/IMAG,
;                 = 5/JMAG, 6/KMAG,  7/OR,    8/AND,  9/MANH, 10/MANR
  z1 = p1 + Pixel, z2 = p2, z = 0:
   f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2))
   f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2))
   f1 = fn1(f1)
   f2 = fn2(f2)
   z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + Pixel
   z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + p2
   z = sqrt(|z1| + |z2|)
   ip = imag(p3)
   rz = real(z1)
   iz = imag(z1)
   jz = real(z2)
   kz = imag(z2)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = z1
   ELSEIF(ip<2.1)
    ct = z2
   ELSEIF(ip<3.1)
    ct = rz
   ELSEIF(ip<4.1)
    ct = iz
   ELSEIF(ip<5.1)
    ct = jz
   ELSEIF(ip<6.1)
    ct = kz
   ELSEIF((ip<7.1) && (|rz|>=|iz|) && (|rz|>=|jz|) && (|rz|>=|kz|))
    ct = rz
   ELSEIF((ip<7.1) && (|iz|>=|rz|) && (|iz|>=|jz|) && (|iz|>=|kz|))
    ct = iz
   ELSEIF((ip<7.1) && (|jz|>=|rz|) && (|jz|>=|iz|) && (|jz|>=|kz|))
    ct = jz
   ELSEIF((ip<7.1) && (|kz|>=|rz|) && (|iz|>=|kz|) && (|kz|>=|jz|))
    ct = kz
   ELSEIF((ip<8.1) && (|rz|<|iz|) && (|rz|<|jz|) && (|rz|<|kz|))
    ct = rz
   ELSEIF((ip<8.1) && (|iz|<|rz|) && (|iz|<|jz|) && (|iz|<|kz|))
    ct = iz
   ELSEIF((ip<8.1) && (|jz|<|rz|) && (|jz|<|iz|) && (|jz|<|kz|))
    ct = jz
   ELSEIF((ip<8.1) && (|kz|<|rz|) && (|kz|<|iz|) && (|kz|<|jz|))
    ct = kz
   ELSEIF(ip<9.1)
    ct = (abs(rz) + abs(iz) + abs(jz) + abs(kz))
   ELSEIF(ip<10.1)
    ct = (rz + iz + jz + kz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelHMB(XAXIS) {; ©2000 Greg McClure -- HyperMandel (Type --++)
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; z(0) = (xP2,yP2,xP1+xPixel,yP1+yPixel)     \ FORCED SYMMETRY
; z(n) = f[z(n-1)] + (xP2,yP2,xPixel,yPixel) / ON X-AXIS
; imag(p3) = type = 0/MOD,  1/MODRI, 2/MODJK, 3/REAL, 4/IMAG,
;                 = 5/JMAG, 6/KMAG,  7/OR,    8/AND,  9/MANH, 10/MANR
  z1 = p2, z2 = p1 + Pixel, z = 0:
   f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2))
   f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2))
   f1 = fn1(f1)
   f2 = fn2(f2)
   z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + p2
   z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + Pixel
   z = sqrt(|z1| + |z2|)
   ip = imag(p3)
   rz = real(z1)
   iz = imag(z1)
   jz = real(z2)
   kz = imag(z2)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = z1
   ELSEIF(ip<2.1)
    ct = z2
   ELSEIF(ip<3.1)
    ct = rz
   ELSEIF(ip<4.1)
    ct = iz
   ELSEIF(ip<5.1)
    ct = jz
   ELSEIF(ip<6.1)
    ct = kz
   ELSEIF((ip<7.1) && (|rz|>=|iz|) && (|rz|>=|jz|) && (|rz|>=|kz|))
    ct = rz
   ELSEIF((ip<7.1) && (|iz|>=|rz|) && (|iz|>=|jz|) && (|iz|>=|kz|))
    ct = iz
   ELSEIF((ip<7.1) && (|jz|>=|rz|) && (|jz|>=|iz|) && (|jz|>=|kz|))
    ct = jz
   ELSEIF((ip<7.1) && (|kz|>=|rz|) && (|iz|>=|kz|) && (|kz|>=|jz|))
    ct = kz
   ELSEIF((ip<8.1) && (|rz|<|iz|) && (|rz|<|jz|) && (|rz|<|kz|))
    ct = rz
   ELSEIF((ip<8.1) && (|iz|<|rz|) && (|iz|<|jz|) && (|iz|<|kz|))
    ct = iz
   ELSEIF((ip<8.1) && (|jz|<|rz|) && (|jz|<|iz|) && (|jz|<|kz|))
    ct = jz
   ELSEIF((ip<8.1) && (|kz|<|rz|) && (|kz|<|iz|) && (|kz|<|jz|))
    ct = kz
   ELSEIF(ip<9.1)
    ct = (abs(rz) + abs(iz) + abs(jz) + abs(kz))
   ELSEIF(ip<10.1)
    ct = (rz + iz + jz + kz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaHM1 {; ©2000 Greg McClure -- HyperJulia (Type ++00)
; p1 = point, p2 = multiplier, p3 = cutoff/type
; z(-1) = (xPixel,yPixel,0,0)
; z(n) = f[z(n-1)] + (xP1,yP1,xP2,yP2)
; imag(p3) = type = 0/MOD,  1/MODRI, 2/MODJK, 3/REAL, 4/IMAG,
;                 = 5/JMAG, 6/KMAG,  7/OR,    8/AND,  9/MANH, 10/MANR
  z1 = Pixel, z2 = 0, z = 0,
  f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2)),
  f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2)),
  f1 = fn1(f1), f2 = fn2(f2),
  z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + p1,
  z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + p2:
   f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2))
   f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2))
   f1 = fn1(f1)
   f2 = fn2(f2)
   z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + p1
   z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + p2
   z = sqrt(|z1| + |z2|)
   ip = imag(p3)
   rz = real(z1)
   iz = imag(z1)
   jz = real(z2)
   kz = imag(z2)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = z1
   ELSEIF(ip<2.1)
    ct = z2
   ELSEIF(ip<3.1)
    ct = rz
   ELSEIF(ip<4.1)
    ct = iz
   ELSEIF(ip<5.1)
    ct = jz
   ELSEIF(ip<6.1)
    ct = kz
   ELSEIF((ip<7.1) && (|rz|>=|iz|) && (|rz|>=|jz|) && (|rz|>=|kz|))
    ct = rz
   ELSEIF((ip<7.1) && (|iz|>=|rz|) && (|iz|>=|jz|) && (|iz|>=|kz|))
    ct = iz
   ELSEIF((ip<7.1) && (|jz|>=|rz|) && (|jz|>=|iz|) && (|jz|>=|kz|))
    ct = jz
   ELSEIF((ip<7.1) && (|kz|>=|rz|) && (|iz|>=|kz|) && (|kz|>=|jz|))
    ct = kz
   ELSEIF((ip<8.1) && (|rz|<|iz|) && (|rz|<|jz|) && (|rz|<|kz|))
    ct = rz
   ELSEIF((ip<8.1) && (|iz|<|rz|) && (|iz|<|jz|) && (|iz|<|kz|))
    ct = iz
   ELSEIF((ip<8.1) && (|jz|<|rz|) && (|jz|<|iz|) && (|jz|<|kz|))
    ct = jz
   ELSEIF((ip<8.1) && (|kz|<|rz|) && (|kz|<|iz|) && (|kz|<|jz|))
    ct = kz
   ELSEIF(ip<9.1)
    ct = (abs(rz) + abs(iz) + abs(jz) + abs(kz))
   ELSEIF(ip<10.1)
    ct = (rz + iz + jz + kz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaHM2 {; ©2000 Greg McClure -- HyperJulia (Type 00++)
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; z(-1) = (0,0,xPixel,yPixel)
; z(n) = f[z(n-1)] + (xP2,yP2,xP1,yP1)
; imag(p3) = type = 0/MOD,  1/MODRI, 2/MODJK, 3/REAL, 4/IMAG,
;                 = 5/JMAG, 6/KMAG,  7/OR,    8/AND,  9/MANH, 10/MANR
  z1 = 0, z2 = Pixel, z = 0,
  f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2)),
  f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2)),
  f1 = fn1(f1), f2 = fn2(f2),
  z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + p2,
  z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + p1:
   f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2))
   f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2))
   f1 = fn1(f1)
   f2 = fn2(f2)
   z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + p2
   z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + p1
   z = sqrt(|z1| + |z2|)
   ip = imag(p3)
   rz = real(z1)
   iz = imag(z1)
   jz = real(z2)
   kz = imag(z2)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = z1
   ELSEIF(ip<2.1)
    ct = z2
   ELSEIF(ip<3.1)
    ct = rz
   ELSEIF(ip<4.1)
    ct = iz
   ELSEIF(ip<5.1)
    ct = jz
   ELSEIF(ip<6.1)
    ct = kz
   ELSEIF((ip<7.1) && (|rz|>=|iz|) && (|rz|>=|jz|) && (|rz|>=|kz|))
    ct = rz
   ELSEIF((ip<7.1) && (|iz|>=|rz|) && (|iz|>=|jz|) && (|iz|>=|kz|))
    ct = iz
   ELSEIF((ip<7.1) && (|jz|>=|rz|) && (|jz|>=|iz|) && (|jz|>=|kz|))
    ct = jz
   ELSEIF((ip<7.1) && (|kz|>=|rz|) && (|iz|>=|kz|) && (|kz|>=|jz|))
    ct = kz
   ELSEIF((ip<8.1) && (|rz|<|iz|) && (|rz|<|jz|) && (|rz|<|kz|))
    ct = rz
   ELSEIF((ip<8.1) && (|iz|<|rz|) && (|iz|<|jz|) && (|iz|<|kz|))
    ct = iz
   ELSEIF((ip<8.1) && (|jz|<|rz|) && (|jz|<|iz|) && (|jz|<|kz|))
    ct = jz
   ELSEIF((ip<8.1) && (|kz|<|rz|) && (|kz|<|iz|) && (|kz|<|jz|))
    ct = kz
   ELSEIF(ip<9.1)
    ct = (abs(rz) + abs(iz) + abs(jz) + abs(kz))
   ELSEIF(ip<10.1)
    ct = (rz + iz + jz + kz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaHMA(ORIGIN) {; ©2000 Greg McClure -- HyperJulia (Type ++00)
; p1 = point, p2 = multiplier, p3 = cutoff/type
; z(-1) = (xPixel,yPixel,0,0)          \ FORCED SYMMETRY
; z(n) = f[z(n-1)] + (xP1,yP2,xP2,yP2) / AT ORIGIN
; imag(p3) = type = 0/MOD,  1/MODRI, 2/MODJK, 3/REAL, 4/IMAG,
;                 = 5/JMAG, 6/KMAG,  7/OR,    8/AND,  9/MANH, 10/MANR
  z1 = Pixel, z2 = 0, z = 0,
  f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2)),
  f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2)),
  f1 = fn1(f1), f2 = fn2(f2),
  z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + p1,
  z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + p2:
   f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2))
   f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2))
   f1 = fn1(f1)
   f2 = fn2(f2)
   z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + p1
   z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + p2
   z = sqrt(|z1| + |z2|)
   ip = imag(p3)
   rz = real(z1)
   iz = imag(z1)
   jz = real(z2)
   kz = imag(z2)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = z1
   ELSEIF(ip<2.1)
    ct = z2
   ELSEIF(ip<3.1)
    ct = rz
   ELSEIF(ip<4.1)
    ct = iz
   ELSEIF(ip<5.1)
    ct = jz
   ELSEIF(ip<6.1)
    ct = kz
   ELSEIF((ip<7.1) && (|rz|>=|iz|) && (|rz|>=|jz|) && (|rz|>=|kz|))
    ct = rz
   ELSEIF((ip<7.1) && (|iz|>=|rz|) && (|iz|>=|jz|) && (|iz|>=|kz|))
    ct = iz
   ELSEIF((ip<7.1) && (|jz|>=|rz|) && (|jz|>=|iz|) && (|jz|>=|kz|))
    ct = jz
   ELSEIF((ip<7.1) && (|kz|>=|rz|) && (|iz|>=|kz|) && (|kz|>=|jz|))
    ct = kz
   ELSEIF((ip<8.1) && (|rz|<|iz|) && (|rz|<|jz|) && (|rz|<|kz|))
    ct = rz
   ELSEIF((ip<8.1) && (|iz|<|rz|) && (|iz|<|jz|) && (|iz|<|kz|))
    ct = iz
   ELSEIF((ip<8.1) && (|jz|<|rz|) && (|jz|<|iz|) && (|jz|<|kz|))
    ct = jz
   ELSEIF((ip<8.1) && (|kz|<|rz|) && (|kz|<|iz|) && (|kz|<|jz|))
    ct = kz
   ELSEIF(ip<9.1)
    ct = (abs(rz) + abs(iz) + abs(jz) + abs(kz))
   ELSEIF(ip<10.1)
    ct = (rz + iz + jz + kz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaHMB(ORIGIN) {; ©2000 Greg McClure -- HyperJulia (Type 00++)
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; z(-1) = (0,0,xPixel,yPixel)          \ FORCED SYMMETRY
; z(n) = f[z(n-1)] + (xP2,yP2,xP1,yP1) / AT ORIGIN
; imag(p3) = type = 0/MOD,  1/MODRI, 2/MODJK, 3/REAL, 4/IMAG,
;                 = 5/JMAG, 6/KMAG,  7/OR,    8/AND,  9/MANH, 10/MANR
  z1 = real(Pixel), z2 = (0,1) * imag(Pixel), z = 0,
  f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2)),
  f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2)),
  f1 = fn1(f1), f2 = fn2(f2),
  z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + p2,
  z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + p1:
   f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2))
   f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2))
   f1 = fn1(f1)
   f2 = fn2(f2)
   z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + p2
   z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + p1
   z = sqrt(|z1| + |z2|)
   ip = imag(p3)
   rz = real(z1)
   iz = imag(z1)
   jz = real(z2)
   kz = imag(z2)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = z1
   ELSEIF(ip<2.1)
    ct = z2
   ELSEIF(ip<3.1)
    ct = rz
   ELSEIF(ip<4.1)
    ct = iz
   ELSEIF(ip<5.1)
    ct = jz
   ELSEIF(ip<6.1)
    ct = kz
   ELSEIF((ip<7.1) && (|rz|>=|iz|) && (|rz|>=|jz|) && (|rz|>=|kz|))
    ct = rz
   ELSEIF((ip<7.1) && (|iz|>=|rz|) && (|iz|>=|jz|) && (|iz|>=|kz|))
    ct = iz
   ELSEIF((ip<7.1) && (|jz|>=|rz|) && (|jz|>=|iz|) && (|jz|>=|kz|))
    ct = jz
   ELSEIF((ip<7.1) && (|kz|>=|rz|) && (|iz|>=|kz|) && (|kz|>=|jz|))
    ct = kz
   ELSEIF((ip<8.1) && (|rz|<|iz|) && (|rz|<|jz|) && (|rz|<|kz|))
    ct = rz
   ELSEIF((ip<8.1) && (|iz|<|rz|) && (|iz|<|jz|) && (|iz|<|kz|))
    ct = iz
   ELSEIF((ip<8.1) && (|jz|<|rz|) && (|jz|<|iz|) && (|jz|<|kz|))
    ct = jz
   ELSEIF((ip<8.1) && (|kz|<|rz|) && (|kz|<|iz|) && (|kz|<|jz|))
    ct = kz
   ELSEIF(ip<9.1)
    ct = (abs(rz) + abs(iz) + abs(jz) + abs(kz))
   ELSEIF(ip<10.1)
    ct = (rz + iz + jz + kz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }
