lake-gmc { ; Formula uses PHC to cast "soft" shadow
           ; October 1996 by Jan Maarten van der Valk
           ; 'periodicity=0' and 'passes=1' recommended
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnpix))/(rea\
  l(scrnmax)*0.75), z=x+flip(y)
  chrF1 = x<0.15372||(y<0.90475&&y>0.88525)||y>0.9505&&x>0.13422&&x<0\
  .21372
  chrr2 = x>0.22872&&x<0.24822&&y<0.9325||(abs(cabs(z+(-0.26875,-0.89\
  247))-0.03028)<0.00975&&y>0.89247)
  chra3 = abs(cabs(z+(-0.35678,-0.8995))-0.02325)<0.00975&&x<0.35678|\
  |(abs(cabs(z+(-0.37178,-0.8995))-0.02325)<0.00975&&x>0.37178)&&y>0.\
  8995||((abs(cabs(z+(-0.35678,-0.853))-0.02325)<0.00975&&x<0.35678)|\
  |(abs(cabs(z+(-0.37178,-0.853))-0.02325)<0.00975&&x>0.37178))||(x>0\
  .35678&&x<0.37178&&(y<0.8395||(y>0.913&&y<0.9325)||(y>0.8665&&y<0.8\
  86)))||(x>0.38528&&x<0.40478&&y<0.8995)
  xc=1*x
  chrc4 = abs(cabs(z+(-0.47603,-0.87625))-0.0465)<0.00975&&(x<0.47603\
  ||y>xc+0.40022||y<-xc+1.35228)
  xt=1*x
  chrt5 = abs(cabs(z+(-0.58598,-0.86003))-0.03028)<0.00975&&y<0.86003\
  ||(x>0.54595&&x<0.56545&&y>0.86003)||(x>0.53081&&x<0.59573&&y>0.913\
  &&y<0.9325)
  chri6 = x>0.64101&&x<0.66051&&(y<0.931||y>0.9505)
  chrn7 = x>0.67551&&x<0.69501&&y<0.9325||(abs(cabs(z+(-0.71554,-0.89\
  247))-0.03028)<0.00975&&y>0.89247)||(x>0.73607&&x<0.75557&&y<0.8924\
  7)
  chrt8 = abs(cabs(z+(-0.82575,-0.86003))-0.03028)<0.00975&&y<0.86003\
  ||(x>0.78572&&x<0.80522&&y>0.86003)||(x>0.77057&&x<0.8355&&y>0.913&\
  &y<0.9325)
  test1 = chrF1||chrr2||chra3||chrc4||chrt5||chri6||chrn7||chrt8&&y>0\
  .82&&y<0.97
  chrT9 = y>0.3085&&x>0.03158&&x<0.07058||(x>0.04783&&x<0.05433)
  chrh10 = x>0.07708&&x<0.08358||(abs(cabs(z+(-0.09394,-0.27438))-0.0\
  1361)<0.00325&&y>0.27438)||(x>0.1043&&x<0.1108&&y<0.27438)
  chre11 = abs(cabs(z+(-0.14167,-0.27438))-0.02112)<0.00325&&(x<0.141\
  67||y>0.27329||y<0.27004)||(y>0.27329&&y<0.27979&&x>0.12055&&x<0.16\
  28)
  xCN=2.5*x
  chrN13 = x>0.20505&&x<0.21155||(x>0.23105&&x<0.23805)||(y>-xCN+0.82\
  762&&y<-xCN+0.84512)
  chre14 = abs(cabs(z+(-0.26892,-0.27438))-0.02112)<0.00325&&(x<0.268\
  92||y>0.27329||y<0.27004)||(y>0.27329&&y<0.27979&&x>0.2478&&x<0.290\
  05)
  xv=3*x
  chrv15 = y>-xv+1.19814&&y<-xv+1.2187||y<xv-0.69814&&y>xv-0.7187&&y<\
  0.29875
  chre16 = abs(cabs(z+(-0.37002,-0.27438))-0.02112)<0.00325&&(x<0.370\
  02||y>0.27329||y<0.27004)||(y>0.27329&&y<0.27979&&x>0.3489&&x<0.391\
  15)
  chrr17 = x>0.4009&&x<0.4074&&y<0.29875||(abs(cabs(z+(-0.41776,-0.28\
  189))-0.01361)<0.00325&&y>0.28189)
  chrE19 = x<0.48012||y<0.2565||(y<0.28575&&y>0.27925)||y>0.3085&&x>0\
  .47362&&x<0.50612
  chrn20 = x>0.51262&&x<0.51912&&y<0.29875||(abs(cabs(z+(-0.52948,-0.\
  28189))-0.01361)<0.00325&&y>0.28189)||(x>0.53984&&x<0.54634&&y<0.28\
  189)
  chrd21 = x>0.5894&&x<0.5959||(abs(cabs(z+(-0.57721,-0.27438))-0.021\
  12)<0.00325&&x<0.5894)
  chri22 = x>0.6024&&x<0.6089&&(y<0.302||y>0.3085)
  chrn23 = x>0.6154&&x<0.6219&&y<0.29875||(abs(cabs(z+(-0.63226,-0.28\
  189))-0.01361)<0.00325&&y>0.28189)||(x>0.64262&&x<0.64912&&y<0.2818\
  9)
  chrg24 = x>0.69218&&x<0.69868&&y<0.29875||(abs(cabs(z+(-0.67999,-0.\
  27438))-0.02112)<0.00325&&x<0.69218)&&y>0.23822||(abs(cabs(z+(-0.67\
  715,-0.23822))-0.01828)<0.00325&&y<=0.23822)
  chrS26 = abs(cabs(z+(-0.75555,-0.29713))-0.01462)<0.00325&&(x<=0.75\
  555||y>0.29713)||(abs(cabs(z+(-0.75555,-0.26787))-0.01462)<0.00325&\
  &(x>0.75555||y<0.26787))
  chrt27 = abs(cabs(z+(-0.80359,-0.26686))-0.01361)<0.00325&&y<0.2668\
  6||(x>0.78673&&x<0.79323&&y>0.26686)||(x>0.77993&&x<0.80684&&y>0.29\
  225&&y<0.29875)
  chro28 = abs(cabs(z+(-0.85133,-0.27438))-0.02112)<0.00325
  chrr29 = x>0.8822&&x<0.8887&&y<0.29875||(abs(cabs(z+(-0.89906,-0.28\
  189))-0.01361)<0.00325&&y>0.28189)
  xy=2.5*x
  chry30 = y<xy-2.10481&&y>xy-2.12231||(y>-xy+2.60481&&y<-xy+2.62231)\
  &&y>xy-2.12231&&y<0.29875&&y>0.2175
  test2 = chrT9||chrh10||chre11||chrN13||chre14||chrv15||chre16||chrr\
  17||chrE19||chrn20||chrd21||chri22||chrn23||chrS26||chrt27||chro28|\
  |chrr29&&y>0.25||chrg24||chry30&&y<0.315
  test=test1||test2
  test0=test0&&whitesq
  test0=((test0||test)==0)
  f1=fn1(real(p3)*fn2(imag(p1)*pixel))
  f2=1/(imag(p2)*pixel)
  pixel=(test==0)*f2+test*f1
  ; Import of formula 'Mandel_lake' from file LAKE-SGB.FRM
  ; p1: Julia seed
  ; real part of p2: bailout value
  ; imag part of p2: 0 = lake transform disabled
  ;                  any value between 0 and 100: water level in % of
  ;                  the screen height (0 = bottom, 100 = top)
  ; real part of waves: amplitude of the wave (try 0.2)
  ; imag part of waves: frequency (try 300)
  
  ; This formula uses the new predefined variables:
  ; center  = (x  , y)
  ; magxmag = (mag, xmagfactor)
  ; rotskew = (rot, skew)
  
  bailout = real(p2)
  
  ; Lake transformation
  ; -------------------
  waves = 0.2,200
  
  if (imag(p3) > 0 && imag(p3) <= 100)
  
  level = imag(p3) / 100         ; water level
  ampl = real(waves)                ; amplitude of the wave
  freq = imag(waves)                ; frequency
  
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
  dy = level - b
  z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
  endif
  z = z + z3rd
  else
  z = pixel
  endif
  
  if (ismand)
  c = z
  else
  c = p1
  endif
  
  
  :
  z = z*z + c
  |z| <= bailout
  }

