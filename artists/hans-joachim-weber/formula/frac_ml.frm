Secant_Sin {; Copyright (c) Paul W. Carlson, 1998
    ;
    ; F(w) = sin(w) - p3
    ;
    ; p1 = convergence test distance (I use 0.00000001)
    ; p2 = relaxation factor
    ; p3 = equation constant
    ;
    w0 = pixel
    w1 = flip(w0)
    z = iter = bailout = w = 0
    :
    ;
    f0 = sin(w0) - p3
    f1 = sin(w1) - p3
    w = w - p2 * f1 * (w1 - w0) / (f1 - f0)
    ;
    delta_w = w1 - w0
    IF (|delta_w| < p1)
	angle = atan(imag(delta_w) / real(delta_w))
	IF (delta_w >= 0)
	    IF (imag(delta_w) < 0)
		angle = pi + angle
	    ELSE
		angle = pi - angle
	    ENDIF
	ELSEIF (imag(delta_w) > 0)
	    angle = -angle
	ENDIF
	bailout = 1
	z = 249 * angle/pi + 1
    ENDIF
    w0 = w1;
    w1 = w,
    iter = iter + 1
    z = z - iter
    bailout == 0
}
Nuclear_M_cq { ; p1, p3 parameters. c is Mandel parameter. Colored based on all
               ; 3 critical points. Use outside=real, float=y, periodicity=n,
               ; maxiter>=256, and logmap=0.
               ; For logmap effect put real(p2) minimum iteration,
               ; imag(p2) bigger than 1, e.g. 2.
               ; Color 0 is for all critical points trapped.
               ; Colors 1-66, 67-129, 130-192, and 193-255 are separate ranges.
               ; Use first for outside, second thru fourth for two
               ; critical points escape, one trapped...
               ; Coloring variant.
  a=p1, c=pixel, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2,r3ac=r3*ac, ack=k*ac
  min=real(p2)
  p=imag(p2)
  IF(p==0)
    p=1
  ENDIF
  z1=0, z2=1, z3=-1
  qq=0.001, iter=0, done=0, z2done=0, m=maxit-1, z1done=0, z3done=0,
m2=floor(m/2), z1a=z1, z2a=z2, z3a=z3, flag=0, z1d2=0, z2d2=0, z3d2=0,
qrl=1.5, q2=0.15
  qq2=0.0000001
  :
  IF(z3done==0)
    zz2=sqr(z3)
    zz3=z3*zz2
    z3=(r3a2*zz3-a6*zz2-r3ac*z3-ac)/(r3*z3+1)+ack,
    IF(lastsqr>10000)
      z3done=iter
      z3d2=1
    ENDIF
  ENDIF
  IF(z2done==0)
    zz2=sqr(z2)
    zz3=z2*zz2
    z2=(r3a2*zz3-a6*zz2-r3ac*z2-ac)/(r3*z2+1)+ack,
    IF(lastsqr>10000)
      z2done=iter
      z2d2=1
    ENDIF
  ENDIF
  IF(z1done==0)
    zz2=sqr(z1)
    zz3=z1*zz2
    z1=(r3a2*zz3-a6*zz2-r3ac*z1-ac)/(r3*z1+1)+ack,
    IF(lastsqr>10000)
      z1done=iter
      z1d2=1
    ENDIF
  ENDIF
  iter=iter+1
  IF(iter>=m2 && flag==0)
    z1chek=z1
    z2chek=z2
    z3chek=z3
    flag=1
    spd=0
    first=0
    same12=0
    same23=0
    same13=0
  ELSEIF(flag==1)
    IF(z1d2==0)
      zz2=sqr(z1a)
      zz3=z1a*zz2
      z1a=(r3a2*zz3-a6*zz2-r3ac*z1a-ac)/(r3*z1a+1)+ack
    ENDIF
    IF(z2d2==0)
      zz2=sqr(z2a)
      zz3=z2a*zz2
      z2a=(r3a2*zz3-a6*zz2-r3ac*z2a-ac)/(r3*z2a+1)+ack
    ENDIF
    IF(z3d2==0)
      zz2=sqr(z3a)
      zz3=z3a*zz2
      z3a=(r3a2*zz3-a6*zz2-r3ac*z3a-ac)/(r3*z3a+1)+ack
    ENDIF
    spd=spd+1
    IF(|z1a-z2chek|<qq && z1d2==0)
      same12=1
      z1d2=spd
      IF(first==0 && |z2a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z2a-z1chek|<qq && z2d2==0)
      same12=1
      z2d2=spd
      IF(first==0 && |z1a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z1a-z3chek|<qq && z1d2==0)
      same13=1
      z1d2=spd
      IF(first==0 && |z3a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z3a-z1chek|<qq && z3d2==0)
      same13=1
      z3d2=spd
      IF(first==0 && |z1a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
    IF(|z2a-z3chek|<qq && z2d2==0)
      same23=1
      z2d2=spd
      IF(first==0 && |z3a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z3a-z2chek|<qq && z3d2==0)
      same23=1
      z3d2=spd
      IF(first==0 && |z2a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
    IF(|z1a-z1chek|<qq2)
      z1d2=spd
    ENDIF
    IF(|z2a-z2chek|<qq2)
      z2d2=spd
    ENDIF
    IF(|z3a-z3chek|<qq2)
      z3d2=spd
    ENDIF
  ENDIF
  IF((z1d2>0 && z2d2>0 && z3d2>0) || iter==m)
    IF(z1done==0 || z2done==0 || z3done==0)
      IF(z2done>0 && z3done>0)
        ddd=z2done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+66
      ELSEIF(z1done>0 && z3done>0)
        ddd=z1done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+129
      ELSEIF(z1done>0 && z2done>0)
        ddd=z1done
        IF(z2done>ddd)
          ddd=z2done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+192
      ELSEIF(z1done>0)
        IF(same23!=0 && first!=0)
          IF(first==2)
            ddd=z3d2
            cj=129
          ELSE
            ddd=z2d2
            cj=192
          ENDIF
          color=((ddd-min)/(m2-min))^(1/p)*63
          color=64-color
        ELSE
          cj=66
          color=((z1done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(z2done>0)
        IF(same13!=0 && first!=0)
          IF(first==1)
            ddd=z3d2
            cj=66
          ELSE
            ddd=z1d2
            cj=192
          ENDIF
          color=((ddd-min)/(m2-min))^(1/p)*63
          color=64-color
        ELSE
          cj=129
          color=((z2done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(z3done>0)
        IF(same12!=0 && first!=0)
          IF(first==1)
            ddd=z2d2
            cj=66
          ELSE
            ddd=z1d2
            cj=129
          ENDIF
          color=((ddd-min)/(m-min))^(1/p)*63
          color=64-color
        ELSE
          cj=192
          color=((z3done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(same12==1 && same23==1)
        IF(first==1)
          ddd=z2d2+z3d2
          cj=66
        ELSEIF(first==2)
          ddd=z1d2+z3d2
          cj=129
        ELSEIF(first==3)
          ddd=z1d2+z2d2
          cj=192
        ELSE
          ddd=z1d2+z2d2+z3d2
          cj=0
        ENDIF
        IF(first==0)
          color=(ddd/m2)^(1/p)*66
          color=67-color
          IF(color>66)
            color=66
          ENDIF
          IF(color<1)
            color=1
          ENDIF
        ELSE
          color=(ddd/m2)^(1/p)*63
          color=64-color
          IF(color>63)
            color=63
          ENDIF
          IF(color<1)
            color=1
          ENDIF
        ENDIF
        color=color+cj
      ELSEIF(same12==1)
        IF(first==1)
          ddd=z2d2
          cj=129
        ELSEIF(first==2)
          ddd=z1d2
          cj=66
        ELSE
          cj=192
          ddd=z1d2+z2d2
        ENDIF
        color=(ddd/m2)^(1/p)*63
        color=64-color
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(same13==1)
        IF(first==1)
          cj=192
          ddd=z3d2
        ELSEIF(first==3)
          cj=66
          ddd=z1d2
        else
          cj=129
          ddd=z1d2+z3d2
        ENDIF
        color=(ddd/m2)^(1/p)*63
        color=64-color
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(same23==1)
        IF(first==2)
          ddd=z3d2
          cj=192
        ELSEIF(first==3)
          ddd=z2d2
          cj=129
        ELSE
          ddd=z2d2+z3d2
          cj=66
        ENDIF
        color=(ddd/m2)^(1/p)*63
        color=64-color
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSE
        color=0
      ENDIF
    ELSE
      color=((iter-min)/(m-min))^(1/p)*66
      IF(color>66)
        color=66
      ENDIF
      IF(color<1)
        color=1
      ENDIF
    ENDIF
    done=1
    z=color-iter-7
  ENDIF
  done==0
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
Nuclear_JColLogC { ; p1, p2, p3 parameters. Use float=y, outside=real,logmap=0,
                   ; periodicity=0. Colors from 4 ranges by finite attractors
                   ; and attracted to infinity. Uses a "logmap".
                   ; Variation: Log reversed for high iterations.
  a=p1, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2,
r3ac=r3*ac, ack=k*ac
  m=maxit-1, m4=m/2, iter=0, done=0, iter2=0, fi=3000
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
      color=63*(log(iter2-fi)/log(m3-fi))
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+66
    ELSEIF(|z-zb|<qqb)
      done=1
      color=63*(log(iter2-fi)/log(m3-fi))
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+129
    ELSEIF(|z-zc|<qqc)
      done=1
      color=63*(log(iter2-fi)/log(m3-fi))
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
Nuclear_M_c_1 { ; p1, p3 parameters. Use float=y. c is Mandel parameter,
                ; critical point 1.
  a=p1, c=pixel, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2
  a6=3*a2, r3ac=r3*ac, ack=k*ac
  z=1:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack,
  lastsqr<=1000000
}
Nuclear_M_c_0 { ; p1, p3 parameters. Use float=y. c is Mandel parameter,
                ; critical point 0.
  a=p1, c=pixel, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2
  a6=3*a2, r3ac=r3*ac, ack=k*ac
  z=0:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack,
  lastsqr<=1000000
}
Nuclear_M_c_-1 { ; p1, p3 parameters. Use float=y. c is Mandel parameter,
                ; critical point -1.
  a=p1, c=pixel, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2
  a6=3*a2, r3ac=r3*ac, ack=k*ac
  z=-1:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack,
  lastsqr<=1000000
}
classic_shift { ; Jay Hill, 1998
; shift one midget over another, merge images
; p1 = shift of first midget
; p2 = scaling factor of first midget relative to second
; p3 = shift of second midget
; use  outside=summ periodicity=0 passes=1float=y
continue = 1,
z = 0,
zc = c = (pixel+p3)*(1-whitesq) + (pixel/p2+p1) *whitesq
   :
if (|zc| > 40)
    continue = 0
else
    zc = sqr(zc) + c
endif
continue == 1
}
gravijul { ; r^(-2) Mark Christenson 1/25/98
; defaults: p1 = (1,0) p2 = (0,0) p3 = (4,0)
   z = pixel:

   w = fn1(z)
   z = fn3(p1/fn2(w*w)) + p2
    |z| < p3
  }
SECANT1{; Ray Girvan, March 1998
    ; secant method for roots of f(z)=0
    ; z^5-1=0
    ; z_n+1 = z_n - f(z_n)*(z_n - z_n-1)/(f(z_n) - f(z_n-1))
    ; needs two seed values z0, z1
    ; Newton-like images, perturbed by choice of z1,
    ; a relaxation factor p2, and a function fn2
    ; inside the iteration loop
   z=pixel, z0=(0,0), z1=fn1(z)+p1:
   f0=z0*z0*z0*z0*z0-1
   f1=z1*z1*z1*z1*z1-1
   z=z-p2*f1*(z1-z0)/(f1-f0);
   z0=z1;
   z1=fn2(z),
   |f1| >= 0.0001
}
FlexBalls_Cosww {; Copyright (c) Paul W. Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ;
    c = pixel
    w = z = iter = bailout = 0
    d0 = p1 + p2
    d1 = 0.382683432365 * p1
    d2 = 0.923879532511 * p1
    dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
    :
    w = cos(w * w) + c
    ;
    IF ((abs(cabs(w) - p1) < p2) && iter > 0)
	bailout = 1
	wr = real(w), wi = imag(w)
	awr = abs(wr), awi = abs(wi)
	IF (awr >= awi)
	    dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
	    adjust = 1
	ELSE
	    dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
	    adjust = 0
	ENDIF
	IF     (wr >= 0 && wi >= 0)
	    range_num = 1 - adjust
	ELSEIF (wr < 0 && wi >= 0)
	    range_num = 2 + adjust
	ELSEIF (wr < 0 && wi < 0)
	    range_num = 5 - adjust
	ELSE
	    range_num = 6 + adjust
	ENDIF
	ratio = sqrt(dist / dsqd)
	z = 29 * ratio + range_num * 30 + 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1000
}
Newt7_Fang_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = controls element size try 0.01 to 2.0
    ; imag(p1)   not used
    ; p2       = factor, try (1,0)
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    width = real(p1)
    c = pixel
    c2 = c * c, c1 = 1 / c
    root1 = c1
    root2 = -c1
    root3 = c
    root4 = -c
    c41 = c2 * c2+1
    w = sqrt(c41 / (6 * c2))
    z = iter = range_num = bailout = 0
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    colors_in_range_1 = colors_in_range - 1
    :
    w2 = w * w
    w = w - (c2*w2*w2 - c41*w2 + c2) / (4*c2*w2*w - 2*c41*w)
    angle = atan(imag(w) / real(w))
    v = p2 * (fn1(angle)^2 + fn2(angle)^2)
    dist = abs(|w| - |v|)
    IF (dist < width && iter > 0)
        bailout = 1
        index = colors_in_range_1 * dist / width
	z = index + range_num * colors_in_range + 1
    ELSEIF (|w - root1| < 0.00001)
	bailout = 1
	z = 252
    ELSEIF (|w - root2| < 0.00001)
	bailout = 1
	z = 252
    ELSEIF (|w - root3| < 0.00001)
	bailout = 1
	z = 252
    ELSEIF (|w - root4| < 0.00001)
	bailout = 1
	z = 252
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 10000000
}
HalleyNovanM { ; HalleyNova Mandelbrot set for z^n-1 (SLOW)
               ; p1: n (may be complex).
               ; p3 real: orbit trap radius.
  n=p1, c=pixel, r=real(p3), z=1
  n2=2*n, n2pn=n*n+n, n2mn=n*n-n, ns=n*n, ns1=ns-1
  :
  oz=z
  zn=z^n
  zn1=zn-1
  z=z-n2*z*zn1/(n2pn*zn+n2mn)+c,
  |oz-z|>=r
}
Nuclear_M_a_0 { ; p2, p3 parameters. Use float=y. a is Mandel parameter,
                ; critical point 0.
  a=pixel, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2
  a6=3*a2, r3ac=r3*ac, ack=k*ac
  z=0:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack,
  lastsqr<=1000000
}
HalleyNovanJ { ; HalleyNova Julia sets for z^n-1
               ; p1: n (may be complex).
               ; p2: Julia parameter
               ; p3 real: orbit trap radius.
  n=p1, c=p2, r=real(p3), z=pixel
  n2=2*n, n2pn=n*n+n, n2mn=n*n-n
  :
  oz=z
  zn=z^n
  zn1=zn-1
  z=z-n2*z*zn1/(n2pn*zn+n2mn)+c,
  |oz-z|>=r
}
FlexBalls_Cosh {; Copyright (c) Paul W. Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ;
    c = pixel
    w = z = iter = bailout = 0
    d0 = p1 + p2
    d1 = 0.382683432365 * p1
    d2 = 0.923879532511 * p1
    dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
    :
    w = cosh(w) + c
    ;
    IF ((abs(cabs(w) - p1) < p2) && iter > 0)
	bailout = 1
	wr = real(w), wi = imag(w)
	awr = abs(wr), awi = abs(wi)
	IF (awr >= awi)
	    dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
	    adjust = 1
	ELSE
	    dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
	    adjust = 0
	ENDIF
	IF     (wr >= 0 && wi >= 0)
	    range_num = 1 - adjust
	ELSEIF (wr < 0 && wi >= 0)
	    range_num = 2 + adjust
	ELSEIF (wr < 0 && wi < 0)
	    range_num = 5 - adjust
	ELSE
	    range_num = 6 + adjust
	ENDIF
	ratio = sqrt(dist / dsqd)
	z = 29 * ratio + range_num * 30 + 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1000
}
Many_mods {; Linda Allison May 15,1997
               ; modified by Sylvie Gallet
               ; modified again by Linda Allison
               ; and again by David Shanholtzer
               ; 1st parameter: real(p1) = bailout
               ; 2nd parameter: imag(p1) = number of sides
z=0,
c=0.4*log(sqr(pixel^imag(p1))):
z2=fn1(z)+c,
sqz2=fn2(z2),
z=c*(1-sqz2)/(1+sqz2),
|z| <= p1
}
Nuclear_M_k_0 { ; p1, p2 parameters. Use float=y. k is Mandel parameter,
                ; critical point 0.
  a=p1, c=p2, k=pixel, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2
  a6=3*a2, r3ac=r3*ac, ack=k*ac
  z=0:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack,
  lastsqr<=1000000
}
Nuclear_M_k_1 { ; p1, p2 parameters. Use float=y. k is Mandel parameter,
                ; critical point 1.
  a=p1, c=p2, k=pixel, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2
  a6=3*a2, r3ac=r3*ac, ack=k*ac
  z=1:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack,
  lastsqr<=1000000
}
Nuclear_M_kq {; p1, p2 parameters. c is Mandel parameter.
              ; Colored based on all 3 critical points.
              ; Use outside=real, float=y, periodicity=n,
              ; maxiter>=256, and logmap=0.
              ; For logmap effect put real(p2) minimum iteration,
              ; imag(p2) bigger than 1, e.g. 2.
              ; Color 0 is for all critical points trapped.
              ; Colors 1-66, 67-129, 130-192, and 193-255 are separate
              ; ranges.
              ; Use first for outside, second thru fourth for two
              ; critical points escape, one trapped...
              ; Coloring variant.
              ; Edited for Fractint v. 20 by George Martin, 10,98
  a=p1, c=p2, k=pixel, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2
  r3ac=r3*ac, ack=k*ac
  min=real(p2)
  p=imag(p2)
  IF(p==0)
    p=1
  ENDIF
  z1=0, z2=1, z3=-1
  qq=10^(-3), iter=0, done=0, z2done=0, m=maxit-1, z1done=0, z3done=0
  m2=floor(m/2), z1a=z1, z2a=z2, z3a=z3, flag=0, z1d2=0, z2d2=0, z3d2=0
  qrl=1.5, q2=0.15
  qq2=10^(-7)
  :
  IF(z3done==0)
    zz2=sqr(z3)
    zz3=z3*zz2
    z3=(r3a2*zz3-a6*zz2-r3ac*z3-ac)/(r3*z3+1)+ack
    IF(lastsqr>10000)
      z3done=iter
      z3d2=1
    ENDIF
  ENDIF
  IF(z2done==0)
    zz2=sqr(z2)
    zz3=z2*zz2
    z2=(r3a2*zz3-a6*zz2-r3ac*z2-ac)/(r3*z2+1)+ack
    IF(lastsqr>10000)
      z2done=iter
      z2d2=1
    ENDIF
  ENDIF
  IF(z1done==0)
    zz2=sqr(z1)
    zz3=z1*zz2
    z1=(r3a2*zz3-a6*zz2-r3ac*z1-ac)/(r3*z1+1)+ack
    IF(lastsqr>10000)
      z1done=iter
      z1d2=1
    ENDIF
  ENDIF
  iter=iter+1
  IF(iter>=m2 && flag==0)
    z1chek=z1
    z2chek=z2
    z3chek=z3
    flag=1
    spd=0
    first=0
    same12=0
    same23=0
    same13=0
  ELSEIF(flag==1)
    IF(z1d2==0)
      zz2=sqr(z1a)
      zz3=z1a*zz2
      z1a=(r3a2*zz3-a6*zz2-r3ac*z1a-ac)/(r3*z1a+1)+ack
    ENDIF
    IF(z2d2==0)
      zz2=sqr(z2a)
      zz3=z2a*zz2
      z2a=(r3a2*zz3-a6*zz2-r3ac*z2a-ac)/(r3*z2a+1)+ack
    ENDIF
    IF(z3d2==0)
      zz2=sqr(z3a)
      zz3=z3a*zz2
      z3a=(r3a2*zz3-a6*zz2-r3ac*z3a-ac)/(r3*z3a+1)+ack
    ENDIF
    spd=spd+1
    IF(|z1a-z2chek|<qq && z1d2==0)
      same12=1
      z1d2=spd
      IF(first==0 && |z2a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z2a-z1chek|<qq && z2d2==0)
      same12=1
      z2d2=spd
      IF(first==0 && |z1a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z1a-z3chek|<qq && z1d2==0)
      same13=1
      z1d2=spd
      IF(first==0 && |z3a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z3a-z1chek|<qq && z3d2==0)
      same13=1
      z3d2=spd
      IF(first==0 && |z1a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
    IF(|z2a-z3chek|<qq && z2d2==0)
      same23=1
      z2d2=spd
      IF(first==0 && |z3a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z3a-z2chek|<qq && z3d2==0)
      same23=1
      z3d2=spd
      IF(first==0 && |z2a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
    IF(|z1a-z1chek|<qq2)
      z1d2=spd
    ENDIF
    IF(|z2a-z2chek|<qq2)
      z2d2=spd
    ENDIF
    IF(|z3a-z3chek|<qq2)
      z3d2=spd
    ENDIF
  ENDIF
  IF((z1d2>0 && z2d2>0 && z3d2>0) || iter==m)
    IF(z1done==0 || z2done==0 || z3done==0)
      IF(z2done>0 && z3done>0)
        ddd=z2done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+66
      ELSEIF(z1done>0 && z3done>0)
        ddd=z1done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+129
      ELSEIF(z1done>0 && z2done>0)
        ddd=z1done
        IF(z2done>ddd)
          ddd=z2done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+192
      ELSEIF(z1done>0)
        IF(same23!=0 && first!=0)
          IF(first==2)
            ddd=z3d2
            cj=129
          ELSE
            ddd=z2d2
            cj=192
          ENDIF
          color=((ddd-min)/(m2-min))^(1/p)*63
          color=64-color
        ELSE
          cj=66
          color=((z1done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(z2done>0)
        IF(same13!=0 && first!=0)
          IF(first==1)
            ddd=z3d2
            cj=66
          ELSE
            ddd=z1d2
            cj=192
          ENDIF
          color=((ddd-min)/(m2-min))^(1/p)*63
          color=64-color
        ELSE
          cj=129
          color=((z2done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(z3done>0)
        IF(same12!=0 && first!=0)
          IF(first==1)
            ddd=z2d2
            cj=66
          ELSE
            ddd=z1d2
            cj=129
          ENDIF
          color=((ddd-min)/(m-min))^(1/p)*63
          color=64-color
        ELSE
          cj=192
          color=((z3done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(same12==1 && same23==1)
        IF(first==1)
          ddd=z2d2+z3d2
          cj=66
        ELSEIF(first==2)
          ddd=z1d2+z3d2
          cj=129
        ELSEIF(first==3)
          ddd=z1d2+z2d2
          cj=192
        ELSE
          ddd=z1d2+z2d2+z3d2
          cj=0
        ENDIF
        IF(first==0)
          color=(ddd/m2)^(1/p)*66
          color=67-color
          IF(color>66)
            color=66
          ENDIF
          IF(color<1)
            color=1
          ENDIF
        ELSE
          color=(ddd/m2)^(1/p)*63
          color=64-color
          IF(color>63)
            color=63
          ENDIF
          IF(color<1)
            color=1
          ENDIF
        ENDIF
        color=color+cj
      ELSEIF(same12==1)
        IF(first==1)
          ddd=z2d2
          cj=129
        ELSEIF(first==2)
          ddd=z1d2
          cj=66
        ELSE
          cj=192
          ddd=z1d2+z2d2
        ENDIF
        color=(ddd/m2)^(1/p)*63
        color=64-color
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(same13==1)
        IF(first==1)
          cj=192
          ddd=z3d2
        ELSEIF(first==3)
          cj=66
          ddd=z1d2
        else
          cj=129
          ddd=z1d2+z3d2
        ENDIF
        color=(ddd/m2)^(1/p)*63
        color=64-color
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(same23==1)
        IF(first==2)
          ddd=z3d2
          cj=192
        ELSEIF(first==3)
          ddd=z2d2
          cj=129
        ELSE
          ddd=z2d2+z3d2
          cj=66
        ENDIF
        color=(ddd/m2)^(1/p)*63
        color=64-color
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSE
        color=0
      ENDIF
    ELSE
      color=((iter-min)/(m-min))^(1/p)*66
      IF(color>66)
        color=66
      ENDIF
      IF(color<1)
        color=1
      ENDIF
    ENDIF
    done=1
    z=color-iter-7
  ENDIF
  done==0
}
MandNewt11 {; Jim Muth
            ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  z=g=pixel, a=real(p1), b=imag(p1), c=real(p2)
  d=imag(p2), ee=real(p3), f=imag(p3):
  h=z^a+(g-b)*z-f
  j=c*z^d+g
  z=z-ee*h/j
  .0000000000000000000000000000005 <= |h|
}
FlexBalls_Mand {; Copyright (c) Paul W. Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ;
    c = pixel
    w = z = iter = bailout = 0
    d0 = p1 + p2
    d1 = 0.382683432365 * p1
    d2 = 0.923879532511 * p1
    dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
    :
    w = w * w + c   ; Classic Mandelbrot set
    ;
    IF ((abs(cabs(w) - p1) < p2) && iter > 0)
	bailout = 1
	wr = real(w), wi = imag(w)
	awr = abs(wr), awi = abs(wi)
	IF (awr >= awi)
	    dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
	    adjust = 1
	ELSE
	    dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
	    adjust = 0
	ENDIF
	IF     (wr >= 0 && wi >= 0)
	    range_num = 1 - adjust
	ELSEIF (wr < 0 && wi >= 0)
	    range_num = 2 + adjust
	ELSEIF (wr < 0 && wi < 0)
	    range_num = 5 - adjust
	ELSE
	    range_num = 6 + adjust
	ENDIF
	ratio = sqrt(dist / dsqd)
	z = 29 * ratio + range_num * 30 + 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1000
}
Nuclear_M_c {; p1, p3 parameters. c is Mandel parameter.
             ; Colored based on all 3 critical points.
             ; Use outside=real, float=y, periodicity=n,
             ; maxiter>=256, and logmap=0.
             ; For logmap effect put real(p2) minimum iteration,
             ; imag(p2) bigger than 1, e.g. 2.
             ; Color 0 is for all critical points trapped.
             ; Colors 1-66, 67-129, 130-192, and 193-255 are separate
             ; ranges.
             ; Use first for outside, second thru fourth for two
             ; critical points escape, one trapped...
             ; Edited for Fractint v. 20 by George Martin, 10/98
  a=p1, c=pixel, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2
  r3ac=r3*ac, ack=k*ac
  min=real(p2)
  p=imag(p2)
  IF(p==0)
    p=1
  ENDIF
  z1=0, z2=1, z3=-1
  qq=10^(-2), iter=0, done=0, z2done=0, m=maxit-1, z1done=0, z3done=0
  m2=floor(maxit/2), z1a=z1, z2a=z2, z3a=z3, flag=0, z1d2=0, z2d2=0
  z3d2=0, qrl=1.5, q2=0.15
  :
  IF(z3done==0)
    zz2=sqr(z3)
    zz3=z3*zz2
    z3=(r3a2*zz3-a6*zz2-r3ac*z3-ac)/(r3*z3+1)+ack
    IF(lastsqr>10000)
      z3done=iter
      z3d2=1
    ENDIF
  ENDIF
  IF(z2done==0)
    zz2=sqr(z2)
    zz3=z2*zz2
    z2=(r3a2*zz3-a6*zz2-r3ac*z2-ac)/(r3*z2+1)+ack
    IF(lastsqr>10000)
      z2done=iter
      z2d2=1
    ENDIF
  ENDIF
  IF(z1done==0)
    zz2=sqr(z1)
    zz3=z1*zz2
    z1=(r3a2*zz3-a6*zz2-r3ac*z1-ac)/(r3*z1+1)+ack
    IF(lastsqr>10000)
      z1done=iter
      z1d2=1
    ENDIF
  ENDIF
  iter=iter+1
  IF(iter>=m2 && iter<(m2+1) && flag==0)
    z1chek=z1
    z2chek=z2
    z3chek=z3
    flag=1
    spd=0
    first=0
    same12=0
    same23=0
    same13=0
  ELSEIF(flag==1)
    zz2=sqr(z1a)
    zz3=z1a*zz2
    z1a=(r3a2*zz3-a6*zz2-r3ac*z1a-ac)/(r3*z1a+1)+ack
    zz2=sqr(z2a)
    zz3=z2a*zz2
    z2a=(r3a2*zz3-a6*zz2-r3ac*z2a-ac)/(r3*z2a+1)+ack
    zz2=sqr(z3a)
    zz3=z3a*zz2
    z3a=(r3a2*zz3-a6*zz2-r3ac*z3a-ac)/(r3*z3a+1)+ack
    spd=spd+1
    IF(|z1a-z2chek|<qq)
      same12=1
      z1d2=spd
      IF(first==0 && |z2a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z2a-z1chek|<qq)
      same12=1
      z2d2=spd
      IF(first==0 && |z1a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z1a-z3chek|<qq)
      same13=1
      z1d2=spd
      IF(first==0 && |z3a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z3a-z1chek|<qq)
      same13=1
      z3d2=spd
      IF(first==0 && |z1a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
    IF(|z2a-z3chek|<qq)
      same23=1
      z2d2=spd
      IF(first==0 && |z3a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z3a-z2chek|<qq)
      same23=1
      z3d2=spd
      IF(first==0 && |z2a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
  ENDIF
  IF((z1d2>0 && z2d2>0 && z3d2>0) || iter==m)
    IF(z1done==0 || z2done==0 || z3done==0)
      IF(z2done>0 && z3done>0)
        ddd=z2done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+66
      ELSEIF(z1done>0 && z3done>0)
        ddd=z1done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+129
      ELSEIF(z1done>0 && z2done>0)
        ddd=z1done
        IF(z2done>ddd)
          ddd=z2done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+192
      ELSEIF(z1done>0)
        IF(same23!=0 && first!=0)
          ddd=z1done*(q2*abs(z2d2-z3d2))^qrl
          color=((ddd-min)/(m-min))^(1/p)*63
        ELSE
          color=((z1done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(same23==0)
          color=color+66
        ELSE
          IF(first==0)
            color=color+66
          ELSEIF(first==2)
            color=color+129
          ELSE
            color=color+192
          ENDIF
        ENDIF
      ELSEIF(z2done>0)
        IF(same13!=0 && first!=0)
          ddd=z2done*(q2*abs(z1d2-z3d2))^qrl
          color=((ddd-min)/(m-min))^(1/p)*63
        ELSE
          color=((z2done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(same13==0)
          color=color+129
        ELSE
          IF(first==0)
            color=color+129
          ELSEIF(first==1)
            color=color+66
          ELSE
            color=color+192
          ENDIF
        ENDIF
      ELSEIF(z3done>0)
        IF(same12!=0 && first!=0)
          ddd=z3done*(q2*abs(z1d2-z2d2))^qrl
          color=((ddd-min)/(m-min))^(1/p)*63
        ELSE
          color=((z3done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(same12==0)
          color=color+192
        ELSE
          IF(first==0)
            color=color+192
          ELSEIF(first==1)
            color=color+66
          ELSE
            color=color+129
          ENDIF
        ENDIF
      ELSEIF(same12==1 && same23==1)
        ddd=abs(z1d2-z2d2)
        IF(abs(z1d2-z3d2)<ddd)
          ddd=abs(z1d2-z3d2)
        ENDIF
        IF(abs(z2d2-z3d2)<ddd)
          ddd=abs(z2d2-z3d2)
        ENDIF
        IF(first==0)
          color=(ddd/m)^(1/p)*66
          IF(color>66)
            color=66
          ENDIF
        ELSE
          color=(ddd/m)^(1/p)*63
          IF(color>63)
            color=63
          ENDIF
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==1)
          color=color+66
        ELSEIF(first==2)
          color=color+129
        ELSEIF(first==3)
          color=color+192
        ENDIF
      ELSEIF(same12==1)
        ddd=abs(z1d2-z2d2)
        color=(ddd/m)^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==0)
          color=color+192
        ELSEIF(first==1)
          color=color+66
        ELSE
          color=color+129
        ENDIF
      ELSEIF(same13==1)
        ddd=abs(z1d2-z3d2)
        color=(ddd/m)^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==0)
          color=color+129
        ELSEIF(first==1)
          color=color+66
        ELSE
          color=color+192
        ENDIF
      ELSEIF(same23==1)
        ddd=abs(z2d2-z3d2)
        color=(ddd/m)^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==0)
          color=color+66
        ELSEIF(first==2)
          color=color+129
        ELSE
          color=color+192
        ENDIF
      ELSE
        color=0
      ENDIF
    ELSE
      color=((iter-min)/(m-min))^(1/p)*66
      IF(color>66)
        color=66
      ENDIF
      IF(color<1)
        color=1
      ENDIF
    ENDIF
    done=1
    z=color-iter-7
  ENDIF
  done==0
}
Nuclear_JColLogB { ; p1, p2, p3 parameters. Use float=y, outside=real,logmap=0,
                   ; periodicity=0. Colors from 4 ranges by finite attractors
                   ; and attracted to infinity. Uses a "logmap".
                   ; Variation: qq shrunk.
                   ; Suitable for deeper zooms.
  a=p1, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2,
r3ac=r3*ac, ack=k*ac
  m=maxit-1, m4=m/2, iter=0, done=0, iter2=0
  qq=0.00000001, bail=1000
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
Carr3371 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; Rewritten for if..else by George Martin 3/9/98
                  ; passes=1 needs to be used with this PHC formula
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  tenthinvpixel = .1/newpixel
  b6=conj(tenthinvpixel)
  b7=flip(.1*tenthinvpixel)
  b8=cabs(.02*tenthinvpixel+cabs(0.02*tenthinvpixel))
  b4=abs(newpixel^2)*conj(flip(newpixel^3))\
     -conj(tenthinvpixel-flip(0.1*tenthinvpixel))
  b5=(newpixel^3)*cabs(newpixel+0.125)^4-b7-b6+1.75*b8-0.2
  IF (whitesq)
    z = origz = b5^0.7456
    c = (-0.7456,-0.13214)+conj(.1*b4)
  ELSE
    z = origz = -b5
    c = (-0.7456,-0.13214)+conj(.1*(-b4))
  ENDIF
  bailout=16, imagp1 = imag(p1), imagp2 = imag(p2), iter=0
  :
  IF (iter == p1)
    z=0
    c=(-0.7456,-0.13214)+conj(.15*origz^1.2)
  ELSEIF (iter == imagp1)
    z=0
    c=(-0.7456,-0.13214)+conj(.225*origz)
  ELSEIF (iter == p2)
    z=0
    c=(-0.7456,-0.13214)+conj(.3375*origz)
  ELSEIF (iter == imagp2)
    z=0
    c=(-0.7456,-0.13214)+conj(.50625*origz)
  ENDIF
  z=z*z+c
  iter=iter+1
  |z|<=bailout
}
sfi-p160 { ; Sylvie Gallet, Mar 1998
  z = pixel :
  z = e^(z-1)                       ; z = 1/e * e^z
  if (z >= 50 && cos(imag(z)) >= 0)
    continue = 0
  else
    continue = 1
  endif
  continue
}
Mandel_3Way {; Copyright (c) Paul W. Carlson, 1998
    ; Alyways use float=y, outdide=summ
    ; real(p1) = escape circle radius squared
    ; imag(p1) = number of iterations to skip
    ; real(p2) number of color ranges
    ; imag(p2) number of colors in a range
    z = w = k = iter = range_num = bailout = 0
    c = pixel
    prev_modw2 = 1.0e20
    rad2 = real(p1)
    skip_iters = imag(p1)
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    colors_in_range_1 = colors_in_range - 1
    :
    w = w * w + c
    ;
    IF ((prev_modw2 < rad2) && (|w| > rad2))
        bailout = 1
        IF (iter > skip_iters)
            k = 1
        ENDIF
        index = colors_in_range_1 * (rad2 - prev_modw2) / rad2
        z = (index + range_num * colors_in_range + 1) * k
    ENDIF
    prev_modw2 = |w|
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| <= rad2
}
Halley7_3Way {; Copyright (c) Paul W. Carlson, 1998
    ; Alyways use float=y, outdide=summ
    ; real(p1) = escape circle radius squared
    ; imag(p1) = number of iterations to skip
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    ; p3       = relaxation factor
    z = k = iter = range_num = bailout = 0
    w = pixel
    prev_modw2 = 1.0e20
    rad2 = real(p1)
    skip_iters = imag(p1)
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    colors_in_range_1 = colors_in_range - 1
    :
    w5 = w^5, w6 = w * w5, w7 = w * w6
    w = w - p3 * (w7-w)/((7*w6-1)-(42*w5)*(w7-w)/(14*w6-2))
    ;
    IF ((prev_modw2 < rad2) && (|w| > rad2))
        bailout = 1
        IF (iter > skip_iters)
            k = 1
        ENDIF
        index = colors_in_range_1 * (rad2 - prev_modw2) / rad2
        z = (index + range_num * colors_in_range + 1) * k
    ENDIF
    prev_modw2 = |w|
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1.0e10
}
Nuclear_JulCol { ; p1, p2, p3 parameters. Use float=y, outside=real, logmap=0,
                 ; periodicity=0. Colors from 4 ranges by finite attractors
                 ; and attracted to infinity.
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
      color=iter2
      IF(color<1)
        color=1
      ENDIF
      IF(color>66)
        color=66
      ENDIF
    ELSEIF(|z-za|<qqa)
      done=1
      color=iter2
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+66
    ELSEIF(|z-zb|<qqb)
      done=1
      color=iter2
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+129
    ELSEIF(|z-zc|<qqc)
      done=1
      color=iter2
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
Nuclear_JulCol { ; p1, p2, p3 parameters. Use float=y, outside=real,logmap=0,
                 ; periodicity=0. Colors from 4 ranges by finite attractors
                 ; and attracted to infinity.
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
      color=iter2
      IF(color<1)
        color=1
      ENDIF
      IF(color>66)
        color=66
      ENDIF
    ELSEIF(|z-za|<qqa)
      done=1
      color=iter2
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+66
    ELSEIF(|z-zb|<qqb)
      done=1
      color=iter2
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+129
    ELSEIF(|z-zc|<qqc)
      done=1
      color=iter2
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
Nuclear_Jul { ; p1, p2, p3 parameters. Use float=y.
  a=p1, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2
  r3ac=r3*ac, ack=k*ac
  z=pixel:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack,
  lastsqr<=1000000
}
Nuclear_Jul { ; p1, p2, p3 parameters. Use float=y.
  a=p1, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2,
  r3ac=r3*ac, ack=k*ac
  z=pixel:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack,
  lastsqr<=1000000
}
Nuclear_M_k {; p1, p2 parameters. k is Mandel parameter. Colored based
             ; on all 3 critical points. Use outside=real, float=y,
             ; periodicity=n, maxiter>=256, and logmap=0.
             ; For logmap effect put real(p3) minimum iteration,
             ; imag(p3) bigger than 1, e.g. 2.
             ; Color 0 is for all critical points trapped.
             ; Colors 1-66, 67-129, 130-192, and 193-255 are separate
             ; ranges.
             ; Use first for outside, second thru fourth for two
             ; critical points escape, one trapped...
             ; Edited for Fractint v. 20 by George Martin, 10/98
  a=p1, c=p2, k=pixel, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2
  r3ac=r3*ac, ack=k*ac
  min=real(p3)
  p=imag(p3)
  IF(p==0)
    p=1
  ENDIF
  z1=0, z2=1, z3=-1
  qq=10^(-2), iter=0, done=0, z2done=0, m=maxit-1, z1done=0, z3done=0
  m2=floor(maxit/2), z1a=z1, z2a=z2, z3a=z3, flag=0, z1d2=0, z2d2=0
  z3d2=0, qrl=1.5, q2=0.15
  :
  IF(z3done==0)
    zz2=sqr(z3)
    zz3=z3*zz2
    z3=(r3a2*zz3-a6*zz2-r3ac*z3-ac)/(r3*z3+1)+ack
    IF(lastsqr>10000)
      z3done=iter
      z3d2=1
    ENDIF
  ENDIF
  IF(z2done==0)
    zz2=sqr(z2)
    zz3=z2*zz2
    z2=(r3a2*zz3-a6*zz2-r3ac*z2-ac)/(r3*z2+1)+ack
    IF(lastsqr>10000)
      z2done=iter
      z2d2=1
    ENDIF
  ENDIF
  IF(z1done==0)
    zz2=sqr(z1)
    zz3=z1*zz2
    z1=(r3a2*zz3-a6*zz2-r3ac*z1-ac)/(r3*z1+1)+ack
    IF(lastsqr>10000)
      z1done=iter
      z1d2=1
    ENDIF
  ENDIF
  iter=iter+1
  IF(iter>=m2 && iter<(m2+1) && flag==0)
    z1chek=z1
    z2chek=z2
    z3chek=z3
    flag=1
    spd=0
    first=0
    same12=0
    same23=0
    same13=0
  ELSEIF(flag==1)
    zz2=sqr(z1a)
    zz3=z1a*zz2
    z1a=(r3a2*zz3-a6*zz2-r3ac*z1a-ac)/(r3*z1a+1)+ack
    zz2=sqr(z2a)
    zz3=z2a*zz2
    z2a=(r3a2*zz3-a6*zz2-r3ac*z2a-ac)/(r3*z2a+1)+ack
    zz2=sqr(z3a)
    zz3=z3a*zz2
    z3a=(r3a2*zz3-a6*zz2-r3ac*z3a-ac)/(r3*z3a+1)+ack
    spd=spd+1
    IF(|z1a-z2chek|<qq)
      same12=1
      z1d2=spd
      IF(first==0 && |z2a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z2a-z1chek|<qq)
      same12=1
      z2d2=spd
      IF(first==0 && |z1a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z1a-z3chek|<qq)
      same13=1
      z1d2=spd
      IF(first==0 && |z3a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z3a-z1chek|<qq)
      same13=1
      z3d2=spd
      IF(first==0 && |z1a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
    IF(|z2a-z3chek|<qq)
      same23=1
      z2d2=spd
      IF(first==0 && |z3a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z3a-z2chek|<qq)
      same23=1
      z3d2=spd
      IF(first==0 && |z2a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
  ENDIF
  IF((z1d2>0 && z2d2>0 && z3d2>0) || iter==m)
    IF(z1done==0 || z2done==0 || z3done==0)
      IF(z2done>0 && z3done>0)
        ddd=z2done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+66
      ELSEIF(z1done>0 && z3done>0)
        ddd=z1done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+129
      ELSEIF(z1done>0 && z2done>0)
        ddd=z1done
        IF(z2done>ddd)
          ddd=z2done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+192
      ELSEIF(z1done>0)
        IF(same23!=0 && first!=0)
          ddd=z1done*(q2*abs(z2d2-z3d2))^qrl
          color=((ddd-min)/(m-min))^(1/p)*63
        ELSE
          color=((z1done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(same23==0)
          color=color+66
        ELSE
          IF(first==0)
            color=color+66
          ELSEIF(first==2)
            color=color+129
          ELSE
            color=color+192
          ENDIF
        ENDIF
      ELSEIF(z2done>0)
        IF(same13!=0 && first!=0)
          ddd=z2done*(q2*abs(z1d2-z3d2))^qrl
          color=((ddd-min)/(m-min))^(1/p)*63
        ELSE
          color=((z2done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(same13==0)
          color=color+129
        ELSE
          IF(first==0)
            color=color+129
          ELSEIF(first==1)
            color=color+66
          ELSE
            color=color+192
          ENDIF
        ENDIF
      ELSEIF(z3done>0)
        IF(same12!=0 && first!=0)
          ddd=z3done*(q2*abs(z1d2-z2d2))^qrl
          color=((ddd-min)/(m-min))^(1/p)*63
        ELSE
          color=((z3done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(same12==0)
          color=color+192
        ELSE
          IF(first==0)
            color=color+192
          ELSEIF(first==1)
            color=color+66
          ELSE
            color=color+129
          ENDIF
        ENDIF
      ELSEIF(same12==1 && same23==1)
        ddd=abs(z1d2-z2d2)
        IF(abs(z1d2-z3d2)<ddd)
          ddd=abs(z1d2-z3d2)
        ENDIF
        IF(abs(z2d2-z3d2)<ddd)
          ddd=abs(z2d2-z3d2)
        ENDIF
        IF(first==0)
          color=(ddd/m)^(1/p)*66
          IF(color>66)
            color=66
          ENDIF
        ELSE
          color=(ddd/m)^(1/p)*63
          IF(color>63)
            color=63
          ENDIF
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==1)
          color=color+66
        ELSEIF(first==2)
          color=color+129
        ELSEIF(first==3)
          color=color+192
        ENDIF
      ELSEIF(same12==1)
        ddd=abs(z1d2-z2d2)
        color=(ddd/m)^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==0)
          color=color+192
        ELSEIF(first==1)
          color=color+66
        ELSE
          color=color+129
        ENDIF
      ELSEIF(same13==1)
        ddd=abs(z1d2-z3d2)
        color=(ddd/m)^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==0)
          color=color+129
        ELSEIF(first==1)
          color=color+66
        ELSE
          color=color+192
        ENDIF
      ELSEIF(same23==1)
        ddd=abs(z2d2-z3d2)
        color=(ddd/m)^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==0)
          color=color+66
        ELSEIF(first==2)
          color=color+129
        ELSE
          color=color+192
        ENDIF
      ELSE
        color=0
      ENDIF
    ELSE
      color=((iter-min)/(m-min))^(1/p)*66
      IF(color>66)
        color=66
      ENDIF
      IF(color<1)
        color=1
      ENDIF
    ENDIF
    done=1
    z=color-iter-7
  ENDIF
  done==0
}
palette { ; use maxiter=255 and outside=summ
  z0 = 256 * real(scrnpix)/real(scrnmax) , iter=0 :
  iter = iter + 1
  z = z0 - iter
  0
}
palette_ {
  K = real(p1)*real(pixel):
  K = real(K)-real(p2)
  |K| < real(p3)
}
gravijul4 { ;variation of a Mark Christenson frm
  bailout = imag(p3), k = real(p3)
  z = abs(pixel):
  v = fn1(z)*k
  w = fn2(v*v)
  z = fn4(p1/fn3(w*w)) + p2
  |z| < bailout
}
Nuclear_M_a {; p2, p3 parameters. c is Mandel parameter.
             ; Colored based on all 3 critical points.
             ; Use outside=real, float=y, periodicity=n,
             ; maxiter>=256, and logmap=0.
             ; For logmap effect put real(p1) minimum iteration,
             ; imag(p1) bigger than 1, e.g. 2.
             ; Color 0 is for all critical points trapped.
             ; Colors 1-66, 67-129, 130-192, and 193-255 are separate
             ; ranges.
             ; Use first for outside, second thru fourth for two
             ; critical points escape, one trapped...
             ; Edited for Fractint v. 20 by George Martin, 10,98
  a=pixel, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2
  r3ac=r3*ac, ack=k*ac
  min=real(p1)
  p=imag(p1)
  IF(p==0)
    p=1
  ENDIF
  z1=0, z2=1, z3=-1
  qq=10^(-2), iter=0, done=0, z2done=0, m=maxit-1, z1done=0, z3done=0
  m2=floor(maxit/2), z1a=z1, z2a=z2, z3a=z3, flag=0, z1d2=0, z2d2=0
  z3d2=0, qrl=1.5, q2=0.15
  :
  IF(z3done==0)
    zz2=sqr(z3)
    zz3=z3*zz2
    z3=(r3a2*zz3-a6*zz2-r3ac*z3-ac)/(r3*z3+1)+ack
    IF(lastsqr>10000)
      z3done=iter
      z3d2=1
    ENDIF
  ENDIF
  IF(z2done==0)
    zz2=sqr(z2)
    zz3=z2*zz2
    z2=(r3a2*zz3-a6*zz2-r3ac*z2-ac)/(r3*z2+1)+ack
    IF(lastsqr>10000)
      z2done=iter
      z2d2=1
    ENDIF
  ENDIF
  IF(z1done==0)
    zz2=sqr(z1)
    zz3=z1*zz2
    z1=(r3a2*zz3-a6*zz2-r3ac*z1-ac)/(r3*z1+1)+ack
    IF(lastsqr>10000)
      z1done=iter
      z1d2=1
    ENDIF
  ENDIF
  iter=iter+1
  IF(iter>=m2 && iter<(m2+1) && flag==0)
    z1chek=z1
    z2chek=z2
    z3chek=z3
    flag=1
    spd=0
    first=0
    same12=0
    same23=0
    same13=0
  ELSEIF(flag==1)
    zz2=sqr(z1a)
    zz3=z1a*zz2
    z1a=(r3a2*zz3-a6*zz2-r3ac*z1a-ac)/(r3*z1a+1)+ack
    zz2=sqr(z2a)
    zz3=z2a*zz2
    z2a=(r3a2*zz3-a6*zz2-r3ac*z2a-ac)/(r3*z2a+1)+ack
    zz2=sqr(z3a)
    zz3=z3a*zz2
    z3a=(r3a2*zz3-a6*zz2-r3ac*z3a-ac)/(r3*z3a+1)+ack
    spd=spd+1
    IF(|z1a-z2chek|<qq)
      same12=1
      z1d2=spd
      IF(first==0 && |z2a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z2a-z1chek|<qq)
      same12=1
      z2d2=spd
      IF(first==0 && |z1a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z1a-z3chek|<qq)
      same13=1
      z1d2=spd
      IF(first==0 && |z3a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z3a-z1chek|<qq)
      same13=1
      z3d2=spd
      IF(first==0 && |z1a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
    IF(|z2a-z3chek|<qq)
      same23=1
      z2d2=spd
      IF(first==0 && |z3a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z3a-z2chek|<qq)
      same23=1
      z3d2=spd
      IF(first==0 && |z2a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
  ENDIF
  IF((z1d2>0 && z2d2>0 && z3d2>0) || iter==m)
    IF(z1done==0 || z2done==0 || z3done==0)
      IF(z2done>0 && z3done>0)
        ddd=z2done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+66
      ELSEIF(z1done>0 && z3done>0)
        ddd=z1done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+129
      ELSEIF(z1done>0 && z2done>0)
        ddd=z1done
        IF(z2done>ddd)
          ddd=z2done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+192
      ELSEIF(z1done>0)
        IF(same23!=0 && first!=0)
          ddd=z1done*(q2*abs(z2d2-z3d2))^qrl
          color=((ddd-min)/(m-min))^(1/p)*63
        ELSE
          color=((z1done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(same23==0)
          color=color+66
        ELSE
          IF(first==0)
            color=color+66
          ELSEIF(first==2)
            color=color+129
          ELSE
            color=color+192
          ENDIF
        ENDIF
      ELSEIF(z2done>0)
        IF(same13!=0 && first!=0)
          ddd=z2done*(q2*abs(z1d2-z3d2))^qrl
          color=((ddd-min)/(m-min))^(1/p)*63
        ELSE
          color=((z2done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(same13==0)
          color=color+129
        ELSE
          IF(first==0)
            color=color+129
          ELSEIF(first==1)
            color=color+66
          ELSE
            color=color+192
          ENDIF
        ENDIF
      ELSEIF(z3done>0)
        IF(same12!=0 && first!=0)
          ddd=z3done*(q2*abs(z1d2-z2d2))^qrl
          color=((ddd-min)/(m-min))^(1/p)*63
        ELSE
          color=((z3done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(same12==0)
          color=color+192
        ELSE
          IF(first==0)
            color=color+192
          ELSEIF(first==1)
            color=color+66
          ELSE
            color=color+129
          ENDIF
        ENDIF
      ELSEIF(same12==1 && same23==1)
        ddd=abs(z1d2-z2d2)
        IF(abs(z1d2-z3d2)<ddd)
          ddd=abs(z1d2-z3d2)
        ENDIF
        IF(abs(z2d2-z3d2)<ddd)
          ddd=abs(z2d2-z3d2)
        ENDIF
        IF(first==0)
          color=(ddd/m)^(1/p)*66
          IF(color>66)
            color=66
          ENDIF
        ELSE
          color=(ddd/m)^(1/p)*63
          IF(color>63)
            color=63
          ENDIF
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==1)
          color=color+66
        ELSEIF(first==2)
          color=color+129
        ELSEIF(first==3)
          color=color+192
        ENDIF
      ELSEIF(same12==1)
        ddd=abs(z1d2-z2d2)
        color=(ddd/m)^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==0)
          color=color+192
        ELSEIF(first==1)
          color=color+66
        ELSE
          color=color+129
        ENDIF
      ELSEIF(same13==1)
        ddd=abs(z1d2-z3d2)
        color=(ddd/m)^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==0)
          color=color+129
        ELSEIF(first==1)
          color=color+66
        ELSE
          color=color+192
        ENDIF
      ELSEIF(same23==1)
        ddd=abs(z2d2-z3d2)
        color=(ddd/m)^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==0)
          color=color+66
        ELSEIF(first==2)
          color=color+129
        ELSE
          color=color+192
        ENDIF
      ELSE
        color=0
      ENDIF
    ELSE
      color=((iter-min)/(m-min))^(1/p)*66
      IF(color>66)
        color=66
      ENDIF
      IF(color<1)
        color=1
      ENDIF
    ENDIF
    done=1
    z=color-iter-7
  ENDIF
  done==0
}
FlyingSquirrelC (XAXIS_NOPARM) {; Edited for Fractint v. 20
                                ; by George Martin 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=sin(z)/cosxx(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4
}
F'Cetjoz {; fn1 added by Jon Horner
  z=pixel, c=p1:
  z=fn1(z)+c,
  c=c+p2/z,
  |z| <= 4
}
BirdOfPrey (XAXIS_NOPARM) { ; Optimized by Sylvie Gallet
  z = p1 :
   z = cosxx(sqr(z) + pixel) + pixel
    |z| <= 4
}
HorLineia (ORIGIN) {; Tom Schumm
                    ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like a julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= 4          ; Different escape boundry
}
hypercomplex {; Chuck Ebbert -- must use periodicity=0
   ; P1 is (cj,ck), bailout is real(p2) (default 64)
  z = zi = 0,
  t = (64 * (real(p2)<=0) + real(p2) * (0<real(p2)) ):
  a = z - imag(zi) + flip(real(zi)),
  b = z + imag(zi) - flip(real(zi)),
  a = fn1(a),
  b = fn1(b),
  z = (a+b)/2 + pixel,
  zi = (imag(a)-imag(b)+flip(real(b))-flip(real(a)))/2 + p1,
  |z| + |zi| <= t
}
Olio_3 (XAXIS) {
  z = pixel, fpix = fn1(pixel) + p1:
  z = z*z + pixel
  z = z * fpix
  z = fn2(1/z)
  |z| < 4
}
Olio_Srand {
  z = pixel :
  z = z + p1
  z = z * z + srand(z)
  |z| < 4
}
au0 {
  z=pixel,y=fn1(z-1)^fn1(z),x=(z-1)*fn1(z+1),t=(z/2)*fn1(z-1):
  z=fn1(fn2(t^y)/fn3(x^t))^fn4(t^z)
  |z|<4
}
IslandOfChaos (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=sin(z)/cosxx(z)+pixel
  x=x+1
  |z|<=4
}
zmincoszb {; David Walter
  z =c= pixel:
  z10=z*z+c
  fz = z - cos(z10);
  fdashz = 1 + sin(z);
  z = z - fz/(fdashz + P1);
  0.0001 <= |fz|
}
OblManPlusLow {; Jim Muth
  z=p1+pixel, c=p2+(p3*pixel):
  z=sqr(z)+c,
  |z| <=4
}
ManInTheOzone (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=cos(z)+pixel
  z=sin(z)+pixel
  x=x+1
  |z|<=4
}
Newt_Fnc_Julia {; Copyright (c) Paul W. Carlson, 1998
    ; p1       = Julia set coordinates
    ; real(p2) = controls element size
    ; imag(p2)   not used
    ; p3       = relaxation factor
    ;
    width = real(p2)
    w = pixel
    a = fn1(p1)
    am = a - 1
    z = iter = range_num = bailout = 0
    num_ranges = 2
    colors_in_range = 125
    colors_in_range_1 = 124
    :
    k = w * w, q = w * am
    w = w - p3 * (k * k + k * am - a) / (4 * w * k + q + q)
    dist = abs(|w| - 0.5)
    IF (dist < width && iter > 0)
        bailout = 1
        index = colors_in_range_1 * dist / width
        z = index + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}
Newt_Fnc_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = controls element size
    ; imag(p1)   not used
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    ;
    width = real(p1)
    a = fn1(pixel)
    am = a - 1
    w = sqrt(-am / 6)
    z = iter = range_num = bailout = 0
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    colors_in_range_1 = colors_in_range - 1
    :
    k = w * w, q = w * am
    w = w - (k * k + k * am - a) / (4 * w * k + q + q)
    dist = abs(|w| - 0.5)
    IF (dist < width && iter > 0)
        bailout = 1
        index = colors_in_range_1 * dist / width
        z = index + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}
Celtic_Julia {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the width of the stalks
    ;   imag(p2) = maximum iterations for stalks
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a color range
    ;****************************************************
    w = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    stalk_width = real(p2)
    max_iter = imag(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    ratio = (colors_in_range - 1) / stalk_width:
    ;
    w = w * w, wr = real(w)
    w = w - wr + abs(wr) - c
    ;
    IF (abs(real(w)) <= abs(imag(w)))
        min_dist_to_axis = abs(real(w))
    ELSE
        min_dist_to_axis = abs(imag(w))
    ENDIF
    IF (min_dist_to_axis < stalk_width && iter > 1 && iter <= max_iter)
        z = ratio * min_dist_to_axis + range_num * colors_in_range + 1
        bailout = 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0  && |w| < 4
}
HyCycl_Julia {; Copyright (c) Paul W. Carlson, 1998
    z = w = iter = range_num = bailout = 0
    w = pixel
    c = p1
    i = (0,1)
    k = 1.2 - p3
    :
    w = w * w, wr = real(w)
    w = w - wr + abs(wr) - c
    angle = atan(imag(w)/wr)
    ka = k * angle / p3
    rw = k * cos(angle) + p3 * cos(ka)
    iw = k * sin(angle) + p3 * sin(ka)
    ww = rw + i * iw
    dist = abs(|w|-|ww|)
    IF (dist < p2 && iter > 1)
        bailout = 1
        index = 125 * dist / p2
        z = index + range_num * 125 + 1
    ENDIF
    iter = iter + 1
    range_num = range_num + 1
    IF (range_num == 2)
        range_num = 0
    ENDIF
    z = z - iter
    bailout == 0 && |w| < 10000
}
051597-002a   {; Linda Allison May 15, 1997
; stars modified by David Shanholtzer
 z=0;
 c=log(sqr(sqr(pixel))*pixel)*0.4:
 z2=fn1(z)+c
 z=c*(1-z2*z2)/(1+z2*z2)
 |z|<=p1
}
gravijul_2u { ; Variation of gravijul formula - PD 3/98
     ; Original formula by Mark Christenson
  bailout = imag(p3), k = real(p3)
  z = abs(pixel):
  x = real(z), y = imag(z)
  w = fn1(x) + k*y, v = fn1(y) + k*x
  u = fn2(w + flip(v))
  z = fn4(p1/fn3(u*u)) + p2
  |z| < bailout
}
gravijul-a2 { ; generalized r^(-2) by Mark "Bud" Christenson 3/6/98
              ; favors p2
              ; defaults: p1 = (1,0) p2 = (0,0) p3 = (0,4)
  q4 = p2
  q2 =real(p1)
  q1 = imag(p1) ; new knob 1
  q3 = real(p3) ; new knob 2
  q5 = imag(p3) ; bailout
   z = pixel:
   v = fn1(z)
   w = q1*(v*v)
   z = q3*fn3(q2/fn2(w)) + q4
    |z| < q5
  }
Gallet-10-02 { ; Modified Paul W. Carlson formula ( Petals_Mset)
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = radius of the circles
    ;   p2       = circle offset factor
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = 0
    c = pixel
    r = real(p1) , bailout = imag(p1)
    r2 = r * r
    ro = r + r * p2
    f = 1 - (2 + p2) * p2
    k = r * (p2 + sqrt(f))  ;abs val of petal center (k,k)
    k1 = k*(1,1) , k2 = conj(k1)
    plsqd = 2 * r2 * f        ;petal length squared
    z = 0
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    range_num = 0
    iter = 0:
    ;
    w = 1 / (w*w + c)
    ;****************************************************
    ; Determine which pair of overlapping circles the
    ; orbit point falls in, if any.
    ;****************************************************
    c1 = (|w - ro| < r2)
    c2 = (|w + flip(ro)| < r2)
    c3 = (|w + ro| < r2)
    c4 = (|w - flip(ro)| < r2)
    IF (c1 && c4)
      d = |w-k1|
    ELSEIF (c1 && c2)
      d = |w-k2|
    ELSEIF (c2 && c3)
      d = |w+k1|
    ELSEIF (c3 && c4)
      d = |w+k2|
    ELSE
      d = 0
    ENDIF
    ;
    IF (d > 0)
    ;************************************************
    ; Set z equal to the index into the colormap.
    ;************************************************
    index = colors_in_range * d / plsqd
    z = index + range_num * colors_in_range + 1
    ENDIF
    ;
    range_num = range_num + 1
    IF (range_num == num_ranges)
      range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    d == 0 && |w| < bailout
    }
gravijul-a1 { ; generalized r^(-2) by Mark "Bud" Christenson 3/6/98
              ; defaults: p1 = (1,0) p2 = (0,0) p3 = (0,4)
  q4 = real(p2)
  q2 = p1
  q1 = imag(p2) ; new knob 1
  q3 = real(p3) ; new knob 2
  q5 = imag(p3) ; bailout
   z = pixel:
   v = fn1(z)
   w = q1*(v*v)
   z = q3*fn3(q2/fn2(w)) + q4
    |z| < q5
  }
Newt3_Atan_Mset {; Original formula by Paul Carlson
                       ; with optimizations by Sylvie Gallet
    ; F(w)   = w^3 + (c - 1) * w - c
    ; F'(w)  = 3 * w^2 + c - 1
    ; F''(w) = 6 * w,  so initialize w to zero
    ;
    ; p1 contols the "layering"
    ;
    c = pixel , c1 = c - 1
    z = iter = bailout = prev_w = w = 0
    colors_in_range = 80
    colors_in_range_1 = 79
    k = 0.5 * sqrt(1 - 4 * c)
    root1 = (1,0)
    root2 = -0.5 + k
    root3 = -0.5 - k
    :
    ;
    w2 = w * w
    w = w - (w * (w2 + c1) - c) / (3 * w2 + c1)
    ;
    delta_w = w - prev_w
    IF (|delta_w| < p1)
        angle = atan(imag(delta_w) / real(delta_w))
        IF (delta_w >= 0)
            IF (imag(delta_w) < 0)
                angle = pi + angle
            ELSE
                angle = pi - angle
            ENDIF
        ELSEIF (imag(delta_w) > 0)
            angle = -angle
        ENDIF
        IF     (|w - root1| < p1)
            range_num = 0
        ELSEIF (|w - root2| < p1)
            range_num = 1
        ELSEIF (|w - root3| < p1)
            range_num = 2
        ENDIF
        bailout = 1
        z = colors_in_range_1*angle/pi+range_num*colors_in_range+1
    ENDIF
    prev_w = w
    iter = iter + 1
    z = z - iter
    bailout == 0
}
gravibrot{ ; generalized r^(-2) by Mark "Bud" Christenson 3/13/98
; derived from gravijul
; defaults: p1 = (1,0) p2 = (0,0) p3 = (4,0)
   z = p2
   c = pixel:

   w = fn1(z)
   z = fn3(p1/fn2(w*w)) + c
    |z| < p3
  }
Formulization { ; Copyright (c) Paul W. Carlson, 1998
    z = w = iter = range_num = bailout = 0
    c = pixel
    p = p1 + p1
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    colors_in_range_1 = colors_in_range - 1
    :
    ; Some random formulizationizating
    k = w * w + c
    w = k +  1 / (k * k) + k * c
    ;
    m = |w|
    IF ((p < p1) && (m > p1))
        bailout = 1
        index = colors_in_range_1 * (p1 - p) / p1
        z = index + range_num * colors_in_range + 1
    ENDIF
    p = m
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && m < 100
}
Newt8-JAtan-Mset {; (c) Jay R. Hill, 1998
; Newton method set up as a Mandelbrot set
; This formula searches for 8 roots of a function
; Inspired by Paul Carlson's Newt5_Atan_Mset
; p1=width of root finding
; p2=A=constant in formula
; F(w) = w^8 - A*w^7 - w*c + A*c
; F'(w) = 8*w^7 - 7*A*w^6 - c
; F''(w) = 56*w^6 - 42*A*w^5
; Set F''=0, solve for initial w, 42*A/56 = 3*A/4
;
c = pixel, A=p2, z = iter = bailout = 0
colors_in_range = 31
R=(-1)^(2/7), R2=sqr(R)
root1 = A, root2 = c^(1/7), root3 = root2*R, root4 = root2*R2
root5 = root4*R, root6 = root4*R2, root7 = root6*R, root8 = root6*R2
w = 3*A/4
:
w6 = w^6
deltaw=((w*w6 - A*w6 - c)*w + A*c)/(8*w*w6 - 7*A*w6 - c)
w = w - deltaw
;
IF (|deltaw| < p1)
angle=abs(imag(log(deltaw)))
range_num = (|w - root2| < p1)+2*(|w - root3| < p1)+\
3*(|w - root4| < p1)+4*(|w - root5| < p1)+5*(|w - root6| < p1)+\
6*(|w - root7| < p1)+7*(|w - root8| < p1)
bailout = 1
z = colors_in_range*(angle/pi + range_num)-angle/pi + 1
ENDIF
iter = iter + 1
z = z - iter
bailout == 0
}
Newt6-JAtan-Mset {; (c) Jay R. Hill, 1998
         ; Newton method set up as a Mandelbrot set
         ; This formula searches for 6 roots of a function
         ; Inspired by Paul Carlson's Newt5_Atan_Mset
  ; p1=precision of root finding, try =.001
  ; p2=A=scaling constant in formula, try =1
  ; F(w)   = w^6 - A*w^5 - w*c + A*c
  ; F'(w)  = 6*w^5 - 5*A*w^4 - c
  ; F''(w) = 30*w^4 - 20*A*w^3
  ; Set F''=0, solve for initial w, 20*A/30 = 2*A/3
  ;
  c = pixel, A=p2, z = iter = bailout = 0
  colors_in_range = 42
  R5=sqrt(5), R=1-.5*sqrt(5-3*R5-sqrt(10*R5-50)), R2=sqr(R)
  root1 = A, root2 = c^.2, root3 = root2*R, root4 = root2*R2
  root5 = root4*R, root6 = root4*R2
  w = 2*A/3
  :
  w4 = w^4
  deltaw=((w*w4 - A*w4 - c)*w + A*c)/(6*w*w4 - 5*A*w4 - c)
  w = w - deltaw
  ;
  IF (|deltaw| < p1)
    angle=abs(imag(log(deltaw)))
    range_num = (|w - root2| < p1)+2*(|w - root3| < p1)+\
      3*(|w - root4| < p1)+4*(|w - root5| < p1)+5*(|w - root6| < p1)
    bailout = 1
    z = colors_in_range*(angle/pi + range_num)-angle/pi + 1
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0
}
Fnww_Fnc_Mset { ; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) controls elements size (usually 2 to 16))
    ; imag(p1) not used
    ; real(p2) number of color ranges
    ; imag(p2) number of colors in a range
    z = w = iter = range_num = bailout = 0
    c = pixel
    p = p1 + p1
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    colors_in_range_1 = colors_in_range - 1:
    w = fn1(w * w + fn2(c))
    m = |w|
    IF ((p < p1) && (m > p1))
        bailout = 1
        index = colors_in_range_1 * (p1 - p) / p1
        z = index + range_num * colors_in_range + 1
    ENDIF
    p = m
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && m < 100
}
CnFrc_Fnc_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = controls size of elements (1 to 32)
    ; imag(p1)   not used
    ; real(p2) = usually 1
    ; imag(p2)   not used
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    w = z = iter = range_num = bailout = 0
    c = pixel
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    :
    prev_w = w
    k = w * w + c
    w = k - fn1(p2/(k+p2/(k+p2/(k+p2/(k+p2/(k+p2))))))
    IF (abs(real(w)) > p1)
        bailout = 1
        angle = abs(atan((imag(w)-imag(prev_w))/(real(w)-\
                real(prev_w))))
        index = 2 * colors_in_range * angle / pi
        z = index + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}
tri-fn+fn    { ; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
               ; Thanks to Kerry Mitchell for the idea!
               ; real(p1) = bailout
               ; imag(p1) must be different from 0 (>=1 recommended)
               ; z=fn1(z) + p2*fn2(z)
   ; This formula must be used with decomp = 256 and periodicity = 0
   ;
   z1 = pixel , mz1 = cabs(z1) , summ = iter = 0
   b1 = abs(real(p1)) , f = b1^0.1
   b2 = b1*f , b3 = b2*f , b4 = b3*f , b5 = b4*f , b6 = b5*f
   b7 = b6*f , b8 = b7*f , b9 = b8*f , b10 = b9*f , b11 = b10*f
   iter1 = iter2 = iter3 = iter4 = iter5 = iter6 = iter7       \
         = iter8 = iter9 = iter10 = summ_tot = iter_tot = 0
   k = imag(p1) * (0.0,6.28319530718)
   :
   iter = iter + 1 , za = fn1(z1) , a = cabs(za)
   zb = p2*fn2(z1) , b = cabs(zb)
   z1 = za + zb , mz1 = cabs(z1) , a_b = abs(a - b)
   summ = summ + (mz1 - a_b) / (a+b - a_b)
   IF (mz1 > b1)
    IF (iter1==0)
     iter1 = iter
     iter_tot = iter_tot + iter1 , summ_tot = summ_tot + summ
    ENDIF
    IF (mz1 > b2)
     IF (iter2==0)
      iter2 = iter
      iter_tot = iter_tot + iter2 , summ_tot = summ_tot + summ
     ENDIF
     IF (mz1 > b3)
      IF (iter3==0)
       iter3 = iter
       iter_tot = iter_tot + iter3 , summ_tot = summ_tot + summ
      ENDIF
      IF (mz1 > b4)
       IF (iter4==0)
        iter4 = iter
        iter_tot = iter_tot + iter4 , summ_tot = summ_tot + summ
       ENDIF
       IF (mz1 > b5)
        IF (iter5==0)
         iter5 = iter
         iter_tot = iter_tot + iter5 , summ_tot = summ_tot + summ
        ENDIF
        IF (mz1 > b6)
         IF (iter6==0)
          iter6 = iter
          iter_tot = iter_tot + iter6 , summ_tot = summ_tot + summ
         ENDIF
         IF (mz1 > b7)
          IF (iter7==0)
           iter7 = iter
           iter_tot = iter_tot + iter7 , summ_tot = summ_tot + summ
          ENDIF
          IF (mz1 > b8)
           IF (iter8==0)
            iter8 = iter
            iter_tot = iter_tot + iter8 , summ_tot = summ_tot + summ
           ENDIF
           IF (mz1 > b9)
            IF (iter9==0)
             iter9 = iter
             iter_tot = iter_tot + iter9 , summ_tot = summ_tot + summ
            ENDIF
            IF (mz1 > b10)
             IF (iter10==0)
              iter10 = iter
              iter_tot = iter_tot + iter10 , summ_tot = summ_tot + summ
             ENDIF
             IF (mz1 > b11)
              iter_tot = iter_tot + iter , summ_tot = summ_tot + summ
              z = exp (summ_tot * k / iter_tot)
             ENDIF
            ENDIF
           ENDIF
          ENDIF
         ENDIF
        ENDIF
       ENDIF
      ENDIF
     ENDIF
    ENDIF
   ENDIF
   mz1 <= b11
   }
3D_Balls_Mset (ORIGIN) {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the size of the balls
    ;   imag(p1) = number of iterations to skip
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = 0
  c = pixel
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  skip = imag(p1)
    ;****************************************************
    ; In the accompanying par file, mndballs.par,
    ; we have 8 color ranges with 30 colors in each range
    ; for a total of 240 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| >= 1000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
  num_ranges = real(p2)
  colors_in_range = imag(p2)
    ;****************************************************
    ; Real(p1) controls the size of the balls.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
  ball_size = real(p1)
  index_factor = (colors_in_range - 1) / ball_size:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be express in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
  w = w * w + c
    ;****************************************************
    ; If the orbit point is within the specified distance of a circle,
    ; set z to the index into the colormap and set the bailout flag.
    ;****************************************************
  IF (iter > skip)
    wr = real(w), wi = imag(w)
    d = wr * wr + (wi - .5) * (wi - .5)
    IF (d < ball_size)
      bailout = 1
      delta = ball_size - d
    ELSEIF (wr * wr + (wi + .5) * (wi + .5) < ball_size)
      bailout = 1
      delta = ball_size - (wr * wr + (wi + .5) * (wi + .5))
    ELSEIF ((wr - .5) * (wr - .5) + wi * wi < ball_size)
      bailout = 1
      delta = ball_size - ((wr - .5) * (wr - .5) + wi * wi)
    ELSEIF ((wr + .5) * (wr + .5) + wi * wi < ball_size)
      bailout = 1
      delta = ball_size - ((wr + .5) * (wr + .5) + wi * wi)
    ENDIF
  ENDIF
  IF (bailout)
    z = index_factor * delta + range_num * colors_in_range + 1
  ENDIF
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
  iter = iter + 1
  z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
  bailout == 0  && |w| < 1000
}
Newt5_Atan_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; F(w)   = w^5 - w^4 - w * c^2 + c^2
    ; F'(w)  = 5 * w^4 - 4 * w^3 - c^2
    ; F''(w) = 20 * w^3 - 12 * w^2,  initialize w to 12/20 = 0.6
    ;
    c = pixel
    c2 = c * c
    z = iter = bailout = 0
    colors_in_range = 50
    colors_in_range_1 = 49
    root1 = (1,0)
    root2 = sqrt(c)
    root3 = -root2
    root4 = sqrt(-c)
    root5 = -root4
    prev_w = w = 0.6:
    ;
    w4 = w^4
    w = w - (w * w4 - w4 - c2 * w + c2) / (5 * w4 - 4 * (w^3) - c2)
    ;
    delta_w = w - prev_w
    IF (|delta_w| < p1)
        angle = atan(imag(delta_w) / real(delta_w))
        IF (delta_w >= 0)
            IF (imag(delta_w) < 0)
                angle = pi + angle
            ELSE
                angle = pi - angle
            ENDIF
        ELSEIF (imag(delta_w) > 0)
            angle = -angle
        ENDIF
        IF     (|w - root1| < p1)
            range_num = 0
        ELSEIF (|w - root2| < p1)
            range_num = 1
        ELSEIF (|w - root3| < p1)
            range_num = 2
        ELSEIF (|w - root4| < p1)
            range_num = 3
        ELSEIF (|w - root5| < p1)
            range_num = 4
        ENDIF
        bailout = 1
        z = colors_in_range_1 * angle/pi + range_num * colors_in_range + 1
    ENDIF
    prev_w = w
    iter = iter + 1
    z = z - iter
    bailout == 0
}
Mand_Atan_Mset {; Copyright (c) Paul W. Carlson, 1998
    w = z = iter = range_num = bailout = 0
    c = pixel
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    :
    prev_w = w
    w = w * w + c
    IF (abs(real(w)) > p1)
        bailout = 1
        angle = abs(atan((imag(w)-imag(prev_w))/(real(w)-real(prev_w))))
        index = 2 * colors_in_range * angle / pi
        z = index + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}
JPd {; PHC -- mandel, lambdafn
  IF (whitesq)
    z = c = pixel
  ELSE
    z = pixel + p1, c = p2
  ENDIF
    :
  IF (whitesq)
    z = z*z + c
    PHC_bailout = |z| <= 4
  ELSE
    z = c * sin(z)
    PHC_bailout = |z| <= 64
  ENDIF
    PHC_bailout
}
tri-mandel-2 { ; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
               ; Thanks to Kerry Mitchell for the idea!
               ; real(p1) = bailout (1024 recommended)
               ; imag(p1) must be different from 0 (>=1 recommended)
   ; This formula must be used with decomp = 256 and periodicity = 0
   ;
   c = z1 = pixel , b = mz1 = cabs(z1) , summ = iter = 1
   b1 = abs(real(p1)) , f = b1^0.1
   b2 = b1*f , b3 = b2*f , b4 = b3*f , b5 = b4*f , b6 = b5*f
   b7 = b6*f , b8 = b7*f , b9 = b8*f , b10 = b9*f , b11 = b10*f
   iter1 = iter2 = iter3 = iter4 = iter5 = iter6 = iter7       \
         = iter8 = iter9 = iter10 = summ_tot = iter_tot = 0
   k = imag(p1) * (0.0,6.28319530718)
   :
   iter = iter + 1 , a = mz1 * mz1
   z1 = z1 * z1 + c , mz1 = cabs(z1) , a_b = abs(a - b)
   summ = summ + (mz1 - a_b) / (a+b - a_b)
   IF (mz1 > b1)
    IF (iter1==0)
     iter1 = iter
     iter_tot = iter_tot + iter1 , summ_tot = summ_tot + summ
    ENDIF
    IF (mz1 > b2)
     IF (iter2==0)
      iter2 = iter
      iter_tot = iter_tot + iter2 , summ_tot = summ_tot + summ
     ENDIF
     IF (mz1 > b3)
      IF (iter3==0)
       iter3 = iter
       iter_tot = iter_tot + iter3 , summ_tot = summ_tot + summ
      ENDIF
      IF (mz1 > b4)
       IF (iter4==0)
        iter4 = iter
        iter_tot = iter_tot + iter4 , summ_tot = summ_tot + summ
       ENDIF
       IF (mz1 > b5)
        IF (iter5==0)
         iter5 = iter
         iter_tot = iter_tot + iter5 , summ_tot = summ_tot + summ
        ENDIF
        IF (mz1 > b6)
         IF (iter6==0)
          iter6 = iter
          iter_tot = iter_tot + iter6 , summ_tot = summ_tot + summ
         ENDIF
         IF (mz1 > b7)
          IF (iter7==0)
           iter7 = iter
           iter_tot = iter_tot + iter7 , summ_tot = summ_tot + summ
          ENDIF
          IF (mz1 > b8)
           IF (iter8==0)
            iter8 = iter
            iter_tot = iter_tot + iter8 , summ_tot = summ_tot + summ
           ENDIF
           IF (mz1 > b9)
            IF (iter9==0)
             iter9 = iter
             iter_tot = iter_tot + iter9 , summ_tot = summ_tot + summ
            ENDIF
            IF (mz1 > b10)
             IF (iter10==0)
              iter10 = iter
              iter_tot = iter_tot + iter10 , summ_tot = summ_tot + summ
             ENDIF
             IF (mz1 > b11)
              iter_tot = iter_tot + iter , summ_tot = summ_tot + summ
              z = exp (summ_tot * k / iter_tot)
             ENDIF
            ENDIF
           ENDIF
          ENDIF
         ENDIF
        ENDIF
       ENDIF
      ENDIF
     ENDIF
    ENDIF
   ENDIF
   mz1 <= b11
   }
gravijul-v2 { ; Variation on Mark Christenson's gravijul by Sylvie Gallet
   z = pixel :
   w = fn1(real(z)) , x = fn3(p1/fn2(w*w))
   w = fn1(imag(z)) , y = fn3(p1/fn2(w*w))
   z = x + flip(y) + p2
    |z| < p3
  }
range-y-3_jul { ; Kerry Mitchell
        ;
        ; colors Julia set by real part of iterate, only when
        ; imaginary part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by imag(sqr(sqr(c)+c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        angle=0, fac=imag(sqr(sqr(c)+c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          endif
        :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   scale real part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*real(zc)
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }
range-r_jul { ; Kerry Mitchell
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range explicity specified
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = unused
        ; real(p3) = lower bound of range (try 0.05)
        ; imag(p3) = upper bound of range (try 0.06)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), iter=1, z=1
        lo=real(p3), hi=imag(p3):
        ;
        ; iteration
        ;   if magnitude of iterate falls into range, save iterate
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          z=zc
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }
nearline-theta_jul { ; Kerry Mitchell
        ;
        ; color Julia sets with nearest approach to a given line
        ; line through origin has angle theta to x-axis
        ;
        ; use outside=iter, decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (large--try 1e12)
        ; imag(p2) = angle of line, in degrees (try 45)
        ; zc is the variable used for iteration, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
        theta=imag(p2)*pi/180, ct=cos(theta), st=sin(theta):
        ;
        ; iteration
        ;   find distance to line, r
        ;   if r < minimum, update minimum to r
        ;
        iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
        r=|ct*imag(zc)-st*real(zc)|
        if (r<minr)
          minr=r
          endif
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }
field3_jul { ; Kerry Mitchell
        ;
        ; Colors Julia sets by nearest approach to
        ;   period 3 field lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = number of field line to use:
        ;   0, 1, 2, 3, 4, 5, 6, 7
        ; 3 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
        fieldangle=tan(imag(p2)*2*pi/7):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
        iter=iter+3, zc=sqr(zc)+c, zc=sqr(zc)+c, zc=sqr(zc)+c
        rzc=|zc|, tanangle=imag(zc)/real(zc),
        r=cabs(fieldangle-tanangle)
        if (r<minr)
          minr=r
          endif
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
        if ((rzc>maxr)||(iter>=maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }
field2_jul { ; Kerry Mitchell
        ;
        ; Colors Julia sets by nearest approach to
        ;   period 2 field lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = number of field line to use: 0, 1, or 2
        ; 2 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
        fieldangle=tan(imag(p2)*2*pi/3):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
        iter=iter+2, zc=sqr(zc)+c, zc=sqr(zc)+c
        rzc=|zc|, tanangle=imag(zc)/real(zc),
        r=cabs(fieldangle-tanangle)
        if (r<minr)
          minr=r
          endif
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
        if ((rzc>maxr)||(iter>=maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }
gravijul-v3 {; Variation on Mark Christenson's gravijul by Sylvie Gallet
  z = pixel:
  w = fn1(z)
  z = fn3(fn2(w*w)^p1) + p2
  |z| < p3
}
bubbleboth_jul { ; Kerry Mitchell
        ;
        ; color Julia sets with small bubbles
        ; filled with swirls (combination of rays and circles)
        ;
        ; use outside=iter, decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (at least 4)
        ; imag(p2) = radius of bubble (try ~ .1)
        ; real(p3) = amount of circles (0 for only rays, try 0.5)
        ; imag(p3) = amount of rays (0 for only circles, try 0.5)
        ; zc is the variable used for iteration, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=imag(p2), scale=2*pi/minr
        minset=0, iter=1, rzc=cabs(zc), minzc=zc
        weight=real(p3)+imag(p3)
        weightc=real(p3)/weight, weightr=imag(p3)/weight
        ;
        ; initial check:  see if pixel magnitude falls within threshold
        ;   if so, set minset flag, update minimum to current magnitude
        ;
        if (rzc<minr)
          minr=rzc, minzc=zc, minset=1
          endif
        :
        iter=iter+1, zc=sqr(zc)+c, rzc=cabs(zc)
        ;
        ; iteration check:  see if iterate falls within threshold
        ;   if so, set minset flag, update minimum to current magnitude
        ;
        if (rzc<minr)
          minr=rzc, minzc=zc, minset=1
          endif
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   scale minr to find decomp angle for circles
        ;   take polar angle from minzc to ray decomp angle
        ;   final angle is weighted average of ray and circle angles
        ;   if a new minimum was never set (minset=0),
        ;   set z=0 (color 0 under decomp)
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          anglec=scale*minr, angler=imag(log(minzc))
          angle=weightc*anglec+weightr*angler
          z=(cos(angle)+flip(sin(angle)))*minset
          endif
        iter > 0
        }
3telescope {; (c) Jay Hill, 1998
            ; use outside=summ periodicity=0
  done = 1, z = 0, zc = 0, c = pixel
  s=|c|, t1=(256*s - 96)*s + 32*Real(c)              ; period 1 test
  t2=16*s + 32*Real(c) + 16                          ; period 2 test
  B=sqrt(-4*c-7), t3=|8+4*c*(1-B)|, t4=|8+4*c*(1+B)| ; period 3 tests
  z=z + 249*(t1<=3) + 250*(t2<=1)\
       + 251*(t3<=1) + 252*(t4<=1)      ; set colors
  IF (z>0)                              ; for periods 1, 2, and 3.
    done=-1         ; color is set for c in a component, skip iterations
  ENDIF
  :                                     ; initialization.
  zc=sqr(zc) + c                        ; standard MSet iteration
  IF (|zc| >= 4)                        ; Bailout at 4
    done=-1                             ; Set flag to force an exit.
  ENDIF
  done >= 0                             ; Continue if the flag >=0.
}
Gallet-6-04 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) * fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) * fn3(p3*x))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}

