Contest {; Contest Material
	z = 0
	c = pixel:
	z = z*z*z - c * z*z + c * z +c
	|z| <= 4
	}

contest4  {; Kerry Mitchell
      ; slightly optimized version of Contest formula
         z=p1, c=pixel:
         z2=sqr(z), z=z*z2+c*(1+z-z2),
         |z| <= 4
         }
