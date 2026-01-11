102 {; These formulafiles are from Karl Geigl 100327,156.
  z = p1/pixel, c = fn1(z):
  z = (z*z) + c
  z = z*z/c
  z <= p2
  ;SOURCE: kg1.frm
}

103 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel, c = p1/pixel:
  z =( (fn1(z) / c) + (fn2(z))^2) * z
  z <=p2
  ;SOURCE: kg1.frm
}

104 {; These formulafiles are from Karl Geigl 100327,156.
  z = p1/pixel, x = fn1(z):
  z = (z*z) + x
  z = z*p2/x
  z <= 4
  ;SOURCE: kg1.frm
}

105 {; These formulafiles are from Karl Geigl 100327,156.
     ; Revised for Fractint v20 by G. Martin (obvious typo
     ; in bailout line corrected
  z = pixel:
  z = fn1 (p1/fn2(z))
    ; fn1 < p2  [ORIGINAL BAILOUT LINE]
  z < p2
  ;SOURCE: kg1.frm
}

106 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel, c = p1/pixel:
  z = fn1 (fn2(c)*z) * fn1 (-z)
  z <= p2
  ;SOURCE: kg1.frm
}

101 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel, c = p1/pixel:
  z = z*z*c + z*c*c
  |z| <= p2
  ;SOURCE: kg1.frm
}

107 {; These formulafiles are from Karl Geigl 100327,156.
     ; Revised for Fractint v20 by G. Martin (obvious typo
     ; in bailout line corrected
  z = pixel^0.5:
  z = sqr (1/fn1(z)) * sqr (fn2(z))
     ; fn1 < 50      [ These two line of        ]
     ; fn2 = 2*fn1   [ original formula deleted ]
  z < 50
  ;SOURCE: kg1.frm
}

108 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel^0.5:
  z = (((z*z) + (c-p1)) / ((z+z) + (c-p1)))^2
  z <=p2
  ;SOURCE: kg1.frm
}

109 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel, c = fn1(pixel):
  z = z*z + c
  z <= p1
  ;SOURCE: kg1.frm
}

110 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel, c = fn1 (pixel):
  z = c*c +z
  z <= p1
  ;SOURCE: kg1.frm
}

111 {; These formulafiles are from Karl Geigl 100327,156.
  z = c = fn1 (pixel):
  z = z*z + c
  z <=2
  ;SOURCE: kg1.frm
}

112 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = z^z + z^p1 + c
  z <= p2
  ;SOURCE: kg1.frm
}

113 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = z^z - z^p1 + c
  z <= p2
  ;SOURCE: kg1.frm
}

114 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = z^z + z^p1 - c
  z <= p2
  ;SOURCE: kg1.frm
}

115 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = fn1(z^z) + z^p1 + c
  z <= p2
  ;SOURCE: kg1.frm
}

116 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = fn1(z) + z^p1 + c
  z <= p2
  ;SOURCE: kg1.frm
}

117 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = fn1(z^z) + fn2(z^p1) + c
  z <= p2
  ;SOURCE: kg1.frm
}

118 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = fn1(z^p1) - c
  z <=2
  ;SOURCE: kg1.frm
}

119 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = fn1(z^5) + c
  z <=2
  ;SOURCE: kg1.frm
}

