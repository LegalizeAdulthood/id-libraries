AbsMandel {; Peter Anders anders@physik.hu-berlin.de
  xo=0, yo=0, cx=real(pixel), cy=imag(pixel):
  x=xo*xo-yo*yo+cx
  y=2*xo*yo+cy
  xo=abs(x)
  yo=abs(y)        
  |fn1(x)|<real(p2) &&  |fn1(y)|<real(p2)
  ;SOURCE: peterman.frm
}
 
AbsMandel {; Peter Anders anders@physik.hu-berlin.de
  xo=0, yo=0, cx=real(pixel), cy=imag(pixel):
  x=xo*xo-yo*yo+cx
  y=2*xo*yo+cy
  xo=abs(x)
  yo=abs(y)        
  |fn1(x)|<real(p2) &&  |fn1(y)|<real(p2)
  ;SOURCE: peterman.frm
}
 
Mandellike1 (yaxis) {; Peter Anders anders@physik.hu-berlin.de
  xo=real(p1), yo=imag(p1):
  x=(xo*xo-yo*yo)*(0,1)+real(pixel)
  y=2*xo*yo*(0,1)+imag(pixel)
  z=x+flip(y)
  xo=x
  yo=y           
  |fn1(z)|<real(p2) 
  ;SOURCE: peterman.frm
}
 
Mandellike11 {; Peter Anders anders@physik.hu-berlin.de 
  xo=0, yo=0, cx=real(pixel), cy=imag(pixel):
  x=xo*xo-yo*yo+cx
  y=2*xo*yo+cy
  xo=x+p1
  yo=y+p1        
  abs(fn1(x*x+y*y))<real(p2)
  ;SOURCE: peterman.frm
}
 
Mandellike4 {; Peter Anders anders@physik.hu-berlin.de
  z=p1, c=pixel:
  z=fn2(z)*c
  |fn1(z)|<real(p2) 
  ;SOURCE: peterman.frm
}
 
Mandellike4 {; Peter Anders anders@physik.hu-berlin.de
  z=p1, c=pixel:
  z=fn2(z)*c
  |fn1(z)|<real(p2) 
  ;SOURCE: peterman.frm
}
 
Mandellike6 {; Peter Anders anders@physik.hu-berlin.de
  z=(0,0), c=fn2(pixel):
  z=z*z+c
  |fn1(z)|<real(p2) 
  ;SOURCE: peterman.frm
}
 
Mandellike7 {; Peter Anders anders@physik.hu-berlin.de
  z=(0,0), c=pixel, c=c^real(p1)-imag(p1):
  z=z*z+c
  |fn1(z)|<real(p2) 
  ;SOURCE: peterman.frm
}
 
Mandellike9 {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, c=1/pixel:
  z=z*z+c
  |fn1(z)|<real(p2) 
  ;SOURCE: peterman.frm
}
 
