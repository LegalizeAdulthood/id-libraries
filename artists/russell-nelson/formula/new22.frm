Carr2931{ ; Modified OK-42
;passes=1 needs to be used with this PHC formula.
b5=pixel,
p1x=real(p1)+1,p1y=imag(p1)+1,
p2x=real(p2)+1,p2y=imag(p2)+1
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
zx=real(z),zy=imag(z),
x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y),
y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x),
z=x+flip(y)+(-0.7456,-0.132)+(x+flip(y))/10,
|z|<=4
}


Carr2932{ ; Modified OK-42
;passes=1 needs to be used with this PHC formula.
b5=pixel,
p1x=real(p1)+1,p1y=imag(p1)+1,
p2x=real(p2)+1,p2y=imag(p2)+1
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
zx=real(z),zy=imag(z),
x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y),
y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x),
z=(|x+flip(y)|)+(x+flip(y))+(-0.7456,-0.132)+(x+flip(y))/10,
|z|<=4
}

SimplePendulumG{
bailout=real(p2)+4
dt=real(p1)
z=pixel
pi2=Pi+Pi:
x=real(z)
y=imag(z)
z=x+y*dt+flip(y+fn1(pi2*x)*dt)
|z|<=bailout}

starnear_man { ; Kerry Mitchell 09oct98
        ;
        ; Mandelbrot, colors by nearest approach to 5 point star
        ; p1 = center of star
        ; cabs(real(p2)) = star size of star (try 1)
        ; sign(real(p2)) = pixel flag:
        ;   + = don't consider pixel--start after first iteration
        ;   - = consider pixel
        ; imag(p2) = star rotation angle, degrees
        ;   only use angles from 0 to 36 degrees
        ; use decomp=256, bailout hardcoded to 10^12
        ;
        ;  initialize iteration parameters
        ;
        zc=0, c=pixel, done=0, iter=1
        bailout=1e12, fmin=bailout
        ;
        ;  star parameters
        ;
        center=p1, xcen=real(center), ycen=imag(center)
        r=cabs(real(p2)), pixelflag=0
        if(real(p2)<0)
          pixelflag=1
        endif
        phi=imag(p2)/180*pi, twopi=2*pi, temp=twopi/10
        t0=phi, t1=t0+temp
        t2=t1+temp, t3=t2+temp, t4=t3+temp, t5=t4+temp
        t6=t5+temp, t7=t6+temp, t8=t7+temp, t9=t8+temp
        ;
        ;  set up control points
        ;
        x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
        x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
        x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
        x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
        x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        ;
        ;  if pixel flag =/= 0, then check pixel for how close
        ;    it is to star
        ;
        if(pixelflag!=0)
          x=real(zc), y=imag(zc), t=imag(log(zc-center))
          if(t<0)
            t=t+twopi
          endif
          if((t>t0)&&(t<=t1))
            f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
          elseif((t>t1)&&(t<=t2))
            f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
          elseif((t>t2)&&(t<=t3))
            f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
          elseif((t>t3)&&(t<=t4))
            f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
          elseif((t>t4)&&(t<=t5))
            f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
          elseif((t>t5)&&(t<=t6))
            f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
          elseif((t>t6)&&(t<=t7))
            f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          elseif((t>t7)&&(t<=t8))
            f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
          elseif((t>t8)&&(t<=t9))
            f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
          else
            f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          endif
          fmin=cabs(f)
        endif
        :
        ;  standard iteration, find polar angle of iterate
        ;
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc), t=imag(log(zc-center))
        if(t<0)
          t=t+twopi
        endif
        ;
        ;  compute how close iterate is to each side of star
        ;
        if((t>t0)&&(t<=t1))
          f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
        elseif((t>t1)&&(t<=t2))
          f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
        elseif((t>t2)&&(t<=t3))
          f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
        elseif((t>t3)&&(t<=t4))
          f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
        elseif((t>t4)&&(t<=t5))
          f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
        elseif((t>t5)&&(t<=t6))
          f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
        elseif((t>t6)&&(t<=t7))
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
        elseif((t>t7)&&(t<=t8))
          f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
        elseif((t>t8)&&(t<=t9))
          f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
        else
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
        endif
        f=cabs(f)
        ;
        ;  update minimum distance
        ;
        if(f<fmin)
          fmin=f
          zmin=zc
        endif
        ;
        ;  upon escape or maximum iterations:
        ;    set "done" flag
        ;    use minimum distance from star as polar angle of z
        ;      for use with decomp coloring
        ;
        if((|zc|>bailout)||(iter==maxit))
          done=1
          t=log(fmin)
          z=cos(t)+flip(sin(t))
        endif
        done==0
        }

gravibrot { ; generalized r^(-2) by Mark "Bud" Christenson 3/13/98
; derived from gravijul, modified for v20.0 spacebar toggle 11/14/99
; defaults: p1 = (1,0) p2 = (0,0) p3 = (4,0)
if (ismand)
  z = p2, c = pixel
else
  z = pixel, c = p2
endif
:
   w = fn1(z)
   z = fn3(p1/fn2(w*w)) + c
   |z| < p3
  }

MandelbrotMix4 {; Jim Muth
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
g=1/f, h=1/d, j=1/(f-b), z=(-a*b*g*h)^j,
k=real(p3)+1, l=imag(p3)+100, c=fn1(pixel):
z=k*((a*(z^b))+(d*(z^f)))+c,
|z| < l
}

MandNewt11 {; Jim Muth
z=g=pixel, a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), e=real(p3), f=imag(p3):
h=z^a+(g-b)*z-f
j=c*z^d+g
z=z-e*h/j,
.0000000000000000000000000000005 <= |h|
}

MandelbrotMiN {; Jim Muth
b=p1, z=p2, c=p3+pixel:
z=(-z)^(b)+c,
|z| <= 16
}

MandNewt04 {; variation of Ikenaga function
z=c=pixel:
a=z^3+(c-1)*z-c
b=p1*z^2+c-1
z=z-p2*a/b
p3 <= |a|
}

RectPMnew {; Jim Muth
z=flip(real(pixel))+p2,
c=flip(imag(pixel))+p3,
a=real(p1)+1, b=imag(p1):
z=a*((-z)^b+z^b)+c,
|z| <= 250
}

Lesfrm16 {; Les St Clair, 1996
  z = c = pixel:
  x = p1*fn1(z)
  y = p2*fn2(z)
  x1= x*x
  y1= y*y
  z = c + x1/y1
  |z| <= 4
  ;SOURCE: 96msg.frm
}
3DStalks_Pokorny {; Copyright (c) Paul W. Carlson, 1998
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the width of the stalks
    ;   imag(p2) = bailout value for |w|
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
  w = pixel
  c = p1
  z = bailout = iter = range_num = 0
  stalk_width = real(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / stalk_width
  :
  w = 1 / (w * w + c)
    ;
  IF (abs(real(w)) <= abs(imag(w)))
    min_dist = abs(real(w))
  ELSE
    min_dist = abs(imag(w))
  ENDIF
  IF (min_dist < stalk_width && iter > 0)
    z = index_factor * min_dist + range_num * colors_in_range + 1
    bailout = 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < imag(p2)
  ;SOURCE: 98msg.frm
}
