001 (YAXIS) {
  z = pixel:
  z = z*z + pixel
  z = fn1(z) + p1
  ;SOURCE: damion.frm
}
 
002 (XYAXIS) {
  z = pixel:
  z = fn1(z-c) + z + p1
  z <= 100
  ;SOURCE: damion.frm
}
 
004 { 
  z = pixel:
  z = pixel + fn1(z)  + p1
  |z| <=100
  ;SOURCE: damion.frm
}
 
005 (XYAXIS) {
  z = rand = pixel:
  z = fn1(z) + pixel + p1
  z = z*z + z + p2
  ;SOURCE: damion.frm
}
 
010 {
  Z = PIXEL:
  Z = Z*Z*Z 
  Z = fn1(z) + fn2(c) + p1
  ;SOURCE: damion.frm
}
 
003 (XYAXIS) {
  z = pixel:
  z = fn2(z) + fn1(z) + p1
  z <= 4
  ;SOURCE: damion.frm
}
 
006 {
  z = pixel:
  z = fn1(z)*z + pixel + p1
  |z| <= 100
  ;SOURCE: damion.frm
}
 
007 {
  z = pixel:
  z = z*z + p1
  z = fn1(z) + pixel
  ;SOURCE: damion.frm
}
 
008 {
  z = pixel:
  z = z+z+z + p1
  z = cos(c) * cos(z)
  ;SOURCE: damion.frm
}
 
011 {
  z = pixel:
  z = fn1(z)*z + c + p1
  z = fn2(z)
  ;SOURCE: damion.frm
}
 
012 { 
  z = pixel:
  z = Sin(cos(z)) * Tan(cotan(z)) + p1
  z = pixel + z
  ;SOURCE: damion.frm
}
 
013 {
  z = pixel:
  z = cos(z) + p1
  z = conj(z) + flip(z)
  ;SOURCE: damion.frm
}
 
014 (PI_SYM) {
  z = pixel:
  z = z*z + fn1(c) + p1
  z = tan(z) + cotan(z)
  |z| <= 32
  ;SOURCE: damion.frm
}
 
015 (XYAXIS) {
  z = pixel:
  z = fn1(z+c) * (z-c) + atan(z) 
  z = Cos(z) + pixel  + p1
  |z| <=128
  ;SOURCE: damion.frm
}
 
020 (XYAXIS) {
  z = pixel:
  z = z*c + Cos(z)*z
  z = z*z*z - pixel + p1
  ;SOURCE: damion.frm
}
 
022 {
  z = pixel:
  z = z * fn1(z) + pixel + p1
  z = Tan(z) + Cos(z)
  ;SOURCE: damion.frm
}
 
024 {
  z = pixel:
  a = fn1(z) + cos(z) + pixel + p1
  z = sin(a) + sqr(z*a)
  ;SOURCE: damion.frm
}
 
025 {
  z = pixel:
  a = z*z + pixel + cos(tan(z))
  z = a + a + pixel
  z = z*a + p1
  ;SOURCE: damion.frm
}
 
Fish (xaxis) {; Dave Oliver   >INTERNET:D.E.Oliver@soton.ac.uk
  z=pixel:    ; initialize z to coordinates at pixel
  z=((pixel^z)-1)*(pixel^(z-1)) ; the "^" means complex exponentiation
  |z|<=4      ; escape radius is 2 (|z| is sqr(x)+sqr(y))
  ;SOURCE: fish.frm
}
 
1301 {
  z = 1/pixel:
  z = fn1(z/pixel) * fn2(pixel)
  z = z^p2 + fn1 (c-p1)
  |z| <= p2
  ;SOURCE: kg13.frm
}
 
