   ; See da.frm for formulas 1 thru 5
   ; 9/6/93

   DAFRM06  {;  var M_TchebychevT3
   c = P1, z = Pixel:
   z = 2*c*z*(z*z*3.14159),
   |z|<100
   }

   DAFRM07  {
   z = pixel, c = p1 :
   z = z ^ (z - 1) * fn1(z) + pixel,
   |z| <= 4
   }

DAFRM08 {; Edited for Fractint v. 20 by George Martin, 10/98
         ; The revision is to give the result that the author
         ; intended
  z = pixel, c = z + z^ (1 - z):
  tmp = fn1(z)
  tmp = real(tmp)*real(c)-imag(tmp)*imag(c)\
          + flip(real(tmp)*imag(c)-imag(tmp)*real(c))
  z = tmp + pixel
  |z| <= 100
  ;SOURCE: da00.frm
}

DAFRM09 {; Edited for Fractint v. 20 by George Martin, 10/98
         ; The revision is to give the result that the author
         ; intended
  z = pixel, c = z + z^ (z - 1):
  tmp = fn1(z)
  tmp = real(tmp)*real(c)-imag(tmp)*imag(c)\
         + flip(real(tmp)*imag(c)-imag(tmp)*real(c))
  z = tmp + pixel + 12
  |z| <= 4
  ;SOURCE: fractint.frm
}

   DAFRM10  { ; var Ron Barnett REB004K
   z = pixel:
   x = flip(pixel + fn1(4/z - z/5 + 125)),
   z = x*z + p1 + 125,
   |z| <= 100
   }

   DAFRM11  { ; var Ron Barnett REB004L
   z = pixel:
   x = flip(pixel + fn1(2*p1/3*z - z/(p2+125))),
   z = x*z + pixel,
   |z| <= 100
   }

   DAFRM12 { ; var Ron Barnett REB004M
   z = pixel:
   x = real(z), y = imag(z),
   x1 = -fn1((x*x + y*y) - 6*x)*x/(2*x*x + y*y),
   y1 = -fn2((x*x + y*y) + 6*x)*y/(2*x*x + y*y),
   x2 = x1*x1 - y1*y1 + p1 + 25,
   y2 = 3*x*y - 25,
   z = x2 + flip(y2),
   |z| <= 100
   }
