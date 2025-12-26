jenn057 {; Arno Jennen
  z=pixel
  test=(p1*p2)/pixel:
  z=fn1(sqr(z)+pixel)-test
  |z|<=4
  ;SOURCE: je-004.frm
}
 
jenn058 {; Arno Jennen
  x=sin(pixel)
  z=log(p1/pixel):
  z=x-(cotan(1/sin((x/z))))
  z=1-((exp(z)))*(x/2)*(fn1(z))
  |z|<=4
  ;SOURCE: je-004.frm
}
 
jenn059 {; Arno Jennen
  x=(sin(1/2/sin(pixel-tan(pixel/0.33))))+(pixel/(1/2/pixel))
  y=fn1(x)
  z=(x-pixel)*(pixel<(1/2/pixel)):
  z=(p1+(fn1(x)/sqr(z)/sqr(y)))*x
  |z|<=4
  ;SOURCE: je-004.frm
}
 
jenn060 {; Arno Jennen
  z=pixel^(1-pixel):
  za=fn1(z*(|fn2(z)*pixel+(fn3(e^4.8))|*0.015625*0.25))
  zb=sqr(sqr(za)*(za+za+za)*(za/z/za/z))
  zc=1-((cos(z)))*(x+p1)+(cos(z*p2))
  zd=zc<|(za-zc)|+(zb-zc)
  ze=za+zb, zf=zc+zd
  z=(za*ze*zc*zd)+(za+zb)+(zc*zf)
  |z|>4
  ;SOURCE: je-004.frm
}
 
jenn061 {; Arno Jennen
  a=(0.25,1)*(log(pixel)^e)
  b=(0.25,1)*(log(a)^e)
  z=pixel-(a/b):
  z=sqr(z)+pixel
  z=z=sin(z)
  |z|<=4
  ;SOURCE: je-004.frm
}
 
