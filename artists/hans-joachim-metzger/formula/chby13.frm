C02-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method with weird bailout test
        ;
        ; C(n+1) = zC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = z
        ;
        ; = zC01-C00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*z-2
  fd=2*z
  fdd=2
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}

C05-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz-5)+3)
  fd=5*zz*(zz-3)+3
  fdd=10*z*(2*zz-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}

C08-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz-8)+18)-12)+2
  fd=8*z*(zz*(zz*(zz-6)+9)-3)
  fdd=8*(zz*(zz*(7*zz-30)+27)-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}

C10-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2
  fd=2*z*(zz*(zz*(5*zz*(zz-8)+99)-84)+19)
  fdd=2*zz*(5*zz*(zz*(9*zz-56)+99)-252)+38
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}

H06-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  f=8*(a*(a*(a-15)+21)-15)
  fd=96*z*(4*zz*(zz-5)+7)
  fdd=96*(20*zz*(zz-3)+7)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}

L08-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  fd=z*(z*(z*(z*(z*(z*(z/28-2)/3+14)/20-7)+35)/3-28)+28)-8
  fdd=(z*(z*(z*(z*(z*(z/12-4)+70)/20-28)/3+35)-56)+28)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}

