OMEN (XAXIS) {
  Z = PIXEL:
  Z = FN1(Z) + P1
  Z = (Z*Z + P1 - 1 / 2*Z + P1 -2)^2
  Z < 4
  ;SOURCE: the_omen.frm
}
 
OMEN_2 (XAXIS) {
  Z = PIXEL:
  Z = FN1(Z) + P1 
  Z = (Z*Z*Z+3*Z-1*Z+Z-1*Z-2 / 2*Z*Z+3*Z-2*Z+Z*Z-3*Z+3)^2
  ;SOURCE: the_omen.frm
}
 
OMEN_3 {
  Z = PIXEL:
  Z = COSH(Z) + (Z - PIXEL)  
  Z = (Z*Z + P1 - 1 / 2*Z + P1 -2) 
  Z = SQR(SIN(Z)) / SQRT(Z)
  |Z| < 4
  ;SOURCE: the_omen.frm
}
 
OMEN_4 {
  Z = PIXEL:
  Z = Z + Z + P1
  Z = (Z*Z*Z+3*Z-1*Z+Z-1*Z-2 / 2*Z*Z+3*Z-2*Z+Z*Z-3*Z+3)^2
  Z = FN1(Z*Z)/SQRT(Z*Z)
  Z < 4
  ;SOURCE: the_omen.frm
}
 
OMEN_5 {
  Z = PIXEL:
  Z = Z * Z + P1
  Z = (Z*Z+3*Z-1*Z+Z-2) - (Z*Z+3*Z-2*Z-3)^2
  Z = FN1(Z) + (PIXEL/3)    
  |Z| < 8
  ;SOURCE: the_omen.frm
}
 
OMEN_6 {
  Z = PIXEL:
  Z = Z * SIN(PIXEL) + P1
  Z = ((Z*Z+3*Z-1*Z+Z-2) - (Z*Z+3*Z-2*Z-3))^2
  Z = (FN1(Z) + SQRT(PIXEL) + PIXEL)    
  |Z| < 4
  ;SOURCE: the_omen.frm
}
 
