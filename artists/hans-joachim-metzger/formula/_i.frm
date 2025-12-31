inandout02 {; Modified for if..else logic 3/19/97 by Sylvie Gallet
   ; p1 = Parameter (default 0), real(p2) = Bailout (default 4)
   ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  IF (p2 <= 0)
     test = 4
  ELSE
     test = real(p2)
  ENDIF
  z = oldz = pixel, moldz = mz = |z|:
  IF (mz <= moldz)
     oldz = z, moldz = mz, z = fn1(z) + p1, mz = |z|  ;IN
  ELSE
     oldz = z, moldz = mz, z = fn2(z) + p1, mz = |z|  ;OUT
  ENDIF
  mz <= test
  ;SOURCE: fract196.frm
}

