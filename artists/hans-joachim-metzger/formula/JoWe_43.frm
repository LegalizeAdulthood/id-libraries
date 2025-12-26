JoWe_03m {; Jo Weber [100424,35], 6/1996
  z = pixel:
  z=fn1(z)*z
  |z|>=0.05
  ;SOURCE: jowe_43.frm
}
 
JoWe_05m {; Jo Weber [100424,35] 9/1996
  z = pixel:
  a1=sqr(z), a2=1/a1
  z=fn1(a1)+a2+pixel
  |z|>=0.05
  ;SOURCE: jowe_43.frm
}
 
JoWe_05m2 {; Jo Weber [100424,35] 9/1996
  z = pixel:
  z=fn1(z*z)+(1/z*z)+pixel
  |z|>=0.05
  ;SOURCE: jowe_43.frm
}
 
JoWe_22_PHC  {; Jo Weber [100424,35] 9/1996
              ; mandel+julia needs passes=1
  z = c = pixel:
  z=(z*z+c)*whitesq+(z*z*z+(p1-1)*z-p1)*(whitesq==0)
  |z|<=4
  ;SOURCE: jowe_43.frm
}
 
JoWe_22_PHC_1  {; Jo Weber [100424,35] 9/1996 
                ; needs passes=1
  z = c = pixel:
  z=(z*z+c)*whitesq+(sqr(z)+p1)*(whitesq==0)
  |z|<=4
  ;SOURCE: jowe_43.frm
}
 
JoWe_22_PHC_4  {; Jo Weber [100424,35] 9/1996 
                ; needs passes=1
  z = c = pixel
  temp = p2:
  z=(temp*temp+c)*whitesq+(z*z*z+(p1-1)*z-p1)*(whitesq==0)
  temp=z
  |z|<=4
  ;SOURCE: jowe_43.frm
}
 
JoWe_25_PHC {; Jo Weber [100424,35] 9/1996 
             ; needs passes=1
  z = c = pixel, temp=sqr(z):
  a=temp*z+c
  b=p1*temp
  z=a*whitesq+fn1(b)*(whitesq==0)
  ;SOURCE: jowe_43.frm
}
 
JoWe_26_PHC {; Jo Weber [100424,35] 9/1996 
             ; needs passes=1
  z = c = pixel, temp=sqr(z):
  a=temp*z
  b=p1*temp
  z=a*whitesq+fn1(b)*(whitesq==0)
  temp=flip(sqr(z))*z
  ;SOURCE: jowe_43.frm
}
 
JoWe_27_PHC {; Jo Weber [100424,35] 9/1996 
             ; needs passes=1
   z = pixel:
   a=p1*fn1(z)
   b=p2*fn2(z)
   z=a*whitesq+b*(whitesq==0)
  ;SOURCE: jowe_43.frm
}
 
JoWe_28_PHC {; Jo Weber [100424,35] 9/1996 
             ; needs passes=1
   z = pixel:
   a=p1*fn1(z)
   b=p2*fn2(z)
   z=a*whitesq+(sqr(z)+z+b)*(whitesq==0)
  ;SOURCE: jowe_43.frm
}
 
JoWe_29_PHC {; Jo Weber [100424,35] 9/1996 
             ; needs passes=1
   z = pixel:
   a=p1*fn1(z)
   b=p2*fn2(z)
   z=a*whitesq+(sqr(z)+z+b)*(whitesq==0)
   |z|<=4
  ;SOURCE: jowe_43.frm
}
 
JoWe_What_03m1_PHC {; Jo Weber [100424,35] 9/1996
                    ; needs passes=1
  z = c = pixel:
  a1=sqr(z)+c
  a2=(1/a1+c)*(whitesq==0)
  z=fn1(z)*z*whitesq+a2
  ;SOURCE: jowe_43.frm
}
 
JoWe_What_03m3_PHC {; Jo Weber [100424,35] 9/1996 
                    ; needs passes=1
  z = c = pixel:
  a1=sqr(z)+c
  a2=(1/a1+c)*z*(whitesq==0)
  z=fn1(z)*whitesq+a2
  ;SOURCE: jowe_43.frm
}
 
JoWe_What_04_PHC {; Jo Weber [100424,35] 9/1996 
                  ; needs passes=1
  z = pixel:
  z=(fn1(z)*z)*whitesq+(1/z*z)*(whitesq==0)+pixel
  |z|>=0.05
  ;SOURCE: jowe_43.frm
}
 
JoWe_What_04m {; Jo Weber [100424,35] 9/1996 
  z = pixel:
  a1=1/fn1(z)
  z=a1+pixel
  ;SOURCE: jowe_43.frm
}
 
JoWe_What_04m_PHC {; Jo Weber [100424,35] 9/1996 
                   ; needs passes=1
  z = pixel:
  a1=sqr(z), a2=1/fn2(z)
  z=(fn1(z)*z)*(whitesq==0)+a2*whitesq+pixel
  ;SOURCE: jowe_43.frm
}
 
JoWe_What_05m_PHC {; Jo Weber [100424,35] 9/1996 
                   ; needs passes=1
  z = pixel:
  a1=sqr(z), a2=1/a1
  z=fn1(a1)*(whitesq==0)+(a2+pixel)*whitesq
  |z|>=0.05
  ;SOURCE: jowe_43.frm
}
 
JoWe_What_07m_PHC {; Jo Weber [100424,35] 9/1996 
                   ; needs passes=1
  z = pixel:
  a1=sqr(z), a2=1/a1
  z=fn1(z)*fn2(z)*whitesq+a2*(whitesq==0)+pixel
  ;SOURCE: jowe_43.frm
}
 
