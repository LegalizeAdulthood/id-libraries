
FGZ-Julia   { ; (c) Jay Hill, 1998
  ; generalization of formula by Michael G. Wareman
  ; p1 is parameter
  ; p2 is parameter
  ; p3 is focus of Julia set
  z=pixel, c=p3:
  z1=z*z + c;
  z = p1*z1*z1/(z1 + p2) + c;
  |z| <= 16
  }

FGZ-Julia   { ; (c) Jay Hill, 1998
  ; generalization of formula by Michael G. Wareman
  ; p3 is focus of Julia set
  z=pixel, c=p3:
  z1=z*z + c;
  z = p1*z1*z1/(z1 + p2) + c;
  |z| <= 64
  }

FGZ-Mand  { ; (c) Jay Hill, 1998
  IF( |p3| == 0)
    p3 = 16
  ENDIF
  c=pixel, z=sqrt(-c), bailout = real(p3):
  z1=z*z + c;
  z = p1*z1*z1/(z1 + p2) + c;
  |z| <= bailout
}

FGZ-Mand { ; (c) Jay Hill, 1998
  IF( |p3| == 0)
  p3 = 16
  ENDIF
  c=pixel, z=sqrt(-c), bailout = real(p3):
  z1=z*z + c;
  z = p1*z1*z1/(z1 + p2) + c;
  |z| <= bailout
}

FGZ-Mand { ; (c) Jay Hill, 1998
  IF( |p3| == 0)
  p3 = 16
  ENDIF
  c=pixel, z=sqrt(-c), bailout = real(p3):
  z1=z*z + c;
  z = p1*z1*z1/(z1 + p2) + c;
  |z| <= bailout
}

fatlog { ; by Jay Hill, 1998
  c=log(pixel),z=0:
  z=sqr(z)+c
  |z|<=100
}

MandelbrotMix {; Jim Muth
  z=p3, c=pixel,
  a=real(p1), b=imag(p1), d=real(p2),   f=imag(p2):
  z=(a*(z^b))+(d*(z^f))+c,
  |z| <= 100
  }

FGZ-Julia { ; (c) Jay Hill, 1998
; generalization of formula by Michael G. Wareman
; p3 is focus of Julia set
z=pixel, c=p3:
z1=z*z + c;
z = p1*z1*z1/(z1 + p2) + c;
|z| <= 16
}
