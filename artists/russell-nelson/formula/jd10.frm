
JDfrm010m1 { ; Jim Deutch/modified by Lee Skinner.
  countreset = (count < 1600)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  pixel = evenodd * pixel + oddeven * -pixel
  z = 0
  c = pixel:
  z = z*z + c
  |z| < 4
}

JDfrm010m3 { ; Jim Deutch/modified by Lee Skinner.
  countreset = (count < 320)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  pixel = evenodd * pixel + oddeven * -pixel
  z = 0
  c = pixel:
  z = z*z + c
  |z| < 4
}

JDfrm010m5 { ; Jim Deutch/modified by Lee Skinner.
  countreset = (count < 640)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  pixel = evenodd * pixel + oddeven * -pixel
  z = 0
  c = pixel:
  z = z*z + c
  |z| < 4
}

JDfrm010m6 { ; Jim Deutch/modified by Lee Skinner.
  countreset = (count < 800)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  pixel = evenodd * pixel + oddeven * -pixel
  z = 0
  c = pixel:
  z = z*z + c
  |z| < 4
}

JDfrm010m7 { ; Jim Deutch/modified by Lee Skinner.
  countreset = (count < 1024)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  pixel = evenodd * pixel + oddeven * -pixel
  z = 0
  c = pixel:
  z = z*z + c
  |z| < 4
}

JDfrm010m9 { ; Jim Deutch/modified by Lee Skinner.
  countreset = (count < 1280)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  pixel = evenodd * pixel + oddeven * -pixel
  z = 0
  c = pixel:
  z = z*z + c
  |z| < 4
}

