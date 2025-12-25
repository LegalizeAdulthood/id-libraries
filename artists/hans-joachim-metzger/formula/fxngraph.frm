fxn_pixel             { ; Hiram Berry <burningb@burningbridges.com>
                        ;  Fri, 7 May 2004 00:51:06
          ; use a complex rendering palette to view fn4(fn3(fn2(fn1(pixel))))
          ;outside=summ,maxit>255,for Rayfil generator use fns=(acos,sqr,sqr,ident)
  maxit = maxit
  IF(real(p1)==0 && imag(p1)==0)
     p1 = (1,0)
  ENDIF
  z = p1 * fn4(fn3(fn2(fn1(pixel))))
  z = round(z)
  IF(real(z)<-7),r_stat=0,ELSEIF(real(z)>7),r_stat=6,ELSE,r_stat=3,ENDIF
  IF(imag(z)<-7),i_stat=0,ELSEIF(imag(z)>7),i_stat=2,ELSE,i_stat=1,ENDIF
  status = r_stat + i_stat
  IF(status != 4)                               ; overflow||underflow occurred
     IF(status<4)             ; no middle color in the 3x3 array of o/u colors
        status = status + 1
     ENDIF
     z = 20 + status - 0.5                                     ; colors 21..28
  ELSE                             ; ordinary plottable zone of the 225 colors
     z = 29 + (real(z)+7) * 15 + (imag(z)+7) - 0.5
  ENDIF
  :
  1==0
}
 
sqr_pixel             { ; Hiram Berry <burningb@burningbridges.com>
                        ;  Fri, 7 May 2004 00:51:06
          ; use a complex rendering palette (+-3bit centered on color 141)
          ; colors 21..28 indicate overflow||underflow in @least one of imag,real
          ; outside z = sqr(pixel) * factor , p1 = factor, outside = summ, maxit>255
  maxit = maxit                                                   ; force f.p.
  IF(real(p1)==0 && imag(p1)==0)                       ; default coefficient 1
     p1 = (1,0)
  ENDIF
  z = p1 * sqr(pixel)       ; extend: replace with function of z to be graphed
  z = round(z)                                ; closest integer r&i components
  IF(real(z)<-7),r_stat=0,ELSEIF(real(z)>7),r_stat=6,ELSE,r_stat=3,ENDIF
  IF(imag(z)<-7),i_stat=0,ELSEIF(imag(z)>7),i_stat=2,ELSE,i_stat=1,ENDIF
  status = r_stat + i_stat
  IF(status != 4)                               ; overflow||underflow occurred
     IF(status<4)             ; no middle color in the 3x3 array of o/u colors
        status = status + 1
     ENDIF
     z = 20 + status - 0.5                                     ; colors 21..28
  ELSE                             ; ordinary plottable zone of the 225 colors
     z = 29 + (real(z)+7) * 15 + (imag(z)+7) - 0.5 ; place on rendering palette
  ENDIF
  :
  1==0
}
 
