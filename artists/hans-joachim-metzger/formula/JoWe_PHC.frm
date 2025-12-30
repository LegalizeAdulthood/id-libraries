JoWe_03_PHC_n1 {; Jo Weber [100424,35], 1996    Requires passes=1
  z = c = pixel:
  a1=sqr(z), a2=p1*a1, a3=p2/(sqr(a1))
  t=fn1(z)
  b1 = (c^(sqr(t)))*whitesq-c*fn2(t)*(whitesq==0)
  b2=(fn1(a2)-fn2(a1)*fn2(a3))*whitesq-(c^(fn1(a3)/fn2(a2)))*(whitesq==0)
  z=b1
  b3=(1.0>=|z|)
  if (b3)
    z=b2
  endif
  1.0>=|z|
  ;SOURCE: phc.frm
}
 
JoWe_04a_PHC (XYAXIS) {; Jo Weber [100424,35], 1996  Requires passes=1
                       ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=abs(real(pixel)) + flip(imag(pixel))
  newpixel=real(newpixel) + flip(abs(imag(newpixel)))
  z = newpixel:
  a1=fn1(z), a2=p1/a1
  z=a1*whitesq+a2*(whitesq==0)+newpixel
  ;SOURCE: phc.frm
}
 
JoWe_04b_PHC (XYAXIS) {; Jo Weber [100424,35], 1996  Requires passes=1
                       ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=pixel*(-1)^(pixel>0)
  z = newpixel:
  a1=fn1(z), a2=fn2(p1/a1)
  z=a1*whitesq+a2*(whitesq==0)+newpixel
  ;SOURCE: phc.frm
}
 
JoWe_04b_PHC (XYAXIS) {; Jo Weber [100424,35], 1996  Requires passes=1
                       ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=pixel*(-1)^(pixel>0)
  z = newpixel:
  a1=fn1(z), a2=fn2(p1/a1)
  z=a1*whitesq+a2*(whitesq==0)+newpixel
  ;SOURCE: phc.frm
}
 
JoWe_04c_PHC (XYAXIS) {; Jo Weber [100424,35], 1996  Requires passes=1
  z = pixel:
  a1=fn1(z), a2=p1/a1
  z=fn2(a1)*(whitesq==0)+fn3(a2)*whitesq+pixel
  ;SOURCE: phc.frm
}
 
JoWe_13_PHC {; Jo Weber [100424,35], 1996   Requires passes=1
  c = p1
  z = pixel:
  a = fn1(z)
  b = c/fn2(z)
  z = (a-b)*whitesq+(a^b)*(whitesq==0)
  ;SOURCE: phc.frm
}
 
JoWe_14_PHC_3 {; Jo Weber [100424,35], 1996  Requires passes=1
  c=p1*(whitesq==0)
  z=pixel:
  a=fn1(z)*c*whitesq
  b=c/fn2(z)*(whitesq==0)
  z=(a+b)*pixel
  ;SOURCE: phc.frm
}
 
JoWe_20_PHC {; Jo Weber [100424,35], 1996  Requires passes=1
  z = c = pixel:
  t=fn1(z)
  t1=c^t
  u=fn2(z)
  t2=c^u
  t3=t1*(whitesq==0)+t2*whitesq
  z = c^(sqr(t3))
  |z|>=0.5
  ;SOURCE: phc.frm
}
 
JoWe_CN_01_PHC {; Jo Weber [100424,35], 1996  Requires passes=1
  pm1 = p1-1, z = pixel:
  oldz = z
  z = (pm1*(z^p1)*whitesq +1)/(p1 * z^pm1)+z*(whitesq==0)
  |(z-oldz)|>=|0.001|
  ;SOURCE: phc.frm
}
 
JoWe_CN_02a_PHC (YAXIS) {; Jo Weber [100424,35], 1996, Requires passes=1
  pm1 = p1-1.51, z = pixel:
  oldz = z
  z = (pm1*(z^p1)*whitesq +1)/(p1 * z^pm1)+oldz*(whitesq==0)
  |(z-oldz)|>=|0.001|
  ;SOURCE: phc.frm
}
 
JoWe_CN_12_PHC {; Jo Weber [100424,35], 1996   Requires passes=1
  pm1 = p1-1, z = pixel:
  oldz = z
  z = (pm1*(z^p1)*whitesq +0.5)/(p1 * z^pm1)+oldz*(whitesq==0)
  |(z-oldz)|>=|0.001|
  ;SOURCE: phc.frm
}
 
JoWe_what_02m_PHC {; Jo Weber [100424,35], 1996  Requires passes=1
  z = pixel:
  a1=sqr(z), a2=(2/a1)*whitesq
  z=a1*(whitesq==0)+a2+pixel
  ;SOURCE: phc.frm
}
 
