jenn050 {; Arno Jennen
  z=fn1(pixel+0.05):
  z=sqr(flip(z)+(sqr(pixel)))
  |z|<=4
  ;SOURCE: je-003.frm
}
 
jenn051 {; Arno Jennen
  a=pixel+(0.5,1)
  z=sin(pixel+(cosh(1/a))):
  z=sqr(exp(z)+(fn1(pixel)))
  |z|<=10
  ;SOURCE: je-003.frm
}
 
jenn052 {; Arno Jennen
  z=sin(pixel+0.05):
  z=sqr(fn1(z)+(sqr(pixel)))
  |z|<=4-(sin(z))
  ;SOURCE: je-003.frm
}
 
jenn053 {; Arno Jennen
  z=pixel+(((4,2)-pixel)/(10,8)):
  z=fn1(z^(1.2,0.1))+pixel
  |z|<=4
  ;SOURCE: je-003.frm
}
 
jenn054 {; Arno Jennen
  z=sin(pixel+0.05):
  z=fn1(sin(z)/p1)
  |z|<=4-(sin(z))
  ;SOURCE: je-003.frm
}
 
jenn055 {; Arno Jennen
  z=pixel:
  z=sqr(z)+(log(pixel)*p1)
  z=(z+(cosh(z)))*(z^(fn1(z)))
  |z|<=4
  ;SOURCE: je-003.frm
}
 
jenn056 {; Arno Jennen
  z=pixel
  z1=(pixel/p1)+pixel:
  a=sin(z-1)*(pixel-1)
  z=fn1(a)+pixel
  z=z1=sin(z)
  |z|<=15
  ;SOURCE: je-003.frm
}
 
