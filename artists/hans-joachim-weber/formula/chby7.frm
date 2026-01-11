C05-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC04-C03
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz-5)+3)
  fd=5*zz*(zz-3)+3
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww-5)+3)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}

