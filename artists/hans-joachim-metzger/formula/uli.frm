ULI_2 {
  z = Pixel: z = fn1(1/fn2(z+p1))
  |z| <= p2
  ;SOURCE: uli.frm
}
 
ULI_4 {
  z = Pixel:
  z = fn1(1/(z+p1))*fn2(z+p1)
  |z| <= p2
  ;SOURCE: fractint.frm
}
 
ULI_5 {
  z = Pixel, c = fn1(pixel):
  z = fn2(1/(z+c))*fn3(z+c)
  |z| <= p1
  ;SOURCE: fractint.frm
}
 
