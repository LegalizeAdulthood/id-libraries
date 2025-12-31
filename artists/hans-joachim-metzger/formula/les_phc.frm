LesPHCfrm01 {; Les St Clair [101461,2032], 1996  Requires passes=1
   ; Modified Vincent D. Presogna formula (Block_4.fmr)
   ; Amalgamated with manjul_lace.frm by George Martin to enable PHC
  z = whitesq * 1.5*pixel + (whitesq==0) * pixel
  c = whitesq * 1.5*pixel + (whitesq==0) * (-.75, .1234567):
  r = tan(1/z) + p1
  q = floor(z) - p2 * ceil(c) - p1
  z = fn1(z) * r * q
  round(z) < 4
  ;SOURCE: phc.frm
}

