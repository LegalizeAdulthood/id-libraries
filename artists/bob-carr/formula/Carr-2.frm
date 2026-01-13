Carr-79 {
  c=z=pixel:
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
Carr-84 {
  z=c=1/pixel:
  z=sin(z*z) + ((tanh(1/pixel))/(0.33/c))
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
Carr-86 {
  z=c=pixel:
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
Carr-89 {
  z=c=pixel:
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
Carr-91 {
  z=c=1/pixel:
  z=sqr(z) + sqr(c-6)
  z=sin(z*z) + sqr(c-3)
  z=sqr(z) + sqr(c-2)
  |z| <=4
  ;SOURCE: carr-2.frm
}
Carr-92 {
  z=c=1/pixel:
  z=sqr(z) + sqr(c)
  z=sqr(z) + sin(c)
  z=sqr(z) + sin(c)
  |z| <=4
  ;SOURCE: carr.frm
}
Carr-93 {
  z=c=1/pixel:
  z=sqr(z) + sqr(c*c)
  z=sqr(z) + sin(c)
  z=sqr(z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr-2.frm
}
Carr-94 {
  z=c=1/pixel:
  z=sqr(z*z) + sqr(c*c)
  z=sqr(z) + sin(c)
  z=sqr(z*z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr-2.frm
}
Carr-95 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c*c)
  z=sqr(z) + sin(c)
  z=sqr(z*z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr.frm
}
Carr-96 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c*c)
  z=sqr(z) + sin(c^pixel)
  z=sqr(z*z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr.frm
}
Carr-97 {
  z=c=1/pixel:
  z=sqr(z*z) + sqr(c*c)
  z=sqr(z*z) + sin(c^pixel)
  z=sqr(z*z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr-2.frm
}
Carr-98 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c*c)
  z=sqr(z*z) + sin(c^pixel)
  z=sqr(z*z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr.frm
}
Carr-99 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c*c)
  z=sqr(z*z) + sin(c^pixel)
  z=sqr(z*z) + sin(c^pixel)
  |z| <=4
  ;SOURCE: carr.frm
}
Carr-100 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c^c)
  z=sqr(z*z) + sin(c^pixel)
  z=sqr(z*z) + sin(c^pixel)
  |z| <=4
  ;SOURCE: carr.frm
}
Carr-101 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c^c)
  z=sin(z*z) + sin(c^pixel)
  z=sqr(z*z) + sin(c^pixel)
  |z| <=4
  ;SOURCE: carr.frm
}
Carr-102 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c*pixel)
  z=sin(z*z) + sin(c^pixel)
  z=sqr(z*z) + sin(c^pixel)
  |z| <=4
  ;SOURCE: carr.frm
}
Carr-103 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c^pixel)
  z=sin(z*z) + flip(sin(c^pixel))
  z=sqr(z*z) + sin(c^pixel)
  |z| <=4
  ;SOURCE: carr.frm
}
Carr-104 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c^pixel)
  z=sin(z*z*z) + flip(sin(c^pixel))
  z=sqr(z*z*z) + sin(c^pixel)
  |z| <=4
  ;SOURCE: carr.frm
}
Carr-105 {
  z=c=pixel:
  z=sqr(z) + sqr(c*c)
  z=sin(z) + sin(c)
  z=sqr(z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr.frm
}
Carr-106 {
  z=c=pixel:
  z=sqr(z) + sqr(c*c)
  z=sin(z) + flip(sin(c))
  z=sqr(z) + flip(c*c)
  |z| <=4
  ;SOURCE: carr.frm
}
Carr-107 {
  z=c=pixel:
  z=sqr(z*z) + (c*c)
  z=sin(z*z) + sin(c)
  z=sin(z*z) + sin(c)
  |z| <=4
  ;SOURCE: carr-2.frm
}
Carr-108 {
  z=c=pixel:
  z=sqr(z*z) + (c*c)
  z=sin(z*z) + sin(c)
  z=sin(z*(1/z)) + sin(c*c)
  |z| <=4
  ;SOURCE: carr.frm
}
Carr-109 {
  z=c=pixel:
  z=sqr(z*z) + (c*c)
  z=sin(z*z) + sin(c*c)
  z=sin(z*(1/z)) + tanh(c*c)
  |z| <=4
  ;SOURCE: carr-2.frm
}
Carr-110 {
  z=c=pixel:
  z=sqr(z*z) + (c*c)
  z=sin(z*z) + sin(c*c)
  z=sin(z*(1/z)) + cotanh(c*c)
  |z| <=4
  ;SOURCE: carr.frm
}
Carr-70 {
  c=z=1/pixel:
  z=sin(z*z)/0.99 + 0.33
  |z| <=4
  ;SOURCE: carr-1.frm
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
Carr-76 {
  c=z=pixel:
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
