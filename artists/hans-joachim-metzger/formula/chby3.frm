Ca06-03 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p2, b=a*(a*(a+3)+2)/6, c=a+3, d=4*(a+4), k=(a+a+10)/15
  const=p1, z=pixel:
  zz=z*z
  z=b*(c*zz*(d*zz*(k*zz-1)+3)-1)+const
  |z|<100
  ;SOURCE: chby3.frm
}
 
P06-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  const=p1, z=pixel:
  zz=z*z
  z=(21*zz*(zz*(11*zz-15)+5)-5)/16+const
  |z|<100
  ;SOURCE: chby3.frm
}
 
