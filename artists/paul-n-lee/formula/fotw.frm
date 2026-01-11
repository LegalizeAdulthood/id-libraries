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
Nuclear_JColLog { ; p1, p2, p3 parameters. Use float=y, outside=real, logmap=0,
                  ; periodicity=0. Colors from 4 ranges by finite attractors
                  ; and attracted to infinity. Uses a "logmap".
  a=p1, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2
  r3ac=r3*ac, ack=k*ac
  m=maxit-1, m4=m/2, iter=0, done=0, iter2=0
  qq=0.000001, bail=1000
  IF(notfirstpixel)
    m4=0
  ELSE
    za=-1
    zb=0
    zc=1
    qqa=qq
    qqb=qq
    qqc=qq
  ENDIF
  m3=m-m4
  z=pixel
  :
  IF(iter<m4)
    IF(qqa>0)
      z2=sqr(za)
      z3=za*z2
      za=(r3a2*z3-a6*z2-r3ac*za-ac)/(r3*za+1)+ack
      IF(|za|>bail)
        qqa=0
      ENDIF
    ENDIF
    IF(qqb>0)
      z2=sqr(zb)
      z3=zb*z2
      zb=(r3a2*z3-a6*z2-r3ac*zb-ac)/(r3*zb+1)+ack
      IF(|zb|>bail)
        qqb=0
      ENDIF
    ENDIF
    IF(qqc>0)
      z2=sqr(zc)
      z3=zc*z2
      zc=(r3a2*z3-a6*z2-r3ac*zc-ac)/(r3*zc+1)+ack
      IF(|zc|>bail)
        qqc=0
      ENDIF
    ENDIF
    iter=iter+1
  ELSE
    z2=sqr(z)
    z3=z*z2
    z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack
    iter=iter+1
    iter2=iter2+1
    IF(lastsqr>bail)
      done=1
      color=66*(log(iter2)/log(m3))
      IF(color<1)
        color=1
      ENDIF
      IF(color>66)
        color=66
      ENDIF
    ELSEIF(|z-za|<qqa)
      done=1
      color=63*(log(iter2)/log(m3))
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+66
    ELSEIF(|z-zb|<qqb)
      done=1
      color=63*(log(iter2)/log(m3))
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+129
    ELSEIF(|z-zc|<qqc)
      done=1
      color=63*(log(iter2)/log(m3))
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+192
    ENDIF
    IF(done)
      z=color-iter-7
      notfirstpixel=1
    ENDIF
  ENDIF
  done==0
}
Nuclear_JColLog { ; p1, p2, p3 parameters. Use float=y, outside=real,logmap=0,
                  ; periodicity=0. Colors from 4 ranges by finite attractors
                  ; and attracted to infinity. Uses a "logmap".
  a=p1, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2,
r3ac=r3*ac, ack=k*ac
  m=maxit-1, m4=m/2, iter=0, done=0, iter2=0
  qq=0.000001, bail=1000
  IF(notfirstpixel)
    m4=0
  ELSE
    za=-1
    zb=0
    zc=1
    qqa=qq
    qqb=qq
    qqc=qq
  ENDIF
  m3=m-m4
  z=pixel
  :
  IF(iter<m4)
    IF(qqa>0)
      z2=sqr(za)
      z3=za*z2
      za=(r3a2*z3-a6*z2-r3ac*za-ac)/(r3*za+1)+ack
      IF(|za|>bail)
        qqa=0
      ENDIF
    ENDIF
    IF(qqb>0)
      z2=sqr(zb)
      z3=zb*z2
      zb=(r3a2*z3-a6*z2-r3ac*zb-ac)/(r3*zb+1)+ack
      IF(|zb|>bail)
        qqb=0
      ENDIF
    ENDIF
    IF(qqc>0)
      z2=sqr(zc)
      z3=zc*z2
      zc=(r3a2*z3-a6*z2-r3ac*zc-ac)/(r3*zc+1)+ack
      IF(|zc|>bail)
        qqc=0
      ENDIF
    ENDIF
    iter=iter+1
  ELSE
    z2=sqr(z)
    z3=z*z2
    z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack
    iter=iter+1
    iter2=iter2+1
    IF(lastsqr>bail)
      done=1
      color=66*(log(iter2)/log(m3))
      IF(color<1)
        color=1
      ENDIF
      IF(color>66)
        color=66
      ENDIF
    ELSEIF(|z-za|<qqa)
      done=1
      color=63*(log(iter2)/log(m3))
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+66
    ELSEIF(|z-zb|<qqb)
      done=1
      color=63*(log(iter2)/log(m3))
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+129
    ELSEIF(|z-zc|<qqc)
      done=1
      color=63*(log(iter2)/log(m3))
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+192
    ENDIF
    IF(done)
      z=color-iter-7
      notfirstpixel=1
    ENDIF
  ENDIF
  done==0
}
