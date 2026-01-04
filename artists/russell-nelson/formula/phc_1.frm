comment {  ; Please Read:

                  Pseudo-HiColor (phc) formulas

  Developed by Jim Deutch, Lee Skinner, Jan Maarten, Sylvie Gallet
  Compiled by Lee Skinner, Optimized by Sylvie Gallet

  These formulas work under Fractint versions 19.3 and 19.4

  All formulas must run with passes=1.

  Panning an odd number of pixels in any direction will offset the
  pixel checkerboard and cause artifacts to occur in the images.

  Each initialization resolves to either

   "var = 1*(expression1) +  0*(expression2)"
                         or
   "var = 0*(expression1) +  1*(expression2)"

  for each pixel, and the selection of which to use alternates for each
  pixel. The 3 line kernal creates the 0 and 1 operators in these
  expressions, but v20 of Fractint is expected to supply a predefined
  variable to do the same thing. The result of this is that two separate
  formula images are drawn on the same screen, perfectly intermeshed
  pixel by pixel.  Since regions of one color in one image overlay
  regions of another color in the other image, this creates a very tight
  dithering process which can give the possibility of 65,536 colors in
  a single SVGA 256 video mode image which can be color cycled and the
  Fractint palette editor applied (although tricky!).  At very high
  screen resolutions, this tight dithering is not visible.  Thumbnail
  generators will sometimes give unexpected results.  (If you generate
  an image at 1600x1200, then use Fractint to reload that image at
  800x600, you will see only 1 of the 2 intermeshed images!)

  With the next version (20.0) which will be some time away, but with
  the next developer's patches (soon), new formula variables will be
  introduced to make writing these formulas simpler, and to make the
  formulas interruptible without causing artifacts. Please be prepared
  to update your formulas for version 20.0. For now, code your
  formulas similar to those below.  The conversion will be very easy
  if you don't change anything in these lines:

      count = (count + 1) * (count != (p3-1))
      evenodd = (evenodd == (count == 1))
      oddeven = (evenodd == 0)

  You will have to delete those 3 lines and replace (elsewhere in the
  formula) evenodd by whitesq and oddeven by (whitesq==0).
}

JDfrm010 { ; Jim Deutch [104074,3171], 1996.  The Original PHC formula
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  pixel = pixel * evenodd + -pixel * oddeven
  z = 0
  c = pixel:
  z = z*z + c
  |z| < 4
}

JDfrm021a { ; Jim Deutch [104074,3171], 1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  a = pixel , r = |a| , b = abs(a)
  q =  b / flip(r)
  z = a * evenodd:
  z2 = z*z
  rz2 = r*z2
  sinzoz = sin(z) / (z+oddeven)
  z=(q + z2)*oddeven + (sinzoz/(rz2+oddeven))*evenodd
  |z| < 4 + 10000000*evenodd
}

JDfrm031SF1 { ; Jim Deutch: generalized 2-Julia Pseudo-HiColor
              ; resolution specific - 1600x1200 only
              ; p1 = 1st julia parameters
              ; p2 = 2nd julia parameters
              ; p3 slides 1st julia around the plane wrt the 2nd
  count = (count + 1) * (count != 1599)
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = pixel + p3*evenodd :
  zsq = z*z
  z = (zsq+p1)*evenodd + (zsq+p2)*oddeven
  |z| < 4
}

JDfrm031SF3 { ; Jim Deutch: generalized 2-Julia pseudo-HiColor
              ; resolution specific - 320x200
              ; p1 = 1st julia parameters
              ; p2 = 2nd julia parameters
              ; p3 slides 1st julia around the plane wrt the 2nd
  count = (count + 1) * (count != 319)
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = pixel + p3*evenodd :
  zsq = z*z
  z = (zsq+p1)*evenodd + (zsq+p2)*oddeven
  |z| < 4
}

JDfrm031SF5 { ; Jim Deutch: generalized 2-Julia pseudo-HiColor
              ; resolution specific - 640x480
              ; p1 = 1st julia parameters
              ; p2 = 2nd julia parameters
              ; p3 slides 1st julia around the plane wrt the 2nd
  count = (count + 1) * (count != 639)
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = pixel + p3*evenodd :
  zsq = z*z
  z = (zsq+p1)*evenodd + (zsq+p2)*oddeven
  |z| < 4
}

