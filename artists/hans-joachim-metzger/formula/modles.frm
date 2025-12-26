BJ-Lesfrm13-001 {; Modified Les St Clair formula "Lesfrm13" 
  z = pixel 
  x = fn1(z), y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi 
  z = fn4(fn3(x)/y)
  |z| <= 4
  ;SOURCE: 96msg.frm
}
 
BJ-Lesfrm13-001 {; Modified Les St Clair formula "Lesfrm13" 
  z = pixel 
  x = fn1(z), y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi 
  z = fn4(fn3(x)/y)
  |z| <= 4
  ;SOURCE: 96msg.frm
}
 
BJ-Lesfrm13-002 {; Modified Les St Clair formula "Lesfrm13" 
  z = pixel 
  x = fn1(z), y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi 
  z = fn4(x/fn3(y))
  |z| <= 4
  ;SOURCE: 96msg.frm
}
 
BJ-Lesfrm13-002 {; Modified Les St Clair formula "Lesfrm13" 
  z = pixel 
  x = fn1(z), y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi 
  z = fn4(x/fn3(y))
  |z| <= 4
  ;SOURCE: 96msg.frm
}
 
BJ-Lesfrm13-003 {; Les St Clair, 1996
  z = pixel 
  x = fn1(z*z), y = fn2(z*z):
  x = x*p1*pi
  y = y*p2*pi 
  z = x/y
  |z| <= 4
  ;SOURCE: modles13.frm
}
 
BJ-Lesfrm13-003 {; Les St Clair, 1996
  z = pixel 
  x = fn1(z*z), y = fn2(z*z):
  x = x*p1*pi
  y = y*p2*pi 
  z = x/y
  |z| <= 4
  ;SOURCE: modles13.frm
}
 
BJ-Lesfrm13-004 {; Les St Clair, 1996
  z = pixel 
  x = fn1(z*z), y = fn2(z*z):
  x = fn3(x)*p1*pi
  y = fn4(y)*p2*pi 
  z = x/y
  |z| <= 4
  ;SOURCE: modles13.frm
}
 
BJ-Lesfrm13-005 {; Les St Clair, 1996
  z = pixel 
  x = fn1(z), y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi 
  z = fn3(x/y)/fn4(z)
  |z| <= 4
  ;SOURCE: modles13.frm
}
 
BJ-Lesfrm13-005 {; Les St Clair, 1996
  z = pixel 
  x = fn1(z), y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi 
  z = fn3(x/y)/fn4(z)
  |z| <= 4
  ;SOURCE: modles13.frm
}
 
BJ-Lesfrm13-006 {; Les St Clair, 1996
  z = pixel 
  x = fn1(z), y = fn2(z):
  x = fn3(z*x)*p1*pi
  y = fn4(z*y)*p2*pi 
  z = x/y
  |z| <= 4
  ;SOURCE: modles13.frm
}
 
BJ-Lesfrm13-007 {; Les St Clair, 1996
  z = pixel, c = z*pixel 
  x = fn1(z), y = fn2(z):
  x = x*p1*pi-c
  y = y*p2*pi-c 
  z = x/y
  |z| <= 4
  ;SOURCE: modles13.frm
}
 
BJ-Lesfrm13-007 {; Les St Clair, 1996
  z = pixel, c = z*pixel 
  x = fn1(z), y = fn2(z):
  x = x*p1*pi-c
  y = y*p2*pi-c 
  z = x/y
  |z| <= 4
  ;SOURCE: modles13.frm
}
 
BJ-Lesfrm13-008 {; Les St Clair, 1996
  z = pixel 
  x1 = fn1(z), y1 = fn2(z)
  x2 = fn3(z*z), y2 = fn4(z*z):
  x1 = x1*p1*pi
  y1 = y1*p2*pi 
  z = x1*x2/y1*y2
  |z| <= 4
  ;SOURCE: modles13.frm
}
 
BJ-Lesfrm13-008 {; Les St Clair, 1996
  z = pixel 
  x1 = fn1(z), y1 = fn2(z)
  x2 = fn3(z*z), y2 = fn4(z*z):
  x1 = x1*p1*pi
  y1 = y1*p2*pi 
  z = x1*x2/y1*y2
  |z| <= 4
  ;SOURCE: modles13.frm
}
 
BJ-Lesfrm13-012 {; Les St Clair, 1996
  z = pixel, c=(-0.7456,-.0186) 
  x = fn1(z), y = fn2(z):
  c=sin(conj(-0.81256,-0.1295))
  x = x*p1*pi-c
  y = y*p2*pi-c 
  z = x/y
  |z| <= 4
  ;SOURCE: modles13.frm
}
 
