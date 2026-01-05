; Hi, I`m Albrecht Niekamp, Duesseldorf
; Niekamp@Online-club.de
; This is my first try to publish formulas for the fractint users. These 
; frm-files correspond to the par-files
; with the same .name. The basic formula (Nr.13 or 13a) was first used on my 
; Multifrac program for the good old AtariXL. All other formulas are 
; variations of this one. Try yourself, You`ll see that they are very easy 
; to edit. Suggstions, new par-files or variations are welcome.
; 
; --------------------------------------------------------------

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
Multifractal    {;   Albrecht Niekamp 16.5.01
;only integers as first input, second input 5 digits to the right
;real(p2) factor1,border1
;imag(p2) (-)maxiter1,input bas.frm1_2digits input bas.frm2_2digits
;real(p3) bailout,hyb.mandel: number of sides (Many_mods L.Allison)
;imag(p3) factor2,border2
;real(p4) maxiter2,factor3
;imag(p4) border3,maxiter3
;real(p5) 1digit_shape only  5digits: shape,out1,out2,in1,in2
; 1_mand 2_jul 3_hyb.mand 4_hyb.jul +5_reset (not shape) <0_no in/out1
;  optional basic frm2: out-nbr 1digit in-nbr 1digit 3_both +5_shape
;imag(p5) 1digit : 1_iter1reset 2_iter2reset 3_both +5_shape effect
; 2digits : many_mods multipl.shutoff +10_in/out1 +20_in/out2 +30_both
;  optional input2: frequency_2digits level_2digits amplitude_2digits
;
d=real(p2)               ;factor1 , border1
fac1=trunc(d)
b1=(d-fac1)*100000
;
d=imag(p2)
da=d<0                   ;p6 negative (frm1)
if (da)
 d=-d
endif
mi1=trunc(d)             ;maxiter1
d=round((d-mi1)*10000)
p6=trunc(d/100)/10        ;init. value frm1
d=d-1000*p6
if (da)
 p6=-p6
endif
p7=d/10                    ;init. value frm2
;
d=real(p3)
ba=trunc(d)                ;bailout
mm=round((d-ba)*100000)    ;m_mods nbr of sides
;
d=imag(p3)
fac2=trunc(d)               ;factor2
b2=(d-fac2)*100000          ;border2
;
d=real(p4)
mi2=trunc(d)                 ;maxiter2
fac3=round((d-mi2)*100000)   ;factor3
;
d=imag(p4)
b3=trunc(d)                   ;border3
mi3=round((d-b3)*100000)      ;maxiter3
;
da=real(p5)
t=da<0                        ;in/out2 only
if (t)
 da=-da
endif
start=2-t                     ;inout1+inout2: start=2
dd=trunc(da)
if (dd<5)
 start=0
endif
vb=(dd==3)+(dd==4)             ;shape hybrid frm_1digit input
da=round((da-dd)*100)
d=trunc(dd/10000)
vb=(d==3)+(d==4)+vb            ;shape hybrid frm_5digits input
dd=dd-d*10000
d=trunc(dd/1000)
or1=d>5                       ;reset out1
d=d-5*or1
vv1=(d==3)                     ;hybrid frm out1_mandel
vv2=(d==4)                     ;hybrid frm out1_julia
dd1=(d==2)+(d==4)              ;julia out1
dd=dd-d*1000
d=trunc(dd/100)
or2=d>5                         ;reset out2
d=d-5*or2
vv3=(d==3)                      ;hybrid frm out2_mandel
vv4=(d==4)                      ;hybrid frm out2_julia
dd2=(d==2)+(d==4)               ;julia out2
dd=dd-d*100
d=trunc(dd/10)
inr1=d>5                         ;reset in1
d=d-5*inr1
v1=(d==3)                        ;hybrid frm in1_mandel
v2=(d==4)                        ;hybrid frm in1_julia
d1=(d==2)+(d==4)                 ;julia in1
dd=dd-10*d
d=trunc(dd)
inr2=d>5                         ;reset in2
d=d-5*inr2
v3=(d==3)                        ;hybrid frm in2_mandel
v4=(d==4)                        ;hybrid frm in2_julia
d2=(d==2)+(d==4)                 ;julia in2
d=trunc(da/10)
da=da-10*d
ab=d>=5                           ;shape frm2
d=d-5*ab
bb1=(d==1)                        ;frm2 out1
bb2=(d==2)                        ;frm2 out2
dd=da>=5                          ;shape frm2_second digit
da=da-5*dd
ab=ab+dd
ab1=(da==1)                       ;frm2 in1
ab2=(da==2)                       ;frm2 in2
;
d=imag(p5)
dd=trunc(d)
d=round((d-dd)*1000000)
le=d>10000                        ;lake effect on
da=trunc(dd/10)
so1=((da==1)+(da==3)==0)          ;m_m multiplication off_in/out1
so2=((da==2)+(da==3)==0)          ;m_m multiplication off_in/out2
dd=dd-10*da
wo=dd>=5                          ;shape warp-effect
dd=dd-5*wo
ir1=(dd==1)+(dd==3)               ;iter reset in/out1
ir2=(dd==2)+(dd==3)               ;iter reset in/out2
if (le)                           ;lake effect
  freq=round((trunc(d/10000))*10)     ;frequency_lake effect by S.Gallet
  d=d-freq*1000
  level=(trunc(d/100))/100            ;water level
  d=d-level*10000
  ampl=d/100                          ;amplitude of the wave
  u=real(rotskew*pi/180)
  t=exp(-flip(u))
  bo=1/real(magxmag)
  q=bo/0.75*imag(magxmag)
  dd=tan(imag(rotskew*pi/180))
  d3=2*q*t
  rs=2*bo*(dd+flip(1))*t
  z2=center+(-q-bo*dd-flip(bo))*t
  z=pixel-z2
  d=imag(conj(d3)*z)/imag(conj(d3)*rs)
  if (d<=level)
   da=level-d
   z=z+2*da*(1+ampl*sin(freq*da^0.2))*rs
  endif
  z=z+z2
endif
if (ismand)
 if (vb)                             ;many_mods
  c=0.4*log(sqr(pixel^mm))
  z=z*le
 else
  c=z*le+pixel*(le==0)
  z=0
 endif
else                                  ;julia
 c=p1
 z=z*le+pixel*(le==0)
endif
t=0
d3=(ismand==0)
u=d3                                  ;warp-effect initial value
:
if (vb)
 if (d3)                              ;julia
  z=(z*z-real(c))^(z*u+imag(c))       ;hybrid julia
 else
  z2=fn1(z)+c                         ;hybrid mandel L.Allison
  q=cos(z2)
  z=c*(1-q)/(1+q)
 endif
elseif (ab)
 z=z*z+c+c*c-p7                        ;basic frm2 Pusk.s Istv.n
elseif (d3)
 z2=z*z
 z=z2*z2+(p6+u)*z2+c                   ;basic frm1 as julia
else
 z2=z*z                                ;basic frm1 Pusk s Istv n
 z=z2*z2+(p6+u)*z2+c-p1
endif
bo=|z|                                  ;bailout value
If (wo)                                 ;shape warp effect
 t=t+1
 if ((t<mi1)+(bo>b1))
  u=2*(fn1(t/fac1))                     ;warp-effect
  if (ismand)
   z=z*u
   if (vb)                              ;hybrid frm
    c=0.4*log(sqr(pixel^mm))            ;init m_m
   else
    c=z*le+pixel*(le==0)
   endif
  else
   z=z*le+pixel*(le==0)                  ;init julia
   c=p1*u
  endif
  wo=0
  if (ir1)                               ;iter reset
   t=0
  endif
 endif
elseif (start)                            ;0_shape only
 t=t+1
 if (start==2)                            ;in/out1 + in/out2
  if (bo>b2)                              ;z > border2 ?
   u=2*(fn2(t/fac2))
   rs=or1                                  ;reset
   ab=bb1                                  ;frm2
   if (dd1)                                ;julia?
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=vv2                                  ;hybrid
    d3=vb                                   ;julia
   else                                     ;mandel
    d3=0
    z=z*u
    c=z
    if (rs)                                  ;reset
     z=0
    endif
    vb=vv1
    if (vb)
     if (so1)                                ;m_m multiplication
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))                ;m_m init
    endif
    start=1
   endif
  elseif (t>mi2)                             ;counter > maxit2
   u=2*(fn2(t/fac2))                         ;warp-effect
   rs=inr1
   ab=ab1                                    ;frm2
   if (d1)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=v2
    d3=vb
   else
    d3=0
    z=z*u
    c=z
    if (rs)                                   ;reset
     z=0
    endif
    vb=v1
    if (vb)
     if (so1)                                 ;m_m multiplication
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
    endif
   endif
   start=1
   if (ir2)
    t=0
   endif
  endif
 elseif (bo>b3)                                ;start=1 z>border3
  u=2*(fn3(t/fac3))
  ab=bb2
  rs=or2
  if (dd2)
   if (rs)
    z=pixel
   endif
   c=p1*u
   vb=vv4
   d3=vb
  else
   d3=0
   z=z*u
   c=z
   if (rs)
    z=0
   endif
   vb=vv3
   if (vb)
    if (so2)
     mm=mm+mm
    endif
    c=0.4*log(sqr(pixel^mm))
   endif
   start=0
  endif
 elseif (t>mi3)                            ;start=1 counter>maxiter3
  u=2*(fn3(t/fac3))
  ab=ab2
  rs=inr2
  if (d2)
   if (rs)
    z=pixel
   endif
   c=p1*u
   vb=v4
   d3=vb
  else
   d3=0
   z=z*u
   c=z
   if (rs)
    z=0
   endif
   vb=v3
   if (vb)
    if (so2)
     mm=mm+mm
    endif
    c=0.4*log(sqr(pixel^mm))
   endif
  endif
  start=0                                   ;mainloop only
 endif
endif
bo<=ba                                      ;z<=bailout
}
