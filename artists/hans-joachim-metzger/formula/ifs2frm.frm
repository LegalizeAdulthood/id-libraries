crystal_J {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.69697, b0=-0.48106, c0=-0.39394, d0=-0.66288
  a1=0.09091, b1=-0.44318, c1=0.51515, d1=-0.09470
  al0=-0.65152, k0=-3.53667, l0=-8.03175
  al1=0.21970, k1=-0.89072, l1=1.94225
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x-b0*y+k0)/al0+flip((-c0*x+a0*y+l0)/al0)
  op0=|o0-p2|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-p2|
  IF (op0<=op1)
    z=o0
  ELSE
    z=o1
  ENDIF
  |z|<=p1
  ;SOURCE: ifsinv.frm
}
 
dragon_J {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.82407, b0=0.28148, c0=-0.21235, d0=0.86420
  a1=0.08827, b1=0.52099, c1=-0.46389, d1=-0.37778
  al0=0.77193, k0=1.59554, l0=0.49085
  al1=0.20833, k1=4.51450, l1=-1.07895
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x-b0*y+k0)/al0+flip((-c0*x+a0*y+l0)/al0)
  op0=|o0-p2|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-p2|
  IF (op0<=op1)
    z=o0
  ELSE
    z=o1
  ENDIF
  |z|<=p1
  ;SOURCE: ifsinv.frm
}
 
fern_J {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.01000, d0=0.16000
  a1=0.85000, b1=0.04000, c1=-0.04000, d1=0.85000
  a2=0.20000, b2=-0.26000, c2=0.23000, d2=0.22000
  a3=-0.15000, b3=0.28000, c3=0.26000, d3=0.24000
  al0=0.00160
  al1=0.72410, k1=0.06400, l1=-1.36000
  al2=0.10380, k2=-0.41600, l2=-0.32000
  al3=-0.10880, k3=0.12320, l3=0.06600
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x)/al0+flip((a0*y)/al0)
  op0=|o0-p2|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-p2|
  o2=(d2*x-b2*y+k2)/al2+flip((-c2*x+a2*y+l2)/al2)
  op2=|o2-p2|
  o3=(d3*x-b3*y+k3)/al3+flip((-c3*x+a3*y+l3)/al3)
  op3=|o3-p2|
  IF (op0<op1 && op0<op2 && op0<op3)
    z=o0
  ELSEIF (op1<op0 && op1<op2 && op1<op3)
    z=o1
  ELSEIF (op2<op1 && op2<op0 && op2<op3)
    z=o2
  ELSEIF (op3<op0 && op3<op1 && op3<op2)
    z=o3
  ENDIF
  |z|<=p1
  ;SOURCE: ifsinv.frm
}
 
spiral_J {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.78788, b0=-0.42424, c0=0.24242, d0=0.85985
  a1=-0.12121, b1=0.25758, c1=0.15152, d1=0.05303
  a2=0.18182, b2=-0.13636, c2=0.09091, d2=0.18182
  al0=0.78030, k0=-2.10953, l0=-0.68305
  al1=-0.04545, k1=0.71119, l1=-0.85149
  al2=0.04545, k2=-1.32039, l2=0.26818
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x-b0*y+k0)/al0+flip((-c0*x+a0*y+l0)/al0)
  op0=|o0-p2|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-p2|
  o2=(d2*x-b2*y+k2)/al2+flip((-c2*x+a2*y+l2)/al2)
  op2=|o2-p2|
  IF (op0<op1 && op0<op2)
    z=o0
  ELSEIF (op1<op0 && op1<op2)
    z=o1
  ELSEIF (op2<op1 && op2<op0)
    z=o2
  ENDIF
  |z|<=p1
  ;SOURCE: ifsinv.frm
}
 
swirl5_J {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.74546, b0=-0.45909, c0=0.40606, d0=0.88712
  a1=-0.42424, b1=-0.06515, c1=-0.17576, d1=-0.21818
  al0=0.84773, k0=-1.61271, l0=0.07780
  al1=0.08111, k1=0.39196, l1=2.19046
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x-b0*y+k0)/al0+flip((-c0*x+a0*y+l0)/al0)
  op0=|o0-p2|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-p2|
  IF (op0<=op1)
    z=o0
  ELSE
    z=o1
  ENDIF
  |z|<=p1
  ;SOURCE: ifsinv.frm
}
 
triangle_J {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.50000, d0=0.50000
  a1=0.50000, d1=0.50000
  a2=0.50000, d2=0.50000
  al0=0.25000
  al1=0.25000, l1=-0.50000
  al2=0.25000, k2=-0.50000, l2=-0.50000
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x)/al0+flip((a0*y)/al0)
  op0=|o0-p2|
  o1=(d1*x)/al1+flip((a1*y+l1)/al1)
  op1=|o1-p2|
  o2=(d2*x+k2)/al2+flip((a2*y+l2)/al2)
  op2=|o2-p2|
  IF (op0<op1 && op0<op2)
    z=o0
  ELSEIF (op1<op0 && op1<op2)
    z=o1
  ELSEIF (op2<op1 && op2<op0)
    z=o2
  ENDIF
  |z|<=p1
  ;SOURCE: ifsinv.frm
}
 
zigzag2_J {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=-0.63241, b0=-0.61481, c0=-0.54537, d0=0.65926
  a1=-0.03611, b1=0.44444, c1=0.21019, d1=0.03704
  al0=-0.75222, k0=-3.32049, l0=-1.28372
  al1=-0.09475, k1=3.62576, l1=0.73613
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x-b0*y+k0)/al0+flip((-c0*x+a0*y+l0)/al0)
  op0=|o0-p2|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-p2|
  IF (op0<=op1)
    z=o0
  ELSE
    z=o1
  ENDIF
  |z|<=p1
  ;SOURCE: ifsinv.frm
}
 