lake-gmc0 { ; Formula uses PHC to cast "soft" shadow
            ; October 1996 by Jan Maarten van der Valk
            ; 'periodicity=0' and 'passes=1' recommended
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnpix))/(rea\
  l(scrnmax)*0.75), z=x+flip(y)
  chrDT1 = y<1.5&&x>0.5&&x<0.5
  test1 = chrDT1&&y>1.5&&y<1.5
  chrDT2 = y<1.5065&&x>0.49675&&x<0.50325
  test2 = chrDT2&&y>1.5&&y<1.565
  test=test1||test2
  test0=test0&&whitesq
  test0=((test0||test)==0)
  f1=fn1(real(p3)*fn2(imag(p1)*pixel))
  f2=1/(imag(p2)*pixel)
  pixel=(test==0)*f2+test*f1
  ; Import of formula 'Mandel_lake' from file LAKE-SGB.FRM
  ; p1: Julia seed
  ; real part of p2: bailout value
  ; imag part of p2: 0 = lake transform disabled
  ;                  any value between 0 and 100: water level in % of
  ;                  the screen height (0 = bottom, 100 = top)
  ; real part of waves: amplitude of the wave (try 0.2)
  ; imag part of waves: frequency (try 300)
  
  ; This formula uses the new predefined variables:
  ; center  = (x  , y)
  ; magxmag = (mag, xmagfactor)
  ; rotskew = (rot, skew)
  
  bailout = real(p2)
  
  ; Lake transformation
  ; -------------------
  waves = 0.2,200
  
  if (imag(p3) > 0 && imag(p3) <= 100)
  
  level = imag(p3) / 100         ; water level
  ampl = real(waves)                ; amplitude of the wave
  freq = imag(waves)                ; frequency
  
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
  dy = level - b
  z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
  endif
  z = z + z3rd
  else
  z = pixel
  endif
  
  if (ismand)
  c = z
  else
  c = p1
  endif
  
  
  :
  z = z*z + c
  |z| <= bailout
  }
