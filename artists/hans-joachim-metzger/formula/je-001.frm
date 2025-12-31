jenn014 {; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(z)
  |(z^1.12)|<=(a*1.75)
  ;SOURCE: je-001.frm
}

jenn015 {; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(sin(z+10))
  |(z^(z+1.12))|<=(a*1.75)
  ;SOURCE: je-001.frm
}

jenn016 {; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=pixel+log(pixel-a):
  z=(log(z+21))+sin(sin(z+10))
  |(z/(z+1.12))|<=(a*1.75)+(z*a)
  ;SOURCE: je-001.frm
}

jenn017 {; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=exp(pixel^1.1)+log(pixel-(a^2)):
  z=(log(z+21))+sin(sin(z+10))
  |(z/(z+1.12))|<=(a*1.75)+(z*a)
  ;SOURCE: je-001.frm
}

jenn018 {; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(z)
  |(z^1.12)|<=(a*1.75)
  ;SOURCE: je-001.frm
}

jenn019 {; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(z)
  |(z^(1-a))|<=(a*1.75)
  ;SOURCE: je-001.frm
}

jenn020 {; Arno Jennen
         ; Revised for Fractint v20 by G. Martin
  a=(sin(|pixel-1.25|))<pixel
  z=(pixel)+sqr(pixel-a):
  z=flip(z)
  |(z^(1-a))|<=(a*1.75)
  ;SOURCE: je-001.frm
}

jenn021 {; Arno Jennen
  a=(cotanh(pixel-6.47)+|tanh(pixel)|)/pixel
  z=sin(pixel+a)+exp(pixel-a):
  z=(cosxx(z+51))+flip(z)+sin(z)
  |(z^1.15)|<=(a*4.33)
  ;SOURCE: je-001.frm
}

jenn022 {; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=(pixel+8.76)-(cos(pixel*7.79))
  z=pixel+cotan(pixel-a):
  z=(cosxx(z+82))+sin(z)
  |(z^(1-a))|<=(a*1.75)
  ;SOURCE: je-001.frm
}

jenn023 {; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=(pixel+0.44)-(log(pixel*6.59))
  z=pixel+cotan(pixel-a):
  z=(cos(z+55))+sin(z)
  |(z^(1-a))|<=(a*1.15)
  ;SOURCE: je-001.frm
}

jenn024 {; Arno Jennen
  z=(pixel/(|pixel+9.95|)):
  a1=pixel+cosxx(z)
  a2=(a1+0.20)/pixel
  z=(|z+pixel|)/(a1+a2)+sin(a2)
  |(z^(9.20-a1))|<=z
  ;SOURCE: je-001.frm
}

jenn025 {; Arno Jennen
  a=fn1(pixel-1)
  z=(a/p1)^(pixel*p2):
  z=fn2(z-1)+fn3(a^(z-p3))
  |z|<200
  ;SOURCE: je-001.frm
}

jenn026 {; Arno Jennen
  z=|pixel|-pixel+fn1(pixel*p1):
  z=sin(z)*sin(z*p1)
  |z|<78
  ;SOURCE: je-001.frm
}

jenn027 {; Arno Jennen
 a1=sin(pixel+1.125)
 a2=pixel/(pixel^1.775)
  z=|pixel-a1-a2|-pixel+sin(pixel*p1):
  z=sin(z)
  |z|<78
  ;SOURCE: je-001.frm
}

jenn028 {; Arno Jennen
  z=pixel^(pixel-1.25)
  z=(pixel*z)/(100-z):
  z=sin(z)+(z^2)+pixel
  z=sqr(z)+(pixel-(sin(z)))
  |z|<50
  ;SOURCE: je-001.frm
}

jenn029 {; Arno Jennen
  z=pixel^(pixel-6.50)
  z=(pixel*z)/(100-z):
  z=sin(z)+(z^2)+pixel
  z=conj(z)^(pixel+(cosxx(z)))
  |z|*50
  ;SOURCE: je-001.frm
}

jenn030 {; Arno Jennen
  z=pixel^(pixel-5.87)
  z=(pixel*z)/(12.5-(z*1.5)):
  z=log(z+z+log(z))*(z-(z*5.18)+(pixel-z))
  z=atanh(z)+((pixel*5.18)-(sin(z)))
  |z|<50
  ;SOURCE: je-001.frm
}

jenn031 {; Arno Jennen
  a=pixel
  z=pixel^(pixel-1.25)
  z=(pixel^(z*a)/(100-(z/a))):
  z=sin(z)+(z^2)+pixel
  z=sqr(z)+(pixel-(sin(z)))
  |z|<50
  ;SOURCE: je-001.frm
}

jenn032 {; Arno Jennen
 a1=pixel-1
 a2=(1/pixel)^sin(a1)
 a3=(a1*a2)^sqr(pixel)
  z=((a1/p1)^(pixel*a2))*a3*pixel:
  z=fn1(sin(z-sin(z)))+fn2(a1^(z-a2))+sqr(a3-z)+(a1*z)
  |z|<125
  ;SOURCE: je-001.frm
}

