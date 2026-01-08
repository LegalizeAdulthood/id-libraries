001(YAXIS) {
z = pixel:
z = z*z + pixel
z = Sin(z) + p1
}

002(XYAXIS) {
z = pixel:
z = Sin(z-c) + z + p1
z <=100
}

003(XYAXIS) {
z = pixel:
z = Cos(z) + Sin(z) + p1
z <= 4
}

004 { 
z = pixel:
z = pixel + cosh(z)  + p1
|z| <=10000
}

005(XYAXIS) {
z = rand = pixel:
z = sin(z) + pixel + p1
z = z*z + z + p2
}

006 {
z = pixel:
z = cos(z)*z + pixel + p1
|z| <=100
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
Z = COS(Z)
}
                         
010 {
Z = PIXEL:
Z = Z*Z*Z 
Z = sin(z) + cos(c) + p1
}

011 {
z = pixel:
z = tan(z)*z + c + p1
z = cos(z)
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

018 {
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
