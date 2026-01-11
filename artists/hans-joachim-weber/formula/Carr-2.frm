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

Carr-110 {
  z=c=pixel:
  z=sqr(z*z) + (c*c)
  z=sin(z*z) + sin(c*c)
  z=sin(z*(1/z)) + cotanh(c*c)
  |z| <=4
  ;SOURCE: carr.frm
}

Carr-76 {
  c=z=pixel:
  z=(sin(z*z)) + ((sin(c-0.33))/pixel)
  |z| <=4
  ;SOURCE: carr.frm
}

Carr-79 {
  c=z=pixel:
  z=(sin(z*z)) + ((sin(c+8.9))/pixel)
  z=sqr(z) + c
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

Carr-89 {
  z=c=pixel:
  z=sqr(z) + sqr(c)
  z=sin(z*z) + sqr(c)
  z=sqr(z) + sqr(c)
  |z| <=4
  ;SOURCE: carr.frm
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

