Astral {
  z = c = pixel: 
  r = round(fn1(z) + p1)
  z = (r*1/z)^fn2(c)  
  |z| < 4
  ;SOURCE: astral.frm
}
 
Astral_2 {
  z = c = pixel: 
  r = fn1(round(z) + p1)
  z = (r*1/z)^fn2(c)  
  |z| < 4
  ;SOURCE: astral.frm
}
 
D_Newt {
  z = pixel:
  n = z^3 - 1  + p1
  d = 3*fn2(z) + p2
  z = fn1(z) - n/d
  |n| >= 0.000001 
  ;SOURCE: astral.frm
}
 
Mnemonics {
  z = c = pixel:
  r = fn1(z) + p1
  q = atan(cos(z))/tan(sin(z)) + c
  z = r * fn2(1/z * q) 
  |z| < 4
  ;SOURCE: astral.frm
}
 
