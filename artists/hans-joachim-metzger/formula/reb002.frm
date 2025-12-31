FlipLambdaJ {; Ron Barnett, 1993
  z = pixel:
  z = p1*z*(1-flip(z)*flip(z))
  |z| <= 100
  ;SOURCE: fractint.frm
}

FlipLambdaM {; Ron Barnett, 1993
  z = 0.5:
  z = pixel*z*(1-flip(z)*flip(z))
  |z| <= 100
  ;SOURCE: reb002.frm
}

FlipProbJ1 {; Ron Barnett, 1993
  z = pixel:
  z = flip(z)*(1-z) + p1
  |z| <= 100
  ;SOURCE: reb002.frm
}

FlipProbJ2 {; Ron Barnett, 1993
  z = pixel:
  z = z*(p1-flip(z)) + p1
  |z| <= 100
  ;SOURCE: reb002.frm
}

FlipProbM1 {; Ron Barnett, 1993
  z = pixel:
  z = flip(z)*(1-z) + pixel
  |z| <= 100
  ;SOURCE: reb002.frm
}

FlipProbM2 {; Ron Barnett, 1993
  z = pixel:
  z = z*(pixel-flip(z)) + pixel
  |z| <= 100
  ;SOURCE: reb002.frm
}

FrRbtGenJ {; Ron Barnett, 1993
  z = pixel:
  z = p1*z*z*z + z*z + p2
  |z| <= 100
  ;SOURCE: reb002.frm
}

FrRbtGenM {; Ron Barnett, 1993
  z = pixel:
  z = p1*z*z*z + z*z + pixel
  |z| <= 100
  ;SOURCE: fractint.frm
}

FrRbtGenM {; Ron Barnett, 1993
  z = pixel:
  z = p1*z*z*z + z*z + pixel
  |z| <= 100
  ;SOURCE: fractint.frm
}

IkeFrRbtGenJ {; Ron Barnett, 1993
  z = pixel:
  z = p1*z*z*z + (p2-1)*z*z - p2
  |z| <= 100
  ;SOURCE: reb002.frm
}

IkeFrRbtGenM {; Ron Barnett, 1993
  z = 2*(1-pixel)/(3*p1):
  z = p1*z*z*z + (pixel-1)*z*z - pixel
  |z| <= 100
  ;SOURCE: reb002.frm
}

IkeGenJ {; Ron Barnett, 1993
  z = pixel:
  z =p1*z*z*z + (p2-1)*z - p2
  |z| <= 100
  ;SOURCE: reb002.frm
}

IkeGenM {; Ron Barnett, 1993
  z = ((1-pixel)/(3*p1))^0.5:
  z =p1*z*z*z + (pixel-1)*z - pixel
  |z| <= 100
  ;SOURCE: reb002.frm
}

PolyGen {; Ron Barnett, 1993
         ; p1 must not be zero
         ; zero can be simulated with a small
         ; value for p1
         ; use floating point
  z=(-p2+(p2*p2+(1-pixel)*3*p1)^0.5)/(3*p1):
  z=p1*z*z*z+p2*z*z+(pixel-1)*z-pixel
  |z| <= 100
  ;SOURCE: reb002.frm
}

REBRefInd1 {; Ron Barnett, 1993
            ; Use floating point
  z = pixel:
  z = (z*z-p1)/(z*z+p2)*fn1(z)*fn2(z) + pixel
  |z| <= 100
  ;SOURCE: reb002.frm
}

REBRefInd2 {; Ron Barnett, 1993
            ; Use floating point
  z = pixel:
  z = (z*z-1)/(z*z+2)*fn1(z)*fn2(z) + p1
  |z| <= 100
  ;SOURCE: fractint.frm
}

REBRefInd3 {; Ron Barnett, 1993
            ; Use floating point
  z = pixel:
  z = (z*z-1)/(z*z+2)*fn1(z) + p1
  |z| <= 100
  ;SOURCE: reb002.frm
}

REBRefInd4 {; Ron Barnett, 1993
            ; Use floating point
  z = pixel:
  z = flip(z)
  z = (z*z-p1)/(z*z+p2)*fn1(z)*fn2(z) + pixel
  |z| <= 100
  ;SOURCE: reb002.frm
}

REBRefInd5 {; Ron Barnett, 1993
            ; Use floating point
  z = pixel:
  z = flip(z)
  z = (z*z-1)/(z*z+2)*fn1(z)*fn2(z) + p1
  |z| <= 100
  ;SOURCE: reb002.frm
}

