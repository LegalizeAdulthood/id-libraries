2lambda32 {; Peter Anders anders@physik.hu-berlin.de
           ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p2, c=pixel:  ; p2<>1<>-1<>0
  IF (real(z/c)<imag(p1))
    z = z*(1-z)*c + z*(1+z)*c
  ELSE
    z = z*(1-z)*c
  ENDIF
  |z|<real(p1)+4
  ;SOURCE: anders.frm
}

Chaos12 {; Peter Anders anders@physik.hu-berlin.de
  cx=real(pixel), cy=imag(pixel), xo=0, yo=-cy/2:
  x=xo*xo-yo*yo+cx*yo
  y=2*xo*yo+cy*xo
  z=x+y*i
  xo=x
  yo=y
  |fn1(z)|<real(p2)
  ;SOURCE: anders.frm
}

f1 {; Peter Anders anders@physik.hu-berlin.de
  c=pixel, n=0, z=imag(p1):
  n=n+1
  z=(fn1(c))^n*z
  abs(fn2(z)) <= real(p1)
  ;SOURCE: anders.frm
}

f3 {; Peter Anders anders@physik.hu-berlin.de
  x=real(p2), y=imag(p2), c=pixel, n=0, z=1:
  n=n+1
  z=(c^x+y)^n*z
  abs(fn2(z)) <= real(p1)
  ;SOURCE: anders.frm
}

f8 {; Peter Anders anders@physik.hu-berlin.de
  x=real(p2), y=imag(p2), c=pixel, n=0, z=0:
  n=n+1
  z=(c^x+y)^n+z
  |fn2(z)| <= real(p1)
  ;SOURCE: anders.frm
}

MiraSinPar {; Peter Anders anders@physik.hu-berlin.de
  xo=real(p1), yo=imag(p1), a=real(pixel), b=imag(pixel):
  f=a*xo+(2-2*a)*sin(xo)
  x=b*yo+f
  f=a*x+(2-2*a)*sin(x)
  y=-xo+f
  z=x+y*(0,1)
  xo=x
  yo=y
  |fn1(z)|<real(p2)
  ;SOURCE: anders.frm
}

NewWrong (xaxis) {; Peter Anders anders@physik.hu-berlin.de
  a=real(pixel), b=imag(pixel), r=p1:
  c=z
  a=(r/(r+1))*a+(real((a-b*(0,1))^(r-1))/(r*(a*a+b*b)^(r-1)))
  b=(r/(r+1))*b+(imag((a-b*(0,1))^(r-1))/(r*(a*a+b*b)^(r-1)))
  z=a+b*(0,1)
  |z-c| >0.0000001
  ;SOURCE: peternew.frm
}

Peter_104M {; Peter Anders anders@physik.hu-berlin.de
  z=p1, c=pixel:
  z=fn1(z^2)*fn2(c)*z
  abs(z)<=4
  ;SOURCE: anders.frm
}

Peter_2HalTan^2 {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, g=p2+1:
  c=z
  f1=tan(z)*tan(z)+p1
  f2=2*tan(z)/(cos(z)*cos(z))
  f3=2*((tan(z)*tan(z)+1)*cos(z)+tan(z)*2*sin(z))/(cos(z)*cos(z)*cos(z))
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}

Peter_3P02 {; Peter Anders anders@physik.hu-berlin.de
  z=pixel:
  z=z^z
  abs(fn1(z))<real(p2)
  ;SOURCE: anders.frm
}

Sierpinsky {; Use p1=2 for the triangle,
            ; and p1=(1.3,.5) for a strange thing
  z=pixel, j=(0,-1), k=(-1, 0):
  x=real(z)
  y=imag(z)
  y1=(y>.5)
  x1=(x>.5)
  a=y1*j
  b=x1*(y1==0)*k
  p=a+b
  z=p1*z+p
  |z|<=100
  ;SOURCE: esc-ifs.frm
}

Spider6 {; Peter Anders anders@physik.hu-berlin.de
  c=z=pixel, a=real(p2), b=imag(p2):
  r=z
  c=(c-z)*b
  z=(r-c)^(1/a)
  |fn1(c)| <= real(p1)
  ;SOURCE: anders.frm
}

Techno1 (xyaxis) {; Peter Anders anders@physik.hu-berlin.de
  xo=real(p1), yo=imag(p1):
  x=fn2(xo)*real(pixel)
  y=fn2(yo)*imag(pixel)
  z=x+y*(0,1)
  xo=x
  yo=y
  |fn1(z)|<real(p2)
  ;SOURCE: anders.frm
}

Techno2 (xyaxis) {; Peter Anders anders@physik.hu-berlin.de
  xo=real(p1), yo=imag(p1):
  x=fn2(xo)+real(pixel)
  y=fn2(yo)+imag(Pixel)
  z=x+y*(0,1)
  xo=x
  yo=y
  |fn1(z)|<real(p2)
  ;SOURCE: anders.frm
}

ULI_2 {
  z = Pixel: z = fn1(1/fn2(z+p1))
  |z| <= p2
  ;SOURCE: uli.frm
}

PolyTestII {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, r=p1:
  c=z
  f1=sin(z)
  f2=cos(z)
  f3=-sin(z)
  z=z-(p2+1)*f1/(f2-(f3*f1/(2*f2)))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}

