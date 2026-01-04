001 {; Arno Jennen
  z=|pixel|+pixel+cosxx(pixel):
  z=fn1(z-5.75),
  |(z)|<78
  }

002 {; Arno Jennen
  z=|pixel|-pixel+flip(pixel):
  z=fn1(z+14),
  |(z)|<78
  }

003 {; Arno Jennen
  z=|pixel^14|+pixel+exp(pixel):
  z=(z-12/fn1(z)),
  |(z)|<65
  }