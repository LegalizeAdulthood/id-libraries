Barnsley_PHC_3 {; formula adapted by Vincent Damion Presogna
  z = c = pixel
  c1 = p1*whitesq + c*(whitesq==0) , c2 = p2*(whitesq==0) :
   z1 = z - (z>=0) + (z<0)
   z = z1*c1 + c2
    |z| < 4
  ;SOURCE: 96msg.frm
}

DaSum_PHC {
  z1 = pixel + p1, z2 = pixel:
  z1 = (z1 - 1) * (z1 + 0.5) * (z1*z1+1)
  z1 = (z1 * 0.3) - ((z1)/fn1(z1))
  z2 = z2 + p2, r = fn2(z2) * z2^2, q = z2^e
  z2 = (z2 - imag(1/r) / z2 - real(1/q))
  z = (z1 * (whitesq == 1)) + (z2 * (whitesq == 0))
  |z| <= 4
  ;SOURCE: beck.frm
}

DaSum_PHC {
  z1 = pixel + p1, z2 = pixel:
  z1 = (z1 - 1) * (z1 + 0.5) * (z1*z1+1)
  z1 = (z1 * 0.3) - ((z1)/fn1(z1))
  z2 = z2 + p2, r = fn2(z2) * z2^2, q = z2^e
  z2 = (z2 - imag(1/r) / z2 - real(1/q))
  z = (z1 * (whitesq == 1)) + (z2 * (whitesq == 0))
  |z| <= 4
  ;SOURCE: beck.frm
}

Peace_Magnet_PHC {
  z = r = pixel, c1 = p1 - 1, c2 = p1 - 2:
  r = ((z*z + (p2 - 1)) / (2*z + (p2 - 2)))^2
  z = (z*z + c1)/(z+z+c2)
  z = (z*z * (whitesq == 1)) + (r * z * (whitesq == 0))
  |z| < 100
  ;SOURCE: beck.frm
}

Peace_PHC {
  z = pixel:
  r = ((z*z + (p1 - 1)) / (2*z + (p1 - 2)))^2
  q = fn1(z) * fn2(z) + p2
  z = (r * (whitesq == 1)) + (q * (whitesq == 0))
  |z| < 100
  ;SOURCE: beck.frm
}

