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
 
JulibrotSlice_R4        { ; Hiram Berry <burningb@burningbridges.com>
                          ;  Wed, 10 Mar 2004 22:33:41
        ;  p1: origin_x, origin_y; Mset init 0,0
        ;  p2: origin_z, origin_w; Mset init 0,0
        ;  p3: vector N longitude(deg), latitude(deg); Mset init 90,90
        ;  p4: vec N ternitude(deg), vec M longitude(deg): Mset init 90,90
        ;  p5: vec M latitude(deg), vec M ternitude(deg): Mset init 90,0
        ; this does all R2 planar slices of the R4 mapping
        ; via dimension-splitting of the C2 Julibrot process phase space
        ; the origin is arbitrarily chosen, as are two unit vectors {N,M} that define
        ; the plane P = Origin + a * N + b * M; {a,b} = "pixel", parm of variation.
        ; unit vectors specified by 4-space direction:{longitude,latitude,ternitude}
        ; algorithm is not efficient, extraneous dof allows skewing
        ; in the dimension splitting, arbitrarily associate Z0=x+yi,C=z+wi
  IF (initflag==0)
    initflag=1,
    degtorad = pi/180.0,
    N_long = real(p3 * degtorad),
    N_lat = imag(p3 * degtorad),
    N_tern = real(p4 * degtorad),
    M_long = imag(p4 * degtorad),
    M_lat = real(p5 * degtorad),
    M_tern = imag(p5 * degtorad),
    N_w = sin(N_tern),
    N_z = cos(N_tern) * sin(N_lat),
    N_y = cos(N_tern) * cos(N_lat) * sin(N_long),
    N_x = cos(N_tern) * cos(N_lat) * cos(N_long),
    M_w = sin(M_tern),
    M_z = cos(M_tern) * sin(M_lat),
    M_y = cos(M_tern) * cos(M_lat) * sin(M_long),
    M_x = cos(M_tern) * cos(M_lat) * cos(M_long)
  ENDIF
  a = imag(pixel), b = real(pixel),
  z = p1 + a * N_x + b * M_x + flip(a * N_y + b * M_y),
  C = p2 + a * N_z + b * M_z + flip(a * N_w + b * M_w),
  :
  z=sqr(z)+C,
  |z|<=1024
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
 
TernaryJulibrotSl2  { ; Hiram Berry <burningb@burningbridges.com>
                      ;  Sat, 6 Mar 2004 01:19:11
                      ;  C1 linear slice of a C3 parameter phase space
        ; slices the power Julibrot (the quadratic Julibrot is the subset
        ; with a=(2,0) ) in 6 dimensions with a 2 dimensional slice
        ; The phase space is of {z0,a,C} in the process z->z^a+C
        ; p1,p2,p3 are complex coords of an anchor point in the space
        ; p4,p5 are the complex latitude,longitude direction of the line
        ; emanating from the anchor point. They are input in user friendly
        ; (degree,degree) form instead of complex angular form.
        ; To start with the classic M-set initialize p2=(2,0);p4=(90,0);rest 0.
  IF (scrnpix==(0,0))           ; once per screen initialization hack
    ismand = true
    lim = 100                   ; ?
    lat = real(p4)*pi/180+flip(tan(imag(p4)*pi/360)*pi/2)
    long = real(p5)*pi/180+flip(tan(imag(p5)*pi/360)*pi/2)
  ; lat=p4                      ; temporary patch if
  ; long=p5                     ; angle fails to parse then enter in complex angular form
    Muz= cos(long) * cos(lat)
    Mua= sin(long) * cos(lat)
    Muc= sin(lat)               ; slice's polar coord unit direction in C3 space
  ENDIF
  k = pixel                     ; pixel position is the parameter of variation
  z=p1+k*Muz, a=p2+k*Mua, c=p3+k*Muc     ; find pos in (z0,a,c) space
  :
  z = z ^ a + c
  |z| <= lim
}
 
TernaryJulibrotSlc  { ; Hiram Berry <burningb@burningbridges.com>
                      ;  Sat, 6 Mar 2004 01:19:11
                      ;  C1 linear slice of a C3 parameter phase space
        ; slices the power Julibrot (the quadratic Julibrot is the subset
        ; with a=(2,0) ).
        ; The phase space is of {z0,a,C} in the process z->z^a+C
        ; p1,p2,p3 are complex coords of an anchor point in the space
        ; p4,p5 are the complex latitude,longitude direction of the line
        ; emanating from the anchor point.
  IF (scrnpix==(0,0))           ; once per screen initialization hack
    ismand = true
    lim = 100                   ; don't know what this should be-- may depend on "a"
  ; lat = (real(p4)*pi/180, tan(imag(p4)*pi/360)*pi/2)
  ; long = (real(p5)*pi/180, tan(imag(p5)*pi/360)*pi/2)
    lat=p4                      ; temporary patch -- conversion from (deg,deg) to complex
    long=p5                     ; angle failed to parse so enter angles in raw form
    Muz= cos(lat) * cos(long)   ; meaning of lat and long accid. transposed
    Mua= sin(lat) * cos(long)   ; but retained because used in Xtampak series
    Muc= sin(long)              ; slice's polar coord unit direction in C3 space
  ENDIF
  k = pixel                     ; pixel position is the parameter of variation
  z=p1+k*Muz, a=p2+k*Mua, c=p3+k*Muc     ; find pos in (z0,a,c) space
  :
  z = z ^ a + c
  |z| <= lim
 }
 
XY_Orbiter_1        { ; Hiram Berry <burningb@burningbridges.com>
                      ;  Wed, 10 Mar 2004 17:57:45
        ;  INITIALIZE:   fn1=sqr,fn2=sin,fn3=cos,p1=(10000,0),p2=(-0.05,0)
        ;  ORBIT SCREEN FLAG:  <p> toggle values (999,999)
        ; generates orbits on the <o> screen for a summation process
        ; x(n) = summation[m=1..n](fn2(fn1(n)*m^a)
        ; y(n) = summation[m=1..n](fn3(fn1(n)*m^a)
        ; The {fn2,fn3} ought to be an associated pair like {cosine,sine}
        ; The main screen is extraneously the Mandeloid of the function summed.
        ; Iteration count for the orbit is to be put in p1.real
        ; a is specified in p2.real
        ; Trigger orbit by <o> then <p> to get the numbers screen, where enter
        ; values "999" twice to generate the orbit
  IF (initflag == 0)
    a = p2,
    initflag = 1,
    isorbit = 0, isntorbit = 1
    iterhold = maxit
  ENDIF
  IF (real(scrnpix) == 999 && imag(scrnpix) == 999)      ; orbit screen init
    iterhold = maxit,
    maxit = p1,
    isorbit = 1, isntorbit = 0,
    z = (0,0)
  ELSE                                         ; nonorbit (main screen) init
    isorbit = 0, isntorbit = 1,
    z = pixel
    maxit = iterhold
  ENDIF
  :
  IF (isorbit)
    z = z + real(fn2(fn1(z)*z^a)) + flip(real(fn3(fn1(z)*z^a)))
  ELSE
    z = real(fn2(fn1(z)*z^a)) + flip(real(fn3(fn1(z)*z^a)))
  ENDIF
  ( isorbit && ( |z| < 1E20 ) ) || (isntorbit && ( |z| < 4 + p3 ) )
}
 
