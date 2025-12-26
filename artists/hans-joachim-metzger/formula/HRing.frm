HRing_J {; This thing is capable of generating Herman rings for alpha
         ; equal to exp(2*pi*i*a), a irrational.
         ; p1: alpha. p2: c. p3: Orbit trap radius about 0, reciprocal is
         ; used for infinity.
         ; Use outside=real, logmap=0, periodicity=0.
  z=pixel, a=p1, c=p2, r=real(p3), rr=1/r, iter=0, done=0:
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    color=iter
    IF(color<1)
      color=1
    ELSEIF(color>127)
      color=127
    ENDIF
    IF(lastsqr<r)
      color=color+127
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}
 
HRing_J {; This thing is capable of generating Herman rings for alpha
         ; equal to exp(2*pi*i*a), a irrational.
         ; p1: alpha. p2: c. p3: Orbit trap radius about 0, reciprocal is
         ; used for infinity.
         ; Use outside=real, logmap=0, periodicity=0.
  z=pixel, a=p1, c=p2, r=real(p3), rr=1/r, iter=0, done=0:
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    color=iter
    IF(color<1)
      color=1
    ELSEIF(color>127)
      color=127
    ENDIF
    IF(lastsqr<r)
      color=color+127
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}
 
HRing_J2 {; This thing is capable of generating Herman rings for alpha
          ; equal to exp(2*pi*i*a), a irrational.
          ; p1: alpha. p2: c. p3: Orbit trap radius about 0, reciprocal is
          ; used for infinity.
          ; Color variant: stretches to maxiter.
          ; Use outside=real, logmap=0, periodicity=0.
  z=pixel, a=p1, c=p2, r=real(p3), rr=1/r, iter=0, done=0:
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    color=(iter/maxit)*127
    IF(color<1)
      color=1
    ELSEIF(color>127)
      color=127
    ENDIF
    IF(lastsqr<r)
      color=color+127
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}
 
HRing_J256 {; This thing is capable of generating Herman rings for alpha
            ; equal to exp(2*pi*i*a), a irrational.
            ; p1: alpha. p2: c. p3: Orbit trap radius about 0, reciprocal is
            ; used for infinity.
            ; Color variant: stretches to 
            ; maxiter outside, decomp-128'd inside.
            ; Use outside=real, logmap=0, periodicity=0.
  z=pixel, a=p1, c=p2, r=real(p3), rr=1/r, iter=0, done=0:
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    IF(lastsqr>rr)
      color=(iter/maxit)*127
      IF(color<1)
        color=1
      ELSEIF(color>127)
        color=127
      ENDIF
    ELSE
      cc=atan(imag(z)/real(z))
      IF(real(z)<0)
        cc=cc+PI
      ELSEIF(real(z)==0)
        IF(imag(z)<0)
          cc=-PI/2
        ELSE
          cc=PI/2
        ENDIF
      ENDIF
      IF(cc<0)
        cc=cc+2*PI
      ENDIF
      color=128+cc*64/PI
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}
 
HRing_J256 {; This thing is capable of generating Herman rings for alpha
            ; equal to exp(2*pi*i*a), a irrational.
            ; p1: alpha. p2: c. p3: Orbit trap radius about 0, reciprocal is
            ; used for infinity.
            ; Color variant: stretches to 
            ; maxiter outside, decomp-128'd inside.
            ; Use outside=real, logmap=0, periodicity=0.
  z=pixel, a=p1, c=p2, r=real(p3), rr=1/r, iter=0, done=0:
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    IF(lastsqr>rr)
      color=(iter/maxit)*127
      IF(color<1)
        color=1
      ELSEIF(color>127)
        color=127
      ENDIF
    ELSE
      cc=atan(imag(z)/real(z))
      IF(real(z)<0)
        cc=cc+PI
      ELSEIF(real(z)==0)
        IF(imag(z)<0)
          cc=-PI/2
        ELSE
          cc=PI/2
        ENDIF
      ENDIF
      IF(cc<0)
        cc=cc+2*PI
      ENDIF
      color=128+cc*64/PI
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}
 
