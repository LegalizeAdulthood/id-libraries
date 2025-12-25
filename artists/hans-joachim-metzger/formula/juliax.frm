test {; Edited for Fractint v. 20 by George Martin, 10/98
      ; The error in the formula as originally written rendered 
      ; it trivial. This is what the author intended.
  z=pixel, c=p1:
  z = z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / (16 * (z+c))
  |z| < 100
  ;SOURCE: tchebych.frm
}
 
