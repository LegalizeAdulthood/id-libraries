JoWe_10 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p = 1*(|p1|<0)+p1:
  a1 = fn1(z), a2=p/a1 
  z = (a1+a2)^pixel
  |z|>=0.1
  ;SOURCE: jo_we_32.frm
}
 
JoWe_10a (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=fn2(p)/a1 
  z=(a1+a2)^pixel
  |z|>=0.1
  ;SOURCE: jo_we_35.frm
}
 
JoWe_10b (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=fn2(p/a1) 
  z=(a1+a2)^pixel
  |z|>=0.1
  ;SOURCE: jo_we_35.frm
}
 
JoWe_11a (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=fn2(p)/a1 
  z=(a1+a2)^pixel
  |z|<=4
  ;SOURCE: jo_we_35.frm
}
 
JoWe_11b (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=fn2(p/a1) 
  z=(a1+a2)^pixel
  |z|<=4
  ;SOURCE: jo_we_35.frm
}
 
