jhgraphs1  { ; Jos Hendriks <jos@hexaedre-fr.com>
             ; Mon, 23 Dec 2002 21:01:01
             ; graph of y= (a1*x+a2*x)/(a3*x^2+a4*x+a5)\
             ; imag(p3) gives the thickness
             ; also the x- and y-axes are drawn
  :
  |(real(p1)*real(Pixel)+imag(p1))/\
  (real(p2)*real(Pixel)^2+imag(p2)*\
  real(Pixel)+real(p3))-imag(Pixel)|<imag(p3)||\
  |real(Pixel)|<.001|||imag(Pixel)|<.001
 }

jhparabola { ; Jos Hendriks <jos@hexaedre-fr.com>
             ; Mon, 23 Dec 2002 21:01:01
             ; draws a parabola.  Thickness depends on p1.
             ; use maxiter=2,inside color=0, outside=iter
  :
  |real(Pixel)^2-imag(Pixel)-1.25|<p1
 }

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

