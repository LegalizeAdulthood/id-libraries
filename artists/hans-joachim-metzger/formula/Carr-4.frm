Carr-145 {
  z=c=sinh(pixel)/(1/pixel):
  z=c^z
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-147 {
  z=c=1/pixel:
  z=(flip(z*z)) + c
  z=(flip(z*z)) + c
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-149 {
  z=c=1/pixel:
  z=sqr(flip(z*z*z)) + c
  z=sqr(flip(z*z*z)) + c
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-150 {
  z=c=1/pixel:
  z=sqr(flip(z*z*z)) + c
  z=sin(flip(z*z*z)) + c
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-151 {; Dr. Chaosbrot 1 Modified
  z=c=pixel:
  z=sqr(z*z) + (((sqrt(5)+1)/2)+c)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-152 {
  z=c=1/pixel:
  z=cosxx(flip(z*z/pixel)) + (((sqrt(5)+1)/2) + c)
  z=sqr(flip(z))+c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-153 {
  z=c=1/pixel:
  z=tanh(z*z/pixel)+(((sqrt(5)+1)/2)+c)
  z=sqr(flip(z))+c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-154 {
  z=c=1/pixel:
  z=sqr(flip(z)) + c
  z=sqr(flip(z)) + c
  z=sqr(z) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-155 {
  z=c=1/pixel:
  z=sqr(flip(z)) + c
  z=sqr(flip(z)) + c
  z=sqr(z*z) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-156 {
  z=c=pixel:
  z=sqr(flip(z)) + c
  z=sqr(flip(z)) + c
  z=sqr(z*z) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-157 {
  z=c=pixel:
  z=sqr(flip(z*z)) + c
  z=sqr(flip(z*z)) + c
  z=sqr(z*z) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-158 {
  z=c=1/pixel:
  z=sqr(flip(z)) + c/pixel
  z=sqr(flip(z)) + c/pixel
  z=sqr(z*z*z) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-159 {
  z=c=1/sqr(pixel):
  z=sqr(z) + c
  z=sin(z) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-160 {
  z=c=sqr(pixel):
  z=sqr(z) + c
  z=sin(z) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-161 {
  z=c=sqr(pixel):
  z=sqr(z*z) + c
  z=sin(z*z) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-162 {
  z=c=sqr(1/pixel):
  z=sqr(z*z) + c
  z=sin(z*z) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-163 {
  z=c=sin(1/pixel):
  z=sqr(z*z) + c
  z=sin(z*z) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-164 {
  z=c=sin(pixel):
  z=sqr(z*z) + c
  z=sin(z*z) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-165 {
  z=c=sin(pixel):
  z=sqr(z*z) + c
  z=sin(z*z) + c
  z=sqr(1/z*1/z) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
