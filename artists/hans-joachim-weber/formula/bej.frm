BEJ_22 {
  z=pixel:
  z=z*z*z
  z1=z*z*z*z
  z=fn1(z1)+pixel
  |z|<4
  ;SOURCE: bej's.frm
}

BEJ_M9 {; Revised for Fractint v. 20 by George Martin
        ; first line was
        ; fn1(z)=pixel:
  z=pixel:
  z=z*z+c
  z=z*z
  z=fn1(z*z+c)
  z=fn2(fn3(z+z*c))
  |z*z+c|<4
  ;SOURCE: bejones.frm
}

