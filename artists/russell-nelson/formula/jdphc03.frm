jdphc11 {;* copyright Jim Deutch, 1997
z=pixel*whitesq + conj(pixel)*(whitesq==0):
z=z*z*z*z*p1-fn1(z*z*p2)
zr=real(z)
zq=imag(z)
(|z|<p3 && zr<zq)
}

jdphc12 {;* copyright Jim Deutch, 1997
z=pixel*whitesq + conj(pixel)*(whitesq==0):
z=z*z*fn2(z*z)*p1-fn1(z*z*p2)
zr=real(z)
zq=imag(z)
(zr>p3 || zr>zq)
}

jdphc13 {;* copyright Jim Deutch, 1997
z=pixel*whitesq + flip(pixel)*(whitesq==0):
z=z*fn2(z*z)*p1-fn1(z*z*p2)
zr=real(z)
zq=imag(z)
(zr>p3 || zr>zq*zq)
}

jdphc16 {;* copyright Jim Deutch, 1997
z=pixel:
z1=|z|-flip(imag(z))
z2=imag(z)-flip(|z|)
c=z1&&z2
t1=z*z1
t2=z2*z2
z=z*z*z1*whitesq + z*z*z2*(whitesq==0)
z=z*(t1-t2)
t1*z1>t2*z2*p1
}

jdphc19 {;* copyright Jim Deutch, 1997
w=whitesq*2-1
z=pixel
z1=real(z)*real(z)
z2=real(z)*imag(z):
t1=z*z*fn1(z1)
t2=z*z*fn2(z2)
z=(whitesq*t1*z1+t2*z2+z*z*(z1+w*z2))
|z|<p1+4
}

jdphc20 {;* copyright Jim Deutch, 1997
w=whitesq*2-1
z=pixel
z1=real(z)*real(z)
z2=real(z)*imag(z):
t1=z*z1*fn1(z)
t2=z*z2*fn2(z)
z=(whitesq*t1*z1+t2*z2+z*z*(z1+w*z2))
h=t1/(t2||z2)
z=h+z
real(z)<p1+4
}

jdphc21 {;* copyright Jim Deutch, 1997
w=whitesq*2-1
z=pixel
z1=real(z)*real(z)
z2=real(z)*imag(z):
t1=z*z1*fn1(z)
t2=z*z2*fn2(z)
z=(whitesq*t1*z1+t2*z2+z*z*(z1+w*z2))
h=t1/(t2||z2)
z=z^h+z
real(z)<p1+4
}

jdphc22 {;* copyright Jim Deutch, 1997
w=whitesq*2-1
z=pixel
z1=real(z)*real(z)
z2=real(z)*imag(z):
t1=z*z1*fn1(z)
t2=z*z2*fn2(z)
z=(whitesq*t1*z1+t2*z2+z*z*(z1+w*z2))
h=t1/(t2||z2)
z=z^h
real(z)<p1+4
}

jdphc23 {; copyright Jim Deutch, 1997
w=whitesq*2-1
z=pixel
z1=real(z)*real(z)
z2=real(z)*imag(z):
t1=z*z1*fn1(z)
t2=z*z2*fn2(z)
z=(whitesq*t1*z1+t2*z2+z*z*(z1+w*z2))
h=t1/(t2||z2)
z=(h*z+1)*(z/h)
real(z)<p1+4
}

jdphc24 {;* copyright Jim Deutch, 1997
bail=real(p1)+4
w=whitesq*2-1
z=pixel*(whitesq+flip(whitesq-1))
z1=real(z)*real(z)
z2=real(z)*imag(z):
t1=z*z*fn1(z1)
t2=z*z*fn2(z2)
z=whitesq*t1*z1+t2*z2+z*z*(z1+w*z2)
h=t1/(t2||z2)
z=z/h/h
imag(z)<bail
}

jdphc30 {;* copyright Jim Deutch, 1997
w1=whitesq*2-1  ;+1/-1
w2=whitesq+flip(whitesq-1) ;(1,0)/(0,-1)
w3=-.5+flip(sqrt(3)/2*w1) ;+/- 120 deg rot
c=fn1(pixel)
z=pixel:
z=z*z*c*w3
(real(z)<bail)&&(imag(z)<bail)
}

jdphc31 {;* copyright Jim Deutch, 1997
w1=whitesq*2-1  ;+1/-1
w2=whitesq+flip(whitesq-1) ;(1,0)/(0,-1)
w3=-.5+flip(sqrt(3)/2*w1) ;+/- 120 deg rot
c=fn1(pixel)
z=pixel:
z=z*z*c*w3-z*(z+c)*w2
(real(z)<bail)&&(imag(z)<bail)
}

jdphc32 {;* copyright Jim Deutch, 1997
w1=whitesq*2-1  ;+1/-1
w3=-.5+flip(sqrt(3)/2*w1) ;+/- 120 deg rot
c=fn1(pixel)
z=pixel:
z=z*z*c*w3-z*(z+c)*w1
(real(z)<bail)&&(imag(z)<bail)
}

