RatnlExpMandelO2      { ; Hiram Berry <burningb@burningbridges.com>
                        ;  Sat, 1 May 2004 00:24:07
          ; normalized order 2 M-set with rational real exponents
          ; generator z -> z^A + k*z^B + C.  p1=(A_num,A_denom) p_2=(B_num,B_denom)
          ; p3=k(complex) p4=(bailout-4,# crit pts) p5=(crit pt of interest(int),0) use
          ; inside=zmag,periodity=off.Ins cols: 1=cpoi converged >1=sequential number of
          ; cp after cpoi which converged
  IF(isinit==0)
  ; 0 default proxies:
     bailout = real(p4) + 4
     p1 = trunc(p1), p2 = trunc(p2)
     IF(real(p1)==0), An = 3, ELSE, An = real(p1), ENDIF
     IF(imag(p1)==0), Ad = 1, ELSE, Ad = imag(p1), ENDIF
     IF(real(p2)==0), Bn = 2, ELSE, Bn = real(p2), ENDIF
     IF(imag(p2)==0), Bd = 1, ELSE, Bd = imag(p2), ENDIF
  ; end default proxies
     k = p3, A = An / Ad, B = Bn / Bd, cps = imag(p4), cpoi = real(p5)
     maxit = maxit
     diff = A - B
     angle = 2 * pi / diff                   ; angle to rotate critical points
     rfactor = cos(angle) + flip(sin(angle))          ; rotate by complex mult
     cpmod = ( -k*B / A ) ^ ( 1/diff )                ; real part only crit pt
     isnotdiff = 0, execseq = 0                                        ; flags
     IF(cpoi<0 || cpoi>=cps)
        isnotdiff = 1                          ; flag to not do difference map
        execseq = 1           ; flag cp sequence 0 -> cpmod -> cpmod multiples
        cpfirst = 0
     ELSEIF(cpoi == 0)
        execseq = 1
        cpfirst = 0
     ELSE                   ; ordinary cp sequence cpoi -> 0 -> cpoi multiples
        IF(cpoi == 1)
           cpfirst = cpmod
        ELSE
           angle1 = angle * (cpoi - 1)
           cpfirst = cpmod * ( cos(angle1) + flip(sin(angle1)) )
        ENDIF
     ENDIF
     isinit = 1
  ENDIF
  zp = cpcurr = cpfirst              ; z proxy--inside z is used for rendering
  cpctr = 0, C = pixel, diverged = 0, iter = 1
  :
  iter = iter + 1
  IF(diverged)                                ; then go to next critical point
     cpctr = cpctr + 1                                     ; increment counter
     IF( (execseq==1 && cpctr>1) || (execseq==0 && cpctr>2) )
        zp = cpcurr = cpcurr * rfactor
     ELSEIF(execseq==1)
        zp = cpcurr = cpmod
     ELSEIF(cpctr==1)
        zp = cpcurr = 0
     ELSE
        zp = cpcurr = cpfirst * rfactor
     ENDIF
  ENDIF
  IF(cpctr<cps)
     zp = zp^A + k*zp^B + C
     diverged = ( |zp| > bailout )
  ENDIF
  z = zp                                               ; for outside rendering
  IF(diverged==0 && iter==maxit)      ; inside point: set z for zmag rendering
     ins_col = cpctr + 1
     z = sqrt( (ins_col*2-1) / maxit )
  ENDIF
  cpctr<cps || diverged==0
}
CompareRayfilMandl    { ; Hiram Berry <burningb@burningbridges.com>
                        ;  Fri, 7 May 2004 00:51:06
          ; compare C-scaled M-set with Raymond's generator
          ; initial conditions: p1 = A, p2 = B, real(p3) = bailout - 4
          ; imag(p3) = extra iterations of z->z^2+C for scaled set (to see outside fx)
          ; inside colors:1=classic set only,2=scaled set only,3=both(use inside=zmag)
  IF(isinit==0)
     A = p1, B = p2
     bailout = real(p3) + 4
     extra = imag(p3)
     true = 1, false = 0
     isinit = true
  ENDIF
  z = z_r = C_r = pixel, z_s = 0
  C_s = A * pixel + B
  r_notdiv = s_notdiv = true
  :
  IF(r_notdiv)
     z = z_r = sqr(sqr(fn1(z_r))) + C_r
     r_notdiv = ( |z_r| <= bailout )
  ENDIF
  IF(s_notdiv)
     z = z_s = sqr(z_s) + C_s
     IF(extra>=1)
        z = z_s = sqr(z_s) + C_s
     ENDIF
     IF(extra>=2)
        z = z_s = sqr(z_s) + C_s
     ENDIF
     IF(extra>=3)
        z = z_s = sqr(z_s) + C_s
     ENDIF
     IF(extra>=4)
        z = z_s = sqr(z_s) + C_s
     ENDIF
     IF(extra>=5)
        z = z_s = sqr(z_s) + C_s
     ENDIF
  s_notdiv = ( |z_s| <= bailout )
  ENDIF
  ins_col = r_notdiv + 2 * s_notdiv
  IF(ins_col)
     z = sqrt( (ins_col*2-1) / maxit )
  ENDIF
  ins_col
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
FrctnlExpMandelO2     { ; Hiram Berry <burningb@burningbridges.com>
                        ;  Mon, 10 May 2004 23:44:22
          ; like RatnlExpMandelO2, but make params more compatible
          ; with Jim M's MandelbrotMix2; generator z -> k1*(k2*z^A + k3*z^B) + fn1(C);
          ; all coefs real,p1=(k2,A),p2=(k3,B),p3=(k1-1,bailout-100),p4=(#cp,cpoi),
          ; p5=(max inside color,0).  Use inside=zmag,periodicity=0
  IF(isinit==0)
  ;default inits:
     bailout = imag(p3) + 100
     k1 = real(p3) + 1
     IF(real(p4)<=0)
        isguesscps = 1               ; if #crit pts not specified try to guess
     ELSE
        isguesscps = 0
     ENDIF
     IF(real(p5)<=0)
        maxinscol = 253
     ELSE
        maxinscol = real(p5)
     ENDIF
  ;end default inits
     A = imag(p1), B = imag(p2)
     k2 = real(p1)*k1 , k3 = real(p2)*k1            ; k1 not needed after this
     cpoi = imag(p4)
     maxit = maxit
     diff = abs(A - B)
     IF(isguesscps)          ; estimate cps by shifting decimal pt til integer
        try = diff
        IF(try == trunc(try))                ; diff is an integer, no shifting
           nd = 0                                 ; number of decimals shifted
        ELSEIF(try*10 == trunc(try*10))                     ; one past decimal
           try = try * 10, nd = 1
        ELSEIF(try*100 == trunc(try*100))                   ; two past decimal
           try = try * 100, nd = 2
        ELSEIF(try*1000 == trunc(try*1000))
           try = try * 1000, nd = 3
        ELSE                      ; 4 decimals is arbitrary limit for guessing
           try = try * 10000, nd = 4
        ENDIF
        IF(nd == 4)         ; up to 4 occurences of factors 2 or 5 can be elim
           IF(try == trunc(try/5)*5), try = try/5, ENDIF
           IF(try == trunc(try/2)*2), try = try/2, ENDIF
        ENDIF
        IF(nd >= 3)
           IF(try == trunc(try/5)*5), try = try/5, ENDIF
           IF(try == trunc(try/2)*2), try = try/2, ENDIF
        ENDIF
        IF(nd >= 2)
           IF(try == trunc(try/5)*5), try = try/5, ENDIF
           IF(try == trunc(try/2)*2), try = try/2, ENDIF
        ENDIF
        IF(nd >= 1)
           IF(try == trunc(try/5)*5), try = try/5, ENDIF
           IF(try == trunc(try/2)*2), try = try/2, ENDIF
        ENDIF
        cps = try + 1
     ELSE
        cps = trunc(real(p4))
     ENDIF
     angle = 2 * pi / diff                   ; angle to rotate critical points
     rfactor = cos(angle) + flip(sin(angle))          ; rotate by complex mult
     cpmod = ( -k3*B / A / k2 ) ^ ( 1/diff )                 ; principal value
     isnotdiff = 0, execseq = 0                                        ; flags
     IF(cpoi<0 || cpoi>=cps)
        isnotdiff = 1                          ; flag to not do difference map
        execseq = 1           ; flag cp sequence 0 -> cpmod -> cpmod multiples
        cpfirst = 0
     ELSEIF(cpoi == 0)
        isnotdiff = 0
        execseq = 1
        cpfirst = 0
     ELSE                   ; ordinary cp sequence cpoi -> 0 -> cpoi multiples
        isnotdiff = 0
        IF(cpoi == 1)
           cpfirst = cpmod
        ELSE
           angle1 = angle * (cpoi - 1)
           cpfirst = cpmod * ( cos(angle1) + flip(sin(angle1)) )
        ENDIF
     ENDIF
        isinit = 1
  ENDIF
  zp = cpcurr = cpfirst              ; z proxy--inside z is used for rendering
  cpctr = 0, C = pixel, diverged = 0, iter = 1, colctr = 1
  :
  iter = iter + 1
  IF(diverged)                                ; then go to next critical point
     cpctr = cpctr + 1, colctr = colctr + 1               ; increment counters
     IF(colctr > maxinscol)            ; if more cps than colors, cycle modulo
        colctr = colctr - maxinscol
     ENDIF
     IF( (execseq==1 && cpctr>1) || (execseq==0 && cpctr>2) )
        zp = cpcurr = cpcurr * rfactor
     ELSEIF(execseq==1)
        zp = cpcurr = cpmod
     ELSEIF(cpctr==1)
        zp = cpcurr = 0
     ELSE
        zp = cpcurr = cpfirst * rfactor
     ENDIF
  ENDIF
  IF(cpctr<cps)
     zp = k2*zp^A + k3*zp^B + fn1(C)            ; the actual iteration formula
     diverged = ( |zp| > bailout )
  ENDIF
  z = zp                                               ; for outside rendering
  IF(diverged==0 && iter==maxit)      ; inside point: set z for zmag rendering
     IF(isnotdiff)
        ins_col = 1
     ELSE
        ins_col = colctr
     ENDIF
     z = sqrt( (ins_col*2-1) / maxit )
  ENDIF
  cpctr<cps || diverged==false
}
MsetImages            { ; Hiram Berry <burningb@burningbridges.com>
                        ;  Wed, 12 May 2004 00:09:55
          ; inside=zmag renders closest approach to given point
          ; p1=target point p2=(bailout-4,begin scan pass) p3=(bullseye granularity,0)
          ; color=1 shows points which hit < granularity from p1. periodicity=0.
          ; Roughly shows the image of points with p1 as an attractor.
  IF(isinit==0)
     bailout = 4 + real(p2)
     isinit = 1
     IF(imag(p2)<1)
        scan = 1
     ELSE
        scan = trunc(imag(p2))
     ENDIF
     gran = real(p3)
     targ = p1
  ENDIF
  z = zp = 0
  iter = 1
  C = pixel
  :
  IF(iter == scan)                         ; start tabulating closest distance
     closest = cabs(zp-targ)
  ELSEIF(iter > scan)                          ; compare to see if new closest
     dist = cabs(zp-targ)
     IF(dist < closest)
        closest = dist
     ENDIF
  ENDIF
  zp = sqr(zp) + C
  iter = iter + 1
  IF( iter==maxit && iter>=scan )                   ;last pass-- render inside
     ins_col = 1 + trunc( closest/gran )
     z = sqrt( ( ins_col*2 - 1 ) / maxit )
  ENDIF
  |zp| <= bailout
}
Bimandeloid           { ; Hiram Berry <burningb@burningbridges.com>
                        ;  Wed, 12 May 2004 00:36:40
          ; vary C over the screen in z->z^A+k*z^B+C
          ; p1=(A,B)[reals],p2=k[complex],p3=(bailout-4,#critical points)
  IF(isinit==0)                            ; image-wide initialization section
     isinit=1
     A = real(p1), B = imag(p1), k = p2
     bailout = real(p3) + 4, cps = trunc(imag(p3))
     IF(cps<=0)                          ; give a default value for entry of 0
        cps = 1 + ceil(abs(A - B) )                  ; works for integers only
     ENDIF
     is_agtb = (A > B), diff = abs(A - B), angle = 2 * pi / diff
     rotfactor = cos(angle) + flip(sin(angle))
     IF(is_agtb)                          ; principal roots of the eqn for cps
        principal = (-B * K / A) ^ diff
     ELSE
        principal = (-A / B / k) ^ diff
     ENDIF
  ENDIF
  C = pixel                                             ; Mandelbrot-like type
  z = currcp = 0, cpctr = 1                    ; first critical point is z = 0
  isdiv = isalldiv = 0           ; flags for current cp and all cps divergence
  :
  IF(isdiv)                                     ; last critical point diverged
     cpctr = cpctr + 1
     IF(cpctr > cps)                        ; finished, with all cps diverging
        isalldiv = 1
     ELSEIF(cpctr == 2)                     ; second cp is the principal value
        z = currcp = principal, isdiv = 0
     ELSE                   ; rotate the last cp by angle on the complex plane
        currcp = currcp * rotfactor
        z = currcp, isdiv = 0
     ENDIF
  ENDIF
  IF(isalldiv != 1)
     z = z^A + k*z^B + C                                      ; main iteration
     isdiv = ( |z| > bailout)
  ENDIF
  isalldiv == 0
}
Bimandeloid2          { ; Hiram Berry <burningb@burningbridges.com>
                        ;  Thu, 13 May 2004 15:54:11
          ; vary C over the screen in z->z^A+k*z^B+C
          ; p1=(A,B)[reals],p2=k[complex],p3=(bailout-4,#critical points)
  IF(isinit==0)                            ; image-wide initialization section
     isinit=1
     A = real(p1), B = imag(p1), k = p2
     bailout = real(p3) + 4, cps = trunc(imag(p3))
     IF(cps<=0)                          ; give a default value for entry of 0
        cps = 1 + ceil(abs(A - B) )                  ; works for integers only
     ENDIF
     is_agtb = (A > B), diff = abs(A - B), angle = 2 * pi / diff
     rotfactor = cos(angle) + flip(sin(angle))
     IF(is_agtb)                          ; principal roots of the eqn for cps
        principal = (-B * K / A) ^ (1/diff)
     ELSE
        principal = (-A / B / k) ^ (1/diff)
     ENDIF
  ENDIF
  C = pixel                                             ; Mandelbrot-like type
  z = currcp = 0, cpctr = 1                    ; first critical point is z = 0
  isdiv = isalldiv = 0           ; flags for current cp and all cps divergence
  :
  IF(isdiv)                                     ; last critical point diverged
     cpctr = cpctr + 1
     IF(cpctr > cps)                        ; finished, with all cps diverging
        isalldiv = 1
     ELSEIF(cpctr == 2)                     ; second cp is the principal value
        z = currcp = principal, isdiv = 0
     ELSE                   ; rotate the last cp by angle on the complex plane
        currcp = currcp * rotfactor
        z = currcp, isdiv = 0
     ENDIF
  ENDIF
  IF(isalldiv != 1)
     z = z^A + k*z^B + C                                      ; main iteration
     isdiv = ( |z| > bailout)
  ENDIF
  isalldiv == 0
 }
Bimandeloid3          { ; Hiram Berry <burningb@burningbridges.com>
                        ;  Sun, 16 May 2004 16:52:37
          ; toggles with 3 different kinds of corresponding Julia sets
          ; generator z->z^A+k*z^B+C, main screen varies C, first Julia varies z_init
          ; second Julia varies k, third Julia varies exponents as A+Bi.
          ; Flag Jf: 0=first Julia type, 1=second Julia type, 2=third Julia type
          ; p2=(A,B)[reals],p3=k[complex],p4=(bailout-4,#critical points),p5=(Jf,0)
          ; Main screen and second Julia type start iterations on critical points
  IF(isinit==0)                            ; image-wide initialization section
     isinit = 1
     maxit = maxit                                                 ; forces fp
     Jf = real(p5)
     IF( ismand || Jf!=2 )                          ; cases where A,B constant
        A = real(p2), B = imag(p2)
     ENDIF
     Jf = real(p5)
     IF( ismand || Jf==0 || Jf==2 )                ; cases where k is constant
        k = p3
     ENDIF
     bailout = real(p4) + 4
     IF( ismand || Jf==1 )                   ; case where critical points used
        cps = trunc(imag(p4))
        IF(cps<=0)                       ; give a default value for entry of 0
           cps = 1 + ceil(abs(A - B) )               ; works for integers only
        ENDIF
        diff = (A - B), angle = 2 * pi / diff
        rotfactor = cos(angle) + flip(sin(angle))
        IF(ismand)                   ; case where cps are constant over screen
           principal = (-B * k / A) ^ (1/diff)
        ENDIF
     ENDIF
  ENDIF
  IF(ismand)
     C = pixel                                          ; Mandelbrot-like type
  ELSE                            ; initialize C and variable non-z for Julias
     C = p1                                          ; one of Julia-like types
     IF( Jf==1 )                            ; Julia type which screen-varies k
        k = pixel
        principal = (-B * k / A) ^ (1/diff)
     ELSEIF( Jf==2 )                      ; Julia type which screen-varies A,B
        A = real(pixel), B = imag(pixel)
     ENDIF
    ENDIF
  IF( ismand || Jf==1 )                 ; initialize z for cases which use cps
     z = currcp = 0, cpctr = 1                 ; first critical point is z = 0
     isdiv = isalldiv = 0        ; flags for current cp and all cps divergence
  ELSEIF( Jf==0)                             ; case which screen-varies z_init
     z = pixel
  ELSE                                                ; otherwise start z at 0
     z = 0
  ENDIF
  :
  IF( ismand || Jf==1 )                                   ; cases that use cps
     IF(isdiv)                                  ; last critical point diverged
        cpctr = cpctr + 1
        IF(cpctr > cps)                     ; finished, with all cps diverging
           isalldiv = 1
        ELSEIF(cpctr == 2)                  ; second cp is the principal value
           z = currcp = principal, isdiv = 0
        ELSE                ; rotate the last cp by angle on the complex plane
           currcp = currcp * rotfactor
           z = currcp, isdiv = 0
        ENDIF
     ENDIF
     IF(isalldiv != 1)
        z = z^A + k*z^B + C                                   ; main iteration
        isdiv = ( |z| > bailout)
     ENDIF
  ELSE                                             ; cases that do not use cps
     z = z^A + k*z^B + C                                      ; main iteration
     isalldiv = ( |z| > bailout)
  ENDIF
  isalldiv == 0
}
