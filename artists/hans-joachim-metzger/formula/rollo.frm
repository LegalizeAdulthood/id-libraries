Rollo_1 {
   ; These formulae, except Rollo_3, are PHC variations on Noel Giffins
   ; formulae. The formulae used can be found in Noel.frm
  z = pixel, zp = p1
  a = (whitesq == 1), b = (whitesq == 0):
  temp = z
  r = 1 - fn1(z) - zp
  q = z^.5 - zp
  zp = temp
  z = (q * a) + (r * b)
  |zp| <= 4
  ;SOURCE: rollo.frm
}
 
Rollo_2 {
   ; These formulae, except Rollo_3, are PHC variations on Noel Giffins
   ; formulae. The formulae used can be found in Noel.frm
  z = pixel, zp = p1
  a = (whitesq == 1), b = (whitesq == 0):
  temp = z
  r = z*z - zp
  q = z^3 + zp
  zp = temp
  z = (q * a) + (r * b)
  |zp| <= 4
  ;SOURCE: rollo.frm
}
 
Rollo_3 {
   ; These formulae, except Rollo_3, are PHC variations on Noel Giffins
   ; formulae. The formulae used can be found in Noel.frm
  z = pixel, c1 = p1, c2 = p2
  a = (whitesq == 1), b = (whitesq == 0):
  r = c1 * fn1(z)
  q = fn2(z*z) + c2
  z = (q * a) + (r * b)
  |z| <= 4
  ;SOURCE: rollo.frm
}
 
Rollo_4 {
   ; These formulae, except Rollo_3, are PHC variations on Noel Giffins
   ; formulae. The formulae used can be found in Noel.frm
  z = pixel, zp = (0,0), huge = 1.0e32
  a = (whitesq == 1), b = (whitesq == 0):
  temp = z
  r = fn1(z*z) - zp
  q = fn2(z*z) + zp
  zp = p1/conj(temp)
  z = (q * a) + (r * b)
  (|zp| <= 64) && (|z| <= huge)
  ;SOURCE: rollo.frm
}
 
Rollo_5 {
   ; These formulae, except Rollo_3, are PHC variations on Noel Giffins
   ; formulae. The formulae used can be found in Noel.frm
  z = pixel, zp = p1
  a = (whitesq == 1), b = (whitesq == 0):
  temp = z
  r =  - fn1(z) - zp
  q =  fn2(z) - zp
  zp = temp
  z = (q * a) + (r * b)
  |zp| <= 4 
  ;SOURCE: rollo.frm
}
 
Rollo_7 {
   ; These formulae, except Rollo_3, are PHC variations on Noel Giffins
   ; formulae. The formulae used can be found in Noel.frm
  z = pixel, zp = p2
  a = (whitesq == 1), b = (whitesq == 0):
  temp = z 
  r = fn1(z)^e + zp 
  q = fn2(z)^pi + zp 
  zp = temp
  z = (q * a) + (r * b)
  |zp| <= 4 
  ;SOURCE: rollo.frm
}
 
Rollo_6 {
   ; These formulae, except Rollo_3, are PHC variations on Noel Giffins
   ; formulae. The formulae used can be found in Noel.frm
  z = pixel, zp = p1
  a = (whitesq == 1), b = (whitesq == 0):
  temp = z 
  r = fn1(z)^5 + zp 
  q = fn2(z)^5 + zp 
  zp = temp
  z = (q * a) + (r * b)
  |zp| <= 4 
  ;SOURCE: rollo.frm
}
 