jdphc33 {;* copyright Jim Deutch, 1997
bail=real(p1)
w1=whitesq*2-1  ;+1/-1
w3=-.5+flip(sqrt(3)/2*w1) ;+/- 120 deg rot
c=fn1(pixel)
z=pixel:
z=z*z*c*w3-z*(z+c)*fn2(w3)
(real(z)<bail)&&(imag(z)<bail)
}

jdphc34 {;* copyright Jim Deutch, 1997
bail=real(p1)
w1=whitesq*2-1  ;+1/-1
w3=-.5+flip(sqrt(3)/2*w1) ;+/- 120 deg rot
w4=.5+flip(sqrt(3)/2*w1)  ;+/- 60 deg rot
c=fn1(pixel)
z=pixel:
z=z*z*pixel*fn2(w4)+z*z*c*w3
(real(z)<bail)&&(imag(z)<bail)
}

jdphc35 {;* copyright Jim Deutch, 1997
bail=real(p1)
w1=whitesq*2-1  ;+1/-1
w4=.5+flip(sqrt(3)/2*w1)  ;+/- 60 deg rot
c=fn1(pixel)*whitesq+fn2(pixel)*(whitesq==0)
z=pixel:
z=z*z*c*w4
(real(z)<bail)&&(imag(z)<bail)
}

jdphc36 {;* copyright Jim Deutch, 1997
bail=real(p1)
w1=whitesq*2-1  ;+1/-1
w2=whitesq+flip(whitesq-1) ;(1,0)/(0,-1)
w3=-.5+flip(sqrt(3)/2*w1) ;+/- 120 deg rot
w4=.5+flip(sqrt(3)/2*w1)  ;+/- 60 deg rot
c=fn1(pixel*w2)
z=pixel:
z=z*z*c*w4+z*fn2(z+c)*p2
|z|<bail
}

jdphc37 {;* modified OldManowar copyright Jim Deutch, 1997
w1=whitesq*2-1  ;+1/-1
w4=.5+flip(sqrt(3)/2*w1)  ;+/- 60 deg rot
  z0 = 0
  z1 = 0
  test = p1 + 3
  c = pixel*w4 :
   z = z1*z1 + z0 + c
   z0 = z1
   z1 = z
    |z| < test
  }

jdphc38  { ;* Mod of Chuck Ebbert's Liar4, by Jim Deutch
  ; X: X is as true as (p1+1) times Y
  ; Y: Y is as true as X is false
  ; Calculate new x and y values simultaneously.
  ; Real part of p1 changes probability.  Use floating point.
  ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
sq2=sqrt(2)/2
w=whitesq+(sq2+flip(sq2))*(whitesq==0)
offset=(.5,.5)
z=pixel*w+offset
p = p1 + 1:
z = 1-abs(imag(z)*p-real(z))+flip(1-abs(1-real(z)-imag(z)))
|z| <= 1
}

jdphc38b  { ;* Mod of Chuck Ebbert's Liar1, by Jim Deutch
;p1=center of rotation offset
;real(p2) = rotation (deg) default = 45
;imag(p2) = magnification of rotated, default = 1
  ; X: X is as true as Y
  ; Y: Y is as true as X is false
  ; Calculate new x and y values simultaneously.
  ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
rotdeg=45*(real(p2)==0)+real(p2)*(real(p2)!=0)
rotc=cos(rotdeg*pi/180)+flip(sin(rotdeg*pi/180))
mag=(imag(p2)==0)+imag(p2)*(imag(p2)!=0)
rotc=rotc/mag
w=whitesq+rotc*(whitesq==0)
offset=(.5,.5)+p1
z=pixel*w+offset:
z = 1-abs(imag(z)-real(z))+flip(1-abs(1-real(z)-imag(z)))
|z| <= 1
}

jdphc38c1  { ;* Mod of Chuck Ebbert's Liar1, by Jim Deutch
;p1=center of rotation offset
;real(p2) = rotation (deg) default = 45
;imag(p2) = magnification of rotated, default = 1
;requires periodicity=0
rotdeg=45*(real(p2)==0)+real(p2)*(real(p2)!=0)
rotc=cos(rotdeg*pi/180)+flip(sin(rotdeg*pi/180))
mag=(imag(p2)==0)+imag(p2)*(imag(p2)!=0)
rotc=rotc/mag
w=whitesq+rotc*(whitesq==0)
offset=(.5,.5)+p1
iter=108
z=pixel*w+offset:
iter=iter+1
z=z+(pixel*w+offset)*(iter==128)
z = 1-abs(imag(z)-real(z))+flip(1-abs(1-real(z)-imag(z)))
z = z*(iter>=128)*whitesq+z*(iter<128)*(whitesq==0)
|z| <= 1
}

jdphc39 { ;* mod of Ent by Scott Taylor
  ; Try params=.5/.75 and the first function as exp.
  ; Zoom in on the swirls around the middle.  There's a
  ; symmetrical area surrounded by an asymmetric area.
bail=real(p2)
w1=whitesq*2-1  ;+1/-1
z = real(Pixel) + flip(imag(pixel))*w1
y = fn1(z), 
base = log(p1):
  z = y * log(z)/base
  |z| <= bail
  }

