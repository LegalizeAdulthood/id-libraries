Hi, I`m Albrecht Niekamp, Duesseldorf
Niekamp@Online-club.de
This is my first try to publish formulas for the fractint users. These 
frm-files correspond to the par-files
with the same .name. The basic formula (Nr.13 or 13a) was first used on my 
Multifrac program for the good old AtariXL. All other formulas are 
variations of this one. Try yourself, You`ll see that they are very easy 
to edit. Suggstions, new par-files or variations are welcome.

--------------------------------------------------------------

multifrac1 {
  z = pixel:
  y2=y*y
  x2=x*x
  x=x2-y2-p1
  y=x2*x*y-p2
  z = sqr(z)
  |z| > (x2+y2)
  }

multifrac2 {
  z = pixel:
  y2=y*y
  x2=x*x
  x=x2-y2-p1
  y=x2*x*y-p2
  z = sqr(z)+x
  |z| > (x2+y2)
  }

multifrac3 {
  z = pixel:
  y2=y*y
  x2=x*x
  x=x2-y2-p1
  y=x2*x*y-p2
  z = sqr(z)+x+y
  |z| > (x2+y2)
  }

multifrac4 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z+x+y)
  |z| > (x2+y2)
  }

multifrac5 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z+x-y)
  |z| > (x2+y2)
  }

multifrac6 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z-x+y)
  |z| > (x2+y2)
  }

multifrac7 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = z^(z+x-y)    
  |z| > (x2+y2)
  }

multifrac8 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = z^(z-x+y)    
  |z| > (x2+y2)
  }  

multifrac9 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = abs(x)*x*y-p2
  z = z^(z-x+y)    
  |z| > (x2+y2)
  }

multifrac10 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p1
  z = z^(z-x+y)    
  |z| > (x2+y2)
  }

multifrac11 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z-x+y)
  |z| > (x2+y2+z)
  }
 
multifrac12 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z)
  |z| > (x+y+z)
  }

multifrac13 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z)
  |z| > (x2+y2)
  }
 
multifrac13a {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = fn1(z)
  |z| > (x2+y2)
  }

multifrac14 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = z^(z-x+y)    
  |z| > 4
  }

multifrac15 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = z^(z-x+y)    
  |z| > (x2*y2)
  }

multifrac16 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z-x+y)    
  |z| > (x2*y2)
  }

multifrac17 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z)    
  |z| > (x2*y2)
  }

multifrac18 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z+x-y)    
  |z| > (x*y)
  }

multifrac19 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = z^(z-x+y)    
  |z| > (x*y)
  }

multifrac20 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=2*x*y-p2
  else
  y=2*x*y-p1
  endif
  z = z^(z-x+y)    
  |z| > (x2+y2)
  }
 
multifrac21 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=2*x*y-p2
  else
  y=abs(x)*y*x-p2
  endif
  z = z^(z-x+y)    
  |z| > (x2+y2)
  }
 
multifrac22 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=2*x*y-p2
  else
  y=abs(x)*y*x-p2
  endif
  z = z^(z-x+y)    
  |z| > (x2*y2)
  }

multifrac23 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=2*x*y-p2
  z=z^(z-x+y)
  else
  y=abs(x)*y*x-p2
  z=sqr(z-x+y)
  endif
  |z| > (x2*y2)
  }

multifrac24 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=abs(y)*x*y-p2
  z=z^(z-x+y)
  else
  y=abs(x)*y*x-p2
  z=sqr(z-x+y)
  endif
  |z| > (x2*y2)
  }

multifrac25 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=abs(y)*x*y-p2
  z=z^(z-x-y)
  else
  y=abs(x)*y*x-p2
  z=sqr(z-x+y)
  endif
  |z| > (x2*y2)
  }

multifrac26 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=abs(y)*x*y-p2
  z=z^(z-x-y)
  else
  y=abs(x)*y*x-p2
  z=sqr(z-x-y)
  endif
  |z| > (x2*y2)
  }

multifrac27 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x2<y2)
  y=abs(y)*x*y-p2
  z=z^(z-x-y)
  else
  y=abs(x)*y*x-p2
  z=sqr(z-x-y)
  endif
  |z| > (x2*y2)
  }

