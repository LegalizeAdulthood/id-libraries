;The equation of the CATENARY is
;y=a/2*(e^(x/a) + e^-(x/a))

gpcat01 {;Catenary
   z=fn1(pixel):
   z=fn2(z^p1) - fn3(p2/2*(exp(z/p2)+1/exp(z/p2)))
   |z|<=4+p3
   }

;The parametric equations of the CAUSTIC are
;x=3/4 cos(t) - 1/4 cos(3t); y=3/4 sin(t) - 1/4 sin(3t)

gpcau02   {;Caustic
   z=fn1(pixel):
   c=asin(imag(z)/cabs(z))
   x=.75*cos(c)-.25*cos(3*c)
   y=.75*sin(c)-.25*sin(3*c)
   z=fn2(z^p1)+p2*fn3(y-flip(x))
   |z|<=p3
   }

;The equation of the CISSOID OF DIOCLES is
;y^2=x^3/(2a-x), or y=+/- (x^3/(2a-x))^.5

gpcod01 {;Cissoid of Diocles
   z=fn1(pixel):
   x=sqrt(z^3/(p1-z)), y=-sqrt(z^3/(p1-z))
   z=fn2(z^p2) + fn3(x) + fn4(y)
   |z|<=4+p3
   }

;The polar equation of the CONCHOID OF NICOMEDES is
;r=a*sec(t) +/- b;  [sec=1/cos]

gpcon02 {;Conchoid of Nicomedes
   z=fn1(pixel), a=real(p3), bailout=imag(p3):
   c=asin(imag(z)/cabs(z))
   x=z*1/cos(c)+p1, y=z*1/cos(c)-p1
   z=fn2(z^p2) + a*fn3(x)*fn4(y)
   |z|<=bailout
   }

;The parametric equations of the CYCLOID are
;x=a(t-sin(t)); y=a(1-cos*t))

gpcyc01 {;Cycloid
   z=fn1(pixel):
   c=asin(imag(z)/cabs(z))
   x=z*(c-sin(c)), y=z*(1-cos(c))
   z=fn2(z^p1) + p2*fn3(x+y)
   |z|<=p3
   }

;The general equation of a DAMPED VIBRATION CURVE is
;y=ae^-kx * sin(bx+c) where k>0.

gpdvc01 {;Damped vibration curve
   z=fn1(1/pixel):
   y=p1*exp(p2*z)*fn2(p3*z)
   z=fn3(z*z) - y
   |z|<=16
   }

;The parametric equations of the FOLIUM OF DESCARTES are
;x=3at/(1+t^3), y=3at^2/(1+t^3); let p1=3a

gpfod01 {;Folium of Descartes
   z=1/pixel:
   c=asin(imag(z)/cabs(z))
   x=p1*z/(1+z*z*z), y=p1*z*z/(1+z*z*z)
   z=fn1(z*z) + fn2(x*c) + fn3(y*c)
   |z|<=4 + p2
   }

;HYPERBOLIC SPIRAL r*t=a [or r=a/t] and its first derivative r'=-a/(t^2)

gphsp01  {;r=-a/(t^2)
   z=fn1(pixel), a=real(p3), b=imag(p3):
   z=fn2(z^p1) + p2*fn3(-a/(z*z))
   |z|<=b
   }

;The equation for the LEMNISCATE OF BERNOULLI is
;(x^2+y^2)^2 = 2a^2(x^2-y^2), or 2a^2(x^2-y^2)-(x^2+y^2)^2 = 0

gplob01 {;Lemniscate of Bernoulli
   z=fn1(pixel), x=real(z), y=imag(z):
   z=fn2(z^p1)+fn3(x*x-y*y-sqr(x*x+y*y))
   |z|<=4 + p2
   }

;The polar equation of the LIMACON OF PASCAL is
;r=2a*cos(t)+b

gplop01  {;Limacon of Pascal
   z=fn1(pixel), a=real(p2), b=imag(p2):
   z=fn2(z^p1) + fn3(2*a*cos(z)+b)
   |z|<=4+p3
   }

;LOGARITHMIC SPIRAL r=e^(a*t) and first derivative r'=e^(a*t) * log e * a

gplsp01  {;r=e^(a*t)
   z=fn1(pixel), a=real(p3), b=imag(p3):
   z=fn2(z^p1) + p2*fn3(exp(a*z))
   |z|<=b
   }

;The equation of the PROBABILITY CURVE is
;y=e^(-x^2/2)/(2*pi)^(1/2)

gppro01 {;Probability curve
   z=fn1(pixel):
   z=fn2(z^p1) - p2*fn3(exp(-z*z/2)/sqrt(2*pi))
   |z|<=p3
   }

;Parametric equations of the WITCH OF AGNESI are
;x=a*cot alpha, y=a*sin^2 alpha

gpwoa01 {;Witch of Agnesi
   z=fn1(pixel):
   x=p1*cotan(z), y=p1*sin(z)*sin(z)
   z=fn2(z^p2) + fn3(x) + fn4(y)
   |z|<=4+p3
   }

