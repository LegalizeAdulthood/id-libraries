Triternions   { ; Russell Walsmith <russw@lycos.com>
                ; Sun, 26 Jun 2005 21:06:30
                ; http://www.fibonacci-arrays.com/
c1=real(pixel), c2=imag(pixel), c3=p1
x=y=v=0:
     a = x^2+2*y*v
     b = v^2+2*x*y
     c = y^2+2*x*v
     x=a+c1, y=b+c2, v=c+c3
     z=x^2+y^2+v^2
z < 1000 }
