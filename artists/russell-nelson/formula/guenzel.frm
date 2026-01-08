; GUENZEL.FRM
; 1994,1995 by Siegbert G.Guenzel
;                    CIS 100543,1216
; This file includes the guenzel.formulas SGG001 to SGG080.
; All earlier guenzel.frm's you can overwrite.

; 23.10.1994
SGG001 {
   z=pixel:
   z=z*exp(z)-(sqr(sqr(z)+pixel))
}

; 23.10.1994
SGG002 {
   z=pixel:
   z=z*cosh(1/z)-(exp(z)-pixel)
}

; 23.10.1994
SGG003 {
   z=pixel:
   z=sin(z+sqr(z))-1/pixel
}

; 24.10.1994
SGG004 {
   z=1/pixel:
   z=log(z)+sqr(z+pixel)
}

; 27.10.1994
SGG005 {
   z=pixel,t=p1/p2+.5
   z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel)),
   |z|<=t+2
}

; 27.10.1994 "Carnival"
SGG006 {
   z=pixel
   z=z*(log(z)/sqr(1/z+cosh(z*z)+pixel))
}

; 28.10.1994
SGG007 {
   z=pixel
   z=z*log(z)/sqr(1/z+cosh(z*z))
   |z|<=2.5
}

; 28.10.1994
SGG008 {
   z=pixel
   z=z+cosxx(z)*flip(z/sqr(z))
}

; 28.10.1994
SGG009 {
   z=pixel
   z=cotan(sqr(z))
}

; 28.10.1994
SGG010 {
   z=pixel
   z=cotanh(z)*real(z)/sinh(z)
}

; guenzel1.frm
; by Siegbert G. Guenzel, CIS100543,1216
;
; I dedicate these formulas to Robert W. Carr, M.D.,
; who is an outstanding fractal artist -
; and a nice guy too!

;01.01.1995
SGG011 {
   z=pixel
   z=sqr(z)*(sin(z)/cos(z*z))
   |z|<=2
}

;01.01.1995 
SGG012 {
   z=pixel
   b=sqr(z*z)
   z=sqr(b)/log(z)
   b=sqr(z)/log(b)
   |z|<=3
}

;01.01.1995
SGG013 {
   z=y=x=pixel
   z=exp(z)/(sin(y)+sqr(x))
   |z|<=8
}

;01.01.1995
SGG014 {
   z=y=pixel+sqr(pixel)
   z=exp(z)*sin(y)/cos(z)
   y=sin(z)*exp(y)*cos(y)
   |z|<=3
}

;01.01.1995
SGG015 {
   z=pixel  
   z=sqr(z)/sin(z)+1/pixel
   |z|<=4
}

;08.01.1995
SGG016  {
        z=1/pixel
        z1=exp(z)
        z2=sin(z)+z1*.666-z
        z=z+p1*(1/sqr(z2))+z1
}

;10.01.1995
SGG017	{; modified Carr-95.frm
	z=c=pixel;
	z=sqr(z*z)+sqr(c*c);
	z=sqr(z)+sin(c);
	z=sqr(z*z*z)+sin(c*c),
	|z|<=4
}

;10.01.1995
SGG018	{; modified Carr-95.frm
	z=c=sqr(pixel*pixel*pixel);
	z=sqr(z*z)+sqr(c*c);
	z=sqr(z)+sin(c);
	z=sqr(z*z)*tan(c*c),
	|z|<=10
}

;10.01.1995
SGG019	{; modified Carr-95.frm
	z=c=sqr(pixel*pixel*pixel);
	z=sqr(z*z)+sqr(c*c);
	z=sqr(c)+cos(z);
	z=sqr(z*z)*tan(c*c),
	|z|<=2
}

;10.01.1995
SGG020	{; modified Carr-95.frm
	z=c=1/pixel+sqr(pixel);
	z=sqr(z*z)+sqr(c*c);
	c=sin(z)*sqr(z/c)
	z=sqr(z*z*z)+sin(c*c),
	|z|<=4
}

;10.01.1995
SGG021	{; modified Carr-95.frm
	z=c=1/pixel+sqr(pixel);
	z=sqr(z)+cosh(c*z);
	c=sin(z)*sqr(z*c)
	z=sqr(z)+sin(c*z),
	|z|<=4
}


; guenzel2.frm
; by Siegbert G. Guenzel, CIS100543,1216

;14.01.1995
SGG022 {
   z=pixel:
   a=cos(z);
   b=sin(a)+z;
   z=z-p1*(a/b)/cosh(b),
   |z|<=2
}

