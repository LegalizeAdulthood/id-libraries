JDCarr2289b  {; Modified Carr/Gallet frm. Jim Deutch 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter,
   ; periodicity=0
   ; Added variable "newpixel". G. Martin 6/29/99
  y=((imag(scrnpix)/(imag(scrnmax)-1)))*imag(scrnmax)/real(scrnmax)-.85
  x=(real(scrnpix)/(real(scrnmax)-1))-.37
  r=x*x+y*y
  rain=(r<.42)*(r>.32)*whitesq
  ind=(r-.32)/(.42-.32)*109
  newpixel = -abs(real(pixel))+flip(imag(pixel))
  c = newpixel+newpixel-flip(0.0010/newpixel)-conj(0.010/newpixel)
  z = (newpixel-conj(asin(newpixel+newpixel+0.32)))*(rain==0)+ind*rain
  d1 = flip(-0.00059350/newpixel)
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0, d4 = 4*d1:
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z*t + ct)*(rain==0)+z*rain
  c = c*t + ct
  z = (z*z+c)*(rain==0)+(z-1)*rain
  iter = iter+1
  (rain==0)*(|real(z)|)+rain <= bailout*(rain==0)+rain*z
  ;SOURCE: 96msg.frm
}

JDCarr2330c {; Modified Carr/Sylvie Gallet frm. Jim Deutch 1996
             ; thanks to Tim Wegner for correcting my error
             ; Added variable "newpixel". G. Martin 6/27/99
  y=((imag(scrnpix)/(imag(scrnmax)-1)))*imag(scrnmax)/real(scrnmax)-.85
  x=(real(scrnpix)/(real(scrnmax)-1))-.67
  r=x*x+y*y
  rain=(r<.42)*(r>.35)*(whitesq==0)
  ind=(r-.35)/(.42-.35)*109+1
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  m=tan(newpixel)-tanh(newpixel)
  z=(2*m+flip(newpixel))*(rain==0)+ind*rain
  c=(-0.7,0.2)
  d1=conj(conj(0.0003545/-newpixel))+(tanh(0.00010/newpixel))
  z1=c1=(1*z+d1), z2=c2=(1.5*z+d1), z3=c3=(2.25*z+d1), z4=c4=(3.375*z+d1)
  z5=c5=(5.0625*z+d1)
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2)), l5=(300)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  z=(z*(1-(t1||t2||t3||t4))+(z1*t1-d1)+(z2*t2+d1)\
    +(z3*t3+d1)+(z4*t4+d1)+(z5*t5+d1))*(rain==0)+z*rain
  c=c*(1-(t1||t2||t3||t4))+(c1*t1+d1)+(c2*t2+d1)\
    +(c3*t3+d1)+(c4*t4+d1)+(c5*t5+d1)
  z=(z^2.45+c+sinh(z/6))*(rain==0)+rain*(z-1)
  iter=iter+1
  (rain==0)*(|real(z)|)+rain <=bailout*(rain==0)+rain*z
  ;SOURCE: jdwork4.frm
}

JDfrm038b {; Jim Deutch [104074,3171], 1996 requires 19.5
           ; p1 = Julia parameters
           ; p2 = Julia translation
           ; imag(p3) = demagnification
  z = c = pixel
  z=z*imag(p3)*whitesq+(z+p2)*(whitesq==0)
  r = |c|:
  rz2 = r * z * z
  sinzoz = sin(z) / (z+(whitesq==0))
  z = (sinzoz / rz2)*whitesq+(z*z+p1)*(whitesq==0)
  |z| < 4
  ;SOURCE: jdwork4.frm
}

JDfrm038C {; Jim Deutch [104074,3171], 1996 requires 19.5
           ; p1 = Julia parameters
           ; p2 = Julia translation
           ; imag(p3) = demagnification
  z = c = pixel
  z=z*imag(p3)*whitesq+(z+p2)*(whitesq==0)
  r = |c|:
  rz2 = r * z * z
  sinzoz = sin(z) / (z+(whitesq==0))
  z = (sinzoz / rz2)*whitesq+(z*z+p1)*(whitesq==0)
  |z| < 100000
  ;SOURCE: jdwork4.frm
}

JDFrmF01 {; Modified Gallet frm Jim Deutch 1996
  sq6=0.5+flip(sqrt(3)/2)
  z=pixel:
  x=real(z)
  y=imag(z)
  x1=x-p1*fn1(y*y+p2*fn2(y))
  y1=y=p1*fn1(x*x+p2*fn2(x))
  z=x1+flip(y1)
  z=z*sq6
  |z|<=4
  ;SOURCE: jdwork4.frm
}

JDFrmF18b {; tanh is nice Jim Deutch 1996
  sq6=.5+flip(sqrt(3)/2)
  z=pixel
  ct=0:
  ct=ct+1
  z=z*sq6*(ct<8)+(z*z+p1*(ct>=8))
  fn1(z)*(ct<8)+(|z|*(ct>=8))<(ct<8)+4*(ct>=8)
  ;SOURCE: jdwork4.frm
}

