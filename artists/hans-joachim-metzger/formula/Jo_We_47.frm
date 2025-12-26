JoWe_06m_PHC {; Jo Weber [100424,35], 10/1996
  z = pixel:
  a1=1/fn2(z)
  z=(fn1(z)*z)*(whitesq==0)+a1*whitesq+pixel
  ;SOURCE: jo_we_47.frm
}
 
JoWe_06m_PHC_1 {; Jo Weber [100424,35], 10/1996
  z = pixel:
  a1=p1/fn2(z)
  z=(fn1(z)*fn1(z)*p2-pixel)*(whitesq==0)+(a1-pixel)*whitesq
  ;SOURCE: jo_we_47.frm
}
 
JoWe_06m_PHC_1a {; Jo Weber [100424,35], 10/1996
                 ; baiout = p2
  z = pixel
  bailout=p2:
  a1=p1/fn2(z)
  z=(fn1(z*z)*pixel+z)*whitesq+(a1+pixel)*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_47.frm
}
 
JoWe_06m_PHC_2 {; Jo Weber [100424,35], 10/1996
                ; bailout = p3
  z = pixel
  bailout=p3:
  a1=fn3(p1/fn2(z))
  z=(fn1(z)*fn1(z)*p2+pixel^2)*(whitesq==0)+(a1+pixel)*whitesq
  |z|<=bailout
  ;SOURCE: jo_we_47.frm
}
 
JoWe_What_03m2_PHC {; Jo Weber [100424,35], 10/1996
  z = c = pixel:
  a1=sqr(z)+c
  a2=(1/a1+c)*(whitesq==0)
  z=fn1(z)*z*whitesq+a2
  ;SOURCE: jo_we_47.frm
}
 
JoWe_What_03m2_PHC {; Jo Weber [100424,35], 10/1996
  z = c = pixel:
  a1=sqr(z)+c
  a2=(1/a1+c)*(whitesq==0)
  z=fn1(z)*z*whitesq+a2
  ;SOURCE: jo_we_47.frm
}
 
