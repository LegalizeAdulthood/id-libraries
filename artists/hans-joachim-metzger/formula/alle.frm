Jhsierpinski { ; Jos Hendriks <jos@hexaedre-fr.com>
               ; Sun, 29 Dec 2002 21:30:14
               ; escape time formula for the Sierpinski triangle
  z=Pixel: 
  IF (real(z)<.5 && imag(z)>.5) 
    z=2*z-(0,1) 
  ELSEIF(real(z)>.5) 
    z=2*z-(1,0) 
  ELSE 
    z=2*z 
  ENDIF 
  |z|<p1 
 }
 
Jhsierpinskim { ; Jos Hendriks <jos@hexaedre-fr.com>
                ; Sun, 29 Dec 2002 21:30:14
                ; You could call it a lambdaSierpinski formula
  z=Pixel: 
  IF (real(z)<.5 && imag(z)>.5) 
    z=(2*z-(0,1))*Pixel 
  ELSEIF(real(z)>.5) 
    z=(2*z-(1,0))*Pixel 
  ELSE 
    z=2*z*Pixel 
  ENDIF 
  |z|<p1 
 }
 
Jh_square     { ; Jos Hendriks <jos@hexaedre-fr.com>
                ; Sat, 4 Jan 2003 20:36:30
                ; You could call it a lambdaSierpinski formula
  if (ismand)
    z = 0 , c = pixel
  else
    z = pixel , c = p1
  endif
  :
  a=real(z),b=imag(z)
  z=a*a+flip(b*b)+c
  real(z)<p2 && imag(z)<p2
 }
 
