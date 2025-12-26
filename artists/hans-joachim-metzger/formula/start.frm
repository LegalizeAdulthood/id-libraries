  ; Par-files for Fractint starting screens
  ; If you like one, save it as start.gif
  ; and put the name into your sstools.ini
  ; example:" Filename=c:\fractint\gif\start.gif"
  ; any feedback welcome!
  ; Albrecht.niekamp@t-online.de
  ;
startfrm   {; mask_008.frm
  ;3d effects by Albrecht Niekamp
  ;
  row=imag(scrnpix)
  col=real(scrnpix)
  rows=imag(scrnmax)
  cols=real(scrnmax)
  y=row/(rows-1)
  x=col/(cols-1)
  in=0
  in=in+(x>.06&&x<.92&&y<.693&&y>.68)
  in=in+(x>.07&&x<.13&&y<.626&&y>.613)
  in=in+(x>.19&&x<.25&&y<.626&&y>.613)
  in=in+(x>.32&&x<.41&&y<.626&&y>.6)
  in=in+(x>.45&&x<.5&&y<.626&&y>.613)
  in=in+(x>.56&&x<.6&&y<.626&&y>.6)
  in=in+(x>.63&&x<.69&&y<.626&&y>.613)
  in=in+(x>.7&&x<.75&&y<.626&&y>.613)
  in=in+(x>.76&&x<.81&&y<.626&&y>.613)
  in=in+(x>.85&&x<.89&&y<.626&&y>.6)
  in=in+(x>.08&&x<.12&&y<.613&&y>.266)
  in=in+(x>.2&&x<.24&&y<.613&&y>.36)
  in=in+(x>.31&&x<.32&&y<.613&&y>.48)
  in=in+(x>.44&&x<.47&&y<.613&&y>.373)
  in=in+(x>.49&&x<.51&&y<.613&&y>.586)
  in=in+(x>.55&&x<.56&&y<.613&&y>.346)
  in=in+(x>.6&&x<.61&&y<.613&&y>.52)
  in=in+(x>.64&&x<.68&&y<.613&&y>.36)
  in=in+(x>.71&&x<.75&&y<.613&&y>.36)
  in=in+(x>.76&&x<.8&&y<.613&&y>.373)
  in=in+(x>.84&&x<.85&&y<.613&&y>.346)
  in=in+(x>.89&&x<.9&&y<.613&&y>.52)
  in=in+(x>.32&&x<.35&&y<.6&&y>.573)
  in=in+(x>.36&&x<.42&&y<.6&&y>.586)
  in=in+(x>.56&&x<.59&&y<.6&&y>.306)
  in=in+(x>.61&&x<.62&&y<.6&&y>.52)
  in=in+(x>.85&&x<.88&&y<.6&&y>.306)
  in=in+(x>.9&&x<.91&&y<.6&&y>.52)
  in=in+(x>.36&&x<.4&&y<.586&&y>.373)
  in=in+(x>.5&&x<.52&&y<.586&&y>.506)
  in=in+(x>.32&&x<.34&&y<.573&&y>.466)
  in=in+(x>.43&&x<.44&&y<.573&&y>.413)
  in=in+(x>.14&&x<.15&&y<.52&&y>.373)
  in=in+(x>.34&&x<.35&&y<.52&&y>.466)
  in=in+(x>.13&&x<.14&&y<.493&&y>.4)
  in=in+(x>.35&&x<.36&&y<.48&&y>.453)
  in=in+(x>.12&&x<.13&&y<.466&&y>.426)
  in=in+(x>.5&&x<.52&&y<.466&&y>.36)
  in=in+(x>.25&&x<.28&&y<.44&&y>.36)
  in=in+(x>.31&&x<.35&&y<.44&&y>.386)
  in=in+(x>.28&&x<.29&&y<.426&&y>.373)
  in=in+(x>.24&&x<.25&&y<.413&&y>.36)
  in=in+(x>.49&&x<.5&&y<.413&&y>.373)
  in=in+(x>.16&&x<.18&&y<.4&&y>.266)
  in=in+(x>.32&&x<.34&&y<.386&&y>.373)
  in=in+(x>.48&&x<.49&&y<.386&&y>.36)
  in=in+(x>.75&&x<.76&&y<.386&&y>.36)
  in=in+(x>.19&&x<.2&&y<.373&&y>.36)
  in=in+(x>.33&&x<.39&&y<.373&&y>.36)
  in=in+(x>.45&&x<.48&&y<.373&&y>.36)
  in=in+(x>.54&&x<.55&&y<.373&&y>.36)
  in=in+(x>.59&&x<.62&&y<.373&&y>.36)
  in=in+(x>.63&&x<.64&&y<.373&&y>.36)
  in=in+(x>.7&&x<.71&&y<.373&&y>.36)
  in=in+(x>.76&&x<.79&&y<.373&&y>.36)
  in=in+(x>.83&&x<.84&&y<.373&&y>.36)
  in=in+(x>.88&&x<.91&&y<.373&&y>.36)
  in=in+(x>.15&&x<.16&&y<.346&&y>.266)
  in=in+(x>.14&&x<.15&&y<.306&&y>.266)
  in=in+(x>.57&&x<.59&&y<.306&&y>.266)
  in=in+(x>.64&&x<.68&&y<.306&&y>.266)
  in=in+(x>.86&&x<.88&&y<.306&&y>.266)
  in=in+(x>.07&&x<.08&&y<.28&&y>.266)
  in=in+(x>.12&&x<.14&&y<.28&&y>.266)
  out=in==0
  test=in+out*4
  c=pixel
  fac=real(p1)
  u=fn1(t/fac)
  z=(in*(x+y/8)*689)+u
  t=0
  :
  t=t+1
  z=z-u
  z=(z-1)*in+(z*z+c)*out
  out*|z|+in<test*out+z*in
  ;SOURCE: 96_msg_2.frm
   }
