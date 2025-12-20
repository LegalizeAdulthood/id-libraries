;---------------------------------- formula file anders.frm -------------------------------------

2lambda32{z=p2,c=pixel:  ;p2<>1<>-1<>0
(real(z/c)>=imag(p1))*(z=z*(1-z)*c)+(real(z/c)<imag(p1))*(z=z*(1+z)*c),
|z|<real(p1)+4}

2mandel32{ z=p2,c=pixel:
(real(z/c)>=imag(p1))*(z=z*z+c)+(real(z/c)<imag(p1))*(z=z*z-c),
           |z|<real(p1)+4}

Chaos12 {cx=real(pixel),cy=imag(pixel),xo=0,yo=-cy/2:
         x=xo*xo-yo*yo+cx*yo;
         y=2*xo*yo+cy*xo;
         z=x+y*i;
         xo=x;
         yo=y;           
         |fn1(z)|<real(p2) }

Techno1 (xyaxis) {xo=real(p1),yo=imag(p1):
                  x=fn2(xo)*real(pixel);
                  y=fn2(yo)*imag(pixel);
                  z=x+y*(0,1);
                  xo=x;
                  yo=y;           
                  |fn1(z)|<real(p2) }

Techno2 (xyaxis) {xo=real(p1),yo=imag(p1):
                  x=fn2(xo)+real(pixel);
                  y=fn2(yo)+imag(Pixel);
                  z=x+y*(0,1);
                  xo=x;
                  yo=y;           
                  |fn1(z)|<real(p2) }

MiraSinPar { xo=real(p1),yo=imag(p1),a=real(pixel),b=imag(pixel):
             f=a*xo+(2-2*a)*sin(xo);
             x=b*yo+f;
             f=a*x+(2-2*a)*sin(x);
             y=-xo+f;
             z=x+y*(0,1);
             xo=x;
             yo=y;        
             |fn1(z)|<real(p2) }

f1 { c=pixel,n=0,z=imag(p1):
     n=n+1,
     z=(fn1(c))^n*z;
     abs(fn2(z)) <= real(p1) }

f3 { x=real(p2),y=imag(p2),c=pixel,n=0,z=1:
     n=n+1,
     z=(c^x+y)^n*z;
     abs(fn2(z)) <= real(p1) }

f8 { x=real(p2),y=imag(p2),c=pixel,n=0,z=0:
     n=n+1,
     z=(c^x+y)^n+z;
     |fn2(z)| <= real(p1) }

Spider6{ c=z=pixel,a=real(p2),b=imag(p2):
         r=z,
         c=(c-z)*b,
         z=(r-c)^(1/a),
         |fn1(c)| <= real(p1) }

Peter_104M{z=p1,c=pixel:
           z=fn1(z^2)*fn2(c)*z,
           abs(z)<=4 }

Peter_3P02 { z=pixel:
             z=z^z;           
             abs(fn1(z))<real(p2)}

Sierpinsky{ ;As you see, it's not my formula
       ;Use p1=2 for the triangle,
       ;and p1=(1.3,.5) for a strange thing
z=pixel, j=(0, -1), k=(-1, 0):
x=real(z),
y=imag(z),
y1=(y>.5)
x1=(x>.5)
a=y1*j
b=x1*(y1==0)*k
p=a+b
z=p1*z+p
|z|<=100
  ;SOURCE: esc-ifs.frm
;SOURCE: s.frm
  }

ULI_2 { ; As you see, it's not my formula as well
      z = Pixel:
      z = fn1(1/fn2(z+p1))
      |z| <= p2
   }
