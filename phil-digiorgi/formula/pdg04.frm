;  Formulas written by Phil DiGiorgi (76736,570)
;  for Fractint v19.5

PD_411  {
        bailout = 4 + imag(p3)
        k = real(p3), z = z1 = pixel
        c = p1*tan(z):
          z1 = fn1(z1^k) + p2*fn2(z1*c)
          x1 = real(z1), y1 = imag(z1)
          z2 = -x1 + flip(y1)
          z = log(z1)*whitesq + log(z2)*(whitesq==0)
            (|real(z)| <= bailout) && (|imag(z)| <= bailout)
        }

PD_412  {
        bailout = 4 + imag(p3)
        k = real(p3), z = z1 = pixel
        c = p1*fn3(z):
          z1 = fn1(z1^k) + p2*fn2(z1*c)
          x1 = real(z1), y1 = imag(z1)
          z2 = -x1 + flip(y1)
          z = log(z1)*whitesq + log(z2)*(whitesq==0)
            (|real(z)| <= bailout) && (|imag(z)| <= bailout)
        }

PD_413  {
        bailout = 4 + imag(p3)
        k = real(p3), z = z1 = pixel
        c = p1*fn3(z):
          z1 = fn1(z1^k)/fn2(p2 + z1*c)
          x1 = real(z1), y1 = imag(z1)
          z2 = -x1 + flip(y1)
          z = log(z1)*whitesq + log(z2)*(whitesq==0)
            (|real(z)| <= bailout) && (|imag(z)| <= bailout)
        }

PD_414  { ; PHC version of PD_207
		bailout = 4 + p3
		z = z1 = pixel
		x = real(pixel), y = imag(pixel)
		c = fn1(x^p1) + fn1(y^p1):
	  	  z1 = fn2(fn3(z1^p2)) + fn4(c)
	      x1 = real(z1), y1 = imag(z1)
          z2 = -x1 + flip(y1)
          z = log(z1)*whitesq + log(z2)*(whitesq==0)
		    |z| <= bailout
	    }

