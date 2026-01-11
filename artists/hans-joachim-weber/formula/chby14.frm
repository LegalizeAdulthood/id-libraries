H04-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(3)-3H(2))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=4*(4*zz*(zz-3)+3)
  fd=32*z*(zz+zz-3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=4*(4*ww*(ww-3)+3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}

U02-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Bradley Beacham
                 ; Cubic Method with weird bailout test
                 ;
                 ; U(n+1) = 2zU(n)-U(n-1)
                 ; U(0)  = 1
                 ; U(1)  = 2z
                 ;
                 ; = 2zU01-U00
  bailout=real(p2)/10000, z=pixel:
  f=4*z*z-1
  fd=8*z
  oz=z
  w=z-f/fd
  fw=4*w*w-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}

U03-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU02-U01
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=4*z*(zz+zz-1)
  fd=24*zz-4
  oz=z
  w=z-f/fd
  fw=4*w*((w+w)*w-1)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}

