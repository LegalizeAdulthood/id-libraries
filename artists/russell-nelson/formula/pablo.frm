;All Formulas by Vincent Damion Presogna
;April 11th, 1997
;Any comments or question?
;E-Mail: Damion_P@Compuserve.com  -or- MDROCC@earthlink.net


Pablo {
z = c = pixel:
r = fn1(tan(1/z)+ c) + p1
q = fn2(flip(atan(z)) + c) + p2
z = (q * (whitesq == 0)) + (r * (whitesq == 1))
|z| < 4
}

Guanaco {
z = pixel, Root = 1:
z3 =z*z*z
z4 = Z3 * z
z5 = z4 * z
z6 = z5 * z
z7 = z6 * z
r = (3 * z4 + Root) / ( 4*z3)
q =  z - p1*((z7-z)/((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2)))
z = (r * whitesq ) + (q * (whitesq == 0))
(.004 <= |z4-Root| && whitesq) || (0.0001 <= |z7-z| && whitesq == 0)
}

Sublime {
z = (1,1), c = pixel:
z2 = z*z, z3 = z2*z
r = z - p1 *(z3-pixel)/(3.0*z2)
q = fn1(z) * fn2(z) + c + p2
z = (q * (whitesq == 0)) + (r * (whitesq == 1))
(|z| < 4 && whitesq == 0) || (0.0001 < |z3 - pixel| && whitesq)
}

Sublime_2 {
z = c = pixel, Root = 1:
z3 = z*z*z, z4 = z3*z
r = (3.0*z4 + Root)/(4 * z3)+ p1
q = (fn1(z) * fn2(z))+ c + p2
z = (q * (whitesq == 0)) + (r * (whitesq == 1))
(|z| < 4 && whitesq == 0) || (0.004 < |z4 - Root| && whitesq)
}

Sylac {
c1 = flip(1/pixel), c2 = conj(1/pixel), z = c = pixel:
r = ((fn1(z)* c1) * z) + p1
q = ((fn2(z)* c2) * z + c) + p2
z = (q * (whitesq == 0)) + (r * (whitesq == 1))
|z| <= 4
}

Q_Java {
z = 0, c = pixel:
z=z*z+c
c=c+(p1/z)
r=fn1(z)+ p2 + c
q=fn2(z)+ p3 + c
z=(r*(whitesq == 1)) + (q*(whitesq == 0))
|z| <= 4
}
