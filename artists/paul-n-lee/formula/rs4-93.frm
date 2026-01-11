a_spider1 {; Adjustable spider - After Homer Smith of Art Matrix
           ; try p1 = (.55,0) or (0,.4) or (.4,.35)
  z=0, c=pixel:
  z = z*z + c, z = fn1(z)
  c = c * p1 + z, c = fn2(c)
  |z| <= 4
  ;SOURCE: hughes.frm
}
