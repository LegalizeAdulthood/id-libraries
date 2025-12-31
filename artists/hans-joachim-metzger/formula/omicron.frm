Anacron (XAXIS) {
  z = pixel:
  z = z*z + fn1(z) + pixel
  z = fn1(sqr(z))
  |z| < 4
  ;SOURCE: omicron.frm
}

Anacron_2 (XAXIS) {
  z = pixel :
  z = (z/2*z) + fn1(z) + pixel
  z = fn1(z) - sqrt(z)
  |z| < 4
  ;SOURCE: omicron.frm
}

Betacron {
  z = pixel:
  z = (z*z/sqrt(z)) + z*fn1(z) + p1
  z = z - pixel + (z*0.05)
  |z| < 4
  ;SOURCE: omicron.frm
}

Betacron_2 {
  z = pixel:
  z = (z*z/sqrt(z)) + z*fn1(z) + p1
  z = fn2(z) + pixel - (z*0.5)
  |z| < 4
  ;SOURCE: omicron.frm
}

Betacron_3 {
  z = pixel:
  z = sqr(z) + ((z*z)*0.75) + pixel
  z = (1 / z + sqrt(z)) - pixel
  z = fn1(z)
  |z| < 4
  ;SOURCE: omicron.frm
}

Newron {
  z = pixel:
  z = ((z*z) - 1) - 0.111111
  z = ((z*z)+1)/2*z
  |z| < 4
  ;SOURCE: omicron.frm
}

Newron_2 {
  z = pixel:
  z = z + p1
  z = ((z*z)+1)/2*z
  z = ((z*z) - 1) / fn1(z)-z
  |z| < 4
  ;SOURCE: omicron.frm
}

Omicron {; Revised for Fractint v20 by G. Martin
  z = pixel:
  z = z + pixel + p1
  z = (1/sqrt(2*3.14)*(z^(-3/2))*(exp(-1/2)))
  |z| < 4
  ;SOURCE: omicron.frm
}

Omicron_2 {
  z = pixel :
  z = (1/sqr(z)) * (z - sqrt(z))
  z = z * fn1(z) + pixel
  z = (z*z*z) * pixel + p1
  |z| < 16
  ;SOURCE: omicron.frm
}

Omicron_3 {
  z = pixel :
  z = z + pixel + p1
  z = (sqr(z) / sin(z)) * z + pixel
  |z| < 4
  ;SOURCE: omicron.frm
}

Omicron_4 (XAXIS) {
  z = pixel :
  z = (z*z)+(2*z)-3/(z*2)-(z*z)-2
  z = exp(z) * z / fn1(z)
  |z| < 4
  ;SOURCE: omicron.frm
}

Omicron_5 {
  z = pixel:
  z = (1/sqr(z*z))*(exp(-1/2*z))
  z = fn1(z) * z + pixel
  |z| < 4
  ;SOURCE: omicron.frm
}

Omicron_6 {
  z = sqr(pixel):
  z = z + sqr(z) + p1
  z = z + z + pixel
  |z| < 4
  ;SOURCE: omicron.frm
}

Omicron_7 {
  z = pixel:
  z = exp(z) * (z*acosh(z)) * (sqrt(z*z) + p1)
  z = z + pixel
  |z| < 4
  ;SOURCE: omicron.frm
}

Warning! {; You must try the RECIP function
          ; Revised for Fractint v20 by G. Martin
  z = pixel:
  z = fn1(z) + pixel + p1
  z = (1/sqrt(z)*(exp(-1/2)))
  z = z * imag(z)
  |z| < 4
  ;SOURCE: omicron.frm
}

