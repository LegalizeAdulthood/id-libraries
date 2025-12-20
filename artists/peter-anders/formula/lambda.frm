;------------------------------------- formula file lambda.frm ----------------------------------------

Lambda01 { z=pixel:
	          z=z*(p1-z),
                       |fn1(z)|<real(p2) }
Lambda02 { z=p1:
	          z=z*(pixel-z),
                       |fn1(z)|<real(p2) }
Lambda03 (XAXIS) { z=0.5, c=pixel:
	          z=c*z*(1-z),
                       |fn1(z)|<real(p2) }
Lambda04 (XAXIS) { z=0.422649730811, c=pixel:
	          z=c*z*(1-z)*(2-z),
                       |fn1(z)|<real(p2) }
Lambda05 (XAXIS) { z=0.38197, c=pixel:
	          z=c*z*(1-z)*(2-z)*(3-z),
                       |fn1(z)|<real(p2) }
Lambda06 (XAXIS) { z=p1, c=pixel:
	          z=c*z*(1-z)*(-1-z),
                       |fn1(z)|<real(p2) }
Lambda07 (XAXIS) { z=0.577350269189, c=pixel:
	          z=c*z*(1-z)*(-1-z),
                       |fn1(z)|<real(p2) }
Lambda08 (XAXIS) { z=p1, c=pixel:
	          z=c*z*(1-z)*(-1-z)*(2-z)*(-2-z),
                       |fn1(z)|<real(p2) }
Lambda09 (XAXIS) { z=0.54391225591, c=pixel:
	          z=c*z*(1-z)*(-1-z)*(2-z)*(-2-z),
                       |fn1(z)|<real(p2) }
Lambda10 (XAXIS) { z=1.64443286815, c=pixel:
	          z=c*z*(1-z)*(-1-z)*(2-z)*(-2-z),
                       |fn1(z)|<real(p2) }
Lambda11 { z=(p1/(3^0.5)), c=pixel:
	          z=c*z*(p1-z)*(-p1-z),
                       |fn1(z)|<real(p2) }
Lambda12 { z=((0.3*p1^2+0.3*p2^2+(0.09*(p1^2+p2^2)^2-0.2*p1^2*p2^2)^0.5)^0.5), c=pixel:
	          z=c*z*(p1-z)*(-p1-z)* (p2-z)*(-p2-z),
                       |fn1(z)|<100 }
Lambda13 { z=((0.3*p1^2+0.3*p2^2-(0.09*(p1^2+p2^2)^2-0.2*p1^2*p2^2)^0.5)^0.5), c=pixel:
	          z=c*z*(p1-z)*(-p1-z)* (p2-z)*(-p2-z),
                       |fn1(z)|<100 }
Lambda14{ z=pixel,c=p1:
		z=c*z*(1-z);
                            |fn1(z)|<real(p2) }
TwoLogistic {z=p1,c=pixel:
	        r=rand;
	        if r<0.5 
                        z=c*z*(1-z);
                     if r>=0.5
                        z=c*z*(z-1);
 	        |fn1(z)|<real(p2) }
Bifurcation {z=p1,c=pixel:
             z=z+c*fn1(z)*(1-fn1(z)),
             |fn2(z)|<real(p2) }
Bif+pi {z=p1,c=pixel,pi=3.14159265:
             z=z+c*fn1(pi*z),
             |fn2(z)|<real(p2) }
Bif=pi {z=p1,c=pixel,pi=3.14159265:
             z=c*fn1(pi*z),
             |fn2(z)|<real(p2) }
Biflambda {z=p1,c=pixel:
             z=c*fn1(z)*(1-fn1(z)),
             |fn2(z)|<real(p2) }
Bifstewart {z=p1,c=pixel:
             z=c*fn1(z)*fn1(z)-1,
             |fn2(z)|<real(p2) }
Bifmay {z=p1,c=pixel,b=imag(p2):
             z=c*z/((1+z)^b),
             |fn1(z)|<real(p2) }
AbsLambdaM1(ORIGIN){ xo=0.5,yo=0,cx=real(pixel),cy=imag(pixel):
                x=cx*(xo-xo*xo+yo*yo)-cy*(yo-2*xo*yo);
                y=cy*(xo-xo*xo+yo*yo)+cx*(yo-2*xo*yo);
		xo=abs(x);
		yo=abs(y);
                abs(fn1(x*x+y*y))<real(p2)}
AbsLambdaJ1{ cx=real(p1),cy=imag(p1),xo=real(pixel),yo=imag(pixel):
                x=cx*(xo-xo*xo+yo*yo)-cy*(yo-2*xo*yo);
                y=cy*(xo-xo*xo+yo*yo)+cx*(yo-2*xo*yo);
		xo=abs(x);
		yo=abs(y);
                abs(fn1(x*x+y*y))<real(p2)}
AbsLambdaM2(ORIGIN){ xo=0.5,yo=0,cx=real(pixel),cy=imag(pixel):
                x=cx*(xo-xo*xo+yo*yo)-cy*(yo-2*xo*yo);
                y=cy*(xo-xo*xo+yo*yo)+cx*(yo-2*xo*yo);
                xo=|x|;
                yo=|y|;
                abs(fn1(x*x+y*y))<real(p2)}
AbsLambdaJ2{ cx=real(p1),cy=imag(p1),xo=real(pixel),yo=imag(pixel):
                x=cx*(xo-xo*xo+yo*yo)-cy*(yo-2*xo*yo);
                y=cy*(xo-xo*xo+yo*yo)+cx*(yo-2*xo*yo);
                xo=|x|;
                yo=|y|;
                abs(fn1(x*x+y*y))<real(p2)}
AbsLambdaM3{ xo=0.5,yo=0,cx=real(pixel),cy=imag(pixel):
                x=cx*abs(xo-xo*xo+yo*yo)-cy*abs(yo-2*xo*yo);
                y=cy*abs(xo-xo*xo+yo*yo)+cx*abs(yo-2*xo*yo);
                xo=x;
                yo=y;
                abs(fn1(x*x+y*y))<real(p2)}
AbsLambdaJ3(xaxis){ cx=real(p1),cy=imag(p1),xo=real(pixel),yo=imag(pixel):
                x=cx*abs(xo-xo*xo+yo*yo)-cy*abs(yo-2*xo*yo);
                y=cy*abs(xo-xo*xo+yo*yo)+cx*abs(yo-2*xo*yo);
                xo=x;
                yo=y;
                abs(fn1(x*x+y*y))<real(p2)}
AbsLambdaM4{ xo=0.5,yo=0,cx=real(pixel),cy=imag(pixel):
                x=cx*|xo-xo*xo+yo*yo|-cy*|yo-2*xo*yo|;
                y=cx*|yo-2*xo*yo|+cy*|xo-xo*xo+yo*yo|;
                xo=x;
                yo=y;
                abs(fn1(x*x+y*y))<real(p2)}
AbsLambdaJ4(xaxis){ cx=real(p1),cy=imag(p1),xo=real(pixel),yo=imag(pixel):
                x=cx*|xo-xo*xo+yo*yo|-cy*|yo-2*xo*yo|;
                y=cx*|yo-2*xo*yo|+cy*|xo-xo*xo+yo*yo|;
                xo=x;
                yo=y;
                abs(fn1(x*x+y*y))<real(p2)}
