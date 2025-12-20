;-------------------------------------- formula file peterman.frm --------------------------------------------
Peter_1A01(XAXIS) { z=p1, c=pixel:
                    z=z*z+c;           
                    |fn1(z)|<real(p2) }
Peter_1A02(XAXIS){z=p1, c=pixel:
                  z=z*z+c;           
                  abs(fn1(z))<real(p2)}
Peter_1A03(XAXIS){z=p1, c=pixel:
                  z=z*z+c;           
                  |fn1(z)|>real(p2) }
Peter_1A04(XAXIS){z=p1, c=pixel:
                  z=z*z+c;           
                  abs(fn1(z))>real(p2)}
Peter_1A05{ z=p1, c=pixel:
            z=z*z+c;           
       |fn1(real(z))-fn2(imag(z))|<real(p2) }
Peter_1A06{ z=p1, c=pixel:
            z=z*z+c;           
       abs(fn1(real(z))-fn2(imag(z)))<real(p2) }
Peter_1A07{ z=p1, c=pixel:
            z=z*z+c;           
       |fn1(real(z))-fn2(imag(z))|>real(p2) }
Peter_1A08{ z=p1, c=pixel:
            z=z*z+c;           
       abs(fn1(real(z))-fn2(imag(z)))>real(p2) }
Peter_1A09(XAXIS) { z=p1, c=pixel:
                    d=z;
                    z=z*z+c,          
       |fn1(real(z))-fn1(real(d))|>real(p2) }
Peter_1A10 { z=p1, c=pixel:
             d=z;
             z=z*z+c,          
       |fn1(imag(z))-fn1(imag(d))|>real(p2) }
Peter_1A11 { z=p1, c=pixel:
             d=z;
             z=z*z+c,          
       |fn1(real(z))-fn1(real(d))|<real(p2) }
Peter_1A12 { z=p1, c=pixel:
             d=z;
             z=z*z+c,          
       |fn1(imag(z))-fn1(imag(d))|<real(p2) }
Peter_1A13 (XAXIS) { z=p1, c=pixel:
                     d=z;
                     z=z*z+c,          
       abs(fn1(real(z))-fn1(real(d)))>real(p2) }
Peter_1A14 { z=p1, c=pixel:
             d=z;
             z=z*z+c,          
       abs(fn1(imag(z))-fn1(imag(d)))>real(p2) }
Peter_1A15 (XAXIS) { z=p1, c=pixel:
                     d=z;
                     z=z*z+c,          
       abs(fn1(real(z))-fn1(real(d)))<real(p2) }
Peter_1A16 { z=p1, c=pixel:
             d=z;
             z=z*z+c,          
       abs(fn1(imag(z))-fn1(imag(d)))<real(p2) }          
Peter_2A01(XAXIS){z=c=pixel:
                  z=z*z+c;           
                  |fn1(z)|<real(p2) }
Peter_2A02(XAXIS){z=c=pixel:
                  z=z*z+c;           
                  abs(fn1(z))<real(p2)}
Peter_2A03(XAXIS){z=c=pixel:
                  z=z*z+c;           
                  |fn1(z)|>real(p2) }
Peter_2A04(XAXIS){z=c=pixel:
                  z=z*z+c;           
                  abs(fn1(z))>real(p2)}
Peter_2A05{ z=c=pixel:
            z=z*z+c;           
       |fn1(real(z))-fn2(imag(z))|<real(p2) }
Peter_2A06{ z=c=pixel:
            z=z*z+c;           
       abs(fn1(real(z))-fn2(imag(z)))<real(p2) }
Peter_2A07{ z=c=pixel:
            z=z*z+c;           
       |fn1(real(z))-fn2(imag(z))|>real(p2) }
Peter_2A08{ z=c=pixel:
            z=z*z+c;           
       abs(fn1(real(z))-fn2(imag(z)))>real(p2) }
Peter_2A09(XAXIS){z=c=pixel:
                  d=z;
                  z=z*z+c,          
       |fn1(real(z))-fn1(real(d))|>real(p2) }
Peter_2A10 { z=c=pixel:
             d=z;
             z=z*z+c,          
       |fn1(imag(z))-fn1(imag(d))|>real(p2) }
Peter_2A11 { z=c=pixel:
             d=z;
             z=z*z+c,          
       |fn1(real(z))-fn1(real(d))|<real(p2) }
Peter_2A12 { z=c=pixel:
             d=z;
             z=z*z+c,          
       |fn1(imag(z))-fn1(imag(d))|<real(p2) }
Peter_2A13(XAXIS){z=c=pixel:
                  d=z;
                  z=z*z+c,          
       abs(fn1(real(z))-fn1(real(d)))>real(p2) }
Peter_2A14 { z=c=pixel:
             d=z;
             z=z*z+c,          
       abs(fn1(imag(z))-fn1(imag(d)))>real(p2) }
Peter_2A15(XAXIS){z=c=pixel:
                  d=z;
                  z=z*z+c,          
       abs(fn1(real(z))-fn1(real(d)))<real(p2) }
Peter_2A16 { z=c=pixel:
             d=z;
             z=z*z+c,          
       abs(fn1(imag(z))-fn1(imag(d)))<real(p2) }                          
Peter_3A01 { z=p1, c=pixel:
             z=z*z+c;           
             |real(z)|<100  || |imag(z)|<100 }
Peter_3A02 { z=p1, c=pixel:
             z=z*z+c;           
       abs(real(z))<100  ||  abs(imag(z))<100 }
