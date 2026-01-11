Magnetik {
  z = pixel + p1:
  z = (z-1)*(z+0.5)*(z*z+1)
  z = (z*0.3) - ((z)/fn1(z))
  |z| < 4
  ;SOURCE: magnetik.frm
}

Magnetik_2 {
  z = pixel + p1:
  z = (z-1)*((z*z) + z + 1.25)
  z = (z*0.3) - ((z)/fn1(z))
  |z| < 4
  ;SOURCE: magnetik.frm
}

Magnetik_3 {
  z = pixel + p1:
  z = (z-1)*((z*z) + z + 0.05)
  z = (z*0.3) - ((z)/fn1(z))
  |z| < 4
  ;SOURCE: magnetik.frm
}

Magnetik_4 {
  z = pixel + p1:
  z = (z*z*z) - 1
  z = (z*0.3) - ((z)/fn1(z))
  |z| < 4
  ;SOURCE: magnetik.frm
}

