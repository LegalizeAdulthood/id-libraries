comment {

  These formulas work only under Fractint versions 19.5 and later.  They
  will NOT work under versions 19.4 and earlier.  They replace earlier
  formulas with the same names that ran under 19.4.

  The same formulas are also included in PHC.frm uploaded by Lee Skinner.

}

JD-SG-05 { ; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  ; use p1 and p2 to adjust the 2nd Mandel
  ; p1 = -1 (default)
  p1 = p1 * (p1!=0) - (p1==0)
  z = 0 , c = pixel * whitesq + (p1*pixel+p2) * (whitesq == 0) :
   z = z*z + c
    |z| < 4
 }

JD-SG-06 { ; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  z = flip(imag(p1)) * (whitesq == 0) + real(p1) * whitesq
  c = pixel :
   z = z*z + c
    |z| < 4
 }