multifrac28 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x2<y2)
  y=2*x*y-p2
  z=z^(z-x-y)
  else
  y=abs(x)*y*x-p2
  z=sqr(z-x-y)
  endif
  |z| > (x2*y2)
  }

multifrac29 {
  w = pixel:
  y2 = y*y
  x2 = x*x
  z2 = z*z
  x = x2-y2-p1
  y = 2*x*y-p2
  z = x2-z2-p3
  w = sqr(w-x-y-z)
  |w| > (x2+z2)
  }

multifrac30 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x = x2-y2-p1
  y = 2*x*y-p2
  w = x2-w2-p3
  z = sqr(z-x-y-w)
  |z| > (x2+w2+y2)
  }

multifrac31 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x = x2-y2-p1
  y = 2*x*y-p2
  w = x2-w2-p3
  z = z^(z-x-y-w)
  |z| > (x2+w2+y2)
  }

multifrac32 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x = x2-y2-p1
  y = 2*x*y-p2
  w = x2-w2-p3
  z = z^(z-x-y-w)
  |z| > (x2*w2*y2)
  }

multifrac33 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x=x2-y2-p1 
  if (x<y)
  y=abs(x)*x*y-p2
  w=x2-w2-p3  
  z=sqr(z-x-y-w)
  else
  w=2*x*w-p3
  y = abs(w)*x*y-p2
  z=z^(z-x-y-w)
  endif
  |z| > (x2+w2+y2)
  }

multifrac34 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x=x2-y2-p1 
  if (x<y)
  y=abs(x)*x*y-p2
  w=x2-w2-p3  
  z=sqr(z-x-y-w)
  else
  w=2*x*w-p3
  y = abs(w)*x*y-p2
  z=z^(z-x-y-w)
  endif
  |z| > (x2*w2*y2)
  }

multifrac35 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x=x2-y2-p1 
  if (x<y)
  y=abs(x)*x*y-p2
  w=x2-w2-p3  
  z=sqr(z-x-y-w)
  else
  y=abs(w)*x*y-p2
  if (x<w)
  w=abs(x)*x*w-p3
  else
  w=abs(y)*x*w-p3
  endif
  z=z^(z-x-y-w)
  endif
  |z| > (x2*w2*y2)
  }

multifrac36 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x=x2-y2-p1 
  if (x<y)
  y=abs(x)*x*y-p2
  if (y<w)
  w=x2-w2-p3  
  else
  w=y2-w2-p3
  endif
  z=sqr(z-x-y-w)
  else
  y=abs(w)*x*y-p2
  if (x<w)
  w=abs(x)*x*w-p3
  else
  w=abs(y)*x*w-p3
  endif
  z=z^(z-x-y-w)
  endif
  |z| > (x2*w2*y2)
  }

multifrac37 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x=x2-y2-w2-p1 
  if (x<y)
  y=abs(x)*x*y-p2
  if (y<w)
  w=x2-w2-p3  
  else
  w=y2-w2-p3
  endif
  z=sqr(z-x-y-w)
  else
  y=abs(w)*x*y-p2
  if (x<w)
  w=abs(x)*x*w-p3
  else
  w=abs(y)*x*w-p3
  endif
  z=z^(z-x-y-w)
  endif
  |z| > (x2*w2*y2)
  }

multifrac38 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x=x2-y2-w2-p1 
  if (x<y)
  y=abs(x)*x*y-p2
  if (y<w)
  w=x2-w2-p3  
  else
  w=y2-w2-p3
  endif
  z=sqr(z-x-y-w)
  else
  y=abs(w)*x*y-p2
  if (x<w)
  w=abs(y)*x*w-p3
  else
  w=abs(x)*y*w-p3
  endif
  z=z^(z-x-y-w)
  endif
  |z| > (x2*w2*y2)
  }

multifrac39 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x=x2-y2-w2-p1 
  if (x>y)
  y=abs(x)*x*y-p2
  if (y<w)
  w=x2-w2-p3  
  else
  w=y2-w2-p3
  endif
  z=sqr(z-x-y-w)
  else
  y=abs(w)*x*y-p2
  if (x>w)
  w=abs(y)*x*w-p3
  else
  w=abs(x)*y*w-p3
  endif
  z=z^(z-x-y-w)
  endif
  |z| > (x2*w2*y2)
  }

