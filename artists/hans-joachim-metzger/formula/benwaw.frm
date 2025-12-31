BrohTweak   { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
              ; Sat, 07 Feb 2004 13:50:00
              ;
  z=fn1(pixel), c=fn2(pixel), a=y=1, x=2, b=imag(P2), t=|sqrt((0,2))|
  if(real(P1)!=0)
     x=real(P1)
  endif
  if(imag(P1)!=0)
     y=imag(P1)
  endif
  if(real(P2)!=0)
     a=real(P2)
  endif
  if(imag(P2)!=0)
     b=imag(P2)
  endif
  if(real(P3)!=0)
     t=real(P3)
  endif:
  z = a*z^x -fn3(b*z^y) +c
  |z| <= real(t)
}

