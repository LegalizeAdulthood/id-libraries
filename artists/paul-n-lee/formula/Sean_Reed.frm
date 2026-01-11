hflip {
   ; A little non-standard math-function
   ; produces chaotic bands like the
   ; conjugate function but the symmetry is now skew.
  z = pixel, zp=(0,0):
  temp = z
  z = z*z +  zp
  zp = flip(temp)
  |zp| <= 4
  ;SOURCE: noel.frm
}
