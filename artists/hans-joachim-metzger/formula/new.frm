Gallet-3-02 {; Sylvie Gallet [101324,3444], 1996
  z = pixel :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(y+p2*fn2(y))
  y1 = y - p1*fn1(x+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: gallet-3.frm
}
 
Gallet-3-13 {; Sylvie Gallet [101324,3444], 1996 
  z = pixel/(pixel*pixel+1) :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(y+p2*fn2(y))
  y1 = y - p1*fn1(x+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: gallet-3.frm
}
 
t6 {; Revised 4/27/96 to eliminate superfluous "+c"
    ; Original version of this formula may be discarded
  z=(pixel^(1/tan(pixel^p1)))^(fn1(pixel^(1/pixel^p2))):
  z=fn2(z^fn3(1/z^2.5878))
  |real(z)|<=4
  ;SOURCE: new.frm
}
 
jhline     { ; Jos Hendriks <jos@hexaedre-fr.com>
             ; Mon, 23 Dec 2002 21:01:01
             ; draws the line y=0, p1 gives the thickness of
             ; the line watch out: only two colors are used
             ; take for instance maxiter=2, inside=0, outside=iter 
  :
  |Imag(Pixel)|<p1
 }
 
