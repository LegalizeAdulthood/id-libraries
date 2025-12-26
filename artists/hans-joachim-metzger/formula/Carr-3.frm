Carr-84 {
  z=c=1/pixel:
  z=sin(z*z) + ((tanh(1/pixel))/(0.33/c))
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-111 {
  z=c=1/pixel:
  z=sqr(z*z) + c
  z=sin(z*z) + sin(c*c)
  z=sin(z*(1/z)) + (sqr(c + pixel))
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-71 {
  c=z=1/pixel:
  z=sin(z*z) + c
  z=sin(z*z)/0.99 + c
  z=sin(z*z*z) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-72 {
  c=z=1/pixel:
  z=sinh(z*z) + c
  z=sinh(z*z) + c
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-73 {
  c=z=1/pixel:
  z=sqr(z*z) + c
  z=sqr(z*z^z) - c
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-74 {
  c=z=1/pixel:
  z=(3.334/sin(z*z)) + (c/pixel)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-75 {
  c=z=(1/pixel):
  z=(sin(z*z)) + ((sin(c-0.33))/pixel)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-77 {
  c=z=(1/pixel):
  z=(sin(z*z)) + ((sin(c-5.9))/pixel)
  z=sqr(z) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-78 {
  c=z=(1/pixel):
  z=(sin(z*z)) + ((sin(c+8.9))/pixel)
  z=sqr(z) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-80 {
  c=z=(1/pixel):
  z=(sin(z*z)) + ((sin(c+8.9))/pixel)
  z=sqr(z) + (c-1)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-81 {
  c=z=(1/pixel):
  z=(sin(z*z)) + ((sin(c+8.9))/pixel)
  z=(sin(z*z)) + c
  |Z| <=4
  ;SOURCE: carr.frm
}
 
Carr-82 {
  z=c=1/pixel:
  z=sin(z*z) + (conj(1/pixel))
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-83 {
  z=c=1/pixel:
  z=sin(z*z) + (conj(1/pixel))/(0.33/c)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-85 {
  z=c=1/pixel:
  z=sqr(z) + c
  z=sqr(z) + conj(c)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-87 {
  z=c=1/pixel:
  z=sqr(z) + c
  z=sin(z) + c
  z=sqr(z) + conj(c)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-88 {
  z=c=1/pixel:
  z=sqr(z) + sqr(c)
  z=sin(z*z) + sqr(c)
  z=sqr(z) + sqr(c)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-90 {
  z=c=1/pixel:
  z=sqr(z) + sqr(c-5)
  z=sin(z*z) + sqr(c-2)
  z=sqr(z) + sqr(c-0.67)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-92 {
  z=c=1/pixel:
  z=sqr(z) + sqr(c)
  z=sqr(z) + sin(c)
  z=sqr(z) + sin(c)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-166 {
  z=c=sin(1/pixel):
  z=sqr(z*z) + c
  z=sin(z*z) + c
  z=sqr(1/z*1/z) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-167 {
  z=c=sqr(1/pixel):
  z=sqr(z*z) + c
  z=sin(z*z) + c
  z=sqr(1/z*1/z) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-168 {
  z=c=sqr(1/pixel):
  z=sin(z*z) + c
  z=sin(z*z) + c
  z=sin(1/z*1/z) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-169 {
  z=c=1/pixel:
  z=sqr(z) + c
  z=sin(z) + c
  |z| <1000
  ;SOURCE: carr.frm
}
 
Carr-170 {
  z=c=f=sqr(1/pixel):
  z=sqr(z) + f
  |z| <=50
  ;SOURCE: carr.frm
}
 
Carr-171 {
  z=c=f=sqr(pixel):
  z=sqr(z) + f
  |z| <=50
  ;SOURCE: carr.frm
}
 
Carr-172 {
  z=c=f=sqr(1/pixel):
  z=sin(z) + f
  z=sqr(z) + c
  |z| <=50
  ;SOURCE: carr.frm
}
 
Carr-173 {
  z=c=f=y=sqr(1/pixel):
  z=sin(z) + c
  |z| <=50
  ;SOURCE: carr.frm
}
 
Carr-174 {
  z=y=sqr(1/pixel):
  z=sqr(z) + y*y
  |z| <=50
  ;SOURCE: carr.frm
}
 
Carr-175 {
  z=y=sqr(1/pixel):
  z=sqr(y) + (z*z*z) + 1/pixel
  |z| <=50
  ;SOURCE: carr.frm
}
 
Carr-176 {
  z=c=sqr(1/pixel):
  z=cosxx(z) + c
  z=sqr(z) + c
  z=sqr(z) + c
  z=sqr(z) + c
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-177 {
  z=c=flip(1/pixel):
  z=sin(z*z) + c
  z=sqr(z*z) + c
  z=sin(z) + c
  z=sqr(z) + c
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-178 {; Revised for Fractint v. 20 by George Martin 10/98
  z=c=flip(1/pixel):
  z=sqr(z*z) + c
  z=sqr(z) + c
  z=sin(z*z) + c
  z = c   ; z=sqr(z*z) = c
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-179 {
  z=c=1/pixel:
  z=sqr(z*z) + (c+0.424)
  z=sqr(z) + (c+0.324)
  z=sin(z*z) + c
  z=sqr(z*z) + c
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-180 {
  z=c=flip(1/pixel):
  z=sqr(z*z) + c
  z=sqr(z) + (c-0.224)
  z=sin(z*z) + (c+0.124)
  z=sqr(z*z) + (c-0.024)
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-181 {
  z=c=flip(sqr(1/pixel)):
  z=sqr(z*z) + c
  z=sqr(z) + (c-0.224)
  z=sin(z*z) + (c+0.124)
  z=sqr(z*z) + (c-0.024)
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-182 {
  z=c=1/pixel:
  z=sqr(z) + flip(c)
  |z| <=10
  ;SOURCE: carr.frm
}
 
