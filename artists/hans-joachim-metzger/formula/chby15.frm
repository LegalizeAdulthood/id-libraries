C02-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Newton Method with weird bailout test
        ;
        ; C(n+1) = zC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = z
        ;
        ; = zC01-C00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*z-2
  fd=2*z
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}

C07-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz-7)+12)-5)
  fd=zz*(7*zz*(zz-5)+36)-5
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}

C10-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2
  fd=2*z*(zz*(zz*(5*zz*(zz-8)+99)-84)+19)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}

H03-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=2*z*z
  f=4*z*(a-3)
  fd=12*(a-1)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}

H04-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=4*(4*zz*(zz-3)+3)
  fd=32*z*(2*zz-3)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}

H05-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=8*z*(4*zz*(zz-5)-9)
  fd=8*(20*zz*(zz-3)-9)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}

He02-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Newton Method with weird bailout test
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2)
  a=2*s
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=s*z*z-1
  fd=a*z
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}

P08-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = (15zP(7)-7P(6))/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128
  fd=9*z*(11*zz*(39*zz*(5*zz-7)+35)-35)/16
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}

S04-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz-3)+1
  fd=2*z*(2*zz-3)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}

T06-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  f=a*(8*zz*(a-3)+9)-1
  fd=12*z*(16*zz*(zz-1)+3)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}

T08-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=4*zz
  f=32*zz*(zz*(b*(zz-2)+5)-1)+1
  fd=64*z*(a*(b*(a-3)+5)-1)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}

T10-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=8*zz
  f=a*(b*(a*(b*(a-5)+35)-25)+25)-1
  fd=20*z*(16*zz*(zz*(16*zz*(zz-2)+21)-5)+5)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}

U08-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  b=2*zz
  f=8*zz*(b*(a*(a-7)+15)-5)+1
  fd=16*z*(4*zz*(b*(16*zz-21)+15)-5)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}

Uc07-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa-6)+10)-4)
  fd=4*(aa*(aa*(7*aa-30)+30)-4)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}

