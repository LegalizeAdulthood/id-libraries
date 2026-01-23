

;All of these formulas are based on the Golden Section or Phi as it is found everywhere in nature. Exhibiting true patterns of growth, these are new to the genre and have many interesting characteristics not found in the "secular" world of fractals.  All of these fractal formulas work with Fractint 17.2. Enjoy.                                     



Michaelbrot(origin) {    ;based on Golden Mean
	  
z = pixel:
z = sqr(z) + ((sqrt 5 + 1)/2), 
|z| <= 4;
} 


Raphaelbrot(xyaxis) {  ;phi

z = pixel:
z = sqr(z) + ((sqrt 5 - 1)/2) 
|z| <= 4;
}


DrChaosbrot1(xaxis) { ;more phi

z = c = pixel:
z = sqr(z) + (((sqrt 5 + 1)/2)+c)
|z| <= 4;
}


DrChaosbrot2(xyaxis)   { ;more phi

z = c = pixel:
z = sqr(z) + (((sqrt 5 + 1)/2)+c)
|z| <= 4;
}


Natura(xyaxis)  {  ;phi yoni

z = pixel:
z = z*z*z + ((sqrt 5 + 1)/2) 
|z| <= 4;
}

Element(xyaxis) { ;phi lingam

z = pixel:
z = z*z*z*z + ((sqrt 5 + 1)/2) 
|z| <= 4;
}

;try inside=maxiter and outside=imag on these

test(xyaxis) { ;=phi 
z = ((sqrt 5 + 1)/2)/pixel:
z =  z*z + pixel*((sqrt 5 + 1)/2)
|z| <= 4;
}

test1(xyaxis) { ;=phi
c = pixel 
z = ((sqrt 5 + 1)/2):
z =  z*z + pixel*((sqrt 5 + 1)/2) + c
|z| <= 4;
}

test2(xyaxis) { ;=phi 
z = ((sqrt 5 + 1)/2)/pixel:
z =  z*z*z + pixel*((sqrt 5 + 1)/2)
|z| <= 4;
}


test3(xyaxis) { ;=phi 
z = ((sqrt 5 + 1)/2)/pixel:
z =  z*z + pixel*((sqrt 5 + 1)/2)/((sqrt 5 - 1)/2)
|z| <= 4;
}

Tetratephi(xyaxis) { ;?

z  = c = ((sqrt 5 +1)/2)/pixel:
z = c^z + ((sqrt 5 +1)/2) 
|z| <= 4;
}
