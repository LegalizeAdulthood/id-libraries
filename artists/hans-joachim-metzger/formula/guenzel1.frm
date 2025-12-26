SGG081 {; 11.03.95
        ; Revised for Fractint v20 by G. Martin
  z=0, x=pixel
  x1=(0.0,0.8), x2=(0.8,0.8), x3=(0.0,-0.8), x4=(0.8,-0.8):
  x=real(z)+x
  y=imag(z)+y
  w=conj(1/(x1+x2+x3+x4)+w)
  z=sqr(z+x)+sqr(w+y)
  |z|<=20
  ;SOURCE: guenzel1.frm
}
 
SGG082 {; 11.03.95
        ; Revised for Fractint v20 by G. Martin
  z=x=pixel
  x1=(0.0,0.87), x2=(0.87,0.87), x3=(0.0,-0.87), x4=(0.87,-0.87):
  x=real(z)+x
  y=imag(z)+y
  w=conj((x1+x2+x3+x4)+w)
  z=sqr(z+x)*sqr(w+y)
  |z|<=7
  ;SOURCE: guenzel1.frm
}
 
SGG083 {; 11.03.95
        ; Revised for Fractint v20 by G. Martin
  z=0, x=pixel
  x1=(0.0,0.8), x2=(0.8,0.8), x3=(0.0,-0.8), x4=(0.8,-0.8):
  x=real(z)+x
  y=imag(z)+y
  w=conj(1/(x1+x2+x3+x4))
  z=conj(sqr(x)*sqr(w-y))
  |z|<=20
  ;SOURCE: guenzel1.frm
}
 
SGG084 {; modCarr-730
        ; 05.03.95
  z=(1/pixel)-1/sqr(conj(0.5/pixel-1))+2.224
  c=((1/pixel)/(1/pixel-0.75)):
  z=conj(sqr(z*z*z*1/z+c)+cos(z))
  |z| <=10
  ;SOURCE: guenzel1.frm
}
 
SGG085 {; modCarr-725
        ; 04.03.95
  z=pixel*sqr(conj(0.5/pixel-1))
  c=conj((pixel)*(1/pixel-1)):
  z=(z*z+c)+cos(0.87)
  |z| <=10
  ;SOURCE: guenzel1.frm
}
 
SGG087 {; 15.03.95
  z=x=pixel:
  y=z
  z=conj(z)^p1+sqr(x)
  x=real(y)+sqr(z)
  |z|<=p2
  ;SOURCE: guenzel1.frm
}
 
SGG088 {; 15.03.95
  z=1/pixel, x=real(pixel):
  y=conj(z)
  z=conj(z)^p1+sqr(x)
  x=conj(y+log(z))
  |z|<=4
  ;SOURCE: guenzel1.frm
}
 
SGG089 {; 15.03.95
  z=pixel, x=pixel^sqr(pixel):
  z=cosxx(z)+x
  |z|<= 6
  ;SOURCE: guenzel1.frm
}
 
SGG090 {; 15.03.95
  z=real(pixel), x=imag(pixel^sqr(pixel)):
  z=conj(cosxx(z)+x)
  |z|<=8
  ;SOURCE: guenzel1.frm
}
 
SGG085 {; modCarr-725
        ; 04.03.95
  z=pixel*sqr(conj(0.5/pixel-1))
  c=conj((pixel)*(1/pixel-1)):
  z=(z*z+c)+cos(0.87)
  |z| <=10
  ;SOURCE: guenzel1.frm
}
 
SGG086 {; 13.03.95
  z=pixel, x=p1:
  z=cosxx(z^x+z)/x
  x=sqr(z+p2)+x
  |z|<=12
  ;SOURCE: guenzel1.frm
}
 
SGG086 {; 13.03.95
  z=pixel, x=p1:
  z=cosxx(z^x+z)/x
  x=sqr(z+p2)+x
  |z|<=12
  ;SOURCE: guenzel1.frm
}
 
SGG088 {; 15.03.95
  z=1/pixel, x=real(pixel):
  y=conj(z)
  z=conj(z)^p1+sqr(x)
  x=conj(y+log(z))
  |z|<=4
  ;SOURCE: guenzel1.frm
}
 
SGG090 {; 15.03.95
  z=real(pixel), x=imag(pixel^sqr(pixel)):
  z=conj(cosxx(z)+x)
  |z|<=8
  ;SOURCE: guenzel1.frm
}
 