JoWe_what_10_PHC {; Jo Weber [100424,35], 1996  Requires passes=1
  z = pixel:
  a1=sqr(z), a2=p1/a1
  b1=(fn1(z)*fn2(z)+(p1/z*z)+pixel)*whitesq
  b2=(fn1(z)*fn2(z)+a2+pixel)*(whitesq==0)
  z=b1-b2
  |z|>=0.05
  ;SOURCE: phc.frm
}
 
JoWe_04_PHC {; Jo Weber [100424,35], 1996       Requires passes=1
  z = c =pixel:
  t=fn1(z)
  b1 = (c^(sqr(t)))*whitesq-c*fn2(t)*(whitesq==0)
  a1=fn1(z), a2=p1/a1
  b2=(a1-a2+pixel)*(whitesq==0)+c*a1*(a2-0.34)*whitesq
  z=b1
  b3=(|z|<=4)
  if (b3)
    z=b2
  endif
  |z|<=4
  ;SOURCE: phc.frm
}
 
JoWe_02_PHC (XYAXIS) {; Jo Weber [100424,35], 1996  Requires passes=1
  z = pixel
  p=1*(|p1|<=0)+p1, q=1*(|p2|<=0)+p2:
  a1=sqr(z), a2=p/a1, a3=q/(sqr(a1))
  z=(fn1(a1)*whitesq+fn2(a2)*fn1(a3)*(whitesq==0))*pixel
  ;SOURCE: phc.frm
}
 
JoWe_19_PHC_2 {; Jo Weber [100424,35], 1996  Requires passes=1
  z = c = pixel:
  t=fn1(z)
  z = (c^(sqr(t)))*whitesq-c*fn2(t)*(whitesq==0)
  |z|>=0.5
  ;SOURCE: phc.frm
}
 
JoWe_19_PHC_3 {; Jo Weber [100424,35], 1996  Requires passes=1
  z = c = pixel:
  t=fn1(z)
  z = (c^(fn2(t)))*whitesq-p1*fn3(t)*(whitesq==0)
  |z|>=0.5
  ;SOURCE: phc.frm
}
 
JoWe_19_PHC_4 {; Jo Weber [100424,35], 1996  Requires passes=1
  z = c = pixel:
  t=fn1(z)
  z = (c^(fn2(t)))*whitesq+(c*fn2(t)*(whitesq==0))
  ;SOURCE: phc.frm
}
 
JoWe_03_PHC_n {; Jo Weber [100424,35], 1996     Requires passes=1
  z = c = pixel:
  a1=sqr(z), a2=p1*a1, a3=p2/(sqr(a1))
  t=fn1(z)
  z = (c^(sqr(t))-c*fn2(t))*whitesq+(c^(fn1(a3)/fn2(a2)))*(whitesq==0)+c
  |z|>=0.5
  ;SOURCE: phc.frm
}
 
JoWe_11b_PHC (XYAXIS) {; Jo Weber [100424,35], 1996 Requires passes=1
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=fn2(p/a1)
  a1=a1*whitesq, a2=a2*(whitesq==0)
  z=(a1+a2)^pixel
  |z|<=4
  ;SOURCE: phc.frm
}
 
JoWe_11b_PHC2 (XYAXIS) {; Jo Weber [100424,35], 1996, Requires passes=1
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=fn2(p/a1)
  a1=a1*whitesq, a2=a2*(whitesq==0)
  z=(a1-a2)^pixel
  |z|<=4
  ;SOURCE: phc.frm
}
 
JoWe_14_PHC {; Jo Weber [100424,35], 1996  Requires passes=1
  z = c =pixel:
  a = fn1(z)
  b = c/fn2(z)
  z = (a/b)*whitesq+(a*b)*(whitesq==0)
  ;SOURCE: phc.frm
}
 
JoWe_14_PHC_2 {; Jo Weber [100424,35], 1996  Requires passes=1
  c=p1
  z=pixel:
  a=fn1(z)*c*whitesq
  b=c/fn2(z)*(whitesq==0)
  z=a+b*pixel
  ;SOURCE: phc.frm
}
 
JoWe_19_PHC {; Jo Weber [100424,35], 1996  Requires passes=1
  z = c = pixel:
  t=fn1(z)
  z = (c^(sqr(t)))*whitesq
  |z|>=0.5
  ;SOURCE: phc.frm
}
 
JoWe_CN_02_PHC (XAXIS) {; Jo Weber [100424,35], 1996, Requires passes=1
  pm1 = p1-1.51, z = pixel:
  oldz = z
  z = (pm1*(z^p1)*(whitesq==0) +1)/(p1 * z^pm1)+z*whitesq
  |(z-oldz)|>=|0.001|
  ;SOURCE: phc.frm
}
 
JoWe_CN_12_PHC_2 {; Jo Weber [100424,35], 1996  Requires passes=1
  pm1 = p1-1, z = pixel:
  oldz = z
  z = (pm1*(z^p1)*whitesq +0.5)/(p1 * z^pm1)+z*(whitesq==0)
  |(z-oldz)|>=|0.001|
  ;SOURCE: phc.frm
}
 
