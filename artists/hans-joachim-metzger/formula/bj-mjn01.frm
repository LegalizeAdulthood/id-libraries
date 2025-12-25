m+j+n {; Sylvie Gallet [101324,3444], 1997
       ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
   p0 = p3 - 1, iter = wait = 0
   z = cm = pixel * exp(-flip(imag(p1)) * 0.01745329252) / abs(real(p1))
   odev = continue = 1 :
   IF (iter < 300)
      IF (wait == 0)
         z = z*z + cm, odev = odev == wait
         wait = |z| >= 16
      ENDIF
   ELSEIF (iter == 300)
      IF (wait == 0)
         odev = 1
      ENDIF
      z = pixel
   ELSE
      IF (odev)
         zp0 = z^p0, d = zp0 * p3, n = zp0 * z - 1
         z = -n/d + z, continue = |n| > 0.000001
      ELSE
         z = z*z + p2, continue = |z| < 16
      ENDIF
   ENDIF
   iter = iter + 1
   continue
  ;SOURCE: ifs196.frm
}
 
m+j+n_2 {; Sylvie Gallet [101324,3444], 1997
         ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
   p0 = p3 - 1, odev = iter = wait = 0
   z = cm = pixel * exp(-flip(imag(p1)) * 0.01745329252) / abs(real(p1))
   continue = 1 :
   IF (iter < 300)
      IF (wait == 0)
         z = z*z + cm, odev = odev == wait
         wait = |z| >= 16
      ENDIF
   ELSEIF (iter == 300)
      IF (wait == 0)
         odev = 0
      ENDIF
      z = pixel
   ELSE
      IF (odev)
         zp0 = z^p0, d = zp0 * p3, n = zp0 * z - 1
         z = -n/d + z, continue = |n| > 0.000001
      ELSE
         z = z*z + p2, continue = |z| < 16
      ENDIF
   ENDIF
   iter = iter + 1
   continue
  ;SOURCE: ifs196.frm
}
 
