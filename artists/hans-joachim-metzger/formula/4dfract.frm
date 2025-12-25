3RDIM04 {; Tetrated function     
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1):
  z=fn1(c)^z 
  |z|<=64
  ;SOURCE: 4dfract.frm
}
 
3RDIM05 {; Mandelbrot lambda function
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1):
  z=fn1(z)*c
  |z|<=64
  ;SOURCE: fractint.frm
}
 
3RDIM05 {; Mandelbrot lambda function
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1):
  z=fn1(z)*c
  |z|<=64
  ;SOURCE: fractint.frm
}
 
SJMAND01 {; Mandelbrot
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=z*z+c
  |z|<=64
  ;SOURCE: fractint.frm
}
 
SJMAND01 {; Mandelbrot
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=z*z+c
  |z|<=64
  ;SOURCE: fractint.frm
}
 
SJMAND03 {; Mandelbrot function
  z=real(pixel)+p1*(flip(imag(pixel)))
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=fn1(z)+c
  |z|<=64
  ;SOURCE: fractint.frm
}
 
SJMAND03 {; Mandelbrot function
  z=real(pixel)+p1*(flip(imag(pixel)))
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=fn1(z)+c
  |z|<=64
  ;SOURCE: fractint.frm
}
 
SJMAND04 {; Tetrated function
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=fn1(c)^z 
  |z|<=64
  ;SOURCE: 4dfract.frm
}
 
SJMAND05 {; Mandelbrot lambda function
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=fn1(z)*c
  |z|<=64
  ;SOURCE: fractint.frm
}
 
SJMAND08 {; Mandelbar
  z=real(pixel)+flip(imag(pixel))*p1
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=conj(z*z)+c 
  |z|<=4
  ;SOURCE: 4dfract.frm
}
 
SJMAND10 {; Mandelbrot power function
  z=real(pixel), c=p2+flip(imag(pixel)):
  z=(fn1(z)+c)^p1
  |z|<=4
  ;SOURCE: fractint.frm
}
 
SJMAND10 {; Mandelbrot power function
  z=real(pixel), c=p2+flip(imag(pixel)):
  z=(fn1(z)+c)^p1
  |z|<=4
  ;SOURCE: fractint.frm
}
 
SJMAND11 {; Mandelbrot lambda function - lower bailout
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=fn1(z)*c
  |z|<=4
  ;SOURCE: fractint.frm
}
 
SJMAND12 {; Mandelbrot with perturbed initiator
  z=real(pixel)+p1, c=flip(imag(pixel))+p2:
  z=z*z+c 
  |z|<=4
  ;SOURCE: 4dfract.frm
}
 
SJMAND12 {; Mandelbrot with perturbed initiator
  z=real(pixel)+p1, c=flip(imag(pixel))+p2:
  z=z*z+c 
  |z|<=4
  ;SOURCE: 4dfract.frm
}
 
3RDIM01 {; Mandelbrot
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1):
  z=z*z+c
  |z|<=64
  ;SOURCE: fractint.frm
}
 
SJMAND07 {; Mandelbrot function
          ; changing real(p1) will now rotate between ZC & CZ planes
  z=(1-p1)*real(pixel)+p1*flip(imag(pixel))
  c=p1*real(pixel)+(1-p1)*flip(imag(pixel)):
  z=fn1(z)+c 
  |z|<=4
  ;SOURCE: 4dfract.frm
}
 
