LesPHCfrm01 { ; Les St Clair, 101461.2032@compuserve.com, 1996
  ; Modified Vincent D. Presogna formula (Block_4.fmr)
  ; Amalgamated with manjul_lace.frm by George Martin to enable PHC
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
count = (count + 1) * (count != (p3-1))
evenodd = (evenodd == (count == 1))
oddeven = (evenodd == 0)
z = evenodd * 1.5*pixel + oddeven * pixel
c = evenodd * 1.5*pixel + oddeven * (-.75, .1234567):
r = tan(1/z) + p1
q = floor(z) - p2 * ceil(c) - p1
z = fn1(z) * r * q
round(z) < 4
}
