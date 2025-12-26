Carr-183 {
  z=c=1/pixel:
  z=sqr(1.027*z) + flip(c)
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-184 {
  z=c=1/pixel:
  z=(sqr(z*1/pixel)) + c
  z=sqr(z) + c
  z=sqr(z) + c
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-185 {
  z=c=sqr(1/pixel):
  z=(sqr(z*1/pixel)) + c
  z=sin(z) + c
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-186 {
  z=c=1/pixel:
  z=(cotanh(z*pixel)) + c
  z=sin(z) + c
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-187 {
  z=c=1/pixel:
  z=c*sqr(1/z)
  z=z*z + c
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-188 {
  z=c=1/pixel:
  z=c*sqr(1/z)
  z=z*z*z + c
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-189 {
  z=c=1/pixel:
  z=c*sqr(1/z)
  z=sqr(sqr(z/pixel*z*z)) + c
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-190 {
  z=c=1/pixel/pixel:
  z=sqr(z) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-192 {
  z=c=1/pixel/pixel:
  z=sin(z) + c
  z=sqr(z) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-193 {
  z=c=1/pixel:
  z=z*z*z + (c-1)*z-c
  z=3*sqr(z) + c
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-194 {
  z=c=1/pixel:
  z=z*z*z/5 + sqr(z) + flip(c)
  |z| <=100
  ;SOURCE: carr.frm
}
 
Carr-195 {
  z=c=1/pixel:
  z=z*z*z/5 + sqr(z) + (-flip(c))
  |z| <=100 
  ;SOURCE: carr.frm
}
 
Carr-196 {
  z=c=1/pixel:
  z=c*(2*z*z-1)
  z=flip(z)
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-197 {
  z=c=1/pixel:
  z=sqr(z) + c/pixel/flip(c)
  z=sqr(z) + c/pixel/flip(c)
  z=sqr(z) + c/pixel/flip(c)
  z=sqr(z) + c/pixel/flip(c)
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-198 {
  z=c=1/pixel:
  z=sqr(z) + c
  z=flip(3*z*z)/flip((z+3)+c)
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-199 {
  z=c=1/pixel:
  z=sqr(z) + c
  z=((pixel)*z*z)/(z-1)+c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-200 {
  z=c=1/pixel:
  z=sqr(z) + c
  z=((1/pixel)*z*z)/(z-1) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-201 {
  z=c=pixel:
  z=sqr(z) + c
  z=((1/pixel)*z*z)/(z-1) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-202 {
  z=c=1/pixel:
  z=sqr(z) + c
  z=(1/pixel)*z*z/(z-0.5) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-203 {
  z=c=1/pixel:
  z=(sqr(z)+c)/(z-1)+c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-204 {
  z=c=pixel:
  z=(sqr(z)+c)/(z-1)+c
  |z| <=4
  ;SOURCE: carr.frm
}
 
