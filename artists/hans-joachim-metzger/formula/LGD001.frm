LGDF0014 {; Created with FracText
          ; requires 'periodicity=0'
  z=pixel, x=real(z), y=imag(z)
  chrL1 = x<-1.545||y<-0.145&&x>-1.6&&x<-1.445
  chrO2 = abs(cabs(z+(1.3325,0.075))-0.0975)<0.0275&&x<-1.2075
  xr=2*x
  chrR3 = y<-0.0475&&y>-0.1025||y>-0.005||x<-1.14&&x>-1.195\
          &&x<-1.09||(abs(cabs(z+(1.09,0.02625))-0.04875)\
          <0.0275&&x>-1.09)||(y<-0.075&&y<-xr-2.2275&&y>-xr-2.35048)
  chrE4 = x<-0.94625||y<-0.145||(y<-0.0475&&y>-0.1025)\
          ||y>-0.005&&x>-1.00125&&x<-0.84625
  xn=2.5*x
  chrN5 = x>-0.83375&&x<-0.77875||(x>-0.73375&&x<-0.67451)\
          ||(y>-xn-2.03437&&y<-xn-1.88628)
  test = chrL1||chrO2||chrR3||chrE4||chrN5&&y>-0.2&&y<0.05
  test=(test==0)
  z=c=pixel:
  z=z*z+c
  |z|<=4&&test==0
  ;SOURCE: lgd001.frm
}

LGDF0015 {; Created with FracText
          ; requires 'periodicity=0'
  c=z=pixel, x=real(z), y=imag(z)
  chrL1 = x<0.22||y<0.22&&x>0&&x<0.62
  chrO2 = abs(cabs(z+(-1.07,-0.5))-0.39)<0.11&&x<1.57
  xr=2*x
  chrR3 = y<0.61&&y>0.39||y>0.78||x<1.84&&x>1.62\
           &&x<2.04||(abs(cabs(z+(-2.04,-0.695))-0.195)<0.11\
           &&x>2.04)||(y<0.5&&y<-xr+4.69&&y>-xr+4.19806)
  chrE4 = x<2.615||y<0.22||(y<0.61&&y>0.39)||y>0.78&&x>2.395&&x<3.015
  xn=2.5*x
  chrN5 = x>3.065&&x<3.285||(x>3.465&&x<3.70195)\
          ||(y>-xn+8.6625&&y<-xn+9.25487)
  test = chrL1||chrO2||chrR3||chrE4||chrN5&&y>0&&y<1
  test=(test==0)
  z=c=pixel:
  z=z*z+fn1(c^2)
  |z|<=p1&&test==0
  ;SOURCE: lgd001.frm
}

LGDF0003 {; A mangled Mandelbrot
          ; LGD (c)1996 [72332,507]
  c=z=pixel:
  z=z*z+fn1(c^2)
  |z|<=p1
  ;SOURCE: lgd001.frm
}

LGDF0012 {; What it is more again
          ; Use a big bailout (p1>1000000)
          ; LGD (c)1996 [72332,507]
  c=z=pixel:
  z=z+z+c+z*(p3+(fn1(z^p2))/c)
  |z|<=p1
  ;SOURCE: lgd001.frm
}

LGDF0013 {; Another nothing
          ; LGD (c)1996 [72332,507]
  c=z=pixel:
  z=z*z*(z*p2)*c*z+z+z+z+z
  c=c+z
  |z|>=p1
  ;SOURCE: lgd001.frm
}

LGDF0016 {; Return of the Son of Nothing
          ; LGD (c)1996 [72332,507]
  c=z=pixel:
  z=z*z*(c*p2)*z+fn1(z+c)
  c=c*fn2(z)
  |z|<=p1
  ;SOURCE: lgd001.frm
}

LGDF0016 {; Return of the Son of Nothing
          ; LGD (c)1996 [72332,507]
  c=z=pixel:
  z=z*z*(c*p2)*z+fn1(z+c)
  c=c*fn2(z)
  |z|<=p1
  ;SOURCE: lgd001.frm
}

LGDF0001 {; Inspired by Bob Carr
          ; LGD (c)1996 [72332,507]
  z=pixel
  c=1/fn1(pixel*666):
  z=z*(c+sqr(p1*p2))+z
  c=sqr(flip(cos(c)))+c
  |z|<=4
  ;SOURCE: lgd001.frm
}

LGDF0006 {; What it is more
          ; Use a big bailout (p1>1000000)
          ; LGD (c)1996 [72332,507]
  c=z=pixel:
  z=z*p3+(fn1(z^p2))/c
  |z|<=p1
  ;SOURCE: lgd001.frm
}

LGDF0009 (XAXIS) {; TwoFace Formula
                  ; Modified Sylvie Gallet frm.
                  ; Modified Carr1971 formula
                  ; LGD 1-11-96
  c=z=pixel
  compt=0, limit=real(p1/pixel), bailout=4
  p=(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: lgd001.frm
}