JDfrm031SF6 { ; Jim Deutch: generalized 2-Julia pseudo-HiColor
              ; resolution specific - 800x600
              ; p1 = 1st julia parameters
              ; p2 = 2nd julia parameters
              ; p3 slides 1st julia around the plane wrt the 2nd
  count = (count + 1) * (count != 799)
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = pixel + p3*evenodd :
  zsq = z*z
  z = (zsq+p1)*evenodd + (zsq+p2)*oddeven
  |z| < 4
}

JDfrm031SF7 { ; Jim Deutch: generalized 2-Julia pseudo-HiColor
              ; resolution specific - 1024x768
              ; p1 = 1st julia parameters
              ; p2 = 2nd julia parameters
              ; p3 slides 1st julia around the plane wrt the 2nd
  count = (count + 1) * (count != 1023)
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = pixel + p3*evenodd :
  zsq = z*z
  z = (zsq+p1)*evenodd + (zsq+p2)*oddeven
  |z| < 4
}

JDfrm031SF9 { ; Jim Deutch: generalized 2-Julia pseudo-HiColor
              ; resolution specific - 1280x1024
              ; p1 = 1st julia parameters
              ; p2 = 2nd julia parameters
              ; p3 slides 1st julia around the plane wrt the 2nd
  count = (count + 1) * (count != 1279)
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = pixel + p3*evenodd :
  zsq = z*z
  z = (zsq+p1)*evenodd + (zsq+p2)*oddeven
  |z| < 4
}

JD-LS0 { ; Lee Skinner [75450,3631], 1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  f1 = sin(.5*pixel)
  f2 = 1/pixel
  pixel = evenodd * f1 + oddeven * f2
  z = 0
  c = pixel:
  z = z*z + c
  |z| < 4
}

JD-LS-JM { ; Jan Maarten van der Valk [100256,3721], 1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  f1 = sin(.5*pixel)
  f2 = 1/pixel
  pixel = evenodd * f1 + oddeven * f2
  z = 0
  c = pixel:
  z = log(z)*z+c
  |z| < 4
  }

JD-SG-01 { ; Sylvie Gallet [101324,3444], 1996
  ; Mandel: z^(p1+1) + c , inverted Newton: z^p1 - 1 = 0
  ; use p2 to adjust the size of the inverted Newton set
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = pixel * evenodd + (p2/(pixel-p2)+1) * oddeven
  c = pixel , b1 = 256 , b2 = 0.000001 , ex = p1 - 1 :
   zd = z^ex , zn = zd*z , n = zn - 1 , d = p1 * zd
   zo = zn*z + c , ze = z - n/d
   z = zo * evenodd + ze * oddeven
    ( (|z| <= b1) && evenodd ) || ( (|n| >= b2 ) && oddeven)
  }

JD-SG-02 { ; Sylvie Gallet [101324,3444], 1996
  ; Mandel: z^2 + c , inverted Newton: z^p1 - 1 = 0
  ; use p2 to adjust the size of the inverted Newton set
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = pixel * evenodd + (p2/(pixel-p2)+1) * oddeven
  c = pixel , b1 = 256 , b2 = 0.000001 , ex = p1 - 1 :
   zd = z^ex , zn = zd*z , n = zn - 1 , d = p1 * zd
   zo = z*z + c , ze = z - n/d
   z = zo * evenodd + ze * oddeven
    ( (|z| <= b1) && evenodd ) || ( (|n| >= b2 ) && oddeven)
  }

JD-SG-03 { ; Sylvie Gallet [101324,3444], 1996
  ; Mandel: z^(p1+1) + c , Newton: z^p1 - 1 = 0
  ; use p2 to adjust the size of the inverted Newton set
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = c = pixel , b1 = 256 , b2 = 0.000001 , ex = p1 - 1 :
   zd = z^ex , zn = zd*z , n = zn - 1 , d = p1 * zd
   zo = zn*z + c , ze = z - n/d
   z = zo * evenodd + ze * oddeven
    ( (|z| <= b1) && evenodd ) || ( (|n| >= b2 ) && oddeven)
  }

JD-SG-04 { ; Sylvie Gallet [101324,3444], 1996
  ; use p1 and p2 to adjust the inverted Mandel
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = c = pixel * evenodd + (p1 / (pixel+p2)) * oddeven :
   z = z*z + c
    |z| < 4
 }

manjul_lace {; G. Martin [76440,1143], 1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = evenodd * 1.5*pixel + oddeven * pixel
  c = evenodd * 1.5*pixel + oddeven * (-.75, .1234567):
  ;begin iterations
   z = z*z + c
    |z| <= 4
  }

