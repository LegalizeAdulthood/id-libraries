/* All Formulas By Vincent Damion Presogna
   76455.2222@Compuserve.com
   02/22/96                                */


Crentura (YAXIS) {
z = c = pixel + p1:
z = (1/sqr(z)) * c + pixel 
z = fn1(z) * z 
|z| < 4
}

Crentura_2 (XAXIS) {
z = c = pixel - 0.5:
z = (1/sqr(z)) * z + pixel 
z = fn1(z) * c 
|z| < 4
}

Zentura (XAXIS) {
z = pixel, s2 = sqrt(2):
z = z + p1
z = (sqrt(z)/s2) * z
z = z * fn1(z) + pixel
|z| < 4
}

Rootura {
z = pixel, pix = pixel + p1:
z = (1/sqrt(z)) + pix
z = fn1(z) * z - pixel 
|z| < 4
}

Altura {
z = pixel,sqpx = sqr(pixel), snpx = sin(pixel):
z = z * (sqpx / snpx) + p1
z = fn1(z) + pixel
z < 4
}

Ventura (XAXIS) {
z = pixel, sspix = sin(sqr(pixel)):
z = z * sspix + p1
z = fn1(z) + pixel
z < 4
}

Ventura_2 (XAXIS) {
z = pixel, sspix = sqr(sin(pixel)):
z = z * sspix + p1
z = fn1(z) + pixel
z < 4
}

Mantura (XAXIS) {
z = pixel, sspix = sqr(sin(pixel)):
z = z * sspix + p1
z = z * z + pixel
|z| < 4
}

Mantura_2 (XAXIS) {
z = pixel, sspix = sin(sqr(pixel)):
z = z * sspix + p1
z = z * z + pixel
|z| < 4
}
