davidsmask {
  c = pixel
  c2 = c*c, c75 = c2 + 0.75, c25 = c2 - 0.25
  c75p1 = c75 + p1
  z = pixel:
  z2 =z*z
  n = z*z2 - c75*z + c25
  d = 3*z2 - c75p1
  z = z- n/d
  0.000001 <= |n|
  ;SOURCE: davweird.frm
}
 
ex1csecdav {
  del = P1 + 0.0001
  z = pixel:
  n = z - cos(z)
  d = (n - (z -del - cos(z - del)))/del
  z = z - n/(d+P2)
  0.0001 <= |n|
  ;SOURCE: davweird.frm
}
 
Ex20Newc (XAXIS) {
  z = pixel, c = pixel:
  z2 = z*z + p1
  ex = exp(p2*z)
  cs = cos(z)
  sn = sin(z)
  n = log(z2) - ex*cs
  d1 = 2*z/z2
  d2 = cs*p2*ex - sn*ex
  z = z - n/(d1 + c*d2)
  0.1 <= |n|
  ;SOURCE: davweird.frm
}
 
ex4cwithP1temple {; Amended for Fractint v20 by G. Martin
  z = pixel:
  ex = exp(z)
  z2 = 2^(-z)
  n = ex + z2 - 2*cos(z) - 6
  d = ex + z2*0.69314718 + 2*sin(z) + P1
  z = z - n/d
  0.01 <= |n|
  ;SOURCE: davweird.frm
}
 
newdavidsmask (XAXIS) {
  c = pixel
  z = pixel:
  fz = (z-1)*(z - c + 0.5)*(z + c + 0.5)
  fdashz = 3*z*z - c*c - 0.75
  z = z - fz/(fdashz - P1)
  0.000001 <= |fz|
  ;SOURCE: davweird.frm
}
 
newdavidsmasksec (XAXIS) {
  h =  0.00001
  c = pixel
  z = pixel:
  zplh = z + h
  fz = (z-1)*(z - c + 0.5)*(z + c + 0.5)
  fzplh = (zplh-1)*(zplh - c + 0.5)*(zplh + c + 0.5)
  fdashz = (fzplh - fz)/h
  z = z - fz/(fdashz - P1)
  0.000001 <= |fz|
  ;SOURCE: davweird.frm
}
 
ex4csecdav {
  del = P2 + 0.0001
  z = pixel
  zd = z + del:
  n = exp(z) + 2^(-z) - 2*cos(z) - 6
  nd = exp(zd) + 2^(-zd) - 2*cos(zd) - 6
  d = (n - nd)/del
  z = z - n/(d + P1)
  0.01 <= |n|
  ;SOURCE: davweird.frm
}
 