;14.01.1995 
SGG023 {
   z=a=sqr(pixel*pixel):
   a=z*exp(log(a));
   z=a/sqr(z);
   a=sinh(z)*log(z),
   |z|<=6
}

;14.01.1995
SGG024	{
   z=pixel:
   x=sin(z)^z;
   y=sqr(x)+z;
   z=z*z-exp(x+y),
   |z|<=100
}

;14.01.1995
SGG025 {
   z=pixel+sqr(pixel):
   a=exp(z);
   b=sin(z)*(a-z);
   z=b-p1*b/tanh(a)-sqr(b),
   |z|<=3
}

;14.01.1995
SGG026 {; Edited for Fractint v. 20 by George Martin, 10/98
  z=1/pixel:
  a=b=pixel
  z=sqr(z)+a
  b=a*sin(z)-b
  a=sin(z)+b/0.33
  |z|<=20
  ;SOURCE: guenzel.frm
}

;14.01.1995
SGG027  {
   z=pixel:
   c=cos(z);
   s=sqr(z);
   h=cosh(z);
   y=c+s/h;
   z=sqr(z+y*y-c-s-h),
   |z|<=2
}

;14.01.1995
SGG028  {
   z=pixel:
   c=cos(z);
   s=sqr(z);
   h=cosh(z);
   y=c+s/h;
   z=sqr(z+y*y+c+s+h),
   |z|<=40
}

;14.01.1995
SGG029  {
   z=pixel:
   c=cos(z);
   s=sqr(z);
   h=cosh(z);
   y=c+s/h;
   z=sqr(z+y*y)+c+s/h,
   |z|<=40
}

;14.01.1995
SGG030  {
   z=pixel:
   e=exp(z);
   l=log(z);
   h=cosh(z);
   y=e-l/h;
   z=sinh((z+y^y)-y)+e+h*l,
   |z|<=20}

;16.01.1995
SGG031  {
   z=pixel:
   e=exp(z);
   h=cosh(z);
   y=e+e*(e-h);
   z=sinh((z+y^y)-y)+log(z),
   |z|<=100
}

;16.01.1995
SGG032 {; Edited for Fractint v. 20 by George Martin 10/98
  z=x=y=pixel:
  x=sqr(z*z*z)
  y=sin(z)+1/z
  x=z+p1+exp(y-x)
  y=z+cos(sqr(x*y))
  z=x*x-cosh(y)
  |z|<=4
  ;SOURCE: guenzel.frm
}

; guenzel3.frm
; by Siegbert G. Guenzel, CIS 100543,1216

;27.01.1995
SGG033 {
   z=pixel:
   a=sqr(z)*z;
   b=sin(a)-z;
   z=a/b+exp(z),
   |z|<=40
}

;27.01.1995
SGG034 {
   z=pixel+cos(pixel):
   a=exp(z);
   b=sqr(z)+1/a;
   z=b-p1*b/sqr(a)+cosh(b),
   |z|<=2
}

;27.01.1995 
SGG035 {
   z=x=1/pixel:
   z=z*z+sin(x);
   x=1/z+sqr(x),
   |z|<=5
}

;28.01.1995
SGG036 {
   z=1/pixel:
   x=exp(z)*z+z;
   y=sqr(x)/(z*z);
   z=z*z-exp(x+y),
   |z|<=4
}

;28.01.1995
SGG037 {; Edited for Fractint v. 20 by George Martin, 10/98
  z=1/pixel:
  a=b=pixel
  b=a/exp(cos(z))+b
  a=sqr(z*z*z)-b
  z=1/z+a+log(b)
  |z|<=4
  ;SOURCE: guenzel.frm
}

; guenzel4.frm
; by Siegbert G. Guenzel, CIS 100543,1216

;28.01.1995
SGG038 {
   z=pixel:
   a=tanh(z);
   b=sqr(a)+sin(z);
   c=cosxx(z);
   d=c+b/a;
   z=log(z+d*d-c-a*b),
   |z|<=2
}

;28.01.1995
SGG039 {; Edited for Fractint v. 20 by George Martin, 10/98
  z=sqr(pixel):
  a=b=pixel
  z=cosxx(z)+sqr(b)
  b=a*log(z)-exp(a)
  a=sin(z)-cosh(z)
  |z|<=6
  ;SOURCE: guenzel.frm
}

;29.01.1995
SGG040 {
   z=1/pixel:
   x=exp(z)*z+z;
   y=sqr(x)/(z*z);
   z=z*z-exp(x+y),
   |z|<=4
}

