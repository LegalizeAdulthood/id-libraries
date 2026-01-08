comment {
These Fractint formulas are (c) 1996 Loren G. Dobert
No commercial use without permission.
This file may be distributed, free of charge, by any means
as long as it is unaltered.
Always look for the newest version of this file in the
Graphics Developers section of Compuserve.
I can be contacted at:
CIS: 72332,507
AOL: LorenD3207
Have fun with them, and if you change any of them, give me a
credit line. Many are formulas by other people that I've
fooled around with, look up the originals.
}

LGDF0001 { ;Inspired by Bob Carr
           ;LGD (c)1996 [72332,507]
         z=pixel,
         c=1/fn1(pixel*666):
         z=z*(c+sqr(p1*p2))+z
         c=sqr(flip(cos(c)))+c
         |z|<=4
         }

LGDF0002 { ;A mangled Mandelbrot
           ;LGD (c)1996 [72332,507]
	   z=pixel, c=z+pixel:
	   z=z+sqr(z)+(c*p2)
	   |z|<=p1
	   }

LGDF0003 { ;A mangled Mandelbrot
           ;LGD (c)1996 [72332,507]
	    c=z=pixel:
	    z=z*z+fn1(c^2)
	    |z|<=p1
	    }

LGDF0004 { ;Headless Mandelbrot
           ;Set fn1 to log, p1 to 4
           ;p2 to about .765 for
           ;the headless Mandelbrot
           ;LGD (c)1996 [72332,507]
	 z=pixel, c=pixel*p2:
	 z=z+z^2+c+(fn1(c^z))
	 |z|<=p1
	 }

LGDF0005 { ;What it is again
           ;LGD (c)1996 [72332,507]
	  c=z=pixel:
	  z=z*z+c^p2+(fn1(c^z))
	  |z|<=p1
	  }

LGDF0006 { ;What it is more
           ;Use a big bailout (p1>1000000)
           ;LGD (c)1996 [72332,507]
	  c=z=pixel:
	  z=z*p3+(fn1(z^p2))/c
	  |z|<=p1
	  }

LGDF0007 { ;Guess
           ;LGD (c)1996 [72332,507]
	  c=fn1(pixel), z=pixel:
	  z=z*(c+z)
	  |z|<=p1
	  }

LGDF0008 { ;Guess Again
           ;LGD (c)1996 [72332,507]
	  c=z=pixel, a=c+z+pixel:
	  z=z*(z+fn1(p2)*a)
	  |z|<=p1
	  }

LGDF0009 (XAXIS) {;TwoFace Formula
                  ;Modified Sylvie Gallet frm.
                  ;Modified Carr1971 formula
                  ;LGD 1-11-96
                  c=z=pixel,
                  compt=0 , limit=real(p1/pixel) , bailout=4
                  p=(-0.743380900000982,-0.131850030300002) :
                  test=(compt<limit)
                  c=c*test+p*(1-test)
                  z=z*z+c
                  compt=compt+1
                  |z|<=bailout
}

LGDF0010 { ;Inspired by Bob Carr
           ;LGD (c)1996 [72332,507]
         z=pixel, c=1/fn1(pixel*p3):
         z=z*(c+sqr(p1*p2))+z
         c=flip(sqr(sin(c)))+c+c+z
         |z|<=4
         }

LGDF0011 {;Modified Sylvie Gallet frm.
          ;Modified Carr1971 formula
          ;LGD 3-6-96
        c=z=pixel,
        compt=0 , limit=real(p1/pixel) , bailout=4
        p=(p2) :
        test=(compt<limit)
        c=c*test+p*(1-test)
        z=z*z+fn1(c)
        compt=compt+1
        |z|<=bailout
}

LGDF0012 { ;What it is more again
           ;Use a big bailout (p1>1000000)
           ;LGD (c)1996 [72332,507]
	  c=z=pixel:
	  z=z+z+c+z*(p3+(fn1(z^p2))/c)
	  |z|<=p1
	  }

LGDF0013 { ;Another nothing
           ;LGD (c)1996 [72332,507]
          c=z=pixel:
          z=z*z*(z*p2)*c*z+z+z+z+z
          c=c+z
          |z|>=p1
          }

Don't_do_that! { ;Sylvie Gallet formula
                 ;Thanks to Sylvie for "fixing" it for me
                 c = pixel :
                 c = e^c
                 z = fn1(c)
                 |z| <= 16
               }

LGDF0014 { ; Created with FracText
           ; requires 'periodicity=0'
  z=pixel, x=real(z), y=imag(z)
  chrL1 = x<-1.545||y<-0.145&&x>-1.6&&x<-1.445
  chrO2 = abs(cabs(z+(1.3325,0.075))-0.0975)<0.0275&&x<-1.2075
  xr=2*x
  chrR3 = y<-0.0475&&y>-0.1025||y>-0.005||x<-1.14&&x>-1.195&&x<-1.09||(abs(cabs(z+(1.09,0.02625))-0.04875)<0.0275&&x>-1.09)||(y<-0.075&&y<-xr-2.2275&&y>-xr-2.35048)
  chrE4 = x<-0.94625||y<-0.145||(y<-0.0475&&y>-0.1025)||y>-0.005&&x>-1.00125&&x<-0.84625
  xn=2.5*x
  chrN5 = x>-0.83375&&x<-0.77875||(x>-0.73375&&x<-0.67451)||(y>-xn-2.03437&&y<-xn-1.88628)
  test = chrL1||chrO2||chrR3||chrE4||chrN5&&y>-0.2&&y<0.05
  test=(test==0)
  z=c=pixel:
  z=z*z+c
  |z|<=4&&test==0
  }

LGDF0015 { ; Created with FracText
           ; requires 'periodicity=0'
  c=z=pixel, x=real(z), y=imag(z)
  chrL1 = x<0.22||y<0.22&&x>0&&x<0.62
  chrO2 = abs(cabs(z+(-1.07,-0.5))-0.39)<0.11&&x<1.57
  xr=2*x
  chrR3 = y<0.61&&y>0.39||y>0.78||x<1.84&&x>1.62&&x<2.04||(abs(cabs(z+(-2.04,-0.695))-0.195)<0.11&&x>2.04)||(y<0.5&&y<-xr+4.69&&y>-xr+4.19806)
  chrE4 = x<2.615||y<0.22||(y<0.61&&y>0.39)||y>0.78&&x>2.395&&x<3.015
  xn=2.5*x
  chrN5 = x>3.065&&x<3.285||(x>3.465&&x<3.70195)||(y>-xn+8.6625&&y<-xn+9.25487)
  test = chrL1||chrO2||chrR3||chrE4||chrN5&&y>0&&y<1
  test=(test==0)
  z=c=pixel:
  z=z*z+fn1(c^2)
  |z|<=p1&&test==0
  }

LGDF0016 { ;Return of the Son of Nothing
           ;LGD (c)1996 [72332,507]
          c=z=pixel:
          z=z*z*(c*p2)*z+fn1(z+c)
          c=c*fn2(z)
          |z|<=p1
          }

