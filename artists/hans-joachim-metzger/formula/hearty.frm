Hearty     { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
             ; Thu, 11 Mar 2004 00:20:32
             ; Formula. Needs arrays for speed. Cropped as above,
             ; about 30min. on 350MhzPII @ 1280x1024,
             ; more for atan and fmod.
             ;
  s=z=atanh(real(-1/pixel) +flip(imag(-.5/pixel))), iter=0,
  t=|P1|, mean= 24.15789473684211:
  imod=(iter/ 127 -trunc(iter/ 127 ))* 127 ,
 ; imod=remainder(num_notes/iter)
  iter=iter+1,
  if(imod>-1 && imod< 8 )
        note= 11 
  elseif(imod> 6 && imod< 19 )
        note= 13 
  elseif(imod> 17 && imod< 22 )
        note= 17 
  elseif(imod> 20 && imod< 27 )
        note= 19 
  elseif(imod> 25 && imod< 34 )
        note= 16 
  elseif(imod> 32 && imod< 41 )
        note= 23 
  elseif(imod> 39 && imod< 52 )
        note= 31 
  elseif(imod> 50 && imod< 55 )
        note= 29 
  elseif(imod> 53 && imod< 60 )
        note= 23 
  elseif(imod> 58 && imod< 67 )
        note= 31 
  elseif(imod> 65 && imod< 74 )
        note= 11 
  elseif(imod> 72 && imod< 85 )
        note= 9 
  elseif(imod> 83 && imod< 88 )
        note= 13 
  elseif(imod> 86 && imod< 93 )
        note= 17 
  elseif(imod> 91 && imod< 100 )
        note= 13 
  elseif(imod> 98 && imod< 107 )
        note= 29 
  elseif(imod> 105 && imod< 118 )
        note= 51 
  elseif(imod> 116 && imod< 121 )
        note= 59 
  elseif(imod> 119 && imod< 128 )
        note= 44 
  endif,
  z=s*(z-flip(note/mean))*(flip(note/mean)-z)
  |z| <= t
}
 
