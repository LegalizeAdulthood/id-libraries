Cubicfn {; Ron Barnett, 1995
  z = c = pixel:
  z = fn1((z-1)*(z-1)*(z+1)) - c*P1 + P2
  |z| <= 4
  ;SOURCE: reb006.frm
}

ikenagaoriginal {; Ron Barnett, 1994
  z = 0, c = pixel:
  z = z*z*z + (c - 1)*z - c
  |z|<=100
  ;SOURCE: reb006.frm
}

Phoenix {; Ron Barnett, 1993
         ; This is an old formula of mine which
         ; predates the current formuala in Fractint
         ; The Fractint formula won't generate the
         ; "birds" par in REB006.PAR. This one will.
  z = flip(pixel)
  x1 = 0
  y = 0:
  x1 = z*z + P1 + P2*y
  y = z
  z = x1
  |z|<= 50
  ;SOURCE: reb006.frm
}

