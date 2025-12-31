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

