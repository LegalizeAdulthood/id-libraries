MandelbrotInNewton(XAXIS) {; use float=yes: from CAL v4.0 by Tim Harris
  z = 0, c = pixel, cminusone = c-1:
  oldz = z
  nm = 3 * c-2 * z * cminusone
  dn = 3 * (3 * z * z + cminusone)
  z = nm/dn + 2 * z/3
  |(z-oldz)|>=|0.01|
  ;SOURCE: mnewton.frm
}