JDFrmJT02 {
  z=pixel
  x=real(pixel)
  p=p1+x*p2:
  z=z*z+p
  |z|<4
  ;SOURCE: jdwork4.frm
}

JDFrmJT04 {
  z=pixel
  x=real(pixel)
  p=p1+x*(p1-p2):
  z=z*z+p
  |z|<4
  ;SOURCE: jdwork4.frm
}

JDrings {; Jim Deutch [104074,3171], 1996 requires Fractint 19.5
         ; p1=julia params
         ; p2=translation
         ; real(p3)=rings
  rs=real(p3)
  row=imag(scrnpix)
  col=real(scrnpix)
  rows=imag(scrnmax)
  cols=real(scrnmax)
  y=row/(rows-1)-.5
  x=col/(cols-1)-.5
  r=sqrt(x*x+y*y)
  in=(sin(r*pi*rs)>=0)
  out=in==0
  z=pixel+in*p2:
  z=z*z+in*p1+out*(-.52,.52)
  |z|<4
  ;SOURCE: jdwork4.frm
}

JDringsB {; Jim Deutch [104074,3171], 1996 requires Fractint 19.5
          ; p1=julia params
          ; p2=translation
          ; real(p3)=rings
  rs=real(p3)
  row=imag(scrnpix)
  col=real(scrnpix)
  rows=imag(scrnmax)
  cols=real(scrnmax)
  y=row/(rows-1)-.5
  x=col/(cols-1)-.5
  r=sqrt(x*x+y*y)
  srand(.5)
  in=(sin(r*pi*rs)+rand-.5>=0)
  out=in==0
  z=pixel+in*p2:
  z=z*z+in*p1+out*(-.52,.52)
  |z|<4
  ;SOURCE: jdwork4.frm
}

JDringsC {; Jim Deutch [104074,3171], 1996 requires Fractint 19.5
          ; p1=julia params
          ; p2=translation
          ; real(p3)=rings
  rs=real(p3)
  row=imag(scrnpix)
  col=real(scrnpix)
  rows=imag(scrnmax)
  cols=real(scrnmax)
  y=row/(rows-1)-.5
  x=col/(cols-1)-.5
  r=sqrt(x*x+y*y)
  srand(.5)
  inw=(sin(r*pi*rs)+rand-.5>=0)
  inb=(cos(r*pi*rs)+rand-.5>=0)
  in=inw*whitesq+inb*(whitesq==0)
  out=in==0
  z=pixel+in*p2:
  z=z*z+in*p1+out*(-.52,.52)
  |z|<4
  ;SOURCE: jdwork4.frm
}

JDringsD {; Jim Deutch [104074,3171], 1996 requires Fractint 19.5
          ; p1=julia params
          ; p2=translation
          ; real(p3)=rings
  rs=real(p3)
  T1=imag(p3)
  row=imag(scrnpix)
  col=real(scrnpix)
  rows=imag(scrnmax)
  cols=real(scrnmax)
  y=row/(rows-1)-.5
  x=col/(cols-1)-.5
  r=sqrt(x*x+y*y)
  srand(.5)
  inw=(sin(r*pi*rs)+(rand-.5)*T1>=0)
  inb=(cos(r*pi*rs)+(rand-.5)*T1>=0)
  in=inw*whitesq+inb*(whitesq==0)
  out=in==0
  z=pixel+in*p2:
  z=z*z+in*p1+out*(-.52,.52)
  |z|<4
  ;SOURCE: jdwork4.frm
}

JDWhatzit3 {; Jim Deutch [104074,3171], 1996 requires 19.5
  col=real(scrnpix)
  cols=real(scrnmax)
  row=imag(scrnpix)
  rows=imag(scrnmax)
  y=row*pi/1.999
  x=col*pi/1.999
  z=pixel*(sin(x)+flip(cos(y))):
  z=z*z+p1
  |z|<4
  ;SOURCE: jdwork4.frm
}

JDWhatzit4 {; Jim Deutch [104074,3171], 1996 requires 19.5
  col=real(scrnpix)
  cols=real(scrnmax)
  row=imag(scrnpix)
  rows=imag(scrnmax)
  y=row*pi/rows*pixel
  x=col*pi/cols/pixel
  z=pixel:
  z=z*z+(sin(x)+flip(cos(y)))
  |z|<4
  ;SOURCE: jdwork4.frm
}

TransformingJulia0 {; Jim Deutch [104074,3171], 1996 requires 19.5
                    ; p1=initial julia
                    ; p2=final julia
                    ; this formula is pathological wrt the zoombox
  col=real(scrnpix)
  cols=real(scrnmax)
  p=p1+col/cols*(p2-p1)
  z=pixel:
  z=z*z+p
  |z|<4
  ;SOURCE: jdwork4.frm
}

JDfrm038 {; Jim Deutch [104074,3171], 1996  Requires passes=1
          ; p1 = Julia parameters
          ; p2 = bailout test
  z = c = pixel
  r = |c|:
  rz2 = r * z * z
  sinzoz = sin(z) / (z+(whitesq==0))
  z = (sinzoz / rz2)*whitesq + (z*z+p1)*(whitesq==0)
  |z| < p2
  ;SOURCE: phc.frm
}

