comment {
These formulae can be used to initiate exploration in the two "hybridised" 
planes as referred to in 3dfract.doc. Type SJ iterate in the "ZC" plane,
and type 3rdim in the "CZ" plane. Ititially, param p2=0. Altering the real
value of p2 in type SJ, or the imaginary value of p2 in type 3rdim, will
step the position of the iterated image along the x or y axes respectively
of the C-plane Mandelbrot set.
Paramater p1, normally set to 0, can, by varying the real value, rotate
the angle of the iteration plane to intermediate planal regions, for some
quite striking effects. p1=1 will revert to the C-plane, and in the case of
z^2+c will produce the familiar Mandelbrot set.
}

SJMAND01 {;Mandelbrot
        z=real(pixel)+flip(imag(pixel)*p1),
        c=p2+p1*real(pixel)+flip(imag(pixel)):
        z=z*z+c, |z|<=64}

3RDIM01  {;Mandelbrot
        z=p1*real(pixel)+flip(imag(pixel)),
        c=p2+real(pixel)+flip(imag(pixel)*p1):
        z=z*z+c, |z|<=64}

SJMAND02 {;Tetration
        z=real(pixel)+flip(imag(pixel)*p1),
        c=p2+p1*real(pixel)+flip(imag(pixel)):
        z=c^z, |z|<=32}

3RDIM02  {;Tetration
        z=p1*real(pixel)+flip(imag(pixel)),
        c=p2+real(pixel)+flip(imag(pixel)*p1):
        z=c^z, |z|<=32}

SJMAND03 {;Mandelbrot function
        z=real(pixel)+p1*(flip(imag(pixel))),
        c=p2+p1*real(pixel)+flip(imag(pixel)):
        z=fn1(z)+c, |z|<=64}

3RDIM03  {;Mandelbrot function
        z=p1*real(pixel)+flip(imag(pixel)),
        c=p2+real(pixel)+flip(imag(pixel)*p1):
        z=fn1(z)+c, |z|<=64}

SJMAND04 {;Tetrated function
        z=real(pixel)+flip(imag(pixel)*p1),
        c=p2+p1*real(pixel)+flip(imag(pixel)):
        z=fn1(c)^z, |z|<=64}

3RDIM04  {;Tetrated function     
        z=p1*real(pixel)+flip(imag(pixel)),
        c=p2+real(pixel)+flip(imag(pixel)*p1):
        z=fn1(c)^z, |z|<=64}

SJMAND05 {;Mandelbrot lambda function
        z=real(pixel)+flip(imag(pixel)*p1),
        c=p2+p1*real(pixel)+flip(imag(pixel)):
        z=fn1(z)*c, |z|<=64}

3RDIM05  {;Mandelbrot lambda function
        z=p1*real(pixel)+flip(imag(pixel)),
        c=p2+real(pixel)+flip(imag(pixel)*p1):
        z=fn1(z)*c, |z|<=64}

SJMAND06 {z=real(pixel)+flip(imag(pixel)*p1),
        c=p2+p1*real(pixel)+flip(imag(pixel)),
        z=conj(z),c=conj(c):
        z=fn1(z)+c, |z|<=4}

3RDIM06  {z=p1*real(pixel)+flip(imag(pixel)),
        c=p2+real(pixel)+flip(imag(pixel)*p1),
        z=conj(z),c=conj(c):
        z=fn1(z)+c, |z|<=4}

SJMAND07 {;Mandelbrot function
        ;changing real(p1) will now rotate between ZC & CZ planes
        z=(1-p1)*real(pixel)+p1*flip(imag(pixel)),
        c=p1*real(pixel)+(1-p1)*flip(imag(pixel)):
        z=fn1(z)+c, |z|<=4}

SJMAND08 {;Mandelbar
        z=real(pixel)+flip(imag(pixel))*p1,
        c=p2+p1*real(pixel)+flip(imag(pixel)):
        z=conj(z*z)+c, |z|<=4}

3RDIM08  {;Mandelbar
        z=p1*real(pixel)+flip(imag(pixel)), 
        c=p2+real(pixel)+p1*flip(imag(pixel)):
        z=conj(z*z)+c, |z|<=4}

