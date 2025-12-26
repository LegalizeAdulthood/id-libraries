F'M-SetInNewtonA (XAXIS) {; use float=yes
                          ; jon horner 100112,1700, 12 feb 93
  z = 0,  c = fn1(pixel),  cminusone = c-1:
  oldz = z, nm = p1*c-2*z*cminusone, dn = p1*(3*z*z+cminusone)
  z = nm/dn+2*z/p1
  |(z-oldz)|>=|0.01|
  ;SOURCE: fractint.frm
}
M-SetInNewton(XAXIS) {; use float=yes
                      ; jon horner 100112,1700, 12 feb 93
  z = 0, c = pixel, cminusone = c-1:
  oldz = z, nm = 3*c-2*z*cminusone, dn = 3*(3*z*z+cminusone)
  z = nm/dn+2*z/3
  |(z-oldz)|>=|0.01|
  ;SOURCE: fractint.frm
}
 
