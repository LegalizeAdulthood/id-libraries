splash_1     {  ; Basic data : FractMask08
                ; Albrecht Niekamp -- March, 2003
                ; <Albrecht.Niekamp@t-online.de>
                ; Lake effect by Sylvie Gallet
  ; p1: Julia seed
  ; real (p2) : water level in % of the screen height
  ; imag (p2) : amplitude of the wave (try 0.2)
  ; real (p3) : frequency (try 300)
  ; imag (p3) : size y (>0 smaller -1 no text)
  ; real (p4) : horizontal factor
  ; imag (p4) : vertical factor
  ; real (p5) : size left (>0 smaller)
  ; imag (p6) : size right (>0 smaller)
  in=0
  t=0
  z=0
  w=0
  start=1
  c=pixel
  if (whitesq)
    row=imag(scrnpix)
    rows=imag(scrnmax)
    y=row/(rows-1)
    col=real(scrnpix)
    cols=real(scrnmax)
    x=col/(cols-1)
    size=imag(p3)/1000
    hf=real(p4)/100
    vf=imag(p4)/1000
    cl=real(p5)/100
    cr=imag(p5)/100
    tx=(imag(p3)!=-1)
    if (tx)
      xx=x
      yy=y
      f=1-y
      d=x-0.5
      cr=cr+hf
      cl=cl+hf
      If (x>0.5)
        e=d*d-0.25
        hd=-e*hf
        g=(0.25-e)/5
        x=x+g*cr+((hf*0.005)*(hf<0))
      else
        e=x*x-0.25
        hd=e*hf*2
        g=(0.25-e)/10
        x=x-g*cl+((hf*0.01)*(hf<0))
      endif
      d=1-xx
      if (y>0.5)
        if (xx>0.5)
          e=d*d
          b=f*(0.5-d)*vf*40*(0.25-e)
        else
          e=xx*xx
          b=f*(0.5-xx)*vf*40*(0.25-e)
        endif
        y=y+f*vf*1.6+size
      else
        if (xx>0.5)
          e=d*d
          b=-(f*(0.5-d)*vf*40*(0.25-e))
        else
          e=xx*xx
          b=-(f*(0.5-xx)*vf*40*(0.25-e))
        endif
        y=y-y*vf*1.6-size
      endif
      e=exp(hd)
      b=exp(b)
      in=in+(x>.06*e&&x<.92*e&&y<.693*b&&y>.68*b)
      in=in+(x>.07*e&&x<.13*e&&y<.626*b&&y>.613*b)
      in=in+(x>.19*e&&x<.25*e&&y<.626*b&&y>.613*b)
      in=in+(x>.32*e&&x<.41*e&&y<.626*b&&y>.6*b)
      in=in+(x>.45*e&&x<.5*e&&y<.626*b&&y>.613*b)
      in=in+(x>.56*e&&x<.6*e&&y<.626*b&&y>.6*b)
      in=in+(x>.63*e&&x<.69*e&&y<.626*b&&y>.613*b)
      in=in+(x>.7*e&&x<.75*e&&y<.626*b&&y>.613*b)
      in=in+(x>.76*e&&x<.81*e&&y<.626*b&&y>.613*b)
      in=in+(x>.85*e&&x<.89*e&&y<.626*b&&y>.6*b)
      in=in+(x>.08*e&&x<.12*e&&y<.613*b&&y>.266*b)
      in=in+(x>.2*e&&x<.24*e&&y<.613*b&&y>.36*b)
      in=in+(x>.31*e&&x<.32*e&&y<.613*b&&y>.48*b)
      in=in+(x>.44*e&&x<.47*e&&y<.613*b&&y>.373*b)
      in=in+(x>.49*e&&x<.51*e&&y<.613*b&&y>.586*b)
      in=in+(x>.55*e&&x<.56*e&&y<.613*b&&y>.346*b)
      in=in+(x>.6*e&&x<.61*e&&y<.613*b&&y>.52*b)
      in=in+(x>.64*e&&x<.68*e&&y<.613*b&&y>.36*b)
      in=in+(x>.71*e&&x<.75*e&&y<.613*b&&y>.36*b)
      in=in+(x>.76*e&&x<.8*e&&y<.613*b&&y>.373*b)
      in=in+(x>.84*e&&x<.85*e&&y<.613*b&&y>.346*b)
      in=in+(x>.89*e&&x<.9*e&&y<.613*b&&y>.52*b)
      in=in+(x>.32*e&&x<.35*e&&y<.6*b&&y>.573*b)
      in=in+(x>.36*e&&x<.42*e&&y<.6*b&&y>.586*b)
      in=in+(x>.56*e&&x<.59*e&&y<.6*b&&y>.306*b)
      in=in+(x>.61*e&&x<.62*e&&y<.6*b&&y>.52*b)
      in=in+(x>.85*e&&x<.88*e&&y<.6*b&&y>.306*b)
      in=in+(x>.9*e&&x<.91*e&&y<.6*b&&y>.52*b)
      in=in+(x>.36*e&&x<.4*e&&y<.586*b&&y>.373*b)
      in=in+(x>.5*e&&x<.51*e&&y<.586*b&&y>.572*b)
      in=in+(x>.32*e&&x<.34*e&&y<.573*b&&y>.466*b)
      in=in+(x>.43*e&&x<.44*e&&y<.573*b&&y>.413*b)
      in=in+(x>.14*e&&x<.15*e&&y<.52*b&&y>.373*b)
      in=in+(x>.34*e&&x<.35*e&&y<.52*b&&y>.466*b)
      in=in+(x>.13*e&&x<.14*e&&y<.493*b&&y>.4*b)
      in=in+(x>.35*e&&x<.36*e&&y<.48*b&&y>.453*b)
      in=in+(x>.12*e&&x<.13*e&&y<.466*b&&y>.426*b)
      in=in+(x>.5*e&&x<.51*e&&y<.412*b&&y>.36*b)
      in=in+(x>.25*e&&x<.28*e&&y<.44*b&&y>.36*b)
      in=in+(x>.31*e&&x<.35*e&&y<.44*b&&y>.386*b)
      in=in+(x>.28*e&&x<.29*e&&y<.426*b&&y>.373*b)
      in=in+(x>.24*e&&x<.25*e&&y<.413*b&&y>.36*b)
      in=in+(x>.49*e&&x<.5*e&&y<.413*b&&y>.373*b)
      in=in+(x>.16*e&&x<.18*e&&y<.4*b&&y>.266*b)
      in=in+(x>.32*e&&x<.34*e&&y<.386*b&&y>.373*b)
      in=in+(x>.48*e&&x<.49*e&&y<.386*b&&y>.36*b)
      in=in+(x>.75*e&&x<.76*e&&y<.386*b&&y>.36*b)
      in=in+(x>.19*e&&x<.2*e&&y<.373*b&&y>.36*b)
      in=in+(x>.33*e&&x<.39*e&&y<.373*b&&y>.36*b)
      in=in+(x>.45*e&&x<.48*e&&y<.373*b&&y>.36*b)
      in=in+(x>.54*e&&x<.55*e&&y<.373*b&&y>.36*b)
      in=in+(x>.59*e&&x<.62*e&&y<.373*b&&y>.36*b)
      in=in+(x>.63*e&&x<.64*e&&y<.373*b&&y>.36*b)
      in=in+(x>.7*e&&x<.71*e&&y<.373*b&&y>.36*b)
      in=in+(x>.76*e&&x<.79*e&&y<.373*b&&y>.36*b)
      in=in+(x>.83*e&&x<.84*e&&y<.373*b&&y>.36*b)
      in=in+(x>.88*e&&x<.91*e&&y<.373*b&&y>.36*b)
      in=in+(x>.15*e&&x<.16*e&&y<.346*b&&y>.266*b)
      in=in+(x>.14*e&&x<.15*e&&y<.306*b&&y>.266*b)
      in=in+(x>.57*e&&x<.59*e&&y<.306*b&&y>.266*b)
      in=in+(x>.64*e&&x<.68*e&&y<.306*b&&y>.266*b)
      in=in+(x>.86*e&&x<.88*e&&y<.306*b&&y>.266*b)
      in=in+(x>.07*e&&x<.08*e&&y<.28*b&&y>.266*b)
      in=in+(x>.12*e&&x<.14*e&&y<.28*b&&y>.266*b)
    endif
    if (in)
      w=1
      z=(xx+yy/8)*689
    else
      if (imag(p2)>0 && imag(p2)<=100)
        level=real(p2)/100        ; water level
        ampl=imag(p2)             ; amplitude of the wave
        freq=real(p3)             ; frequency
        angle=real(rotskew*pi/180)
        exp_irot=exp(-flip(angle))
        h=1/real(magxmag)
        q=h/0.75*imag(magxmag)
        tanskew=tan(imag(rotskew*pi/180))
        u=2*q*exp_irot
        v=2*h*(tanskew+flip(1))*exp_irot
        z3rd=center+(-q-h*tanskew-flip(h))*exp_irot
        z=pixel-z3rd
        s=imag(conj(u)*z)/imag(conj(u)*v)
        if (s<=level)
          dy=level-s
          z=z+2*dy*(1+ampl*sin(freq*dy^0.2))*v
        endif
        z=z+z3rd
        if (ismand)
          c=z
          z=0
        else
          c=p1
        endif
      endif
    endif
  endif
   :
  if (w)
    z=z-1
    phc_bailout=|z|>=1
  else
    z=z^2+c
    if (start)
      t=t+1
      if (|z|>=128)
        u=2*(exp(t/768))
        z=z^u
        start=0
      endif
      if (t>513)
        u=2*(sin(t/768))
        z=z*u
        c=p1*u
        start=0
      endif
    endif
    phc_Bailout=|z|<=2048
  endif
  phc_bailout
  }

