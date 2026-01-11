SpiderJulcplx_RFR {; by Jon Horner - 100112,1700 - FRAC'Cetera
                   ; Complex-form of SPIDERJUL
                   ; float=yes
                   ; modified by Rolf Freericks
  z = pixel, h=c = p1:
  z = z * z + c-h
  c = c * p2 + z
  |z| <= 4
    ; the original
    ;  z = pixel, c = p1:
    ; z = z * z + c
    ; c = c * p2 + z
    ; |z| <= 4
  ;SOURCE: gal2.par
}

