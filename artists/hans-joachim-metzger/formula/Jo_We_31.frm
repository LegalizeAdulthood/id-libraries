Whatever_01 (XYAXIS) {; Original formula Whatever_the_name
                      ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  z=z*z+(1/z*z)+pixel
  ;SOURCE: 96msg.frm
}
 
Whatever_02 {; Original formula Whatever_the_name
             ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  z=z*z+(2/z*z)+pixel
  ;SOURCE: jo_we_31.frm
}
 
Whatever_03 {; Original formula Whatever_the_name
             ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  z=fn1(z)*z+(1/z*z)+pixel
  |z|>=0.05
  ;SOURCE: jo_we_31.frm
}
 
Whatever_04 (XYAXIS) {; Original formula Whatever_the_name
                      ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  z=fn1(z)*z+(1/z*z)+pixel
  |z|>=0.05
  ;SOURCE: jo_we_31.frm
}
 
Whatever_05 {; Original formula Whatever_the_name
             ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  z=fn1(z*z)+(1/z*z)+pixel
  |z|>=0.05
  ;SOURCE: jo_we_31.frm
}
 
Whatever_06 (XYAXIS) {; Original formula Whatever_the_name
                      ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  z=fn1(z*z)+(1/z*z)+pixel
  |z|>=0.05
  ;SOURCE: jo_we_31.frm
}
 
Whatever_07 {; Original formula Whatever_the_name
             ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  z=fn1(z)*fn2(z)+(1/z*z)+pixel
  ;SOURCE: jo_we_31.frm
}
 
Whatever_08 (XYAXIS) {; Original formula Whatever_the_name
                      ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  z=fn1(z)*fn2(z)+(1/z*z)+pixel
  ;SOURCE: jo_we_31.frm
}
 
Whatever_09 (XYAXIS) {; Original formula Whatever_the_name
                      ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  z=fn1(z)*fn2(z)+(p1/z*z)+pixel
  ;SOURCE: jo_we_31.frm
}
 
Whatever_10 {; Original formula Whatever_the_name
             ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  z=fn1(z)*fn2(z)+(p1/z*z)+pixel
  ;SOURCE: jo_we_31.frm
}
 
Whatever_the_name (XAXIS) {
  z = pixel:
  z=z*z+(1/z*z)+pixel
  ;SOURCE: whatever.frm
}
 