starttfrm    {; FractMask08 
;3d effects, fast if-else logic, transparent letters by
;Albrecht.niekamp@t-online.de
;maxiter=15000, center-x: -0.5, inside maxiter, outside tdis
;passes=1.To avoid moir‚e, which is ugly at lower
;resolutions set periodicity=-1. This shuts off
;the inner mandel.
;fractint 20.02.4 or later
  row=imag(scrnpix)
  col=real(scrnpix)
  rows=imag(scrnmax)
  cols=real(scrnmax)
  y=row/(rows-1)
  x=col/(cols-1)
  in=0
  if (whitesq)
  in=in+(x>.06&&x<.92&&y<.693&&y>.68)
  in=in+(x>.07&&x<.13&&y<.626&&y>.613)
  in=in+(x>.19&&x<.25&&y<.626&&y>.613)
  in=in+(x>.32&&x<.41&&y<.626&&y>.6)
  in=in+(x>.45&&x<.5&&y<.626&&y>.613)
  in=in+(x>.56&&x<.6&&y<.626&&y>.6)
  in=in+(x>.63&&x<.69&&y<.626&&y>.613)
  in=in+(x>.7&&x<.75&&y<.626&&y>.613)
  in=in+(x>.76&&x<.81&&y<.626&&y>.613)
  in=in+(x>.85&&x<.89&&y<.626&&y>.6)
  in=in+(x>.08&&x<.12&&y<.613&&y>.266)
  in=in+(x>.2&&x<.24&&y<.613&&y>.36)
  in=in+(x>.31&&x<.32&&y<.613&&y>.48)
  in=in+(x>.44&&x<.47&&y<.613&&y>.373)
  in=in+(x>.49&&x<.51&&y<.613&&y>.586)
  in=in+(x>.55&&x<.56&&y<.613&&y>.346)
  in=in+(x>.6&&x<.61&&y<.613&&y>.52)
  in=in+(x>.64&&x<.68&&y<.613&&y>.36)
  in=in+(x>.71&&x<.75&&y<.613&&y>.36)
  in=in+(x>.76&&x<.8&&y<.613&&y>.373)
  in=in+(x>.84&&x<.85&&y<.613&&y>.346)
  in=in+(x>.89&&x<.9&&y<.613&&y>.52)
  in=in+(x>.32&&x<.35&&y<.6&&y>.573)
  in=in+(x>.36&&x<.42&&y<.6&&y>.586)
  in=in+(x>.56&&x<.59&&y<.6&&y>.306)
  in=in+(x>.61&&x<.62&&y<.6&&y>.52)
  in=in+(x>.85&&x<.88&&y<.6&&y>.306)
  in=in+(x>.9&&x<.91&&y<.6&&y>.52)
  in=in+(x>.36&&x<.4&&y<.586&&y>.373)
  in=in+(x>.5&&x<.52&&y<.586&&y>.506)
  in=in+(x>.32&&x<.34&&y<.573&&y>.466)
  in=in+(x>.43&&x<.44&&y<.573&&y>.413)
  in=in+(x>.14&&x<.15&&y<.52&&y>.373)
  in=in+(x>.34&&x<.35&&y<.52&&y>.466)
  in=in+(x>.13&&x<.14&&y<.493&&y>.4)
  in=in+(x>.35&&x<.36&&y<.48&&y>.453)
  in=in+(x>.12&&x<.13&&y<.466&&y>.426)
  in=in+(x>.5&&x<.52&&y<.466&&y>.36)
  in=in+(x>.25&&x<.28&&y<.44&&y>.36)
  in=in+(x>.31&&x<.35&&y<.44&&y>.386)
  in=in+(x>.28&&x<.29&&y<.426&&y>.373)
  in=in+(x>.24&&x<.25&&y<.413&&y>.36)
  in=in+(x>.49&&x<.5&&y<.413&&y>.373)
  in=in+(x>.16&&x<.18&&y<.4&&y>.266)
  in=in+(x>.32&&x<.34&&y<.386&&y>.373)
  in=in+(x>.48&&x<.49&&y<.386&&y>.36)
  in=in+(x>.75&&x<.76&&y<.386&&y>.36)
  in=in+(x>.19&&x<.2&&y<.373&&y>.36)
  in=in+(x>.33&&x<.39&&y<.373&&y>.36)
  in=in+(x>.45&&x<.48&&y<.373&&y>.36)
  in=in+(x>.54&&x<.55&&y<.373&&y>.36)
  in=in+(x>.59&&x<.62&&y<.373&&y>.36)
  in=in+(x>.63&&x<.64&&y<.373&&y>.36)
  in=in+(x>.7&&x<.71&&y<.373&&y>.36)
  in=in+(x>.76&&x<.79&&y<.373&&y>.36)
  in=in+(x>.83&&x<.84&&y<.373&&y>.36)
  in=in+(x>.88&&x<.91&&y<.373&&y>.36)
  in=in+(x>.15&&x<.16&&y<.346&&y>.266)
  in=in+(x>.14&&x<.15&&y<.306&&y>.266)
  in=in+(x>.57&&x<.59&&y<.306&&y>.266)
  in=in+(x>.64&&x<.68&&y<.306&&y>.266)
  in=in+(x>.86&&x<.88&&y<.306&&y>.266)
  in=in+(x>.07&&x<.08&&y<.28&&y>.266)
  in=in+(x>.12&&x<.14&&y<.28&&y>.266)
   if (in)
    v=t
    w=1
    z=(x+y/8)*689
    else
    v=0
    z=0
    w=0
   endif
  else
   w=0
   z=0
   if (v)
   t=v
   v=0
 endif
endif
 u=conj(t/7500)
 t=0
 c=pixel
 :
  t=t+1
  if (w)
  z=z-1
  phc_bailout=|z|>=1
  else
  z=(z-u)*z+c
  phc_Bailout=|z|<256
  endif
  phc_bailout
 }

