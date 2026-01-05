Primal {; Rollo Silver
  ; Select p1 such that 0. <= p1 <= 1.
  z = c = Pixel, t = real(p1), test = (p2+10)*(p2+10):
   zsq = z*z
   zcu = zsq*z
   z = (1.-t)*zsq + t*zcu + c
   |z| <= test
  }
pheot {
   ; The ht flavour of the pheonix fractal gives some nice escher like
   ; fractals
  z = pixel, zp1 = zp2 = (0,0), huge=1.0e32:
  temp = z
  z  = z*z - zp2
  zp2 = zp1
  zp1 = p1/conj(temp)
  (|zp1| <= 64) && (|z| <= huge)
  ;SOURCE: noel.frm
}
Petals_Barnsley1 {; Copyright (c) Paul W. Carlson, 1998
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = radius of the circles - this controls
    ;              the size of the petals
    ;   imag(p2)   not Used
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
  w = pixel
  c = p1
  z = range_num = iter = 0
  r = real(p2)
  ir = flip(r)
  r2 = r * r
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / (r2 + r2)
  :
  IF (real(w) >= 0)
    w = (w - 1) * c
  ELSE
    w = (w + 1) * c
  ENDIF
    ;
  c1 = (|w -  r| < r2)
  c2 = (|w + ir| < r2)
  c3 = (|w +  r| < r2)
  c4 = (|w - ir| < r2)
  IF (c1 && c4)
    d = |w - r - ir|
  ELSEIF (c1 && c2)
    d = |w - r + ir|
  ELSEIF (c2 && c3)
    d = |w + r + ir|
  ELSEIF (c3 && c4)
    d = |w + r - ir|
  ELSE
    d = 0
  ENDIF
  IF (d > 0)
    z = index_factor * d + range_num * colors_in_range + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  d == 0 && |w| < 1.0e20
  ;SOURCE: 98msg.frm
}
