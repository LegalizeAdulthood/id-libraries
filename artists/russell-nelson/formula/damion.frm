001(YAXIS) {
z = pixel:
z = z*z + pixel
z = fn1(z) + p1
}

002(XYAXIS) {
z = pixel:
z = fn1(z-c) + z + p1
z <= 100
}

003(XYAXIS) {
z = pixel:
z = fn2(z) + fn1(z) + p1
z <= 4
}

004 { 
z = pixel:
z = pixel + fn1(z)  + p1
|z| <=100
}

005(XYAXIS) {
z = rand = pixel:
z = fn1(z) + pixel + p1
z = z*z + z + p2
}

006 {
z = pixel:
z = fn1(z)*z + pixel + p1
|z| <= 100
}

007 {
z = pixel:
z = z*z + p1
z = fn1(z) + pixel
}

008 {
z = pixel:
z = z+z+z + p1
z = cos(c) * cos(z)
}

009 { 
z = pixel:
z = (Z+PIXEL) + C +p1
Z = fn1(Z)
}
                         
010 {
Z = PIXEL:
Z = Z*Z*Z 
Z = fn1(z) + fn2(c) + p1
}

011 {
z = pixel:
z = fn1(z)*z + c + p1
z = fn2(z)
}

012 { 
z = pixel:
z = Sin(cos(z)) * Tan(cotan(z)) + p1
z = pixel + z
}

013 {
z = pixel:
z = cos(z) + p1
z = conj(z) + flip(z)
}

014(PI_SYM) {
z = pixel:
z = z*z + fn1(c) + p1
z = tan(z) + cotan(z)
|z| <= 32
}

015 (XYAXIS) {
z = pixel:
z = fn1(z+c) * (z-c) + atan(z) 
z = Cos(z) + pixel  + p1
|z| <=128
}

016 {
z = pixel:
z = sin(z+c) * (z-c) + fn1(z) 
z = cos(z) + p1
}

017 (XYAXIS) {
z = 0:
z = Z*Z*Z + pixel
z = fn1(z) + z  + p1
|z| <=8
}

018 (XAXIS) {
z = pixel:
z = z*z + cos(z) + p1
z = fn1(z) + pixel
}

019 (PI_SYM) {
z = pixel:
z = z*z + z + fn1(z) + p1
z = pixel + sqr(cosh(z*z)) + c
}

020 (XYAXIS) {
z = pixel:
z = z*c + Cos(z)*z
z = z*z*z - pixel + p1
}

021 {
z = pixel:
z = fn1(cos(z))*z + p1
z = z + z * z + pixel
|z| <= 32
}

022 {
z = pixel:
z = z * fn1(z) + pixel + p1
z = Tan(z) + Cos(z)
}

023 {
z = pixel:
z = fn1(z) * z * z + abs(c) + p1
z = c + z*z + pixel
}

024 {
z = pixel:
a = fn1(z) + cos(z) + pixel + p1
z = sin(a) + sqr(z*a)
}

025 {
z = pixel:
a = z*z + pixel + cos(tan(z))
z = a + a + pixel
z = z*a + p1
}

026 {
z = 0, c = pixel:
a = fn1(z*z) * z + p1
z = a + a + z + c
}

027 (XYAXIS) {
z = pixel, z = Sqr(z + c):
z = z * fn1(z) + c + p1
z <= 250
}

028 {
z = pixel:
a = fn1(3.14) + p1
z = a + cos(z)*z
z <=256
}

; //* monkeys on my back *//

029 {
z = pixel:
a = pixel + a <= z
b = pixel + a >= z
z = fn1(a) + fn1(z) + p1
z = fn1(b) + cos(z)
z = fn1(3.14) + z*z
}    

030 { 
z = pixel:
a = pixel + a <= z
b = pixel + a >= Sqrt(z)
z = fn1(z) + a  + p1
z = (a*z) + z + b
}

031 {
z = pixel:
a = pixel + a <= z
b = pixel + a >= z
z = fn1(z) + cos(z*z) + p1
z = a*b + z
}

; //* 8-29-95 *//

032 (PI_SYM) {
z = pixel:
a = pixel + a <= z
b = pixel + z >= z
z = fn1(z) + pixel + p1
z = (a*z) + z*z
}