;29.01.1995
SGG041 {
   z=pixel:
   x=sin(z)^z;
   y=sqr(x)+z;
   z=log(x)-y+tan(x+y),
   |z|<=4
}

;05.02.1995
SGG042 {
   z=sqr(pixel):
   a=sin(z);
   b=sqr(z);
   c=exp(z);
   y=c+b*1/a;
   z=sqr(z+y*y)+c,
   |z|<=4
}

;05.02.1995
SGG043 {; modified Carr-95.frm
	z=c=pixel+sqr(pixel);
	z=sqr(z*z)+sin(c*c);
	c=sin(z)*sqr(z/c)
	z=log(z*z*z*z)+exp(1/(c*c)),
	|z|<=20
}

;05.02.1995 
SGG044 {
   z=pixel:
   b=sqr(z*z);
   c=b*3.14159265;
   z=sqr(b)/sqr(z)+c;
   b=sqr(z)/sin(c),
   |z|<=3
}

;05.02.1995
SGG045 {
   z=y=pixel:
   y=sinh(z*3.1415926);
   z=sqr(z)/sin(z)+log(y),
   |z|<=4
}

;06.02.1995 
SGG046 {; Edited for Fractint v. 20 by George Martin, 10/98
  z=a=pixel*pixel:
  b=3.14159265
  a=z*sqr(a)
  b=b+log(a)
  z=a/sqr(z)
  a=sinh(z)+b
  |z|<=4
  ;SOURCE: guenzel.frm
}

; guenzel5.frm
; by Siegbert G. Guenzel, CIS 100543,1216

;15.02.1995 
SGG047 {
   z=pixel:
   v=cos(z); 
   w=flip(z);
   x=sqr(z);
   y=exp(z);
   z=((v*v)*(w*w))/((x*x)*(y*y)),
   |z|<=50
}

;07.02.1995 
SGG048 {
   z=pixel:
   v=sqr(z); 
   w=sin(z);
   x=log(z);
   y=cos(z);
   z=((v*v)*(w*w))/((x*x)*(y*y)),
   |z|<=50
}

;13.02.1995 
SGG049 {; Edited by George Martin to remove extra ":"
  z=pixel+p1:
  y=sin(z)+p2
  z=sqr(z)*y
  |z|<=10
  ;SOURCE: guenzel.frm
}

;13.02.1995 
SGG050 {  
   z=sqr(pixel):
   z=(p1*cosxx(z))/sqr(p2)+1/z,
   |z|<=20
 }

;13.02.1995
SGG051 {
   z=x=1/pixel:
   z=flip(z)/x;
   z=sqr(z*z);
   x=x+sqr(z),
   |z|<=4
  }

;13.02.1995 
SGG052 {  
   z=1/pixel+p1:
   x=sqr(z);
   x=cos(z)+0.31;   
   z=x+log(z*z);
    |z| <=35
 }

;14.02.1995
SGG053 {
z=x=pixel:
z=sqr(1/z)+cotan(x);
z=sqr(z*z)*(x+pixel)+cotan(x);
x=cotan(z-sqr(x)),
|z|<=3
 }

;15.02.1995
SGG054 {
   z=pixel:
   x=cotanh(z)+conj(z*0.337)/pixel 
   z=x*log(z)-(z*z)+p1,
   |z|<=10
   }

; guenzel6.frm
; by Siegbert G. Guenzel, CIS 100543,1216

;16.02.1995 
SGG055 {
   z=sqr(pixel),x=pixel:
   x=z*z*z-pixel;
   x=log(x);
   z=flip(z)*(1/x),
   |z|<=6
   }

SGG056 {
  z=x=pixel:
  x=cosxx(z^z);
  z=sqr((z)*(z))+conj(x*pixel),
  |z|<=4
  }

SGG057 {
   z=1/pixel+p1,x=real(p2)+pixel:
   x=log(z^z+pixel) ;  
   z=z+sqr(x),
   |z|<20
 }
 
SGG058 {;18.02.95
   z=x=log(pixel):
   z=(z*z+x);
   x=sqr(z)*sqr(x);
   z=(conj(x-1)^2)*sin(x),
   |z| <=pixel-1
}

SGG059 {;18.02.95
    z=x=sin(1/pixel):
    z=z^sqr(x+0.31);
    x=cos(z),
    |z|<=4
}

SGG060 {;18.02.1995
   z=pixel, x=p1, y=p2:
   x=x/(1/y+0.87);
   y=sqr(y)/flip(x+pixel);
   z=(x*x)/(cos(y*y))+pixel,
   |z|<=100
  }

