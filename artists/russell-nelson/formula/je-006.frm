jenn072{; Arno Jennen
 z=pixel:
 z=fn1(sqr(z)+pixel)+pixel
 |z|<=4
 }

jenn073{; Arno Jennen
 y=(pixel+1)*(pixel+2)
 z=y=pixel:
 z=(fn1(z)*sqr(z))+y
 |z|<=4
 }

jenn074{; Arno Jennen
 x=1/fn1(pixel)
 y=(x*x)+pixel
 z=y=pixel:
 z=fn1(sqr(y)*sqr(z))+pixel
 |z|<=4
 }

jenn075{; Arno Jennen
 x=(1+pixel)/fn1(pixel)
 y=((x*x)/fn1(x))+pixel
 z=y=pixel:
 z=asin(fn1(y)*sqr(z))+pixel
 |z|<=4
 }

jenn076{; Arno Jennen
 x=1/pixel
 x1=(1+pixel)/pixel
 y=(x*x*x)-x1
 z=y=pixel:
 z=sqr(sqr(y)*fn1(z))+pixel
 |z|<=4
 }

jenn077{; Arno Jennen
 x=pixel
 y=x+fn1((x*fn1(x)))
 z=x=y=pixel-sqr(pixel):
 z=asin(fn1(y)*sqr(z))+pixel
 |z|<=4
 }

jenn078{; Arno Jennen
 y=(pixel+1)*(pixel+2)
 z=y=sin(pixel+y):
 z=(sqr(z)*sqr(z))+(y*fn1(sqr(y)))
 |z|<=4
 }

jenn079{; Arno Jennen
 z=fn1(sin(pixel)+sqr(pixel)):
 z=sin(sqr(z)+pixel)+pixel
 |z|<=4
 }

jenn080{; Arno Jennen
 z=sinh(fn1(pixel)+sqr(pixel)):
 z=fn1(sqr(z)+pixel)+pixel
 |z|<=4
 }

jenn081{; Arno Jennen
 y=(pixel+1)*(pixel+2)
 z=y=pixel:
 z=(abs(z)*sqr(fn1(z*z)))+y
 |z|<=4
 }

jenn082{; Arno Jennen
 y=(pixel+1)*(pixel+2)
 z=y=pixel:
 z=(fn1(z)*fn2(z))+y
 |z|<=4
 }