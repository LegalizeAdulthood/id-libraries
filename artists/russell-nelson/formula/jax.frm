{ ;     I guess everybody who uses Fractint for any length of time tries
their hand at creating their own formula for creating fractals.  This 
is my shot.
     Files included are JAX.FRM, JAX.PAR, and JAX.MAP. This is (of
course) JAX.TXT.  JAX.PAR is intended to generate at least one
representative fractal for each formula in JAX.FRM.
     Like everyone else who uploads these files on COMPUSERVE, I'd
like some feedback.

John Paul
71260,3103
}

Ajax { ; the Final Effort; 
z=c=2/pixel:
z =(z^(real(p1)))*(c^(real(p2))) + c,
|z| <=4
}

Bali { ; The difference of two squares;
z=x=1/pixel, c= fn1 (z):
z = (x+c) * (x-c); 
x=fn2(z),
|z| <=3
}

Fatso {;
z=x=1/pixel, c= fn1 (z):
z = (x^3)-(c^3); 
x=fn2(z),
|z| <=3
}

Jax { ; The original; 
z=c=2/pixel:
z =(z^4)*(c^4) + c,
|z| <=4
}

Bjax {; 
z=c=2/pixel:
z =(1/((z^(real(p1)))*(c^(real(p2))))*c) + c,
}

