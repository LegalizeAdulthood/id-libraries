JoWe_04b (XYAXIS) {; Jo Weber [100424,35], 6/1996
                   ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=pixel*(-1)^(pixel>0)
  z = newpixel:
  a1=fn1(z), a2=p1/a1
  z=a1+a2+newpixel
  ;SOURCE: jo_we_32.frm
}
