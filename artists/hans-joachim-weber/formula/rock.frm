Rock(XYAXIS)   { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
                 ; Mon, 15 Mar 2004 01:42:13
                 ;
  z=z-z, c=fn1(pixel), iter=-1:
  iter=iter+1,
  if(iter>-1 && iter< 7 )
        note= 11
  elseif(iter> 6 && iter< 18 )
        note= 13
  elseif(iter> 17 && iter< 21 )
        note= 17
  elseif(iter> 20 && iter< 26 )
        note= 19
  elseif(iter> 25 && iter< 33 )
        note= 16
  elseif(iter> 32 && iter< 40 )
        note= 23
  elseif(iter> 39 && iter< 51 )
        note= 31
  elseif(iter> 50 && iter< 54 )
        note= 29
  elseif(iter> 53 && iter< 59 )
        note= 23
  elseif(iter> 58 && iter< 66 )
        note= 31
  elseif(iter> 65 && iter< 73 )
        note= 11
  elseif(iter> 72 && iter< 84 )
        note= 9
  elseif(iter> 83 && iter< 87 )
        note= 13
  elseif(iter> 86 && iter< 92 )
        note= 17
  elseif(iter> 91 && iter< 99 )
        note= 13
  elseif(iter> 98 && iter< 106 )
        note= 29
  elseif(iter> 105 && iter< 117 )
        note= 51
  elseif(iter> 116 && iter< 120 )
        note= 59
  elseif(iter> 119 && iter< 127 )
        note= 44
  endif
  if(iter>= 127 )
        iter=-1
  endif
  temp=note* 19 / 459
  z=(z+temp)*(z-temp)*(z+flip(temp))*(z-flip(temp))/c
  |z| <= real(P1)
}

