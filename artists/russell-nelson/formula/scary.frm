; All formulas by Vincent Damion Presogna
; Oct., 1996

Scary {
z = c = pixel, halfe = e * (-0.5):
r = sqr(fn1(1/z)) - c + p1
q = fn2(z)/halfe + c + p2
z = (q * (whitesq == 0)) + (r * (whitesq == 1))
|z| <= 4
}

Julia+LambdaFn=PHC { 
z = pixel:
r = p1 * fn1(z)
q = z^2 + p2
z = (q * (whitesq == 0)) + (r * (whitesq == 1))
}

Tetragramaton_PHC {
z = c = pixel:
r = fn1(1/z) + p1
q = fn2(z) + p2
z = (z * q) * (whitesq == 1) + (z * r) * (whitesq == 0)
|z| <= 4
}

Sumagramaton_PHC {
z = c = pixel:
r = fn1(1/z) + p1
q = fn2(z^2) + p2
z =  q * (whitesq == 1) +  r * (whitesq == 0)
|z| <= 4
}

SpaceMandel_PHC {
z = c = pixel, rand = srand(pixel):
r = fn1(1/z) + rand 
m = z*z + c
z = m * (whitesq == 1) +  (z * r) * (whitesq == 0)
|z| < 4 || 2 < |r|
}


Barnsley_PHC {

