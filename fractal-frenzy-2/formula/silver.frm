; special fractint.frm for this sub-directory only

 OldSilverado(XAXIS) {; Rollo Silver
  ; Select p1 such that 0. <= p1 <= 1.
  z = Pixel, zz=z*z, zzz=zz*z, z = (1.-p1)*zz + (p1*zzz), test = p2+4: ;
   z = z + Pixel
   zsq = z*z
   zcu = zsq*z
   z = (1.-p1)*zsq + p1*zcu,
   |z| <= test
  }

