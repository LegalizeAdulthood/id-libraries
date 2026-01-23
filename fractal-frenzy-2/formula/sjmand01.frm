SJMAND01 {; Mandelbrot    
          ; from 4dFRACT.FRM by Gordon Lamb (CIS: 100272,3541) 
        z=real(pixel)+flip(imag(pixel)*p1),
        c=p2+p1*real(pixel)+flip(imag(pixel)):
        z=z*z+c, |z|<=64}

