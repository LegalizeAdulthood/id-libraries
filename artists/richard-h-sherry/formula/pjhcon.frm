MandConj01 (XAXIS) {; Paul J. Horn, see MandelConj.
                    ; This is a variation on a theme.
  z = c = Pixel:
  z = Sqr(z) + Conj(Pixel)
  |z| <= 4
  ;SOURCE: pjhcon.frm
}
MandConj02 (XAXIS) {; Paul J. Horn, see MandelConj.
                    ; Another variation on the theme.
  z = c = Pixel:
  z = Sqr(Conj(z)) + Conj(Pixel)
  |z| <= 4
  ;SOURCE: pjhcon.frm
}
MandConj03 (XAXIS) {; Paul J. Horn
                    ; yet another variation on the theme
  z = c = Pixel:
  z = Sqr(conj(z))*conj(z) + Pixel
  |z| <= 4
  ;SOURCE: pjhcon.frm
}
MandConj04 (XAXIS) {; Paul J. Horn
                    ; yet another variation on the theme
  z = c = Pixel:
  z = Sqr((z))*(z) + Conj(Pixel)
  |z| <= 4
  ;SOURCE: pjhcon.frm
}
MandelConj (XAXIS) {; Paul J. Horn, this was mentioned in Pickover's book
                    ; Computers, Chaos, Patterns and Beauty.
                    ; He didn't give the forumula, so I came up with this
  z = c = Pixel:
  z = Sqr(conj(z)) + Pixel
  |z| <= 4
  ;SOURCE: pjhcon.frm
}
JuliConj03 {; Paul J. Horn - a conjugate Julia (I think)
            ; Try real(p1) = .40, imag(p1) = 0, map = glasses2
  z = pixel:
  z = Sqr(conj(z))*conj(z) + P1
  |z| <= 4
  ;SOURCE: pjhcon.frm
}
JuliConj04 {; Paul J. Horn - a conjugate Julia (I think)
            ;Try real(p1) = .53, imag(p1) = .63, map = volcano
  z = pixel:
  z = Sqr(z)*z + Conj(P1)
  |z| <= 4
  ;SOURCE: pjhcon.frm
}
