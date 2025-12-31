ComplexNewton_02a (YAXIS) {; Jon Horner
                           ; modified by Jo Weber, 6/1996
  pm1 = p1-1.51,  z = pixel :
  oldz = z
  z = (pm1*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.001|
  ;SOURCE: jowe29.frm
}

ComplexNewton_03 (XAXIS) {; Jon Horner
                          ; modified by Jo Weber, 6/1996
  pm1 = p1-2,  pm2=p1-1, z = pixel :
  oldz = z
  z = (pm2*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.0001|
  ;SOURCE: jowe29.frm
}

ComplexNewton_03a (YAXIS) {; Jon Horner
                           ; modified by Jo Weber, 6/1996
  pm1 = p1-2,  pm2=p1-1, z = pixel :
  oldz = z
  z = (pm2*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.0001|
  ;SOURCE: jowe29.frm
}

ComplexNewton_03a (YAXIS) {; Jon Horner
                           ; modified by Jo Weber, 6/1996
  pm1 = p1-2,  pm2=p1-1, z = pixel :
  oldz = z
  z = (pm2*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.0001|
  ;SOURCE: jowe29.frm
}

ComplexNewton_04 (XAXIS) {; Jon Horner
                          ; modified by Jo Weber, 6/1996
  pm1 = p1-1.5,  pm2=p1-1, z = pixel :
  oldz = z
  z = (pm2*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.005|
  ;SOURCE: jowe29.frm
}

ComplexNewton_04a (YAXIS) {; Jon Horner
                           ; modified by Jo Weber, 6/1996
  pm1 = p1-1.5,  pm2=p1-1, z = pixel :
  oldz = z
  z = (pm2*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.005|
  ;SOURCE: jowe29.frm
}

ComplexNewton_06 {; Jon Horner
                  ; modified by Jo Weber, 6/1996
  pm1 = p1-1.51, z = pixel :
  oldz = z
  z = (pm1*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.001|
  ;SOURCE: jowe29.frm
}

ComplexNewton_07 {; Jon Horner
                  ; modified by Jo Weber, 6/1996
  pm1 = p1-2, pm2=p1-1, z = pixel :
  oldz = z
  z = (pm2*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.0001|
  ;SOURCE: jowe29.frm
}

ComplexNewton_08 {; Jon Horner
                  ; modified by Jo Weber, 6/1996
  pm1 = p1-1.5, pm2=p1-1, z = pixel :
  oldz = z
  z = (pm2*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.005|
  ;SOURCE: jowe29.frm
}

ComplexNewton_01 {; Jon Horner (ex-CAL) [ not sure about this one ]
                  ; modified by Jo Weber, 6/1996
                  ; modified by Sylvie Gallet, runs 40% faster
  pr = 1/p1, pm1 = 1-pr, pm2 = 1-p1,  z = pixel :
  oldz = z
  z = pm1 * z + pr * z^pm2
  |(z-oldz)|>=0.000001
  ;SOURCE: jowe29.frm
}

ComplexNewton_05 (XAXIS) {; Jon Horner
                          ; modified by Jo Weber, 6/1996
  pm1 = p1-1,  z = pixel :
  oldz = z
  z = (pm1*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.001|
  ;SOURCE: jowe29.frm
}

ComplexNewton_05a (YAXIS) {; Jon Horner
                           ; modified by Jo Weber, 6/1996
  pm1 = p1-1,  z = pixel :
  oldz = z
  z = (pm1*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.001|
  ;SOURCE: jowe29.frm
}

ComplexNewton_12 {; Jon Horner
                  ; modified by Jo Weber, 6/1996
  pm1 = p1-1, z = pixel :
  oldz = z
  z = (pm1*(z^p1) +0.5)/(p1 * z^pm1)
  |(z-oldz)|>=|0.001|
  ;SOURCE: jowe29.frm
}

