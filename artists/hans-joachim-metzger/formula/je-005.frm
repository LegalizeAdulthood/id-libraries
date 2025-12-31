jenn062 {; Arno Jennen
  y=cotan(1/(1/pixel))
  z=y-sin(cabs(pixel*0.5)):
  z=|(fn1(z*10)+(pixel/4))|+sqr(z)
  |z|<=4
  ;SOURCE: je-005.frm
}

jenn063 {; Arno Jennen
  x=exp(pixel), y=cotan(1/(1/x/pixel))
  z=y-sin(cabs((pixel*0.5)+x)):
  yz=(z/2)+fn1(x)
  z=|(exp(z*10)+(pixel/4))|+sqr(yz)
  |z|<=4
  ;SOURCE: je-005.frm
}

jenn064 {; Arno Jennen
  c=p1
  d=0.5
  z=pixel*(pixel+d):
  z=((z^3+z^2+z)^2)+c
  |z|<=4
  ;SOURCE: je-005.frm
}

jenn065 {; Arno Jennen
  c=pixel*pixel*p1
  d=0.5^pixel
  z=pixel*(pixel+d):
  z=((z^3+z^2+z)^2)+c
  |z|<=4
  ;SOURCE: je-005.frm
}

jenn066 {; Arno Jennen
  z1=fn1(fn2((pixel)+p1))
  z2=(z1^2)+z1
  z3=z2^2
  z=cotan(z1+z2+z3):
  z=cosh((z*(1,-1)))+(pixel^3)
  |z|<=4
  ;SOURCE: je-005.frm
}

