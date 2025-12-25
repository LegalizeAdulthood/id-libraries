January {; Sylvie Gallet, Dec 1997
         ; Based on Scott Burns equation solver applied to z^3-1 = 0
         ; Use decomp = 256
  z1 = pixel, iter = 0
  a = 23*(0,0.0245436)       ; 23 * 2i pi / 256
  mz = abs(cabs(z1)-1)
  :
  IF (mz>=0.1)
    z = exp((iter + 10*mz)*a)
    cont = 0
  ELSE
    z2 = z1*z1
    z1 = ((1,-1)*z2*z2 + (7,1)*z1) / (2*z1*z2 + 6)
    mz = abs(cabs(z1)-1) 
    cont = 1
    iter = iter + 1
  ENDIF
  cont
  ;SOURCE: 97msg.frm
}
 
May-2 {; Sylvie Gallet, Dec 1997
       ; Newton's method applied to z^3 - 1 = 0
       ; Use decomp = 256 and periodicity = 0
  z1 = pixel, iter = 0, j = -0.5 + flip(sqrt(0.75)), k = conj(j)
  a = p1*(0,0.0245436)    ; real(p1) * 2i pi / 256
  :
  mz = cabs(z1)
  z2 = z1*z1
  z1 = ((2.5,-0.7)*z1*z2 + (0.5,0.7)) / (3*z2)
  dz = abs(real(z1+0.5))
  IF (dz > 0.1)
    dz = abs(real(z1*j+0.5))
    IF (dz > 0.1)
      dz = abs(real(z1*k+0.5))
    ENDIF
  ENDIF
  IF (dz <= 0.1)
    z = exp((iter + 10*dz)*a), cont = 0
  ELSEIF (mz <= 0.25)
    z = exp((256/p1-1 + 4*mz)*a), cont = 0
  ELSE
    iter = iter + 1, cont = 1
  ENDIF
  cont
  ;SOURCE: 98msg.frm
}
 
New2 {; Sylvie Gallet, Dec 1997
      ; Use decomp = 256 and periodicity = 0
  z1 = pixel, iter = 0
  a = real(p1)*(0,0.0245436)       ; real(p1) * 2i pi / 256
  :
  mz1 = abs(cabs(z1)-1), mz2 = abs(cabs(z1)-2)
  IF (mz1 <= 0.1)
    z = exp((iter + 10*mz1)*a)
    cont = 0
  ELSEIF (mz2 <= 0.1)
    iter = iter + 1
    z = exp((iter + 10*mz2)*a)
    cont = 0
  ELSE
    z2 = z1*z1
    z1 = (3*z2*z2 - 4) / ((4*z2 - 5)*z1)
    cont = 1
    iter = iter + 1
   ENDIF
   cont
   ;SOURCE: calendar.frm
}
 