033 (PI_SYM) {
z = pixel:
a = pixel + a
b = fn1(a) + z >= z
z = (z*z) + b + p1
|z| <= 4
}

034 {
z = pixel:
a = fn1(z) + c
b = z*z + pixel  
z = sin((a + z) / (b + z)) + p1
}

035 {
z = pixel:
a = cosh(sin(z)) + z
b = pixel + a >= z
z = b + fn1(a) + p1
}

newd01 {
z = pixel:
a = pixel + p1  
b = pixel + fn1(p1)
z = fn1(z*a) + p1
z = b*z + pixel
}

newd02 {
z = pixel:
z = fn1(z) + z + p1
z = sin(1/z) + c
z = sqr(z+z)
}

newd03 {
z = Pixel:
z = sin(conj(z)*flip(z))+p1
z = Sqrt(z) + pixel
z = fn1(z+z)
}

newd04 {
z = pixel:
z = sinh(cos(z)*tan(z)*z) 
z = sqr(abs(z)) + p1
z = z + pixel
}

newd05 {
z = pixel:
a = sin(x) + cos(y)
z = a*z*z +sin(z)
z = fn1(z) + p1
}

newd06 {
z = pixel:
z = z*z + (cos(p1))
a = pixel + (z+z)
z = fn1(z) + pixel * a
}

newd07 {
z = pixel:
z = z*z + (cos(p1))
a = pixel + (z+z+z)
z = conj(z) + pixel * a
}

newd08 {
z = pixel:
z = fn1(z) + z * sqr(cos(z)) + p1
z = flip(z) + pixel
z = conj(z)
}

BUG01 (XAXIS) {
z = 0: 
z = pixel + z + p1
z = z^z + fn1(z^5)
}

BUG02 (XAXIS) {
z = 0: 
z = pixel + z + p1
z = fn1(z) + z^z + c
}

BUG03 (XAXIS) {
z = 0:
z = pixel + z + p1
z = z^z + z^6 + pixel
z <= 4
}

BUG04 (XAXIS) {
z = 0:
z = pixel + z + p1
z = fn1(z ^ z) + z^5 
}

BUG05 (XYAXIS) {
z = 0:
z = sin(z) + cos(pixel) + c + p1
z = z ^ fn1(z) + z  
}

BUG06 (XAXIS) {
z = 0:
pi = 3.141592654
z = z * z + sqr(sin(pi))
z = fn1(z) + z ^ z  
z = z + pixel
}
; /* Thanksgiving */

ZAAR_1 (XAXIS) {
z = 0:
z = fn1((c-z) * sin(z)) -z + (z+c/2)
z = pixel + z + p1
}

ZAAR_2 {
z = 0:
z = sin((z + pixel) - c/3)
z = p1 + (z + z) 
z = pixel + z
}

ZAAR_3 (XAXIS) {
z = 0:
z = fn1(z + z * z ) + p1
z = (z * z) / (z + c) 
z = pixel + z
}

ZAAR_4 {
z = sqrt(2):
z = (z*z+c) / z
z = fn1(z) + pixel
|z| <= 64
}

AMINO_1 {
z = pixel:
z = z * fn1(z) + pixel
z = z + p1
z = z + pixel
z = z * z + c / z   
|z| <= 4
}

AMINO_2 {
z = pixel :
z = z * (pixel + (p1 + sin(p1)))
z = pixel + z
z = fn1(z) * Z + sin(z)
|z| <= 32
}

AMINO_3 {
z = pixel:
z = z*z*z/pixel + p1
z = rand * z  +  z
z = fn1(z) 
|z| <= 64
}

AMINO_4 {
z = pixel:
z = (|Z| + z) * z + p1
z = fn1(z) + z + pixel
}

AMINO_5 {
z = pixel:
z = (|Z| - z) + z * z + p1 
z = fn1(z) - fn2(z)
z = pixel + sqrt(z)
|z| < 4
}

AMINO_6 {
z = pixel :
z = z + pixel
z = fn1(z + z) + pixel
z = sqrt(z * z) 
}

AMINO_7 (XAXIS) {
z = pixel :
z = z + c / sqrt(2)
z = sin(cos(z) + z) + (z + c)  
z = fn1(z) + pixel
}

D's_Mandel (XAXIS) {
z = 0, c = pixel:
z = z*z + c
z = z + fn1(p1)
z < 4
}

