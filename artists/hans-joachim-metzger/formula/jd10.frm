JDfrm010m1 {; Jim Deutch/modified by Lee Skinner.
            ; Eliminated assignment to "pixel". G. Martin 6/29/99
  countreset = (count < 1600)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  c = evenodd * pixel + oddeven * -pixel
  z = 0:
  z = z*z + c
  |z| < 4
  ;SOURCE: jd10.frm
}
 
JDfrm010m9 {; Jim Deutch/modified by Lee Skinner.
            ; Eliminated assignment to "pixel". G. Martin 6/29/99
  countreset = (count < 1280)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  c = evenodd * pixel + oddeven * -pixel
  z = 0:
  z = z*z + c
  |z| < 4
  ;SOURCE: jd10.frm
}
 
JDfrm010m7 {; Jim Deutch/modified by Lee Skinner.
            ; Eliminated assignment to "pixel". G. Martin 6/29/99
  countreset = (count < 1024)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  c = evenodd * pixel + oddeven * -pixel
  z = 0:
  z = z*z + c
  |z| < 4
  ;SOURCE: jd10.frm
}
 
JDfrm010m6 {; Jim Deutch/modified by Lee Skinner.
            ; Eliminated assignment to "pixel". G. Martin 6/29/99
  countreset = (count < 800)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  c = evenodd * pixel + oddeven * -pixel
  z = 0:
  z = z*z + c
  |z| < 4
  ;SOURCE: jd10.frm
}
 
JDfrm010m5 {; Jim Deutch/modified by Lee Skinner.
            ; Eliminated assignment to "pixel". G. Martin 6/29/99
  countreset = (count < 640)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  c = evenodd * pixel + oddeven * -pixel
  z = 0:
  z = z*z + c
  |z| < 4
  ;SOURCE: jd10.frm
}
 
JDfrm010m3 {; Jim Deutch/modified by Lee Skinner.
            ; Eliminated assignment to "pixel". G. Martin 6/29/99
  countreset = (count < 320)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  c = evenodd * pixel + oddeven * -pixel
  z = 0:
  z = z*z + c
  |z| < 4
  ;SOURCE: jd10.frm
}
 
