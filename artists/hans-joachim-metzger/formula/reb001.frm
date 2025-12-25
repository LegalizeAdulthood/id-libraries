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
 