Peter_3A03 { z=p1, c=pixel:
             z=z*z+c;           
       |real(z)|<100 && |imag(z)|<100 }
Peter_3A04 { z=p1, c=pixel:
             z=z*z+c;           
       abs(real(z))<100 && abs(imag(z))<100 }
Peter_3A05{ z=p1, c=pixel:
            z=-z*z+c;           
            |fn1(z)|<real(p2) }
Peter_3A06{ z=p1, c=pixel:
            z=z*z-c;           
            |fn1(z)|<real(p2) }
Peter_3A07{ z=p1, c=pixel:
            z=(z+c)*(z+c);           
            |fn1(z)|<real(p2) }
Peter_3A08{ z=p1, c=pixel:
            z=(z-c)*(z+c);           
            |fn1(z)|<real(p2) }
Peter_3A09{ z=p1, c=pixel:
            z=(z-c)*(z-c);           
            |fn1(z)|<real(p2) }
AbsMandel{xo=0,yo=0,cx=real(pixel),cy=imag(pixel):
          x=xo*xo-yo*yo+cx;
          y=2*xo*yo+cy;
          xo=abs(x);
          yo=abs(y);        
          |fn1(x)|<real(p2) &&  |fn1(y)|<real(p2)}
AbsJulia(origin){cx=real(p1),cy=imag(p1),xo=real(pixel),yo=imag(pixel):
                 x=xo*xo-yo*yo+cx;
                 y=2*xo*yo+cy;
                 xo=abs(x);
                 yo=abs(y);        
                 |fn1(x)|<real(p2) &&  |fn1(y)|<real(p2)}
Mandellike1(yaxis){xo=real(p1),yo=imag(p1):
                   x=(xo*xo-yo*yo)*(0,1)+real(pixel);
                   y=2*xo*yo*(0,1)+imag(pixel);
                   z=x+flip(y);
                   xo=x;
                   yo=y;           
                   |fn1(z)|<real(p2) }
Mandellike2(xaxis){xo=real(p1),yo=imag(p1):
                   x=xo*xo-yo*yo+real(pixel);
                   y=2*xo*yo+imag(pixel);
                   z=x+flip(y)
                   xo=y;
                   yo=x;           
                   |fn1(z)|<real(p2) }
Mandellike3 {z=p1,c=pixel:
             z=fn2(z)+c;
             |fn1(z)|<real(p2) }
Mandellike4 {z=p1,c=pixel:
             z=fn2(z)*c;
             |fn1(z)|<real(p2) }        
Mandellike5 {z=p1,c=pixel:
             z=fn2(z)*c+c;
             |fn1(z)|<real(p2) }
Mandellike6 {z=(0,0),c=fn2(pixel):
             z=z*z+c;
             |fn1(z)|<real(p2) }
Mandellike7 {z=(0,0),c=pixel,c=c^real(p1)-imag(p1):
             z=z*z+c;
             |fn1(z)|<real(p2) }
Mandellike8 {z=1/pixel,c=pixel:
             z=z*z+c;
             |fn1(z)|<real(p2) }
Mandellike9 {z=pixel,c=1/pixel:
             z=z*z+c;
             |fn1(z)|<real(p2) }
AbsMandel2 { xo=0,yo=0,cx=real(pixel),cy=imag(pixel):
             x=xo*xo-yo*yo+cx;
             y=2*xo*yo+cy;
             xo=abs(x);
             yo=abs(y);        
             |fn1(x)|<real(p2)  ||  |fn1(y)|<real(p2)}
AbsJulia2(origin){cx=real(p1),cy=imag(p1),xo=real(pixel),yo=imag(pixel):
                  x=xo*xo-yo*yo+cx;
                  y=2*xo*yo+cy;
                  xo=abs(x);
                  yo=abs(y);        
                  |fn1(x)|<real(p2)  ||  |fn1(y)|<real(p2)}
AbsMandel3 { xo=0,yo=0,cx=real(pixel),cy=imag(pixel):
             x=xo*xo-yo*yo+cx;
             y=2*xo*yo+cy;
             xo=abs(x);
             yo=abs(y);
             |fn1(x)|<real(p2)}
AbsJulia3(origin){cx=real(p1),cy=imag(p1),xo=real(pixel),yo=imag(pixel):
                  x=xo*xo-yo*yo+cx;
                  y=2*xo*yo+cy;
                  xo=abs(x);
                  yo=abs(y);
                  |fn1(x)|<real(p2)}
Mandellike10 { xo=0,yo=0,cx=real(pixel),cy=imag(pixel):
               x=xo*xo-yo*yo+cx;
               y=2*xo*yo+cy;
               xo=fn2(x);
               yo=fn2(y);        
               |fn1(x)|<real(p2)  ||  |fn1(y)|<real(p2)}
Mandellike11 { xo=0,yo=0,cx=real(pixel),cy=imag(pixel):
               x=xo*xo-yo*yo+cx;
               y=2*xo*yo+cy;
               xo=x+p1;
               yo=y+p1;        
               abs(fn1(x*x+y*y))<real(p2)}
Mandellike12 { z=(0,0),c=pixel:
               z=z*z+c;
               z=z^p1;
               abs(fn1(z))<real(p2)}
Mandellike13{ z=fn1(pixel) , c=fn2(pixel) , a=p1 , b=p2 , d=p3:
              z=z^a+c^b*z^d
              z=fn3(z) 
              |z|<100}

