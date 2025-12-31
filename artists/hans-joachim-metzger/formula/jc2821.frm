j+c2821 {; Sylvie Gallet frm. [101324,3444],1997
         ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
   z = real(pixel)/real(p1) + flip (imag(pixel)/imag(p1)) - p2
   pixinv = 0.1/pixel, p9 = 0.9*pixinv
   c = (0.3459989467084647,0.0835267537688434)
   b4 = pixel - flip(pixinv) - conj(0.01*pixinv)
   b5 = pixel - conj(pixinv)
   odev = iter = wait = 0, continue = 1 :
   IF (iter < 600)
      IF (wait == 0)
         IF (|z| < 16)
            z = z*z + c, odev = odev == 0
         ELSE
            wait = 1
         ENDIF
      ENDIF
   ELSEIF (iter == 600)
      IF (wait == 0)
         odev = odev == 0
      ENDIF
      IF (odev)
         c = b4 - p9, z = z0 = b5, mz = |z|
      ELSE
         c = -b4 - p9, z = z0 = -b5, mz = |z|
      ENDIF
      continue = mz < 16
   ELSE
      IF (iter == 800)
         IF (odev)
            c = (z0^1.2)*1.5 - p9
         ELSE
            c = (z0^1.2)*(-1.5) - p9
         ENDIF
      ELSEIF (iter == 900)
         c = conj(z0)*2.25 - p9
      ELSEIF (iter == 1000)
         c = flip(z0)*3.3375 - p9
      ELSEIF (iter == 1150)
         c = flip(z0)*5.0625 - p9
      ENDIF
      z = mz*0.2 + z*z + c, mz = |z|, continue = mz < 16
   ENDIF
   iter = iter + 1
   continue
  ;SOURCE: ifs196.frm
}

