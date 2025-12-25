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
 
