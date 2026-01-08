Tinsel {
z = pixel, v = sin(e)/cos(pi):
r = z + v + p1
z = r * fn1(z)^fn2(1/z)
|r| >= 0.000001 && round(|v|) < 4
}


Tinsel_2 {
z = pixel:
r = tan(1/z) + p1
z = fn1(z) *  fn2(r)
|z| < 4
}

Tinsel_3 {
z = pixel, c = real(pixel) * imag(pixel):
r = tan(1/z)  + p1
z = fn2(r)/fn1(z) * c + p2
|z| < 4
}

Tinsel_3_PHC {
z = pixel, c = real(pixel) * (whitesq == 0) + imag(pixel) * whitesq:
r = tan(1/z)  + p1
z = fn2(r)/fn1(z) * c + p2
|z| < 4
}

Tinsel_4 {
z = pixel:
x = real(z), y =imag(z)
xr = z * fn1(1/y) + 3
yq = z / fn2(1/x) ^ e
z = xr * yq * z
|z| < 4
}


Tinsel_5 {
z = pixel:
x = real(z), y =imag(z)
xr = x * fn1(z)
yq = z * fn2(1/y)
z  = xr * yq
|z| < 4
}

Moo_PHC {
z = pixel
halfe = e*(-0.5)
quartere = e*(-0.25):
z = z + p1
y = tan(1/z)
r = y + pixel
q = y * pixel
z = fn2(z) * r^halfe * (whitesq == 0) + fn1(z) * q^quartere * (whitesq == 1)
|z| <= 4
}

