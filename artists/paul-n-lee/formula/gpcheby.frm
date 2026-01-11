J_Lagandre2 {
  c = pixel, z = P1:
  z = (3 * z*z - 1) / 2 + c
  |z| < 100
  ;SOURCE: tchebych.frm
}
gtc01 {; Modified J_Lagandre2
  z = c = pixel:
  z = fn1((3 * z*z - 1) / 2 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc02 {; Modified J_Lagandre3
  z = c = pixel:
  z = fn1(z * (5 * z*z - 3) / 2 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc03 {; Modified J_Lagandre4
  z = c = pixel:
  z = fn1((z*z*(35 * z*z - 30) + 3) / 8 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc04 {; Modified J_Lagandre5
  z = c = pixel:
  z = fn1(z* (z*z*(63 * z*z - 70) + 15 ) / 8 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc05 {; Modified J_Lagandre6
  z = c = pixel:
  z = fn1((z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc06 {; Modified J_Lagandre7
  z = c = pixel:
  z = fn1(z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / 16 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc07 {; Modified J_Laguerre2
  z = c = pixel:
  z = fn1((z*(z - 4) +2 ) / 2 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc08 {; Modified J_Laguerre3
  z = c = pixel:
  z = fn1((z*(z*(-z + 9) -18) + 6 ) / 6 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc09 {; Modified J_Laguerre4
  z = c = pixel:
  z = fn1((z * ( z * ( z * ( z - 16)+ 72) - 96)+ 24 ) / 24 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc10 {; Modified J_Laguerre5
  z = c = pixel:
  z=fn1((z*(z*(z*(z*(-z+25)-200)+600)-600)+120)/120 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc11 {; Modified J_Laguerre6
  z = c = pixel:
  z=fn1((z*(z*(z*(z*(z*(z-36)+450)-2400)+5400)-4320)+720) / 720 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc12 {; Modified J_Lagandre2
  z = c = pixel:
  z = fn1((3 * z*z - 1) / 2 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc13 {; Modified J_Lagandre3
  z = c = pixel:
  z = fn1(z * (5 * z*z - 3) / 2 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc18 {; Modified M_Lagandre2
  z = c = pixel:
  z = fn1((3 * z*z - 1) / 2 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc20 {; Modified M_Lagandre4
  z = c = pixel:
  z = fn1((z*z*(35 * z*z - 30) + 3) / 8 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc21 {; Modified M_Lagandre5
  z = c = pixel:
  z = fn1(z* (z*z*(63 * z*z - 70) + 15 ) / 8 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc22 {; Modified M_Lagandre6
  z = c = pixel:
  z = fn1((z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc23 {; Modified M_Lagandre7
  z = c = pixel:
  z = fn1(z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / 16 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc24 {; Modified M_Laguerre2
  z = c = pixel:
  z = fn1((z*(z - 4) +2 ) / 2 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc25 {; Modified M_Laguerre3
  z = c = pixel:
  z = fn1((z*(z*(-z + 9) -18) + 6 ) / 6 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc31 {; Modified M_Lagandre4
  z = c = pixel:
  z = fn1((z*z*(35 * z*z - 30) + 3) / 8 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc34 {; Modified M_Lagandre7
  z = c = pixel:
  z = fn1(z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / 16 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc35 {; Modified J_TchebychevC2
  z = c = pixel:
  z = fn1(c*(z*z-2))
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc36 {; Modified J_TchebychevC3
  z = c = pixel:
  z = fn1(c*z*(z*z-3))
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc37 {; Modified J_TchebychevC4
  z = c = pixel:
  z = fn1(c*(z*z*(z*z-4)+2))
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc40 {; Modified J_TchebychevC7
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z*(z*z-7)+14)-7))
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc41 {; Modified J_TchebychevS2
  z = c = pixel:
  z = fn1(c*(z*z-1))
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc49 {; Modified J_TchebychevT4
  z = c = pixel:
  z = fn1(c*(z*z*(8*z*z+8)+1))
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc51 {; Modified J_TchebychevT6
  z = c = pixel:
  z = fn1(c*(z*z*(z*z*(32*z*z-48)+18)-1))
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc52 {; Modified J_TchebychevT7
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z*(64*z*z-112)+56)-7))
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc56 {; Modified J_TchebychevU5
  z = c = pixel:
  z = fn1(c*z*(z*z*(32*z*z-32)+6))
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc57 {; Modified J_TchebychevU6
  z = c = pixel:
  z = fn1(c*(z*z*(z*z*(64*z*z-80)+24)-1))
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc60 {; Modified M_TchebychevC3
  z = c = pixel:
  z = fn1(c*z*(z*z-3))
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc61 {; Modified M_TchebychevC4
  z = c = pixel:
  z = fn1(c*(z*z*(z*z-4)+2))
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc63 {; Modified M_TchebychevC6
  z = c = pixel:
  z = fn1(c*(z*z*(z*z*(z*z-6)+9)-2))
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc74 {; Modified M_TchebychevT5
  z = c = pixel:
  z = fn1(c*(z*(z*z*(16*z*z-20)+5)))
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc75 {; Modified M_TchebychevT6
  z = c = pixel:
  z = fn1(c*(z*z*(z*z*(32*z*z-48)+18)-1))
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc76 {; Modified M_TchebychevT7
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z*(64*z*z-112)+56)-7))
  |z| < p1
  ;SOURCE: gfptch.frm
}
gtc77 {; Modified M_TchebychevU2
  z = c = pixel:
  z = fn1(c*(4*z*z-1))
  |z| < p1
  ;SOURCE: gfptch.frm
}
J_Lagandre4 {
  c = pixel, z = P1:
  z = (z*z*(35 * z*z - 30) + 3) / 8 + c
  |z| < 100
  ;SOURCE: fractint.frm
}
J_Laguerre5 {
  c = pixel, z = P1:
  z=(z*(z*(z*(z*(-z+25)-200)+600)-600)+120)/120 + c
  |z| < 100
  ;SOURCE: tchebych.frm
}
J_TchebychevU4 {
  c = pixel, z = P1:
  z = c*(z*z*(16*z*z-12)+1)
  |z|<100
  ;SOURCE: tchebych.frm
}
J_TchebychevU7 {
  c = pixel, z = P1:
  z = c*z*(z*z*(z*z*(128*z*z-192)+80)-8)
  |z|<100
  ;SOURCE: tchebych.frm
}
J_TchebycnewC4 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z*(z*z-4)+2)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewC3 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*z*(z*z-3)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewC2 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z-2)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewC6 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z*(z*z*(z*z-6)+9)-2)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewC7 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*z*(z*z*(z*z*(z*z-7)+14)-7)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewS3 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*z*(z*z-2)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewS4 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z*(z*z-3)+1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewT3 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*z*(4*z*z-3)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewT4 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z*(8*z*z+8)+1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewT6 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z*(z*z*(32*z*z-48)+18)-1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewT7 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*z*(z*z*(z*z*(64*z*z-112)+56)-7)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewU4 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z*(16*z*z-12)+1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewU6 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z*(z*z*(64*z*z-80)+24)-1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewU7 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*z*(z*z*(z*z*(128*z*z-192)+80)-8)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewT5 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*(z*z*(16*z*z-20)+5))
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewC4 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z*(z*z-4)+2)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewC6 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z*(z*z*(z*z-6)+9)-2)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewS7 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*z*(z*z*(z*z*(z*z-6)+10)-4)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewT2 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(2*z*z-1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewT5 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*(z*z*(16*z*z-20)+5))
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewT7 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*z*(z*z*(z*z*(64*z*z-112)+56)-7)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewC4 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z*(z*z-4)+2)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebycnewC6 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z*(z*z*(z*z-6)+9)-2)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebychevT5 {
  c = pixel, z = P1:
  z = c*(z*(z*z*(16*z*z-20)+5))
  |z|<100
  ;SOURCE: tchebych.frm
}
J_TchebychevT7 {
  c = pixel, z = P1:
  z = c*z*(z*z*(z*z*(64*z*z-112)+56)-7)
  |z|<100
  ;SOURCE: tchebych.frm
}
M_TchebychevT5 {
  c = P1, z = Pixel:
  z = c*(z*(z*z*(16*z*z-20)+5))
  |z|<100
  ;SOURCE: fractint.frm
}
M_TchebychevT7 {
  c = P1, z = Pixel:
  z = c*z*(z*z*(z*z*(64*z*z-112)+56)-7)
  |z|<100
  ;SOURCE: tchebych.frm
}
M_TchebycnewC4 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(z*z-4)+2)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
M_TchebycnewC6 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(z*z*(z*z-6)+9)-2)
  |z|<=100
  ;SOURCE: newtchb2.frm
}
J_TchebychevS3 {   ;
   c = pixel, z = P1:
   z = c*z*(z*z-2),
   |z|<100
}
J_TchebychevT6 {
   c = pixel, z = P1:
   z = c*(z*z*(z*z*(32*z*z-48)+18)-1),
   |z|<100
}
M_TchebychevS3 {   ;
   c = P1, z = Pixel:
   z = c*z*(z*z-2),
   |z|<100
}
