jenn001 {; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(z)
  |(z^1.12)|<=(a*1.75)
  ;SOURCE: je090801.frm
}
 
jenn002 {; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(sin(z+10))
  |(z^(z+1.12))|<=(a*1.75)
  ;SOURCE: je090801.frm
}
 
jenn003 {; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=pixel+log(pixel-a):
  z=(log(z+21))+sin(sin(z+10))
  |(z/(z+1.12))|<=(a*1.75)+(z*a)
  ;SOURCE: je090801.frm
}
 
jenn005 {; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(z)
  |(z^1.12)|<=(a*1.75)
  ;SOURCE: je090801.frm
}
 
jenn006 {; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(z)
  |(z^(1-a))|<=(a*1.75)
  ;SOURCE: je090801.frm
}
 
jenn007 {; Arno Jennen
         ; Revised for Fractint v20 by G. Martin
  a=(sin(|pixel-1.25|))<pixel
  z=(pixel)+sqr(pixel-a):
  z=flip(z)
  |(z^(1-a))|<=(a*1.75)
  ;SOURCE: je090801.frm
}
 
jenn008 {; Arno Jennen
  a=(cotanh(pixel-6.47)+|tanh(pixel)|)/pixel
  z=sin(pixel+a)+exp(pixel-a):
  z=(cosxx(z+51))+flip(z)+sin(z)
  |(z^1.15)|<=(a*4.33)
  ;SOURCE: je090801.frm
}
 
jenn009 {; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=(pixel+8.76)-(cos(pixel*7.79))
  z=pixel+cotan(pixel-a):
  z=(cosxx(z+82))+sin(z)
  |(z^(1-a))|<=(a*1.75)
  ;SOURCE: je090801.frm
}
 
jenn010 {; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=(pixel+0.44)-(log(pixel*6.59))
  z=pixel+cotan(pixel-a):
  z=(cos(z+55))+sin(z)
  |(z^(1-a))|<=(a*1.15)
  ;SOURCE: je090801.frm
}
 
jenn012 {; Arno Jennen
  a=(exp(pixel))+(exp(pixel-1))
  z=pixel-a+cotan(pixel):
  z=sin(z-50)
  z=sqr(z*1.59)
  |(z)|<2000
  ;SOURCE: je082701.frm
}
 
jenn013 {; Arno Jennen
  a=(exp(pixel))+(exp(pixel-1))
  z=pixel-a+cotan(pixel):
  z=sin(z-25)+(z-atan(z))
  |(z)|<2000
  ;SOURCE: je082701.frm
}
 
jenn014 {; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(z)
  |(z^1.12)|<=(a*1.75)
  ;SOURCE: je-001.frm
}
 
