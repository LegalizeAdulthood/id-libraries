jenn001 {; Arno Jennen
  z=|pixel|+pixel+cosxx(pixel):
  z=fn1(z-5.75),
  |(z)|<78
  }

jenn002{; Arno Jennen
  z=|pixel|-pixel+flip(pixel):
  z=fn1(z+14),
  |(z)|<78
  }

jenn003 {; Arno Jennen
  z=|pixel^14|+pixel+exp(pixel):
  z=(z-12/fn1(z)),
  |(z)|<65
  }

jenn004 {; Arno Jennen
  z=|fn1(pixel^14)|+pixel+(1-pixel):
  z=(z-12/fn1(z)),
  |(z)|<65
  }

jenn005 {; Arno Jennen
  z=|pixel+flip(pixel)|-pixel:
  z=fn1(z+14),
  z1=z*(fn1(0-pixel))
  z2=z1+z
  |z+z1|<50
  }

jenn006 {; Arno Jennen
  z=pixel-|pixel|+cotan(pixel):
  z=fn1(z-5),
  |(z)|<20
  }

jenn007 {; Arno Jennen
  a=(exp(pixel))+(exp(pixel-1))
  z=pixel-a+cotan(pixel):
  z=sin(z-50),
  |(z)|<2000
  }

jenn008 {; Arno Jennen
  a=(exp(pixel))+(exp(pixel-1))
  z=pixel-a+cotan(pixel):
  z=sin((z*1.34)-50),
  |(z)|<2000
  }

jenn009 {; Arno Jennen
  a=(exp(pixel))+(exp(pixel-1))
  z=pixel-a+cotan(pixel):
  z=sin((z*1.34)-50),
  z=a-(sin(z))
  |(z)|<2000
  }

jenn010 {; Arno Jennen
  a=(exp(pixel))+(exp(pixel-1))
  z=pixel-a+b+cotan(pixel):
  z=a-(sin(z)+cotan(z)),
  |(z)|<2000
  }

jenn011 {; Arno Jennen
  a=(exp(pixel))+(exp(pixel-1))
  z=pixel-a+b+cotan(pixel):
  z=a-(sin(z)+cotan(z)),
  |(z)|>10
  }

jenn012 {; Arno Jennen
  a=(exp(pixel))+(exp(pixel-1))
  z=pixel-a+cotan(pixel):
  z=sin(z-50),
  z=sqr(z*1.59)
  |(z)|<2000
  }

jenn013 {; Arno Jennen
  a=(exp(pixel))+(exp(pixel-1))
  z=pixel-a+cotan(pixel):
  z=sin(z-25)+(z-atan(z)),
  |(z)|<2000
  }

jenn014 {; Arno Jennen
  a=(exp(pixel))+(exp(pixel-1))
  z=(pixel*1.47)-a+sqrt(pixel):
  z=sin(z*(z-(z*1.33)-(atan(z+25)))),
  z=sin(a)+(pixel*2.25)+(z*1.75)
  |(z)|<2000
  }