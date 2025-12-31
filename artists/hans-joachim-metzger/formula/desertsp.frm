;
; Title:      Desert_Spring
;
; Categories: 1. Best Use of Color
;             9. Best FractInt Fractal
;
; Description:  Alluvial fans surround a desert oasis filled with gardens of
;               colorful wildflowers.

desert_sp {
  w = a = 0 , c = pixel :
  w = w*w + c , mw = |w|
  a = a + imag(log(w))
  if (mw <= p1)
    continue = 1
  else
    continue = 0 , z = exp(flip(imag(p1)*a))
  endif
  continue
}
