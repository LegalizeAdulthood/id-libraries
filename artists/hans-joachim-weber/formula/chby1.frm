C03-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*x-3)
  Ty=y*(y*y-3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}

C04-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=xx*(xx-4)+2
  Ty=yy*(yy-4)+2
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}

C05-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(xx*(xx-5)+3)
  Ty=y*(yy*(yy-5)+3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}

C08-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=xx*(xx*(xx*(xx-8)+18)-12)+2
  Ty=yy*(yy*(yy*(yy-8)+18)-12)+2
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}

Ca06-01 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p2, b=a*(a*(a+3)+2)/6, c=a+3, d=4*(a+4), k=(a+a+10)/15
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=b*(c*xx*(d*xx*(k*xx-1)+3)-1)
  Ty=b*(c*yy*(d*yy*(k*yy-1)+3)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}

Ca09-01 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=a*(a*(a+a+36)+214)+420, d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6, f=35*(a+5)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=b*x*(16*xx*(xx*(c*xx*(d*xx-1)+k)-f)+105)
  Ty=b*y*(16*yy*(yy*(c*yy*(d*yy-1)+k)-f)+105)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}

He02-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (Euler method)
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=s*x*x-1
  Ty=s*y*y-1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}

L02-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (Euler method)
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x/2-2)+1
  Ty=y*(y/2-2)+1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}

L03-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*(3-x/3)/2-3)+1
  Ty=y*(y*(3-y/3)/2-3)+1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}

La08-01 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+6)*2
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+2)*(2/7),b=c*(a+1)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b
  Ty=y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}

P03-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = (5zP02-2P01)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(5*x*x-3)/2
  Ty=y*(5*y*y-3)/2
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}

P06-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = (11zP05-5P04)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=(21*xx*(xx*(11*xx-15)+5)-5)/16
  Ty=(21*yy*(yy*(11*yy-15)+5)-5)/16
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}

S05-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(xx*(xx-4)+3)
  Ty=y*(yy*(yy-4)+3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}

S06-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=xx*(xx*(xx-5)+6)-1
  Ty=yy*(yy*(yy-5)+6)-1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}

S10-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=xx*(xx*(xx*(xx*(xx-9)+28)-35)+15)-1
  Ty=yy*(yy*(yy*(yy*(yy-9)+28)-35)+15)-1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}

T03-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(4*x*x-3)
  Ty=y*(4*y*y-3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}

T07-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(8*xx*((xx+xx)*(4*xx-7)+7)-7)
  Ty=y*(8*yy*((yy+yy)*(4*yy-7)+7)-7)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}

U03-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=4*x*((x+x)*x-1)
  Ty=4*y*((y+y)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}

U04-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x*x, ay=4*y*y
  Tx=ax*(ax-3)+1
  Ty=ay*(ay-3)+1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}

Uc06-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=aax*(aax*(aax-5)+6)-1
  Ty=aay*(aay*(aay-5)+6)-1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}

