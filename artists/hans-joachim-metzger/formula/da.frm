DAFRM01 {;  Don Archer, 1993
  z = pixel :
  z = z ^ (z - 1) * (fn1(z) + pixel)
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
DAFRM01 {;  Don Archer, 1993
  z = pixel :
  z = z ^ (z - 1) * (fn1(z) + pixel)
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
DAFRM02 {  
  z = pixel :
  z = (z ^ (z - 1) + 7/11) * (fn1(z) + pixel)
  |z| <= 4
  ;SOURCE: form1.frm
}
 
DAFRM03 { 
  z = pixel :
  z = z * z^ (1 - z) * fn1(z) + pixel
  |z| < 4
  ;SOURCE: form1.frm
}
 
DAFRM03 { 
  z = pixel :
  z = z * z^ (1 - z) * fn1(z) + pixel
  |z| < 4
  ;SOURCE: form1.frm
}
 
DAFRM04 {
  z = pixel, c = p1 :
  z = z ^ (z - 1) * fn1(z) + pixel
  c = c + p2
  |z| <= 4
  ;SOURCE: form1.frm
}
 
DAFRM05 {;  M_TchebychevT3
  c = P1, z = Pixel:
  z = c*z*(4*z*z-3)
  |z|<100
  ;SOURCE: form1.frm
}
 
