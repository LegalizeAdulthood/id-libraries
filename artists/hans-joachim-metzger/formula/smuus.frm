Fn*z+z (XAXIS) {; Chuck Ebbert - from BUILTN.FRM
   ; set co-ords as TLx=-4.0,TLy=3.0,BRx=4.0,BRy=-3.0  ; JH Jan-94
   ; requires float=yes                                ; JH Jan-94
   ; Near duplicate of built-in 'fn*z+z' type.
   ; p1 = first coeff., p2 = second coeff. (default 1)
  z = pixel
  m1 = (1 * (|p1|<=0) + p1 )       ; force 1 if p1=0
  m2 = (1 * (|p2|<=0) + p2 ):      ; force 1 if p2=0
  z = (m1 * fn1(z) + m2 ) * z
  |z| <= 64                        ; always bail out at 64
  ;SOURCE: parser.frm
}
 
