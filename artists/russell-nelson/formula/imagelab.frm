Zexpe (XAXIS) {
   z = Pixel:
   z = z ^ 2.71828182845905 + pixel,
   |z| <= 100
}

Zexpe_mandel (XAXIS) {
   z = Pixel:
   z = z ^ 2 + pixel,
   |z| <= 100
}
{ Use the following for version 15.14 or later }
MarksMandelPwr_tan (XAXIS) {
   z = pixel, c = z ^ (z - 1):
   z = c * sin(z)/cos(z) + pixel,
   |z| <= 4
}

{ Use the following for version 15.13 or earlier }
MarksMandelPwr_tan_a (XAXIS) {
   z = pixel, c = z ^ (z - 1):
   z = c * sin(z)/conj(cos(z)) + pixel,
   |z| <= 4
}

LogPlusSin (XAXIS) {
   z = pixel:
   z = log(z) + sin(z) + pixel,
   |z| <= 4
}