startufrm    {; FractMask08
;3d effects, fast if-else logic, transparent letters by
;Albrecht.niekamp@t-online.de
;maxiter=647, inside maxiter, outside tdis
;passes=1.To avoid moir‚e, which is ugly at lower
;resolutions set periodicity=-1.This shuts off
;the inner mandel.
;fractint 20.02.4 or later
  row=imag(scrnpix)
  col=real(scrnpix)
  rows=imag(scrnmax)
  cols=real(scrnmax)
  y=row/(rows-1)
  x=col/(cols-1)
  in=0
  if (whitesq)
  in=in+(x>.06&&x<.92&&y<.693&&y>.68)
  in=in+(x>.07&&x<.13&&y<.626&&y>.613)
  in=in+(x>.19&&x<.25&&y<.626&&y>.613)
  in=in+(x>.32&&x<.41&&y<.626&&y>.6)
  in=in+(x>.45&&x<.5&&y<.626&&y>.613)
  in=in+(x>.56&&x<.6&&y<.626&&y>.6)
  in=in+(x>.63&&x<.69&&y<.626&&y>.613)
  in=in+(x>.7&&x<.75&&y<.626&&y>.613)
  in=in+(x>.76&&x<.81&&y<.626&&y>.613)
  in=in+(x>.85&&x<.89&&y<.626&&y>.6)
  in=in+(x>.08&&x<.12&&y<.613&&y>.266)
  in=in+(x>.2&&x<.24&&y<.613&&y>.36)
  in=in+(x>.31&&x<.32&&y<.613&&y>.48)
  in=in+(x>.44&&x<.47&&y<.613&&y>.373)
  in=in+(x>.49&&x<.51&&y<.613&&y>.586)
  in=in+(x>.55&&x<.56&&y<.613&&y>.346)
  in=in+(x>.6&&x<.61&&y<.613&&y>.52)
  in=in+(x>.64&&x<.68&&y<.613&&y>.36)
  in=in+(x>.71&&x<.75&&y<.613&&y>.36)
  in=in+(x>.76&&x<.8&&y<.613&&y>.373)
  in=in+(x>.84&&x<.85&&y<.613&&y>.346)
  in=in+(x>.89&&x<.9&&y<.613&&y>.52)
  in=in+(x>.32&&x<.35&&y<.6&&y>.573)
  in=in+(x>.36&&x<.42&&y<.6&&y>.586)
  in=in+(x>.56&&x<.59&&y<.6&&y>.306)
  in=in+(x>.61&&x<.62&&y<.6&&y>.52)
  in=in+(x>.85&&x<.88&&y<.6&&y>.306)
  in=in+(x>.9&&x<.91&&y<.6&&y>.52)
  in=in+(x>.36&&x<.4&&y<.586&&y>.373)
  in=in+(x>.5&&x<.52&&y<.586&&y>.506)
  in=in+(x>.32&&x<.34&&y<.573&&y>.466)
  in=in+(x>.43&&x<.44&&y<.573&&y>.413)
  in=in+(x>.14&&x<.15&&y<.52&&y>.373)
  in=in+(x>.34&&x<.35&&y<.52&&y>.466)
  in=in+(x>.13&&x<.14&&y<.493&&y>.4)
  in=in+(x>.35&&x<.36&&y<.48&&y>.453)
  in=in+(x>.12&&x<.13&&y<.466&&y>.426)
  in=in+(x>.5&&x<.52&&y<.466&&y>.36)
  in=in+(x>.25&&x<.28&&y<.44&&y>.36)
  in=in+(x>.31&&x<.35&&y<.44&&y>.386)
  in=in+(x>.28&&x<.29&&y<.426&&y>.373)
  in=in+(x>.24&&x<.25&&y<.413&&y>.36)
  in=in+(x>.49&&x<.5&&y<.413&&y>.373)
  in=in+(x>.16&&x<.18&&y<.4&&y>.266)
  in=in+(x>.32&&x<.34&&y<.386&&y>.373)
  in=in+(x>.48&&x<.49&&y<.386&&y>.36)
  in=in+(x>.75&&x<.76&&y<.386&&y>.36)
  in=in+(x>.19&&x<.2&&y<.373&&y>.36)
  in=in+(x>.33&&x<.39&&y<.373&&y>.36)
  in=in+(x>.45&&x<.48&&y<.373&&y>.36)
  in=in+(x>.54&&x<.55&&y<.373&&y>.36)
  in=in+(x>.59&&x<.62&&y<.373&&y>.36)
  in=in+(x>.63&&x<.64&&y<.373&&y>.36)
  in=in+(x>.7&&x<.71&&y<.373&&y>.36)
  in=in+(x>.76&&x<.79&&y<.373&&y>.36)
  in=in+(x>.83&&x<.84&&y<.373&&y>.36)
  in=in+(x>.88&&x<.91&&y<.373&&y>.36)
  in=in+(x>.15&&x<.16&&y<.346&&y>.266)
  in=in+(x>.14&&x<.15&&y<.306&&y>.266)
  in=in+(x>.57&&x<.59&&y<.306&&y>.266)
  in=in+(x>.64&&x<.68&&y<.306&&y>.266)
  in=in+(x>.86&&x<.88&&y<.306&&y>.266)
  in=in+(x>.07&&x<.08&&y<.28&&y>.266)
  in=in+(x>.12&&x<.14&&y<.28&&y>.266)
   if (in)
    v=t
    w=1
    z=(x+y/8)*687
    else
    v=0
    z=0
    w=0
   endif
  else
   w=0
   z=0
   if (v)
   t=v
   v=0
 endif
endif
 u=cosxx(t/647)
 t=0
 c=pixel
 :
  t=t+1
  if (w)
  z=z-1
  phc_bailout=|z|>=1
  else
  z=(z/u)*z-c
  phc_Bailout=|z|<647
  endif
  phc_bailout
  }