SGG061 { ;19.02.1995
  z=pixel:
  x=cosxx(z*z)+sin(z);
  y=sqr(x*x)/(1.5/z-x^2);
  z=flip((x*x)/(y+3.1415)),
  |z|<=6
}

SGG062 {;21.02.95
   z=x=abs(pixel):
   z=(z*z+x);
   x=sqr(z)*sqr(x);
   z=(conj(x-1)^2)*sin(x),
   |z| <=20
}

SGG063 {;21.02.95
    z=x=abs(sin(1/pixel)):
    z=z^sqr(x+0.31);
    x=cos(z),
    |z|<=4
}

SGG064 {;21.02.1995
   z=real(pixel), x=p1, y=p2:
   x=x/(1/y+0.87);
   y=sqr(y)/flip(x+pixel);
   z=(x*x)/(cos(y*y))+pixel,
    |z|<=100
  }

SGG065 { ;21.02.1995
  z=imag(1/pixel):
  x=cosxx(z*z)+sin(z);
  y=sqr(x*x)/(1.5/z-x^2);
  z=flip((x*x)/(y+3.1415)),
  |z|<=6
}

SGG066 { ;21.02.1995
  z=abs(pixel):
  x=cosxx(z*z)+sin(z);
  y=sqr(x*x)/(1.5/z-x^2);
  z=flip((x*x)/(y+3.1415)),
  |z|<=6
}

SGG067 {;24.02.95
   z=x=real(sqr(pixel))*sqr(pixel):
   x=cosxx(z)+0.087;
   z=1/sin(x^z),
   |z|<=6
}

SGG068 {;24.02.95
   z=x=sqr(pixel)*sqr(pixel):
   x=cosxx(z)+0.087;
   z=1/sin(x^z),
   |z|<=3
}

SGG069 {;24.02.95
   z=x=real(sqr(pixel)*sqr(pixel)):
   x=cosxx(z)+0.087;
   z=abs(1/sin(x^z)),
   |z|<=100
}

SGG070 {;05.03.95
    z=x=pixel*0.87: 
    x=conj(z-(x+0.11));
    z=1.11/(flip(z^x)),
    |z|<=8
}

SGG071 {;05.03.95
    z=pixel*0.87,x=sqr(pixel): 
    x=conj(z-(x+0.11));
    z=1.11/(flip(z^x)),
    |z|<=x/(log(z))+2
}

SGG072	 {; 06.03.95
  z=pixel,x=1/pixel,y=log(x):
  y=z,w=p1*x*sqr(y);
  x=x*(1/y)*flip(x);
  z=p1*(z*z+abs(y)),
  |z|<=10
 }

SGG073 {; 09.03.95
   z=x=conj(pixel):
   x=sin((z)/conj((z)-(x*x)));
   z=z*((1/x)+sqr(1/x)),
   |z|<=10
  }

SGG074 {; 10.03.95
      z=pixel,x=0.87:
      x=z*z+x;
      z=sqr(sin(x/z)),
      z<=real(pixel)
}

SGG075 {; 10.03.95
   z=0, x=sqr(1/pixel):
   z=sqr(x)+z;
   x=sin(z)+x,
   |z|<=8
  }

SGG076 {; 10.03.95
z=pixel,x=sqr(pixel*pixel):
x=x+sqr(z);
z=cosxx(z)+1/x, 
|z|<=20
}

SGG077 {;modCarr-726
		 ;04.03.95
z=pixel-1/sqr(conj(0.5/pixel)),
c=flip(conj((1/pixel)/(1/(pixel-1)))):
z=(conj(z*z*z+c)+sqr(z+0.87))/2,
|z| <=8
}

SGG078 {;modCarr-727
		 ;04.03.95
z=pixel-1/sqr(conj(0.5/pixel-1)),
c=flip(conj((1/pixel)/(1/pixel-1))):
z=(conj(z+c*c)+cos(1.33))/2,
|z| <=10
}

SGG079 {;modCarr-728
		 ;04.03.95
z=(1/pixel)-1/sqr(conj(0.5/pixel-1)),
c=sinh(conj((1/pixel)/(1/pixel-0.75))):
z=(conj(1/z+c*c)+cosh(1.87))/2,
|z| <=10
}

SGG080 {;modCarr-729
		 ;05.03.95
z=(1/pixel)-1/sqr(conj(0.5/pixel-1))+2.224,
c=log((conj((1/pixel)/(1/pixel-0.75)))+2.124):
z=(conj(z*z*z*z+c)+(cosh(0.924))/7),
|z| <=10
}