multifrac40 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x = x2-y2-p1
  y = 2*x*y-p2
  w = 2*x*w-p3
  z = z^(z-x-y-w)
  |z| > (x2*w2*y2)
  }

multifrac41 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x = x2-y2-w2-p1
  y = abs(w)*x*y-p2
  w = abs(y)*x*w-p3
  z = z^(z-x-y-w)
  |z| > (x2*w2*y2)
  }

multifrac42 {
  z = pixel:
  x = fn1(x)-y
  y = fn2(y)-x
  z = z^(z-x-y)
  |z| > (x*y)
  }

multifrac43 {
  z = pixel:
  x = fn1(x)-y
  y = fn2(y)-x
  w = fn3(w)-x
  z = z^(z-x-y-w)
  |z| > (x*y*w)
  }

multifrac44 {
  z = pixel:
  x = fn1(x)-y
  y = fn2(y)-x
  w = fn3(w)-x
  z = sqr(z)-x-y-w
  |z| > (x*y*w)
  }

multifrac45 {
  z = pixel:
  x = fn1(x)-y
  y = fn2(y)-x
  w = fn3(w)-y
  z = sqr(z)-x-y-w
  |z| > (x*y*w)
  }

multifrac46 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  w2=fn3(w)
  if (x2>y2)
  x = x2-y
  y = y2-w 
  w = w2-x
  z = z^(z-x-y-w)
  else
  x=2*x2*y
  y=2*y2*w
  w=2*w2*x
  z=sqr(z)-x-y-w
  endif
  |z| > (x*y*w)
  }

multifrac47 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  w2=fn3(w)
  if (x2>y2)
  x = x2-y
  y = y2-w 
  w = w2-x
  z = z^(z-x-y-w)
  else
  x=2*x2*y
  y=2*y2*w
  w=2*w2*x
  z=sqr(z-x-y-w)
  endif
  |z| > (x*y*w)
  }

multifrac48 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  w2=fn3(w)
  if (x2>y2)
  x = x2-y
  y = y2-w 
  w = w2-x
  z = z^(z)-x-y-w
  else
  x=2*x2*y
  y=2*y2*w
  w=2*w2*x
  z=sqr(z)-x-y-w
  endif
  |z| > (x*y*w)
  }

multifrac49 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  z2=fn3(z)
  if (x2>y2)
  x = x2-y
  y = y2-z 
  z = z2-x
  z = z^(z)-x-y
  else
  x=2*x2*y
  y=2*y2*w
  z=2*z2*x
  z=sqr(z)-x-y
  endif
  |z| > (x*y*z)
  }

multifrac50 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  z2=fn3(z)
  if (x2>y2)
  x = x2-y
  y = y2-z 
  z = z2-x
  z = z^(z-x-y)
  else
  x=2*x2*y
  y=2*y2*z
  z=2*z2*x
  z=sqr(z-x-y)
  endif
  |z| > (x*y-z)
  }

multifrac51 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  z2=fn3(z)
  if (x2>y2)
  x = x2-y2
  y = y2-z2
  z = z2-x2
  z = z^(z-x-y)
  else
  x=2*x2*y2
  y=2*y2*z2
  z=2*z2*x2
  z=sqr(z-x-y)
  endif
  |z| > (x*y*z)
  }

multifrac52 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2>y2)
  x = x2-y
  y = y2-z 
  z = z^(z-x-y)
  else
  x=2*x2*y
  y=2*y2*z
  z=sqr(z-x-y)
  endif
  |z| > (x*y)
  }
 
multifrac53 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2>y2)
  x = x2-y2
  y = y2-x2
  z = z^(z-x-y)
  else
  x=x2-y2
  y=2*y2*x2
  z=sqr(z-x-y)
  endif
  |z| > (x*y)
  }

multifrac54 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2>y2)
  x = x2-y2
  y = y2-x2
  z = z^(z-x-y)
  else
  x=fn3(x)+p1
  z=sqr(z)-x
  endif
  |z| > x
  }

multifrac55 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2>y2)
  x = x2-y2
  y = y2-x2
  z = z^(z-x-y)
  else
  x=fn3(x)+p1
  z=sqr(z-x)
  endif
  |z| > x
  }