startzfrm    {; FractMask08 
;3d effects, fast if-else logic, transparent letters by
;Albrecht.niekamp@t-online.de
;maxiter=1094, maxiter, tdis
;passes=1.To avoid moir‚e, which is ugly at lower
;resolutions set periodity=-1. This shuts off
;the inner mandel.
;fractint 20.2.04 or later      
  row=imag(scrnpix)
  col=real(scrnpix)
  rows=imag(scrnmax)
  cols=real(scrnmax)
  y=row/(rows-1)
  x=col/(cols-1)
  in=0
  if (whitesq)
  in=in+(x>.06&&x<.92&&y<.693&&y>.68)
  in=in+(x>.07&&x<.13&&y<.626&&y>.613)
  in=in+(x>.19&&x<.25&&y<.626&&y>.613)
  in=in+(x>.32&&x<.41&&y<.626&&y>.6)
  in=in+(x>.45&&x<.5&&y<.626&&y>.613)
  in=in+(x>.56&&x<.6&&y<.626&&y>.6)
  in=in+(x>.63&&x<.69&&y<.626&&y>.613)
  in=in+(x>.7&&x<.75&&y<.626&&y>.613)
  in=in+(x>.76&&x<.81&&y<.626&&y>.613)
  in=in+(x>.85&&x<.89&&y<.626&&y>.6)
  in=in+(x>.08&&x<.12&&y<.613&&y>.266)
  in=in+(x>.2&&x<.24&&y<.613&&y>.36)
  in=in+(x>.31&&x<.32&&y<.613&&y>.48)
  in=in+(x>.44&&x<.47&&y<.613&&y>.373)
  in=in+(x>.49&&x<.51&&y<.613&&y>.586)
  in=in+(x>.55&&x<.56&&y<.613&&y>.346)
  in=in+(x>.6&&x<.61&&y<.613&&y>.52)
  in=in+(x>.64&&x<.68&&y<.613&&y>.36)
  in=in+(x>.71&&x<.75&&y<.613&&y>.36)
  in=in+(x>.76&&x<.8&&y<.613&&y>.373)
  in=in+(x>.84&&x<.85&&y<.613&&y>.346)
  in=in+(x>.89&&x<.9&&y<.613&&y>.52)
  in=in+(x>.32&&x<.35&&y<.6&&y>.573)
  in=in+(x>.36&&x<.42&&y<.6&&y>.586)
  in=in+(x>.56&&x<.59&&y<.6&&y>.306)
  in=in+(x>.61&&x<.62&&y<.6&&y>.52)
  in=in+(x>.85&&x<.88&&y<.6&&y>.306)
  in=in+(x>.9&&x<.91&&y<.6&&y>.52)
  in=in+(x>.36&&x<.4&&y<.586&&y>.373)
  in=in+(x>.5&&x<.52&&y<.586&&y>.506)
  in=in+(x>.32&&x<.34&&y<.573&&y>.466)
  in=in+(x>.43&&x<.44&&y<.573&&y>.413)
  in=in+(x>.14&&x<.15&&y<.52&&y>.373)
  in=in+(x>.34&&x<.35&&y<.52&&y>.466)
  in=in+(x>.13&&x<.14&&y<.493&&y>.4)
  in=in+(x>.35&&x<.36&&y<.48&&y>.453)
  in=in+(x>.12&&x<.13&&y<.466&&y>.426)
  in=in+(x>.5&&x<.52&&y<.466&&y>.36)
  in=in+(x>.25&&x<.28&&y<.44&&y>.36)
  in=in+(x>.31&&x<.35&&y<.44&&y>.386)
  in=in+(x>.28&&x<.29&&y<.426&&y>.373)
  in=in+(x>.24&&x<.25&&y<.413&&y>.36)
  in=in+(x>.49&&x<.5&&y<.413&&y>.373)
  in=in+(x>.16&&x<.18&&y<.4&&y>.266)
  in=in+(x>.32&&x<.34&&y<.386&&y>.373)
  in=in+(x>.48&&x<.49&&y<.386&&y>.36)
  in=in+(x>.75&&x<.76&&y<.386&&y>.36)
  in=in+(x>.19&&x<.2&&y<.373&&y>.36)
  in=in+(x>.33&&x<.39&&y<.373&&y>.36)
  in=in+(x>.45&&x<.48&&y<.373&&y>.36)
  in=in+(x>.54&&x<.55&&y<.373&&y>.36)
  in=in+(x>.59&&x<.62&&y<.373&&y>.36)
  in=in+(x>.63&&x<.64&&y<.373&&y>.36)
  in=in+(x>.7&&x<.71&&y<.373&&y>.36)
  in=in+(x>.76&&x<.79&&y<.373&&y>.36)
  in=in+(x>.83&&x<.84&&y<.373&&y>.36)
  in=in+(x>.88&&x<.91&&y<.373&&y>.36)
  in=in+(x>.15&&x<.16&&y<.346&&y>.266)
  in=in+(x>.14&&x<.15&&y<.306&&y>.266)
  in=in+(x>.57&&x<.59&&y<.306&&y>.266)
  in=in+(x>.64&&x<.68&&y<.306&&y>.266)
  in=in+(x>.86&&x<.88&&y<.306&&y>.266)
  in=in+(x>.07&&x<.08&&y<.28&&y>.266)
  in=in+(x>.12&&x<.14&&y<.28&&y>.266)
   if (in)
    v=t
    w=1
    z=(x+y/8)*689
    else
    v=0
    z=0
    w=0
   endif
  else
   w=0
   z=0
   if (v)
   t=v
   v=0
 endif
endif
 u=cosxx(t/1094)
 t=0
 c=pixel
 :
  t=t+1
  if (w)
  z=z-1
  phc_bailout=|z|>=1
  else
  z=(z/u)*z+c
  phc_Bailout=|z|<400
  endif
  phc_bailout
  }
