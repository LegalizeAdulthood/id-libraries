3wayMandelbrot {; Jim Muth
  z=p3, g=pixel, a=real(p1), b=imag(p1)
  c=real(p2), d=imag(p2):
  z=(a*z^b)+(c*z^d)+(.3*(sqr(z)))+g
  |z| <= 100
  ;SOURCE: frac_art.frm
}
 
MandelbrotZC {; Jim Muth
  z=p3, c=pixel:
  z=(real(p1)*(z^imag(p1)+c))+(real(p2)*(c^imag(p2)+z))
  |z| <= 100
  ;SOURCE: 97msg.frm
}
 
test {; Edited for Fractint v. 20 by George Martin, 10/98
      ; The error in the formula as originally written rendered 
      ; it trivial. This is what the author intended.
  z=pixel, c=p1:
  z = z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / (16 * (z+c))
  |z| < 100
  ;SOURCE: tchebych.frm
}
 
