Q_Java {
   ; Any comments or question?
   ; E-Mail: Damion_P@Compuserve.com  -or- MDROCC@earthlink.net
  z = 0, c = pixel:
  z=z*z+c
  c=c+(p1/z)
  r=fn1(z)+ p2 + c
  q=fn2(z)+ p3 + c
  z=(r*(whitesq == 1)) + (q*(whitesq == 0))
  |z| <= 4
  ;SOURCE: pablo.frm
}
 
Sublime_2 {
   ; Any comments or question?
   ; E-Mail: Damion_P@Compuserve.com  -or- MDROCC@earthlink.net
  z = c = pixel, Root = 1: 
  z3 = z*z*z, z4 = z3*z
  r = (3.0*z4 + Root)/(4 * z3)+ p1
  q = (fn1(z) * fn2(z))+ c + p2
  z = (q * (whitesq == 0)) + (r * (whitesq == 1)) 
  (|z| < 4 && whitesq == 0) || (0.004 < |z4 - Root| && whitesq)
  ;SOURCE: pablo.frm
}
 
