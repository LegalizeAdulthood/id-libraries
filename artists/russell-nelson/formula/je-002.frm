jenn044{; Arno Jennen
 a1=(sin(pixel-p1)+|fn1(pixel)|)/pixel
 a2=a1^(flip(a1))
 a3=|a2-1.3|+a1
  z=pixel+log(pixel-a1-a2-a3):
  z=(fn2(z+21))+fn3(z),
  |(z^p2)|<=(a*p3)
  }

jenn045{; Arno Jennen
 a1=(flip(pixel-p1)-|fn1(pixel)|)/pixel
 a2=a1/(flip(a1))
 a3=|a2*1.3|+sin(a1)
  z=pixel+log(pixel-a1-a2-a3):
  z=(fn2(z*z))+fn3(z/p1),
  |(z^p2)|<=(a*p3)
  }

jenn046{; Arno Jennen
  q=real(pixel)+(pixel^2.5)
  x=flip(pixel-p1)
  y=sin(flip(pixel))
  z=(q^x)*(y^q):
  q=(z*p1)-(x*y)
  z=z+(q*x*y)^fn1(z)
  |(z+z)|<=100  
  }

jenn047{; Arno Jennen
  q=exp(pixel)
  z=fn1(q^2):
  z=q^z
  |(z)|<=100  
  }

jenn048{; Arno Jennen
  a=(sin(|flip(pixel/1.15)|))*pixel
  x=a+(a^(sin(pixel)))
  y=(a+x)^x
  z=(sqr(a)+sqr(x))-y:
  z=(fn1(z+y))+flip(z),
  |(z^a)|>(x*1.75)
  }

jenn049{; Arno Jennen
  q=(sin(|sin(pixel/p1)|))*pixel
  z=fn1(q^2):
  z=q^z
  |z|<=100  
  }