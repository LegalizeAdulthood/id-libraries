jenn001{; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(z),
  |(z^1.12)|<=(a*1.75)
  }

jenn002{; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(sin(z+10)),
  |(z^(z+1.12))|<=(a*1.75)
  }

jenn003{; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=pixel+log(pixel-a):
  z=(log(z+21))+sin(sin(z+10)),
  |(z/(z+1.12))|<=(a*1.75)+(z*a)
  }

jenn004{; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=exp(pixel^1.1)+log(pixel-(a^2)):
  z=(log(z+21))+sin(sin(z+10)),
  |(z/(z+1.12))|<=(a*1.75)+(z*a)
  }

jenn005{; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(z),
  |(z^1.12)|<=(a*1.75)
  }

jenn006{; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(z),
  |(z^(1-a))|<=(a*1.75)
  }

jenn007{; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=(pixel)+sqr(pixel-a):
  z=(cosxx^z/(z+21))+flip(z),
  |(z^(1-a))|<=(a*1.75)
  }

jenn008{; Arno Jennen
  a=(cotanh(pixel-6.47)+|tanh(pixel)|)/pixel
  z=sin(pixel+a)+exp(pixel-a):
  z=(cosxx(z+51))+flip(z)+sin(z),
  |(z^1.15)|<=(a*4.33)
  }

jenn009{; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=(pixel+8.76)-(cos(pixel*7.79))
  z=pixel+cotan(pixel-a):
  z=(cosxx(z+82))+sin(z),
  |(z^(1-a))|<=(a*1.75)
  }

jenn010{; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=(pixel+0.44)-(log(pixel*6.59))
  z=pixel+cotan(pixel-a):
  z=(cos(z+55))+sin(z),
  |(z^(1-a))|<=(a*1.15)
  }

jenn11{; Arno Jennen
  z=(pixel/(|pixel+9.95|)):
  a1=pixel+cosxx(z),
  a2=(a1+0.20)/pixel, 
  z=(|z+pixel|)/(a1+a2)+sin(a2),
  |(z^(9.20-a1))|<=z
  }