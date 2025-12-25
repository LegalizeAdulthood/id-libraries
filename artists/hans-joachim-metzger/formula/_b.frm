BJ-SG-3-03-gb {; Brian E. Jones [102702,2213]
   ; Modified Sylvie Gallet [101324,3444], 1996
  z = pixel, c = sin(conj(-0.81256,-0.1295)) :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(x*x+p2*fn2(y)) * (whitesq == 0)+c* whitesq 
  y1 = y - p1*fn1(y*y+p2*fn2(x)) 
  z = x1+flip(y1)  
  |z| <= 4
  ;SOURCE: 96msg.frm
}
 
