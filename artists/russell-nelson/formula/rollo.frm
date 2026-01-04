;; These formulae, except Rollo_3, are PHC variations on Noel Giffins
;; formulae. The formulae used can be found in Noel.frm

Rollo_1 {
z = pixel, zp = p1
a = (whitesq == 1), b = (whitesq == 0):
temp = z
r = 1 - fn1(z) - zp
q = z^.5 - zp
zp = temp
z = (q * a) + (r * b)
|zp| <= 4
}

Rollo_2 {
z = pixel, zp = p1
a = (whitesq == 1), b = (whitesq == 0):
temp = z
r = z*z - zp
q = z^3 + zp
zp = temp
z = (q * a) + (r * b)
|zp| <= 4
}

Rollo_3 {
z = pixel, c1 = p1, c2 = p2
a = (whitesq == 1), b = (whitesq == 0):
r = c1 * fn1(z)
q = fn2(z*z) + c2
z = (q * a) + (r * b)
|z| <= 4
}

Rollo_4 {
z = pixel, zp = (0,0), huge = 1.0e32
a = (whitesq == 1), b = (whitesq == 0):
temp = z
r = fn1(z*z) - zp
q = fn2(z*z) + zp
zp = p1/conj(temp)
z = (q * a) + (r * b)
(|zp| <= 64) && (|z| <= huge)
}

Rollo_5 {
z = pixel, zp = p1
a = (whitesq == 1), b = (whitesq == 0):
temp = z
r =  - fn1(z) - zp
q =  fn2(z) - zp
zp = temp
z = (q * a) + (r * b)
|zp| <= 4 
}

Rollo_6 {
z = pixel, zp = p1,
a = (whitesq == 1), b = (whitesq == 0):
temp = z 
r = fn1(z)^5 + zp 
q = fn2(z)^5 + zp 
zp = temp
z = (q * a) + (r * b)
|zp| <= 4 
}

Rollo_7 {
z = pixel, zp = p2,
a = (whitesq == 1), b = (whitesq == 0):
temp = z 
r = fn1(z)^e + zp 
q = fn2(z)^pi + zp 
zp = temp
z = (q * a) + (r * b)
|zp| <= 4 
}