multifrac56 {
  z=p1 
  c =pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2<y2)
  x = x2-y2
  y = y2-x2
  z = sqr(z)-x-y
  |z| > (x*y)
  else
  z=sqr(z)+c
  |z| < 4
  endif
  }

multifrac57 {
  z=p1 
  c =pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2<y2)
  x = x2-y2
  y = 2*y2*x2
  z = sqr(z)-x-y
  |z| > (x*y)
  else
  z=sqr(z)+c
  |z| < 4
  endif
  }

multifrac58 {
  z=p1 
  c =pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2>y2)
  x = x2-y2
  y = 2*y2*x2
  z = sqr(z)-x-y
  |z| > (x*y)
  else
  z=sqr(z)+c
  |z| < 4
  endif
  }

multifrac59 {
  z =pixel:
  y2=fn2(y)
  x2=fn1(x)
  x = x2-y2
  if (x2<y2)
  y = 2*y2*x2
  z = sqr(z)-x-y
  else
  y= y2-x2
  z=sqr(z-x-y)
  endif
  |z| > (x*y)
  }

multifrac60{
  z =pixel:
  y2=fn2(y)
  x2=fn1(x)
  x = x2-y2-p1
  if (x2<y2)
  y = 2*y2*x2-p2
  z = sqr(z)-x-y
  else
  y= y2-x2-p2
  z=sqr(z-x-y)
  endif
  |z| > (x-y)
  }

multifrac61 {
  z =pixel:
  y2=tan(y)
  x2=cabs(x)
  x = x2-y2-p1
  if (x2<y2)
  y = 2*y2*x2-p2
  z = sqr(z)-x-y
  else
  y= y2-x2-p2
  z=sqr(z-x-y)
  endif
  |z| > (x*y)
  }

multifrac62 {
  z = pixel:
  y2=fn2(y)+p1
  x2=fn1(x)+p2
  w2=fn3(w)+p3
  if (x2>y2)
  x = x2-y2
  y = y2-w2
  w = w2-x2
  z = z^(z-x-y-w)
  else
  x=2*x2*y2
  y=2*y2*w2
  w=2*w2*x2
  z=sqr(z-x-y-w)
  endif
  |z| > (x*y*w)
  }

multifrac63 {
  z = pixel:
  y2=fn2(y+p1)
  x2=fn1(x+p2)
  w2=fn3(w+p3)
  if (x2>y2)
  x = x2-y2
  y = y2-w2
  w = w2-x2
  z = z^(z-x-y-w)
  else
  x=2*x2*y2
  y=2*y2*w2
  w=2*w2*x2
  z=sqr(z-x-y-w)
  endif
  |z| > (x*y*w)
  }

multifrac64 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = y2-x2-p2
  z = fn1(z)+x+y
  |z| > (x2+y2)
  }

multifrac65 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2*y2-p1
  y = y2-x2-p2
  z = fn1(z)+x+y
  |z| > (x2*y2)
  }

multifrac66 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = y2-x2-p2
  z = fn1(z)+x+y
  |z| > (x2*y2)
  }

multifrac67 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (x2<y2)
  x=x2-y2-p1 
  y=y2-x2-p2
  if (y2<w2)
  w=w2-x2-p3  
  else
  w=w2-y2-p3
  endif
  z=fn1(z+x+y+w)
  else
  x=x2*y2-p1
  y=2*x2*y2-p2
  if (x2<w2)
  w=2*x2*w2-p3
  else
  w=2*y2*w2-p3
  endif
  z=fn2(z+x+y+w)
  endif
  |z| > (x2+w2+y2)
  }

multifrac68 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (x2<y2)
  x=x2-y2-p1 
  y=y2-x2-p2
  if (y2<w2)
  w=w2-x2-p3  
  else
  w=w2-y2-p3
  endif
  z=fn1(z+x+y+w)
  else
  x=x2*y2-p1
  y=2*x2*y2-p2
  if (x2<w2)
  w=2*x2*w2-p3
  else
  w=2*y2*w2-p3
  endif
  z=fn2(z-x-y-w)
  endif
  |z| > (x2+w2+y2)
  }
