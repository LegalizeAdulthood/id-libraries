hualp (XAXIS) { ; (c) Copyright 1996 by Manfred W.Rupp
                ; 
    z=pixel:
    z=fn1((z^z / (1/z^4)+p1) + pixel)*(1/z^1.257),
    |real(z)| <= real(p2) || |imag(z)| <= imag(p2)
              }

