cc3 {; Revised 4/27/96 to eliminate superfluous "+c"
     ; Original version of this formula may be discarded
  z=pixel, m=(z+1)+z, n=(z-1)+z
  x=srand(z), y=fn4(|z-1|^(x)):
  z=(fn1(m)*fn2(y^(n^z)))/fn3(x+1)+fn4(y)
  |z|<=4
  ;SOURCE: new.frm
}
a0a07 {; Revised 4/27/96 to eliminate superfluous "+c"
       ; Original version of this formula may be discarded
  z=pixel:
  z=(fn1(z)/7)^fn2((z)^22)
  |z|<4
  ;SOURCE: new.frm
}
