Tiled_A {   x = real(fn3(fn4(pixel))), y = imag(fn3(fn4(pixel))),
             d1 = real(p1), d2 = imag(p1),
             x = real(p3)*x - d1 - d1*floor((real(p3)*x-d1/2)/d1),
             y = imag(p3)*y - d2 - d2*floor((imag(p3)*y-d2/2)/d2),
             z = fn1(x+flip(y)), c = fn2(x+flip(y))+p2 :
             z = z*z+c,
             |z| <= 128
         }
 
Tiled_A {   x = real(fn3(fn4(pixel))), y = imag(fn3(fn4(pixel))),
             d1 = real(p1), d2 = imag(p1),
             x = real(p3)*x - d1 - d1*floor((real(p3)*x-d1/2)/d1),
             y = imag(p3)*y - d2 - d2*floor((imag(p3)*y-d2/2)/d2),
             z = fn1(x+flip(y)), c = fn2(x+flip(y))+p2 :
             z = z*z+c,
             |z| <= 128
         }
 
Tiled_C {   x = real(pixel), y = imag(pixel),
             d1 = real(p1), d2 = imag(p1),
             x = - x + d1 - d1*ceil((-x+d1/2)/d1),
             y = y - d2 - d2*floor((y-d2/2)/d2),
             z = fn1(x+flip(y)), c = fn2(x+flip(y))+p2 :
             z = z*z+c,
             |z| <= 32
         }
 
Tiled_C {   x = real(pixel), y = imag(pixel),
             d1 = real(p1), d2 = imag(p1),
             x = - x + d1 - d1*ceil((-x+d1/2)/d1),
             y = y - d2 - d2*floor((y-d2/2)/d2),
             z = fn1(x+flip(y)), c = fn2(x+flip(y))+p2 :
             z = z*z+c,
             |z| <= 32
         }
 