HRing_J256b {; This thing is capable of generating Herman rings for alpha
             ; equal to exp(2*pi*i*a), a irrational.
             ; p1: alpha. p2: c. p3: Orbit trap radius 
             ; about 0, reciprocal is used for infinity.
             ; Color variant: stretches to 
             ; maxiter inside, decomp-128'd outside.
             ; Use outside=real, logmap=0, periodicity=0.
  z=pixel, a=p1, c=p2, r=real(p3), rr=1/r, iter=0, done=0:
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    IF(lastsqr>rr)
      cc=atan(imag(z)/real(z))
      IF(real(z)<0)
        cc=cc+PI
      ELSEIF(real(z)==0)
        IF(imag(z)<0)
          cc=-PI/2
        ELSE
          cc=PI/2
        ENDIF
      ENDIF
      IF(cc<0)
        cc=cc+2*PI
      ENDIF
      color=1+cc*64/PI
    ELSE
      color=(iter/maxit)*127
      IF(color<1)
        color=1
      ELSEIF(color>127)
        color=127
      ENDIF
      color=color+128
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}
 
HRing_Ma {; Mandelbrot set slice, alpha varies, c fixed.
          ; p2: c. p3: Orbit trap radius about 0, reciprocal is
          ; used for infinity.
          ; Use outside=real, logmap=0, periodicity=0.
  a=pixel, c=p2, r=real(p3), rr=1/r, iter=0, done=0, flag=0, m=maxit
  z=(3+sqr(c)+sqrt(9-10*sqr(c)+sqr(sqr(c))))/(4*c)
  IF(real(c)*real(c)-imag(c)*imag(c)-5>=0)
    flag=1-flag
  ENDIF
  IF(imag(c)<0)
    flag=1-flag
  ENDIF
  IF(flag==1)
    z=(3+sqr(c)-sqrt(9-10*sqr(c)+sqr(sqr(c))))/(4*c)
  ENDIF
  :
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    color=(iter/maxit)*127
    IF(color<1)
      color=1
    ELSEIF(color>127)
      color=127
    ENDIF
    IF(lastsqr<r)
      color=color+127
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}
 
HRing_Mc {; Mandelbrot set slice, c varies, alpha fixed.
          ; p1: alpha. p3: Orbit trap radius about 0, reciprocal is
          ; used for infinity.
          ; Use outside=real, logmap=0, periodicity=0.
  a=p1, c=pixel, r=real(p3), rr=1/r, iter=0, done=0, flag=0, m=maxit
  z=(3+sqr(c)+sqrt(9-10*sqr(c)+sqr(sqr(c))))/(4*c)
  IF(real(c)*real(c)-imag(c)*imag(c)-5>=0)
    flag=1-flag
  ENDIF
  IF(imag(c)<0)
    flag=1-flag
  ENDIF
  IF(flag==1)
    z=(3+sqr(c)-sqrt(9-10*sqr(c)+sqr(sqr(c))))/(4*c)
  ENDIF
  :
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    color=(iter/maxit)*127
    IF(color<1)
      color=1
    ELSEIF(color>127)
      color=127
    ENDIF
    IF(lastsqr<r)
      color=color+127
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}
 
HRing_Mc {; Mandelbrot set slice, c varies, alpha fixed.
          ; p1: alpha. p3: Orbit trap radius about 0, reciprocal is
          ; used for infinity.
          ; Use outside=real, logmap=0, periodicity=0.
  a=p1, c=pixel, r=real(p3), rr=1/r, iter=0, done=0, flag=0, m=maxit
  z=(3+sqr(c)+sqrt(9-10*sqr(c)+sqr(sqr(c))))/(4*c)
  IF(real(c)*real(c)-imag(c)*imag(c)-5>=0)
    flag=1-flag
  ENDIF
  IF(imag(c)<0)
    flag=1-flag
  ENDIF
  IF(flag==1)
    z=(3+sqr(c)-sqrt(9-10*sqr(c)+sqr(sqr(c))))/(4*c)
  ENDIF
  :
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    color=(iter/maxit)*127
    IF(color<1)
      color=1
    ELSEIF(color>127)
      color=127
    ENDIF
    IF(lastsqr<r)
      color=color+127
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}
 
