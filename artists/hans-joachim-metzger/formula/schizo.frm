Frantic {
  z = c = pixel + p1
  bail = round(|z|):
  r = z * (1/fn1(z)) + p2
  z = fn2(r) * z + c 
  bail <= 4
  ;SOURCE: schizo.frm
}
 
Psyche {
  z = c = pixel
  bail = floor(|z|):
  r = z * (1/fn1(z)) + p1
  z = r * fn2(z) + c
  bail <= 4
  ;SOURCE: schizo.frm
}
 
Schizo {
  z = c = pixel:
  r = z * (1/fn1(z)) + p1
  z = fn2(r) * z + c 
  round(z) <= 4
  ;SOURCE: schizo.frm
}
 
Frantic_2 {
  z = c = pixel + p1:
  r = z * (1/fn1(z)) + p2
  z = fn2(r) * z + c 
  round(|Z|) <= 4
  ;SOURCE: schizo_2.frm
}
 
Frantic_2 {
  z = c = pixel + p1:
  r = z * (1/fn1(z)) + p2
  z = fn2(r) * z + c 
  round(|Z|) <= 4
  ;SOURCE: schizo_2.frm
}
 
Psyche_2 {
  z = c = pixel:
  r = z * (1/fn1(z)) + p1
  z = r * fn2(z) + c
  floor(|Z|) <= 4
  ;SOURCE: schizo_2.frm
}
 
