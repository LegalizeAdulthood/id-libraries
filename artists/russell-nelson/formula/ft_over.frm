FT_195_SOLID { ; Creates "Fractint 19.5" solid text fixed to screen
     ; Les St Clair 101461.2032@compuserve.com - 1996
     ; Created using "FracText" (alpha-4) by Jan Maarten van der Valk
     ; "periodicity=0" and "passes=1" recommended
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnpix))/real(scrn\
  max), z=x+flip(y)
  chrF1 = x<0.18||(y<0.525&&y>0.495)||y>0.54&&x>0.15&&x<0.228
  xr=2*x
  chrR2 = y<0.525&&y>0.495||y>0.54||x<0.264&&x>0.234&&x<0.288||(abs(cabs(z\
  +(-0.288,-0.5325))-0.0225)<0.015&&x>0.288)||(y<0.51&&y<-xr+1.101&&y>-xr+\
  1.03392)
  xa=3*x
  chrA3 = y>xa-0.63937||y>-xa+1.6845||(y<0.498&&y>0.468)&&y<xa-0.5445&&y<-\
  xa+1.77937
  xc=1*x
  chrC4 = abs(cabs(z+(-0.49712,-0.51))-0.045)<0.015&&(x<0.49712||y>xc+0.01\
  288||y<-xc+1.00712)
  chrT5 = y>0.54&&x>0.54555&&x<0.63555||(x>0.57555&&x<0.60555)
  chrI6 = x>0.64155&&x<0.67155
  xn=2.5*x
  chrN7 = x>0.67755&&x<0.70755||(x>0.72555&&x<0.75786)||(y>-xn+2.26387&&y<\
  -xn+2.34465)
  chrT8 = y>0.54&&x>0.76386&&x<0.85386||(x>0.79386&&x<0.82386)
  test1 = chrF1||chrR2||chrA3||chrC4||chrT5||chrI6||chrN7||chrT8&&y>0.45&&\
  y<0.57
  x1=1.5*x
  chr19 = y<x1-0.15167&&y>x1-0.20719&&y>-x/1.5+0.60667||(x>0.38733&&x<0.41\
  813)
  chr910 = abs(cabs(z+(-0.46783,-0.3227))-0.0273)<0.0154&&y<0.3227||abs(ca\
  bs(z+(-0.46783,-0.3773))-0.0273)<0.0154||(x>0.47973&&x<0.51053&&y>0.3227\
  &&y<0.3773)
  chrDT11 = y<0.3108&&x>0.51753&&x<0.54833
  chr512 = abs(cabs(z+(-0.60573,-0.3304))-0.035)<0.0154&&(y<0.3304||x>0.60\
  573)||(x>0.55533&&y>0.35&&x<0.65613&&(x<0.58613||y>0.3892||(y<0.3808&&x<\
  0.60573)))
  test2 = chr19||chr910||chrDT11||chr512&&y>0.28&&y<0.42
  test = test1||test2
  f1=sin(.5*pixel)
  f2=1/(32*pixel)
  pixel=(test==0)*f1+(test!=0)*f2
  z=1+(0,-0.65)/fn3(pixel+(0,0.75)):
  z2=z*z, z4=z2*z2, n=z4*z2-1, z=z-n/(6*z4*z)
  |n|>=.0001&&test==0
  }

FT_195_INVERSE { ; Creates "Fractint 19.5" inverse text fixed to screen
     ; Les St Clair 101461.2032@compuserve.com - 1996
     ; Created using "FracText" (alpha-4) by Jan Maarten van der Valk
     ; "periodicity=0" and "passes=1" recommended
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnpix))/real(scrn\
  max), z=x+flip(y)
  chrF1 = x<0.18||(y<0.525&&y>0.495)||y>0.54&&x>0.15&&x<0.228
  xr=2*x
  chrR2 = y<0.525&&y>0.495||y>0.54||x<0.264&&x>0.234&&x<0.288||(abs(cabs(z\
  +(-0.288,-0.5325))-0.0225)<0.015&&x>0.288)||(y<0.51&&y<-xr+1.101&&y>-xr+\
  1.03392)
  xa=3*x
  chrA3 = y>xa-0.63937||y>-xa+1.6845||(y<0.498&&y>0.468)&&y<xa-0.5445&&y<-\
  xa+1.77937
  xc=1*x
  chrC4 = abs(cabs(z+(-0.49712,-0.51))-0.045)<0.015&&(x<0.49712||y>xc+0.01\
  288||y<-xc+1.00712)
  chrT5 = y>0.54&&x>0.54555&&x<0.63555||(x>0.57555&&x<0.60555)
  chrI6 = x>0.64155&&x<0.67155
  xn=2.5*x
  chrN7 = x>0.67755&&x<0.70755||(x>0.72555&&x<0.75786)||(y>-xn+2.26387&&y<\
  -xn+2.34465)
  chrT8 = y>0.54&&x>0.76386&&x<0.85386||(x>0.79386&&x<0.82386)
  test1 = chrF1||chrR2||chrA3||chrC4||chrT5||chrI6||chrN7||chrT8&&y>0.45&&\
  y<0.57
  x1=1.5*x
  chr19 = y<x1-0.15167&&y>x1-0.20719&&y>-x/1.5+0.60667||(x>0.38733&&x<0.41\
  813)
  chr910 = abs(cabs(z+(-0.46783,-0.3227))-0.0273)<0.0154&&y<0.3227||abs(ca\
  bs(z+(-0.46783,-0.3773))-0.0273)<0.0154||(x>0.47973&&x<0.51053&&y>0.3227\
  &&y<0.3773)
  chrDT11 = y<0.3108&&x>0.51753&&x<0.54833
  chr512 = abs(cabs(z+(-0.60573,-0.3304))-0.035)<0.0154&&(y<0.3304||x>0.60\
  573)||(x>0.55533&&y>0.35&&x<0.65613&&(x<0.58613||y>0.3892||(y<0.3808&&x<\
  0.60573)))
  test2 = chr19||chr910||chrDT11||chr512&&y>0.28&&y<0.42
  test = test1||test2
  test=(test==0)
  f1=sin(.5*pixel)
  f2=1/(32*pixel)
  pixel=(test==0)*f1+(test!=0)*f2
  z=1+(0,-0.65)/fn3(pixel+(0,0.75)):
  z2=z*z, z4=z2*z2, n=z4*z2-1, z=z-n/(6*z4*z)
  |n|>=.0001&&test==0
  }
