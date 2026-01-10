InvMandel (XAXIS) {; Mark Peterson
  c = z = 1 / pixel:
  z = sqr(z) + c
  |z| <= 4
  ;SOURCE: fractint.frm
}
Sam_10 (XYAXIS) {
  z = Pixel:
  z = sin(1/z)
  ;SOURCE: sam.frm
}
FGZ_-1   {
      z = c = pixel:
         z = z * z + c;
         z = ((-1, 0) * z * z) / (z - 1) + c,
      |z| <= 4
   }
