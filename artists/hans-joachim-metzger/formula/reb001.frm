IkeNewtMand {; Ron Barnett, 1993
  z = c = pixel:
  zf = z*z*z + (c-1)*z - c
  zd = 3*z*z + c-1
  z = z - p1*zf/zd
  0.001 <= |zf|
  ;SOURCE: fractint.frm
}
 
Frame-RbtM (XAXIS) {; Ron Barnett, 1993
                    ; from Mazes for the Mind by Pickover
  z = c = pixel:
  z = z*z*z/5 + z*z + c
  |z| <= 100
  ;SOURCE: fractint.frm
}
 
IkeNewtJul {; Ron Barnett, 1993
  z =  pixel:
  zf = z*z*z + (p2-1)*z - p2
  zd = 3*z*z + p2-1
  z = z - p1*zf/zd
  0.001 <= |zf|
  ;SOURCE: reb001.frm
}
 
PseudoZeePi {; Ron Barnett, 1993
  z = pixel:
  x = 1-z^p1
  z = z*((1-x)/(1+x))^(1/p1) + p2
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
Frame-RbtJ {; Ron Barnett, 1993
  z = pixel:
  z = z*z*z/5 + z*z + p1
  |z| <= 100
  ;SOURCE: reb001.frm
}
 
IkenagaMap (XAXIS) {; Ron Barnett, 1993
                    ; based upon the Ikenaga function described
                    ; in Dewdneys's The Armchair Universe.
                    ; The initial starting point allows the 
                    ; function to provide a
                    ; "map" for the corresponding Julia 
                    ; function (Julike ) 
  z = ((1-pixel)/3)^0.5: 
  z = z*z*z + (pixel-1)*z - pixel 
  |z| <= 4
  ;SOURCE: reb001.frm
}
 
JMask {; Ron Barnett, 1993
  z = fn1(pixel):
  z = P1*fn2(z)^2 + P2
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
JMask {; Ron Barnett, 1993
  z = fn1(pixel):
  z = P1*fn2(z)^2 + P2
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
Julike {; Ron Barnett, 1993
        ; a Julia function based upon the Ikenaga function
  z = Pixel:
  z = z*z*z + (P1-1)*z - P1
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
Julike {; Ron Barnett, 1993
        ; a Julia function based upon the Ikenaga function
  z = Pixel:
  z = z*z*z + (P1-1)*z - P1
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
Mask {; Ron Barnett, 1993
      ; try fn1 = log, fn2 = sinh, fn3 = cosh
      ; P1 = (0,1), P2 = (0,1)
      ; Use floating point
  z = fn1(pixel):
  z = P1*fn2(z)^2 + P2*fn3(z)^2 + pixel
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
Mask {; Ron Barnett, 1993
      ; try fn1 = log, fn2 = sinh, fn3 = cosh
      ; P1 = (0,1), P2 = (0,1)
      ; Use floating point
  z = fn1(pixel):
  z = P1*fn2(z)^2 + P2*fn3(z)^2 + pixel
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
RecipIke {; Ron Barnett, 1993
  z = pixel:
  z = 1/(z*z*z + (p1-1)*z - p1) 
  |z| <= 4
  ;SOURCE: reb001.frm
}
 
RecipIke {; Ron Barnett, 1993
  z = pixel:
  z = 1/(z*z*z + (p1-1)*z - p1) 
  |z| <= 4
  ;SOURCE: reb001.frm
}
 
ZeePi {; Ron Barnett, 1993
       ; This Julia function is based upon Ramanujan's iterative
       ; function for calculating pi
  z = pixel:
  x = (1-z^p1)^(1/p1)
  z = z*(1-x)/(1+x) + p2
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
ZeePi {; Ron Barnett, 1993
       ; This Julia function is based upon Ramanujan's iterative
       ; function for calculating pi
  z = pixel:
  x = (1-z^p1)^(1/p1)
  z = z*(1-x)/(1+x) + p2
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
